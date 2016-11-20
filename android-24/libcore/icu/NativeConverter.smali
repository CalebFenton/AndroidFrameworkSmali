.class public final Llibcore/icu/NativeConverter;
.super Ljava/lang/Object;
.source "NativeConverter.java"


# static fields
.field private static final registry:Llibcore/util/NativeAllocationRegistry;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    .line 20
    new-instance v0, Llibcore/util/NativeAllocationRegistry;

    #@2
    .line 21
    const-class v1, Llibcore/icu/NativeConverter;

    #@4
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@7
    move-result-object v1

    #@8
    invoke-static {}, Llibcore/icu/NativeConverter;->getNativeFinalizer()J

    #@b
    move-result-wide v2

    #@c
    invoke-static {}, Llibcore/icu/NativeConverter;->getNativeSize()J

    #@f
    move-result-wide v4

    #@10
    .line 20
    invoke-direct/range {v0 .. v5}, Llibcore/util/NativeAllocationRegistry;-><init>(Ljava/lang/ClassLoader;JJ)V

    #@13
    sput-object v0, Llibcore/icu/NativeConverter;->registry:Llibcore/util/NativeAllocationRegistry;

    #@15
    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 19
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

.method public static native getNativeFinalizer()J
.end method

.method public static native getNativeSize()J
.end method

.method public static native getSubstitutionBytes(J)[B
.end method

.method public static native openConverter(Ljava/lang/String;)J
.end method

.method public static registerConverter(Ljava/lang/Object;J)V
    .locals 1
    .param p0, "referrent"    # Ljava/lang/Object;
    .param p1, "converterHandle"    # J

    #@0
    .prologue
    .line 33
    sget-object v0, Llibcore/icu/NativeConverter;->registry:Llibcore/util/NativeAllocationRegistry;

    #@2
    invoke-virtual {v0, p0, p1, p2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    #@5
    .line 32
    return-void
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
    .line 66
    invoke-virtual {p2}, Ljava/nio/charset/CharsetDecoder;->malformedInputAction()Ljava/nio/charset/CodingErrorAction;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Llibcore/icu/NativeConverter;->translateCodingErrorAction(Ljava/nio/charset/CodingErrorAction;)I

    #@7
    move-result v0

    #@8
    .line 67
    invoke-virtual {p2}, Ljava/nio/charset/CharsetDecoder;->unmappableCharacterAction()Ljava/nio/charset/CodingErrorAction;

    #@b
    move-result-object v1

    #@c
    invoke-static {v1}, Llibcore/icu/NativeConverter;->translateCodingErrorAction(Ljava/nio/charset/CodingErrorAction;)I

    #@f
    move-result v1

    #@10
    .line 68
    invoke-virtual {p2}, Ljava/nio/charset/CharsetDecoder;->replacement()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    .line 65
    invoke-static {p0, p1, v0, v1, v2}, Llibcore/icu/NativeConverter;->setCallbackDecode(JIILjava/lang/String;)V

    #@17
    .line 64
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
    .line 74
    invoke-virtual {p2}, Ljava/nio/charset/CharsetEncoder;->malformedInputAction()Ljava/nio/charset/CodingErrorAction;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Llibcore/icu/NativeConverter;->translateCodingErrorAction(Ljava/nio/charset/CodingErrorAction;)I

    #@7
    move-result v0

    #@8
    .line 75
    invoke-virtual {p2}, Ljava/nio/charset/CharsetEncoder;->unmappableCharacterAction()Ljava/nio/charset/CodingErrorAction;

    #@b
    move-result-object v1

    #@c
    invoke-static {v1}, Llibcore/icu/NativeConverter;->translateCodingErrorAction(Ljava/nio/charset/CodingErrorAction;)I

    #@f
    move-result v1

    #@10
    .line 76
    invoke-virtual {p2}, Ljava/nio/charset/CharsetEncoder;->replacement()[B

    #@13
    move-result-object v2

    #@14
    .line 73
    invoke-static {p0, p1, v0, v1, v2}, Llibcore/icu/NativeConverter;->setCallbackEncode(JII[B)V

    #@17
    .line 72
    return-void
.end method

.method private static translateCodingErrorAction(Ljava/nio/charset/CodingErrorAction;)I
    .locals 1
    .param p0, "action"    # Ljava/nio/charset/CodingErrorAction;

    #@0
    .prologue
    .line 53
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    #@2
    if-ne p0, v0, :cond_0

    #@4
    .line 54
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 55
    :cond_0
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->IGNORE:Ljava/nio/charset/CodingErrorAction;

    #@8
    if-ne p0, v0, :cond_1

    #@a
    .line 56
    const/4 v0, 0x1

    #@b
    return v0

    #@c
    .line 57
    :cond_1
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    #@e
    if-ne p0, v0, :cond_2

    #@10
    .line 58
    const/4 v0, 0x2

    #@11
    return v0

    #@12
    .line 60
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    #@14
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@17
    throw v0
.end method
