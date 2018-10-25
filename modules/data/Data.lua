-- Match the parent directory
local path = (...):match('(.-)[^%./]+$')

return {
    name = 'data',
    description = 'Provides functionality for creating and transforming data.',
    functions = {
        {
            name = 'compress',
            description = 'Compresses a string or data using a specific compression algorithm.',
            variants = {
                {
                    arguments = {
                        {
                            type = 'ContainerType',
                            name = 'container',
                            description = 'What type to return the compressed data as.'
                        },
                        {
                            type = 'CompressedDataFormat',
                            name = 'format',
                            description = 'The format to use when compressing the string.'
                        },
                        {
                            type = 'string',
                            name = 'rawstring',
                            description = 'The raw (un-compressed) string to compress.'
                        },
                        {
                            type = 'number',
                            name = 'level',
                            default = '-1',
                            description = 'The level of compression to use, between 0 and 9. -1 indicates the default level. The meaning of this argument depends on the compression format being used.'
                        }
                    },
                    returns = {
                        {
                            type = 'CompressedData or string',
                            name = 'compressedData',
                            description = 'CompressedData/string which contains the compressed version of data.'
                        }
                    }
                },
                {
                    arguments = {
                        {
                            type = 'ContainerType',
                            name = 'container',
                            description = 'What type to return the compressed data as.'
                        },
                        {
                            type = 'CompressedDataFormat',
                            name = 'format',
                            description = 'The format to use when compressing the data.'
                        },
                        {
                            type = 'Data',
                            name = 'data',
                            description = 'A Data object containing the raw (un-compressed) data to compress.'
                        },
                        {
                            type = 'number',
                            name = 'level',
                            default = '-1',
                            description = 'The level of compression to use, between 0 and 9. -1 indicates the default level. The meaning of this argument depends on the compression format being used.'
                        }
                    },
                    returns = {
                        {
                            type = 'CompressedData or string',
                            name = 'compressedData',
                            description = 'CompressedData/string which contains the compressed version of data.'
                        }
                    }
                }
            }
        },
        {
            name = 'decode',
            description = 'Decode Data or a string from any of the EncodeFormats to Data or string.',
            variants = {
                {
                    arguments = {
                        {
                            type = 'ContainerType',
                            name = 'containerType',
                            description = 'What type to return the decoded data as.'
                        },
                        {
                            type = 'EncodeFormat',
                            name = 'format',
                            description = 'The format of the input data.'
                        },
                        {
                            type = 'string',
                            name = 'sourceString',
                            description = 'The raw (encoded) data to decode.'
                        }
                    },
                    returns = {
                        {
                            type = 'Variant',
                            name = 'decoded',
                            description = 'ByteData/string which contains the decoded version of source.'
                        }
                    }
                },
                {
                    arguments = {
                        {
                            type = 'ContainerType',
                            name = 'containerType',
                            description = 'What type to return the decoded data as.'
                        },
                        {
                            type = 'EncodeFormat',
                            name = 'format',
                            description = 'The format of the input data.'
                        },
                        {
                            type = 'Data',
                            name = 'sourceData',
                            description = 'The raw (encoded) data to decode.'
                        }
                    },
                    returns = {
                        {
                            type = 'Variant',
                            name = 'decoded',
                            description = 'ByteData/string which contains the decoded version of source.'
                        }
                    }
                }
            }
        },
        {
            name = 'decompress',
            description = 'Decompresses a CompressedData or previously compressed string or Data object.',
            variants = {
                {
                    arguments = {
                        {
                            type = 'ContainerType',
                            name = 'container',
                            description = 'What type to return the decompressed data as.'
                        },
                        {
                            type = 'CompressedData',
                            name = 'compressedData',
                            description = 'The compressed data to decompress.'
                        }
                    },
                    returns = {
                        {
                            type = 'string',
                            name = 'rawstring',
                            description = 'A string containing the raw decompressed data.'
                        }
                    }
                },
                {
                    arguments = {
                        {
                            type = 'ContainerType',
                            name = 'container',
                            description = 'What type to return the decompressed data as.'
                        },
                        {
                            type = 'CompressedDataFormat',
                            name = 'format',
                            description = 'The format that was used to compress the given string.'
                        },
                        {
                            type = 'string',
                            name = 'compressedstring',
                            description = 'A string containing data previously compressed with love.data.compress.'
                        }
                    },
                    returns = {
                        {
                            type = 'string',
                            name = 'rawstring',
                            description = 'A string containing the raw decompressed data.'
                        }
                    }
                },
                {
                    arguments = {
                        {
                            type = 'ContainerType',
                            name = 'container',
                            description = 'What type to return the decompressed data as.'
                        },
                        {
                            type = 'CompressedDataFormat',
                            name = 'format',
                            description = 'The format that was used to compress the given data.'
                        },
                        {
                            type = 'Data',
                            name = 'data',
                            description = 'A Data object containing data previously compressed with love.data.compress.'
                        }
                    },
                    returns = {
                        {
                            type = 'string',
                            name = 'rawstring',
                            description = 'A string containing the raw decompressed data.'
                        }
                    }
                }
            }
        },
        {
            name = 'encode',
            description = 'Encode Data or a string to a Data or string in one of the EncodeFormats.',
            variants = {
                {
                    arguments = {
                        {
                            type = 'ContainerType',
                            name = 'containerType',
                            description = 'What type to return the encoded data as.'
                        },
                        {
                            type = 'EncodeFormat',
                            name = 'format',
                            description = 'The format of the output data.'
                        },
                        {
                            type = 'string',
                            name = 'sourceString',
                            description = 'The raw data to encode.'
                        },
                        {
                            type = 'number',
                            name = 'lineLength',
                            default = '0',
                            description = 'The maximum line length of the output. Only supported for base64, ignored if 0.'
                        }
                    },
                    returns = {
                        {
                            type = 'Variant',
                            name = 'encoded',
                            description = 'ByteData/string which contains the encoded version of source.'
                        }
                    }
                },
                {
                    arguments = {
                        {
                            type = 'ContainerType',
                            name = 'containerType',
                            description = 'What type to return the encoded data as.'
                        },
                        {
                            type = 'EncodeFormat',
                            name = 'format',
                            description = 'The format of the output data.'
                        },
                        {
                            type = 'Data',
                            name = 'sourceData',
                            description = 'The raw data to encode.'
                        },
                        {
                            type = 'number',
                            name = 'lineLength',
                            default = '0',
                            description = 'The maximum line length of the output. Only supported for base64, ignored if 0.'
                        }
                    },
                    returns = {
                        {
                            type = 'Variant',
                            name = 'encoded',
                            description = 'ByteData/string which contains the encoded version of source.'
                        }
                    }
                }
            }
        },
        {
            name = 'getPackedSize',
            description = 'Gets the size in bytes that a given format used with love.data.pack will use.',
            variants = {
                arguments = {
                    {
                        type = 'string',
                        name = 'format',
                        description = 'A string determining how the values are packed. Follows the rules of Lua 5.3\'s string.pack format strings.'
                    }
                },
                returns = {
                    {
                        type = 'number',
                        name = 'size',
                        description = 'The size in bytes that the packed data will use.'
                    }
                }
            }
        },
        {
            name = 'hash',
            description = 'Compute the message digest of a string using a specified hash algorithm.',
            variants = {
                {
                    arguments = {
                        {
                            type = 'HashFunction',
                            name = 'hashFunction',
                            description = 'Hash algorithm to use.'
                        },
                        {
                            type = 'string',
                            name = 'string',
                            description = 'String to hash.'
                        }
                    },
                    returns = {
                        {
                            type = 'string',
                            name = 'rawdigest',
                            description = 'Raw message digest string.'
                        }
                    }
                },
                {
                    arguments = {
                        {
                            type = 'HashFunction',
                            name = 'hashFunction',
                            description = 'Hash algorithm to use.'
                        },
                        {
                            type = 'Data',
                            name = 'data',
                            description = 'Data to hash.'
                        }
                    },
                    returns = {
                        {
                            type = 'string',
                            name = 'rawdigest',
                            description = 'Raw message digest string.'
                        }
                    }
                }
            }
        },
        {
            name = 'newByteData',
            description = 'Creates a new Data object containing arbitrary bytes.\n\nData:getPointer along with LuaJIT\'s FFI can be used to manipulate the contents of the ByteData object after it has been created.',
            variants = {
                {
                    description = 'Creates a new ByteData by copying the contents of the specified string.',
                    arguments = {
                        {
                            type = 'string',
                            name = 'datastring',
                            description = 'The byte string to copy.'
                        }
                    },
                    returns = {
                        {
                            type = 'ByteData',
                            name = 'bytedata',
                            description = 'The new ByteData object'
                        }
                    }
                },
                {
                    description = 'Creates a new ByteData by copying from an existing Data object.',
                    arguments = {
                        {
                            type = 'Data',
                            name = 'data',
                            description = 'The existing Data object to copy.'
                        },
                        {
                            type = 'number',
                            name = 'offset',
                            default = '0',
                            description = 'The offset of the subsection to copy, in bytes.'
                        },
                        {
                            type = 'number',
                            name = 'size',
                            default = 'data:getSize()',
                            description = 'The size in bytes of the new Data object.'
                        }
                    },
                    returns = {
                        {
                            type = 'ByteData',
                            name = 'bytedata',
                            description = 'The new ByteData object'
                        }
                    }
                },
                {
                    description = 'Creates a new empty ByteData with the specific size.',
                    arguments = {
                        {
                            type = 'number',
                            name = 'size',
                            description = 'The size in bytes of the new Data object.'
                        }
                    },
                    returns = {
                        {
                            type = 'ByteData',
                            name = 'bytedata',
                            description = 'The new ByteData object'
                        }
                    }
                }
            }
        },
        {
            name = 'newDataView',
            description = 'Creates a new Data referencing a subsection of an existing Data object.',
            variants = {
                {
                    arguments = {
                        {
                            type = 'Data',
                            name = 'data',
                            description = 'The Data object to reference.'
                        },
                        {
                            type = 'number',
                            name = 'offset',
                            description = 'The offset of the subsection to reference, in bytes.'
                        },
                        {
                            type = 'number',
                            name = 'size',
                            description = 'The size in bytes of the subsection to reference.'
                        }
                    },
                    returns = {
                        {
                            type = 'Data',
                            name = 'view',
                            description = 'The new Data view.'
                        }
                    }
                }
            }
        },
        {
            name = 'pack',
            description = 'Packs (serializes) simple Lua values.',
            variants = {
                {
                    arguments = {
                        {
                            type = 'ContainerType',
                            name = 'containerType',
                            description = 'What type to return the encoded data as.'
                        },
                        {
                            type = 'string',
                            name = 'format',
                            description = 'A string determining how the values are packed. Follows the rules of Lua 5.3\'s string.pack format strings.'
                        },
                        {
                            type = 'value',
                            name = 'v1',
                            description = 'The first value (number, boolean, or string) to serialize.'
                        },
                        {
                            type = 'value',
                            name = '...',
                            description = 'Additional values to serialize.'
                        }
                    },
                    returns = {
                        {
                            type = 'ByteData or string',
                            name = 'data',
                            description = 'ByteData/string which contains the serialized data.'
                        }
                    }
                }
            }
        },
        {
            name = 'unpack',
            description = 'Unpacks (deserializes) a byte-string or Data into simple Lua values.\n\nThis function behaves the same as Lua 5.3\'s string.unpack. ',
            variants = {
                {
                    arguments = {
                        {
                            type = 'string',
                            name = 'format',
                            description = 'A string determining how the values were packed. Follows the rules of Lua 5.3\'s string.pack format strings.'
                        },
                        {
                            type = 'string',
                            name = 'datastring',
                            description = 'A string containing the packed (serialized) data.'
                        },
                        {
                            type = 'number',
                            name = 'position',
                            description = 'Where to start reading in the string. Negative values can be used to read relative from the end of the string.'
                        }
                    },
                    returns = {
                        {
                            type = 'value',
                            name = 'v1',
                            description = 'The first value (number, boolean, or string) that was unpacked.'
                        },
                        {
                            type = 'value',
                            name = '...',
                            description = 'Additional unpacked values.'
                        },
                        {
                            type = 'number',
                            name = 'index',
                            description = 'The index of the first unread byte in the data string.'
                        }
                    }
                },
                {
                    arguments = {
                        {
                            type = 'string',
                            name = 'format',
                            description = 'A string determining how the values were packed. Follows the rules of Lua 5.3\'s string.pack format strings.'
                        },
                        {
                            type = 'Data',
                            name = 'data',
                            description = 'A Data object containing the packed (serialized) data.'
                        },
                        {
                            type = 'number',
                            name = 'position',
                            description = 'Where to start reading in the string. Negative values can be used to read relative from the end of the string.'
                        }
                    },
                    returns = {
                        {
                            type = 'value',
                            name = 'v1',
                            description = 'The first value (number, boolean, or string) that was unpacked.'
                        },
                        {
                            type = 'value',
                            name = '...',
                            description = 'Additional unpacked values.'
                        },
                        {
                            type = 'number',
                            name = 'index',
                            description = 'The index of the first unread byte in the data string.'
                        }
                    }
                }
            }
        }
    },
    types = {
        require(path .. 'types.ByteData'),
        require(path .. 'types.CompressedData')
    },
    enums = {
        require(path .. 'enums.CompressedDataFormat'),
        require(path .. 'enums.ContainerType'),
        require(path .. 'enums.EncodeFormat'),
        require(path .. 'enums.HashFunction')
    }
}
