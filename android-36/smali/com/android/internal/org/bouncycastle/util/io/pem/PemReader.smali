.class public Lcom/android/internal/org/bouncycastle/util/io/pem/PemReader;
.super Ljava/io/BufferedReader;
.source "PemReader.java"


# static fields
.field private static final blacklist BEGIN:Ljava/lang/String; = "-----BEGIN "

.field private static final blacklist END:Ljava/lang/String; = "-----END "


# direct methods
.method public constructor blacklist <init>(Ljava/io/Reader;)V
    .registers 2
    .param p1, "reader"    # Ljava/io/Reader;

    .line 24
    invoke-direct {p0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 25
    return-void
.end method

.method private blacklist loadObject(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/util/io/pem/PemObject;
    .registers 10
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-----END "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "endMarker":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 65
    .local v1, "buf":Ljava/lang/StringBuffer;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v2, "headers":Ljava/util/List;
    :goto_1d
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "line":Ljava/lang/String;
    if-eqz v3, :cond_54

    .line 69
    const/16 v3, 0x3a

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 70
    .local v3, "index":I
    if-ltz v3, :cond_44

    .line 72
    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 73
    .local v5, "hdr":Ljava/lang/String;
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 75
    .local v6, "value":Ljava/lang/String;
    new-instance v7, Lcom/android/internal/org/bouncycastle/util/io/pem/PemHeader;

    invoke-direct {v7, v5, v6}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    goto :goto_1d

    .line 80
    .end local v5    # "hdr":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :cond_44
    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4c

    .line 82
    goto :goto_54

    .line 85
    :cond_4c
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    .end local v3    # "index":I
    goto :goto_1d

    .line 88
    :cond_54
    :goto_54
    if-eqz v4, :cond_64

    .line 93
    new-instance v3, Lcom/android/internal/org/bouncycastle/util/io/pem/PemObject;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v3, p1, v2, v5}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemObject;-><init>(Ljava/lang/String;Ljava/util/List;[B)V

    return-object v3

    .line 90
    :cond_64
    new-instance v3, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public blacklist readPemObject()Lcom/android/internal/org/bouncycastle/util/io/pem/PemObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "line":Ljava/lang/String;
    :goto_4
    const-string v1, "-----BEGIN "

    if-eqz v0, :cond_13

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 40
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 43
    :cond_13
    if-eqz v0, :cond_3f

    .line 45
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 46
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 48
    .local v1, "index":I
    if-lez v1, :cond_3f

    const-string v2, "-----"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3f

    .line 50
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, "type":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemReader;->loadObject(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/util/io/pem/PemObject;

    move-result-object v3

    return-object v3

    .line 56
    .end local v1    # "index":I
    .end local v2    # "type":Ljava/lang/String;
    :cond_3f
    const/4 v1, 0x0

    return-object v1
.end method
