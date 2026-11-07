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
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 104
    .local p0, "this":Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;, "Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract greylist-max-o fromPkcs7DerInputStream(Ljava/io/InputStream;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "+TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation
.end method

.method protected abstract greylist-max-o fromPkcs7PemInputStream(Ljava/io/InputStream;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "+TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation
.end method

.method protected abstract greylist-max-o fromX509DerInputStream(Ljava/io/InputStream;)Ljava/lang/Object;
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

.method protected abstract greylist-max-o fromX509PemInputStream(Ljava/io/InputStream;)Ljava/lang/Object;
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

.method greylist-max-o generateItem(Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 9
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

    .line 106
    .local p0, "this":Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;, "Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser<TT;>;"
    if-eqz p1, :cond_65

    .line 110
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    .line 111
    .local v0, "markable":Z
    if-eqz v0, :cond_10

    .line 112
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->-$$Nest$sfgetPKCS7_MARKER()[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {p1, v1}, Ljava/io/InputStream;->mark(I)V

    .line 115
    :cond_10
    new-instance v1, Ljava/io/PushbackInputStream;

    const/16 v2, 0x40

    invoke-direct {v1, p1, v2}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 117
    .local v1, "pbis":Ljava/io/PushbackInputStream;
    :try_start_17
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->-$$Nest$sfgetPKCS7_MARKER()[B

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [B

    .line 119
    .local v2, "buffer":[B
    invoke-virtual {v1, v2}, Ljava/io/PushbackInputStream;->read([B)I

    move-result v3

    .line 120
    .local v3, "len":I
    if-ltz v3, :cond_4f

    .line 124
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 126
    aget-byte v5, v2, v4

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_33

    .line 127
    invoke-virtual {p0, v1}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;->fromX509PemInputStream(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 130
    :cond_33
    invoke-static {v2}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->-$$Nest$smisMaybePkcs7([B)Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 131
    invoke-virtual {p0, v1}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;->fromPkcs7DerInputStream(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v5

    .line 132
    .local v5, "certs":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_45

    .line 133
    const/4 v4, 0x0

    return-object v4

    .line 135
    :cond_45
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 137
    .end local v5    # "certs":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    :cond_4a
    invoke-virtual {p0, v1}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;->fromX509DerInputStream(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 122
    :cond_4f
    new-instance v4, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    const-string v5, "inStream is empty"

    invoke-direct {v4, v5}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/String;)V

    .end local v0    # "markable":Z
    .end local v1    # "pbis":Ljava/io/PushbackInputStream;
    .end local p0    # "this":Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;, "Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser<TT;>;"
    .end local p1    # "inStream":Ljava/io/InputStream;
    throw v4
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_57} :catch_57

    .line 139
    .end local v2    # "buffer":[B
    .end local v3    # "len":I
    .restart local v0    # "markable":Z
    .restart local v1    # "pbis":Ljava/io/PushbackInputStream;
    .restart local p0    # "this":Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;, "Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser<TT;>;"
    .restart local p1    # "inStream":Ljava/io/InputStream;
    :catch_57
    move-exception v2

    .line 140
    .local v2, "e":Ljava/lang/Exception;
    if-eqz v0, :cond_5f

    .line 142
    :try_start_5a
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_5e

    .line 145
    goto :goto_5f

    .line 143
    :catch_5e
    move-exception v3

    .line 147
    :cond_5f
    :goto_5f
    new-instance v3, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    invoke-direct {v3, v2}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/Exception;)V

    throw v3

    .line 107
    .end local v0    # "markable":Z
    .end local v1    # "pbis":Ljava/io/PushbackInputStream;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_65
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    const-string v1, "inStream == null"

    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o generateItems(Ljava/io/InputStream;)Ljava/util/Collection;
    .registers 8
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Collection<",
            "+TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    .line 153
    .local p0, "this":Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;, "Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser<TT;>;"
    if-eqz p1, :cond_78

    .line 157
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    .line 158
    .local v0, "markable":Z
    const/16 v1, 0x40

    if-eqz v0, :cond_d

    .line 159
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->mark(I)V

    .line 163
    :cond_d
    new-instance v2, Ljava/io/PushbackInputStream;

    invoke-direct {v2, p1, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 165
    .local v2, "pbis":Ljava/io/PushbackInputStream;
    :try_start_12
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->-$$Nest$sfgetPKCS7_MARKER()[B

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [B

    .line 167
    .local v3, "buffer":[B
    invoke-virtual {v2, v3}, Ljava/io/PushbackInputStream;->read([B)I

    move-result v4

    .line 168
    .local v4, "len":I
    if-gez v4, :cond_25

    .line 171
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    .line 173
    :cond_25
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 175
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->-$$Nest$sfgetPKCS7_MARKER()[B

    move-result-object v5

    array-length v5, v5

    if-ne v4, v5, :cond_3f

    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->-$$Nest$sfgetPKCS7_MARKER()[B

    move-result-object v5

    invoke-static {v5, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 176
    invoke-virtual {p0, v2}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;->fromPkcs7PemInputStream(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 179
    :cond_3f
    invoke-static {v3}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->-$$Nest$smisMaybePkcs7([B)Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 180
    invoke-virtual {p0, v2}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;->fromPkcs7DerInputStream(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v1
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_49} :catch_6a

    return-object v1

    .line 191
    .end local v3    # "buffer":[B
    .end local v4    # "len":I
    :cond_4a
    nop

    .line 197
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 204
    .local v3, "coll":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_50
    if-eqz v0, :cond_55

    .line 205
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->mark(I)V

    .line 209
    :cond_55
    :try_start_55
    invoke-virtual {p0, v2}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;->generateItem(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v4

    .line 210
    .local v4, "c":Ljava/lang/Object;, "TT;"
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5c
    .catch Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException; {:try_start_55 .. :try_end_5c} :catch_5d

    .line 225
    goto :goto_67

    .line 211
    .end local v4    # "c":Ljava/lang/Object;, "TT;"
    :catch_5d
    move-exception v4

    .line 216
    .local v4, "e":Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
    if-eqz v0, :cond_65

    .line 218
    :try_start_60
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_64

    .line 221
    goto :goto_65

    .line 219
    :catch_64
    move-exception v5

    .line 224
    :cond_65
    :goto_65
    const/4 v5, 0x0

    move-object v4, v5

    .line 226
    .local v4, "c":Ljava/lang/Object;, "TT;"
    :goto_67
    if-nez v4, :cond_50

    .line 228
    return-object v3

    .line 182
    .end local v3    # "coll":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v4    # "c":Ljava/lang/Object;, "TT;"
    :catch_6a
    move-exception v1

    .line 183
    .local v1, "e":Ljava/lang/Exception;
    if-eqz v0, :cond_72

    .line 185
    :try_start_6d
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_71

    .line 188
    goto :goto_72

    .line 186
    :catch_71
    move-exception v3

    .line 190
    :cond_72
    :goto_72
    new-instance v3, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    invoke-direct {v3, v1}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/Exception;)V

    throw v3

    .line 154
    .end local v0    # "markable":Z
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "pbis":Ljava/io/PushbackInputStream;
    :cond_78
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    const-string v1, "inStream == null"

    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
