.class abstract Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;
.super Ljava/lang/Object;
.source "OpenSSLX509CertificateFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Parser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 64
    .local p0, "this":Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;, "Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;)V
    .locals 0

    #@0
    .prologue
    .local p0, "this":Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;, "Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser<TT;>;"
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected abstract fromPkcs7DerInputStream(Ljava/io/InputStream;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List",
            "<+TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation
.end method

.method protected abstract fromPkcs7PemInputStream(Ljava/io/InputStream;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List",
            "<+TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation
.end method

.method protected abstract fromX509DerInputStream(Ljava/io/InputStream;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation
.end method

.method protected abstract fromX509PemInputStream(Ljava/io/InputStream;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation
.end method

.method public generateItem(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 11
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;, "Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser<TT;>;"
    const/4 v10, 0x0

    #@1
    .line 66
    if-nez p1, :cond_0

    #@3
    .line 67
    new-instance v8, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    #@5
    const-string/jumbo v9, "inStream == null"

    #@8
    invoke-direct {v8, v9}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/String;)V

    #@b
    throw v8

    #@c
    .line 70
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    #@f
    move-result v6

    #@10
    .line 71
    .local v6, "markable":Z
    if-eqz v6, :cond_1

    #@12
    .line 72
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->-get0()[B

    #@15
    move-result-object v8

    #@16
    array-length v8, v8

    #@17
    invoke-virtual {p1, v8}, Ljava/io/InputStream;->mark(I)V

    #@1a
    .line 75
    :cond_1
    new-instance v7, Ljava/io/PushbackInputStream;

    #@1c
    const/16 v8, 0x40

    #@1e
    invoke-direct {v7, p1, v8}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    #@21
    .line 77
    .local v7, "pbis":Ljava/io/PushbackInputStream;
    :try_start_0
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->-get0()[B

    #@24
    move-result-object v8

    #@25
    array-length v8, v8

    #@26
    new-array v0, v8, [B

    #@28
    .line 79
    .local v0, "buffer":[B
    invoke-virtual {v7, v0}, Ljava/io/PushbackInputStream;->read([B)I

    #@2b
    move-result v5

    #@2c
    .line 80
    .local v5, "len":I
    if-gez v5, :cond_3

    #@2e
    .line 82
    new-instance v8, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    #@30
    const-string/jumbo v9, "inStream is empty"

    #@33
    invoke-direct {v8, v9}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/String;)V

    #@36
    throw v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@37
    .line 108
    .end local v0    # "buffer":[B
    .end local v5    # "len":I
    :catch_0
    move-exception v2

    #@38
    .line 109
    .local v2, "e":Ljava/lang/Exception;
    if-eqz v6, :cond_2

    #@3a
    .line 111
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@3d
    .line 115
    :cond_2
    :goto_0
    new-instance v8, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    #@3f
    invoke-direct {v8, v2}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/Exception;)V

    #@42
    throw v8

    #@43
    .line 84
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "buffer":[B
    .restart local v5    # "len":I
    :cond_3
    const/4 v8, 0x0

    #@44
    :try_start_2
    invoke-virtual {v7, v0, v8, v5}, Ljava/io/PushbackInputStream;->unread([BII)V

    #@47
    .line 86
    const/4 v8, 0x0

    #@48
    aget-byte v8, v0, v8

    #@4a
    const/16 v9, 0x2d

    #@4c
    if-ne v8, v9, :cond_5

    #@4e
    .line 87
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->-get0()[B

    #@51
    move-result-object v8

    #@52
    array-length v8, v8

    #@53
    if-ne v5, v8, :cond_6

    #@55
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->-get0()[B

    #@58
    move-result-object v8

    #@59
    invoke-static {v8, v0}, Ljava/util/Arrays;->equals([B[B)Z

    #@5c
    move-result v8

    #@5d
    if-eqz v8, :cond_6

    #@5f
    .line 88
    invoke-virtual {p0, v7}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;->fromPkcs7PemInputStream(Ljava/io/InputStream;)Ljava/util/List;

    #@62
    move-result-object v4

    #@63
    .line 89
    .local v4, "items":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@66
    move-result v8

    #@67
    if-nez v8, :cond_4

    #@69
    .line 90
    return-object v10

    #@6a
    .line 92
    :cond_4
    const/4 v8, 0x0

    #@6b
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@6e
    .line 99
    .end local v4    # "items":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    :cond_5
    const/4 v8, 0x4

    #@6f
    aget-byte v8, v0, v8

    #@71
    const/4 v9, 0x6

    #@72
    if-ne v8, v9, :cond_8

    #@74
    .line 100
    invoke-virtual {p0, v7}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;->fromPkcs7DerInputStream(Ljava/io/InputStream;)Ljava/util/List;

    #@77
    move-result-object v1

    #@78
    .line 101
    .local v1, "certs":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@7b
    move-result v8

    #@7c
    if-nez v8, :cond_7

    #@7e
    .line 102
    return-object v10

    #@7f
    .line 94
    .end local v1    # "certs":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    :cond_6
    invoke-virtual {p0, v7}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;->fromX509PemInputStream(Ljava/io/InputStream;)Ljava/lang/Object;

    #@82
    move-result-object v8

    #@83
    return-object v8

    #@84
    .line 104
    .restart local v1    # "certs":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    :cond_7
    const/4 v8, 0x0

    #@85
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@88
    move-result-object v8

    #@89
    return-object v8

    #@8a
    .line 106
    .end local v1    # "certs":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    :cond_8
    invoke-virtual {p0, v7}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;->fromX509DerInputStream(Ljava/io/InputStream;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    #@8d
    move-result-object v8

    #@8e
    return-object v8

    #@8f
    .line 112
    .end local v0    # "buffer":[B
    .end local v5    # "len":I
    .restart local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    #@90
    .local v3, "ignored":Ljava/io/IOException;
    goto :goto_0
.end method

.method public generateItems(Ljava/io/InputStream;)Ljava/util/Collection;
    .locals 13
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Collection",
            "<+TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;, "Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser<TT;>;"
    const/16 v12, 0x40

    #@2
    .line 121
    if-nez p1, :cond_0

    #@4
    .line 122
    new-instance v10, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    #@6
    const-string/jumbo v11, "inStream == null"

    #@9
    invoke-direct {v10, v11}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/String;)V

    #@c
    throw v10

    #@d
    .line 125
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    #@10
    move-result v10

    #@11
    if-nez v10, :cond_1

    #@13
    .line 126
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    move-result-object v10

    #@17
    return-object v10

    #@18
    .line 128
    :catch_0
    move-exception v4

    #@19
    .line 129
    .local v4, "e":Ljava/io/IOException;
    new-instance v10, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    #@1b
    const-string/jumbo v11, "Problem reading input stream"

    #@1e
    invoke-direct {v10, v11, v4}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    #@21
    throw v10

    #@22
    .line 132
    .end local v4    # "e":Ljava/io/IOException;
    :cond_1
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    #@25
    move-result v8

    #@26
    .line 133
    .local v8, "markable":Z
    if-eqz v8, :cond_2

    #@28
    .line 134
    invoke-virtual {p1, v12}, Ljava/io/InputStream;->mark(I)V

    #@2b
    .line 138
    :cond_2
    new-instance v9, Ljava/io/PushbackInputStream;

    #@2d
    invoke-direct {v9, p1, v12}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    #@30
    .line 140
    .local v9, "pbis":Ljava/io/PushbackInputStream;
    :try_start_1
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->-get0()[B

    #@33
    move-result-object v10

    #@34
    array-length v10, v10

    #@35
    new-array v0, v10, [B

    #@37
    .line 142
    .local v0, "buffer":[B
    invoke-virtual {v9, v0}, Ljava/io/PushbackInputStream;->read([B)I

    #@3a
    move-result v7

    #@3b
    .line 143
    .local v7, "len":I
    if-gez v7, :cond_4

    #@3d
    .line 145
    new-instance v10, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    #@3f
    const-string/jumbo v11, "inStream is empty"

    #@42
    invoke-direct {v10, v11}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/String;)V

    #@45
    throw v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@46
    .line 157
    .end local v0    # "buffer":[B
    .end local v7    # "len":I
    :catch_1
    move-exception v5

    #@47
    .line 158
    .local v5, "e":Ljava/lang/Exception;
    if-eqz v8, :cond_3

    #@49
    .line 160
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    #@4c
    .line 164
    :cond_3
    :goto_0
    new-instance v10, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    #@4e
    invoke-direct {v10, v5}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/Exception;)V

    #@51
    throw v10

    #@52
    .line 147
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v0    # "buffer":[B
    .restart local v7    # "len":I
    :cond_4
    const/4 v10, 0x0

    #@53
    :try_start_3
    invoke-virtual {v9, v0, v10, v7}, Ljava/io/PushbackInputStream;->unread([BII)V

    #@56
    .line 149
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->-get0()[B

    #@59
    move-result-object v10

    #@5a
    array-length v10, v10

    #@5b
    if-ne v7, v10, :cond_5

    #@5d
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->-get0()[B

    #@60
    move-result-object v10

    #@61
    invoke-static {v10, v0}, Ljava/util/Arrays;->equals([B[B)Z

    #@64
    move-result v10

    #@65
    if-eqz v10, :cond_5

    #@67
    .line 150
    invoke-virtual {p0, v9}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;->fromPkcs7PemInputStream(Ljava/io/InputStream;)Ljava/util/List;

    #@6a
    move-result-object v10

    #@6b
    return-object v10

    #@6c
    .line 154
    :cond_5
    const/4 v10, 0x4

    #@6d
    aget-byte v10, v0, v10

    #@6f
    const/4 v11, 0x6

    #@70
    if-ne v10, v11, :cond_6

    #@72
    .line 155
    invoke-virtual {p0, v9}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;->fromPkcs7DerInputStream(Ljava/io/InputStream;)Ljava/util/List;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    #@75
    move-result-object v10

    #@76
    return-object v10

    #@77
    .line 161
    .end local v0    # "buffer":[B
    .end local v7    # "len":I
    .restart local v5    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v6

    #@78
    .local v6, "ignored":Ljava/io/IOException;
    goto :goto_0

    #@79
    .line 171
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "ignored":Ljava/io/IOException;
    .restart local v0    # "buffer":[B
    .restart local v7    # "len":I
    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    #@7b
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@7e
    .line 172
    .local v2, "coll":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v1, 0x0

    #@7f
    .line 178
    :cond_7
    if-eqz v8, :cond_8

    #@81
    .line 179
    invoke-virtual {p1, v12}, Ljava/io/InputStream;->mark(I)V

    #@84
    .line 183
    :cond_8
    :try_start_4
    invoke-virtual {p0, v9}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;->generateItem(Ljava/io/InputStream;)Ljava/lang/Object;

    #@87
    move-result-object v1

    #@88
    .line 184
    .local v1, "c":Ljava/lang/Object;, "TT;"
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException; {:try_start_4 .. :try_end_4} :catch_3

    #@8b
    .line 199
    .end local v1    # "c":Ljava/lang/Object;, "TT;"
    :goto_1
    if-nez v1, :cond_7

    #@8d
    .line 201
    return-object v2

    #@8e
    .line 185
    :catch_3
    move-exception v3

    #@8f
    .line 190
    .local v3, "e":Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
    if-eqz v8, :cond_9

    #@91
    .line 192
    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    #@94
    .line 197
    :cond_9
    :goto_2
    const/4 v1, 0x0

    #@95
    .restart local v1    # "c":Ljava/lang/Object;, "TT;"
    goto :goto_1

    #@96
    .line 193
    .end local v1    # "c":Ljava/lang/Object;, "TT;"
    :catch_4
    move-exception v6

    #@97
    .restart local v6    # "ignored":Ljava/io/IOException;
    goto :goto_2
.end method
