.class public Landroid/net/connectivity/org/chromium/net/NetStringUtil;
.super Ljava/lang/Object;
.source "NetStringUtil.java"


# annotations
.annotation runtime Landroid/net/connectivity/org/jni_zero/JNINamespace;
    value = "net::android"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist convertToUnicode(Ljava/nio/ByteBuffer;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "text"    # Ljava/nio/ByteBuffer;
    .param p1, "charsetName"    # Ljava/lang/String;

    .line 31
    :try_start_0
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 32
    .local v0, "charset":Ljava/nio/charset/Charset;
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    .line 34
    .local v1, "decoder":Ljava/nio/charset/CharsetDecoder;
    invoke-virtual {v1, p0}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    return-object v2

    .line 35
    .end local v0    # "charset":Ljava/nio/charset/Charset;
    .end local v1    # "decoder":Ljava/nio/charset/CharsetDecoder;
    :catch_11
    move-exception v0

    .line 36
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist convertToUnicodeAndNormalize(Ljava/nio/ByteBuffer;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "text"    # Ljava/nio/ByteBuffer;
    .param p1, "charsetName"    # Ljava/lang/String;

    .line 50
    invoke-static {p0, p1}, Landroid/net/connectivity/org/chromium/net/NetStringUtil;->convertToUnicode(Ljava/nio/ByteBuffer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "unicodeString":Ljava/lang/String;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    return-object v1

    .line 52
    :cond_8
    sget-object v1, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    invoke-static {v0, v1}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist convertToUnicodeWithSubstitutions(Ljava/nio/ByteBuffer;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "text"    # Ljava/nio/ByteBuffer;
    .param p1, "charsetName"    # Ljava/lang/String;

    .line 66
    :try_start_0
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 73
    .local v0, "charset":Ljava/nio/charset/Charset;
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    .line 74
    .local v1, "decoder":Ljava/nio/charset/CharsetDecoder;
    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 75
    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 76
    const-string v2, "\ufffd"

    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetDecoder;->replaceWith(Ljava/lang/String;)Ljava/nio/charset/CharsetDecoder;

    .line 77
    invoke-virtual {v1, p0}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_20

    return-object v2

    .line 78
    .end local v0    # "charset":Ljava/nio/charset/Charset;
    .end local v1    # "decoder":Ljava/nio/charset/CharsetDecoder;
    :catch_20
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist toUpperCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;

    .line 92
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 93
    :catch_9
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method
