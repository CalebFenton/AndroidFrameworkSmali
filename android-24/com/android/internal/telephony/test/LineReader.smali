.class Lcom/android/internal/telephony/test/LineReader;
.super Ljava/lang/Object;
.source "ModelInterpreter.java"


# static fields
.field static final BUFFER_SIZE:I = 0x1000


# instance fields
.field mBuffer:[B

.field mInStream:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "s"    # Ljava/io/InputStream;

    #@0
    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 47
    const/16 v0, 0x1000

    #@5
    new-array v0, v0, [B

    #@7
    iput-object v0, p0, Lcom/android/internal/telephony/test/LineReader;->mBuffer:[B

    #@9
    .line 55
    iput-object p1, p0, Lcom/android/internal/telephony/test/LineReader;->mInStream:Ljava/io/InputStream;

    #@b
    .line 53
    return-void
.end method


# virtual methods
.method getNextLine()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 61
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/test/LineReader;->getNextLine(Z)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method getNextLine(Z)Ljava/lang/String;
    .locals 11
    .param p1, "ctrlZ"    # Z

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 80
    const/4 v3, 0x0

    #@2
    .local v3, "i":I
    move v4, v3

    #@3
    .line 86
    .end local v3    # "i":I
    .local v4, "i":I
    :goto_0
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/test/LineReader;->mInStream:Ljava/io/InputStream;

    #@5
    invoke-virtual {v6}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    #@8
    move-result v5

    #@9
    .line 88
    .local v5, "result":I
    if-gez v5, :cond_0

    #@b
    .line 89
    return-object v10

    #@c
    .line 92
    :cond_0
    if-eqz p1, :cond_2

    #@e
    const/16 v6, 0x1a

    #@10
    if-ne v5, v6, :cond_2

    #@12
    :cond_1
    move v3, v4

    #@13
    .line 112
    .end local v4    # "i":I
    .end local v5    # "result":I
    .restart local v3    # "i":I
    :goto_1
    :try_start_1
    new-instance v6, Ljava/lang/String;

    #@15
    iget-object v7, p0, Lcom/android/internal/telephony/test/LineReader;->mBuffer:[B

    #@17
    const-string/jumbo v8, "US-ASCII"

    #@1a
    const/4 v9, 0x0

    #@1b
    invoke-direct {v6, v7, v9, v3, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    #@1e
    return-object v6

    #@1f
    .line 94
    .end local v3    # "i":I
    .restart local v4    # "i":I
    .restart local v5    # "result":I
    :cond_2
    const/16 v6, 0xd

    #@21
    if-eq v5, v6, :cond_3

    #@23
    const/16 v6, 0xa

    #@25
    if-ne v5, v6, :cond_4

    #@27
    .line 95
    :cond_3
    if-nez v4, :cond_1

    #@29
    move v3, v4

    #@2a
    .end local v4    # "i":I
    .restart local v3    # "i":I
    :goto_2
    move v4, v3

    #@2b
    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_0

    #@2c
    .line 103
    :cond_4
    :try_start_2
    iget-object v6, p0, Lcom/android/internal/telephony/test/LineReader;->mBuffer:[B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    #@2e
    add-int/lit8 v3, v4, 0x1

    #@30
    .end local v4    # "i":I
    .restart local v3    # "i":I
    int-to-byte v7, v5

    #@31
    :try_start_3
    aput-byte v7, v6, v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_4

    #@33
    goto :goto_2

    #@34
    .line 105
    :catch_0
    move-exception v0

    #@35
    .line 106
    .end local v5    # "result":I
    .local v0, "ex":Ljava/io/IOException;
    :goto_3
    return-object v10

    #@36
    .line 107
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :catch_1
    move-exception v2

    #@37
    .local v2, "ex":Ljava/lang/IndexOutOfBoundsException;
    move v3, v4

    #@38
    .line 108
    .end local v4    # "i":I
    .restart local v3    # "i":I
    :goto_4
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@3a
    const-string/jumbo v7, "ATChannel: buffer overflow"

    #@3d
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@40
    goto :goto_1

    #@41
    .line 113
    .end local v2    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :catch_2
    move-exception v1

    #@42
    .line 114
    .local v1, "ex":Ljava/io/UnsupportedEncodingException;
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@44
    const-string/jumbo v7, "ATChannel: implausable UnsupportedEncodingException"

    #@47
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@4a
    .line 115
    return-object v10

    #@4b
    .line 105
    .end local v1    # "ex":Ljava/io/UnsupportedEncodingException;
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :catch_3
    move-exception v0

    #@4c
    .restart local v0    # "ex":Ljava/io/IOException;
    move v3, v4

    #@4d
    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_3

    #@4e
    .line 107
    .end local v0    # "ex":Ljava/io/IOException;
    .restart local v5    # "result":I
    :catch_4
    move-exception v2

    #@4f
    .restart local v2    # "ex":Ljava/lang/IndexOutOfBoundsException;
    goto :goto_4
.end method

.method getNextLineCtrlZ()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 67
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/test/LineReader;->getNextLine(Z)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method
