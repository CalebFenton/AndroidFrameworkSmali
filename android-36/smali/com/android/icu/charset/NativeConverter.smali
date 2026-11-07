.class public final Lcom/android/icu/charset/NativeConverter;
.super Ljava/lang/Object;
.source "NativeConverter.java"


# static fields
.field static final blacklist U_BUFFER_OVERFLOW_ERROR:I = 0xf

.field static final blacklist U_ILLEGAL_CHAR_FOUND:I = 0xc

.field static final blacklist U_INVALID_CHAR_FOUND:I = 0xa

.field static final blacklist U_TRUNCATED_CHAR_FOUND:I = 0xb

.field static final blacklist U_ZERO_ERROR:I

.field private static final blacklist registry:Llibcore/util/NativeAllocationRegistry;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 24
    nop

    .line 25
    const-class v0, Lcom/android/icu/charset/NativeConverter;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Lcom/android/icu/charset/NativeConverter;->getNativeFinalizer()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Lcom/android/icu/charset/NativeConverter;->registry:Llibcore/util/NativeAllocationRegistry;

    .line 24
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist U_FAILURE(I)Z
    .registers 2
    .param p0, "error"    # I

    .line 96
    if-lez p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method static native blacklist charsetForName(Ljava/lang/String;)Ljava/nio/charset/Charset;
.end method

.method static native blacklist closeConverter(J)V
.end method

.method static native blacklist contains(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method static native blacklist decode(J[BI[CI[IZ)I
.end method

.method static native blacklist encode(J[CI[BI[IZ)I
.end method

.method static native blacklist getAvailableCharsetNames()[Ljava/lang/String;
.end method

.method static native blacklist getAveBytesPerChar(J)F
.end method

.method static native blacklist getAveCharsPerByte(J)F
.end method

.method static native blacklist getMaxBytesPerChar(J)I
.end method

.method private static native blacklist getNativeFinalizer()J
.end method

.method static native blacklist getSubstitutionBytes(J)[B
.end method

.method static native blacklist openConverter(Ljava/lang/String;)J
.end method

.method static blacklist registerConverter(Ljava/lang/Object;J)V
    .registers 4
    .param p0, "referrent"    # Ljava/lang/Object;
    .param p1, "converterHandle"    # J

    .line 40
    sget-object v0, Lcom/android/icu/charset/NativeConverter;->registry:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v0, p0, p1, p2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 41
    return-void
.end method

.method static native blacklist resetByteToChar(J)V
.end method

.method static native blacklist resetCharToByte(J)V
.end method

.method private static native blacklist setCallbackDecode(JIILjava/lang/String;)V
.end method

.method static blacklist setCallbackDecode(JLjava/nio/charset/CharsetDecoder;)V
    .registers 6
    .param p0, "converterHandle"    # J
    .param p2, "decoder"    # Ljava/nio/charset/CharsetDecoder;

    .line 72
    nop

    .line 73
    invoke-virtual {p2}, Ljava/nio/charset/CharsetDecoder;->malformedInputAction()Ljava/nio/charset/CodingErrorAction;

    move-result-object v0

    invoke-static {v0}, Lcom/android/icu/charset/NativeConverter;->translateCodingErrorAction(Ljava/nio/charset/CodingErrorAction;)I

    move-result v0

    .line 74
    invoke-virtual {p2}, Ljava/nio/charset/CharsetDecoder;->unmappableCharacterAction()Ljava/nio/charset/CodingErrorAction;

    move-result-object v1

    invoke-static {v1}, Lcom/android/icu/charset/NativeConverter;->translateCodingErrorAction(Ljava/nio/charset/CodingErrorAction;)I

    move-result v1

    .line 75
    invoke-virtual {p2}, Ljava/nio/charset/CharsetDecoder;->replacement()Ljava/lang/String;

    move-result-object v2

    .line 72
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/icu/charset/NativeConverter;->setCallbackDecode(JIILjava/lang/String;)V

    .line 76
    return-void
.end method

.method private static native blacklist setCallbackEncode(JII[B)V
.end method

.method static blacklist setCallbackEncode(JLjava/nio/charset/CharsetEncoder;)V
    .registers 6
    .param p0, "converterHandle"    # J
    .param p2, "encoder"    # Ljava/nio/charset/CharsetEncoder;

    .line 80
    nop

    .line 81
    invoke-virtual {p2}, Ljava/nio/charset/CharsetEncoder;->malformedInputAction()Ljava/nio/charset/CodingErrorAction;

    move-result-object v0

    invoke-static {v0}, Lcom/android/icu/charset/NativeConverter;->translateCodingErrorAction(Ljava/nio/charset/CodingErrorAction;)I

    move-result v0

    .line 82
    invoke-virtual {p2}, Ljava/nio/charset/CharsetEncoder;->unmappableCharacterAction()Ljava/nio/charset/CodingErrorAction;

    move-result-object v1

    invoke-static {v1}, Lcom/android/icu/charset/NativeConverter;->translateCodingErrorAction(Ljava/nio/charset/CodingErrorAction;)I

    move-result v1

    .line 83
    invoke-virtual {p2}, Ljava/nio/charset/CharsetEncoder;->replacement()[B

    move-result-object v2

    .line 80
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/icu/charset/NativeConverter;->setCallbackEncode(JII[B)V

    .line 84
    return-void
.end method

.method private static blacklist translateCodingErrorAction(Ljava/nio/charset/CodingErrorAction;)I
    .registers 2
    .param p0, "action"    # Ljava/nio/charset/CodingErrorAction;

    .line 60
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    if-ne p0, v0, :cond_6

    .line 61
    const/4 v0, 0x0

    return v0

    .line 62
    :cond_6
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->IGNORE:Ljava/nio/charset/CodingErrorAction;

    if-ne p0, v0, :cond_c

    .line 63
    const/4 v0, 0x1

    return v0

    .line 64
    :cond_c
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    if-ne p0, v0, :cond_12

    .line 65
    const/4 v0, 0x2

    return v0

    .line 67
    :cond_12
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
