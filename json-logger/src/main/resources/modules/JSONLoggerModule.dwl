%dw 2.0
fun stringifyAny(inputData: Any) = if (inputData.^mimeType == "application/xml" or
									   inputData.^mimeType == "application/dw" or
									   inputData.^mimeType == "application/json")
									write(inputData,inputData.^mimeType,{indent:false})
									 else if (inputData.^mimeType == "*/*")
									  inputData
									 else
							 	write(inputData, ((inputData.^mimeType default "application/json") as String) )

fun stringifyNonJSON(inputData: Any) = if (inputData.^mimeType == "application/xml" or
										   inputData.^mimeType == "application/dw")
										 write(inputData,inputData.^mimeType,{indent:false})
										 else if (inputData.^mimeType == "application/json" or inputData.^mimeType == "*/*")
										 	 inputData
										 else
											 write(inputData, ((inputData.^mimeType default "application/json") as String) )

fun stringifyAnyWithMetadata(inputData: Any) = {
												 data: if (inputData.^mimeType == "application/xml" or
														   inputData.^mimeType == "application/dw" or
														   inputData.^mimeType == "application/json")
														 write(inputData,((inputData.^mimeType default "application/json") as String),{indent:false})
													                             else if (inputData.^mimeType == "*/*")
													                              inputData
													   else
													     write(inputData, ((inputData.^mimeType default "application/json") as String) ),
												 (contentLength: inputData.^contentLength) if (inputData.^contentLength != null),
												 (dataType: inputData.^mimeType) if (inputData.^mimeType != null),
												 (class: inputData.^class) if (inputData.^class != null)
											   }

fun stringifyNonJSONWithMetadata(inputData: Any) = {
												 data: if (inputData.^mimeType == "application/xml" or
														   inputData.^mimeType == "application/dw")
														 write(inputData,((inputData.^mimeType default "application/json") as String),{indent:false})
													   else if (inputData.^mimeType == "application/json" or inputData.^mimeType == "*/*")
													   	 inputData
													   else
													     write(inputData, ((inputData.^mimeType default "application/json") as String) ),
												 (contentLength: inputData.^contentLength) if (inputData.^contentLength != null),
												 (dataType: inputData.^mimeType) if (inputData.^mimeType != null),
												 (class: inputData.^class) if (inputData.^class != null)
											   }
