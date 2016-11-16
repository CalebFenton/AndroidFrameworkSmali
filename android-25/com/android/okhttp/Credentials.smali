.class public final Lcom/android/okhttp/Credentials;
.super Ljava/lang/Object;
.source "Credentials.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static basic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "userName"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;

    #@0
    .prologue
    .line 29
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v4

    #@9
    const-string/jumbo v5, ":"

    #@c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v4

    #@10
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v4

    #@14
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    .line 30
    .local v3, "usernameAndPassword":Ljava/lang/String;
    const-string/jumbo v4, "ISO-8859-1"

    #@1b
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@1e
    move-result-object v0

    #@1f
    .line 31
    .local v0, "bytes":[B
    invoke-static {v0}, Lcom/android/okhttp/okio/ByteString;->of([B)Lcom/android/okhttp/okio/ByteString;

    #@22
    move-result-object v4

    #@23
    invoke-virtual {v4}, Lcom/android/okhttp/okio/ByteString;->base64()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    .line 32
    .local v2, "encoded":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v5, "Basic "

    #@2f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v4

    #@33
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v4

    #@37
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@3a
    move-result-object v4

    #@3b
    return-object v4

    #@3c
    .line 33
    .end local v0    # "bytes":[B
    .end local v2    # "encoded":Ljava/lang/String;
    .end local v3    # "usernameAndPassword":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@3d
    .line 34
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Ljava/lang/AssertionError;

    #@3f
    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    #@42
    throw v4
.end method
