.class public final Llibcore/icu/NativeConverter;
.super Ljava/lang/Object;
.source "NativeConverter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static native charsetForName(Ljava/lang/String;)Ljava/nio/charset/Charset;
.end method

.method public static native closeConverter(J)V
.end method

.method public static native contains(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static native decode(J[BI[CI[IZ)I
.end method

.method public static native encode(J[CI[BI[IZ)I
.end method

.method public static native getAvailableCharsetNames()[Ljava/lang/String;
.end method

.method public static native getAveBytesPerChar(J)F
.end method

.method public static native getAveCharsPerByte(J)F
.end method

.method public static native getMaxBytesPerChar(J)I
.end method

.method public static native getMinBytesPerChar(J)I
.end method

.method public static native getSubstitutionBytes(J)[B
.end method

.method public static native openConverter(Ljava/lang/String;)J
.end method

.method public static native resetByteToChar(J)V
.end method

.method public static native resetCharToByte(J)V
.end method

.method private static native setCallbackDecode(JIILjava/lang/String;)V
.end method

.method public static setCallbackDecode(JLjava/nio/charset/CharsetDecoder;)V
    .locals 4
    .param p0, "converterHandle"    # J
    .param p2, "decoder"    # Ljava/nio/charset/CharsetDecoder;

    #@0
    .prologue
    .line 57
    invoke-virtual {p2}, Ljava/nio/charset/CharsetDecoder;->malformedInputAction()Ljava/nio/charset/CodingErrorAction;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Llibcore/icu/NativeConverter;->translateCodingErrorAction(Ljava/nio/charset/CodingErrorAction;)I

    #@7
    move-result v0

    #@8
    .line 58
    invoke-virtual {p2}, Ljava/nio/charset/CharsetDecoder;->unmappableCharacterAction()Ljava/nio/charset/CodingErrorAction;

    #@b
    move-result-object v1

    #@c
    invoke-static {v1}, Llibcore/icu/NativeConverter;->translateCodingErrorAction(Ljava/nio/charset/CodingErrorAction;)I

    #@f
    move-result v1

    #@10
    .line 59
    invoke-virtual {p2}, Ljava/nio/charset/CharsetDecoder;->replacement()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    .line 56
    invoke-static {p0, p1, v0, v1, v2}, Llibcore/icu/NativeConverter;->setCallbackDecode(JIILjava/lang/String;)V

    #@17
    .line 55
    return-void
.end method

.method private static native setCallbackEncode(JII[B)V
.end method

.method public static setCallbackEncode(JLjava/nio/charset/CharsetEncoder;)V
    .locals 4
    .param p0, "converterHandle"    # J
    .param p2, "encoder"    # Ljava/nio/charset/CharsetEncoder;

    #@0
    .prologue
    .line 65
    invoke-virtual {p2}, Ljava/nio/charset/CharsetEncoder;->malformedInputAction()Ljava/nio/charset/CodingErrorAction;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Llibcore/icu/NativeConverter;->translateCodingErrorAction(Ljava/nio/charset/CodingErrorAction;)I

    #@7
    move-result v0

    #@8
    .line 66
    invoke-virtual {p2}, Ljava/nio/charset/CharsetEncoder;->unmappableCharacterAction()Ljava/nio/charset/CodingErrorAction;

    #@b
    move-result-object v1

    #@c
    invoke-static {v1}, Llibcore/icu/NativeConverter;->translateCodingErrorAction(Ljava/nio/charset/CodingErrorAction;)I

    #@f
    move-result v1

    #@10
    .line 67
    invoke-virtual {p2}, Ljava/nio/charset/CharsetEncoder;->replacement()[B

    #@13
    move-result-object v2

    #@14
    .line 64
    invoke-static {p0, p1, v0, v1, v2}, Llibcore/icu/NativeConverter;->setCallbackEncode(JII[B)V

    #@17
    .line 63
    return-void
.end method

.method private static translateCodingErrorAction(Ljava/nio/charset/CodingErrorAction;)I
    .locals 1
    .param p0, "action"    # Ljava/nio/charset/CodingErrorAction;

    #@0
    .prologue
    .line 44
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    #@2
    if-ne p0, v0, :cond_0

    #@4
    .line 45
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 46
    :cond_0
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->IGNORE:Ljava/nio/charset/CodingErrorAction;

    #@8
    if-ne p0, v0, :cond_1

    #@a
    .line 47
    const/4 v0, 0x1

    #@b
    return v0

    #@c
    .line 48
    :cond_1
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    #@e
    if-ne p0, v0, :cond_2

    #@10
    .line 49
    const/4 v0, 0x2

    #@11
    return v0

    #@12
    .line 51
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    #@14
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@17
    throw v0
.end method
