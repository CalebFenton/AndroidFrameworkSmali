.class public Lcom/android/org/bouncycastle/util/io/pem/PemReader;
.super Ljava/io/BufferedReader;
.source "PemReader.java"


# static fields
.field private static final BEGIN:Ljava/lang/String; = "-----BEGIN "

.field private static final END:Ljava/lang/String; = "-----END "


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 0
    .param p1, "reader"    # Ljava/io/Reader;

    #@0
    .prologue
    .line 22
    invoke-direct {p0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    #@3
    .line 20
    return-void
.end method

.method private loadObject(Ljava/lang/String;)Lcom/android/org/bouncycastle/util/io/pem/PemObject;
    .locals 10
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 54
    new-instance v7, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    const-string/jumbo v8, "-----END "

    #@9
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v7

    #@d
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v7

    #@11
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    .line 55
    .local v1, "endMarker":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuffer;

    #@17
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@1a
    .line 56
    .local v0, "buf":Ljava/lang/StringBuffer;
    new-instance v3, Ljava/util/ArrayList;

    #@1c
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@1f
    .line 58
    .local v3, "headers":Ljava/util/List;
    :goto_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/util/io/pem/PemReader;->readLine()Ljava/lang/String;

    #@22
    move-result-object v5

    #@23
    .local v5, "line":Ljava/lang/String;
    if-eqz v5, :cond_1

    #@25
    .line 60
    const-string/jumbo v7, ":"

    #@28
    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@2b
    move-result v7

    #@2c
    if-ltz v7, :cond_0

    #@2e
    .line 62
    const/16 v7, 0x3a

    #@30
    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(I)I

    #@33
    move-result v4

    #@34
    .line 63
    .local v4, "index":I
    invoke-virtual {v5, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@37
    move-result-object v2

    #@38
    .line 64
    .local v2, "hdr":Ljava/lang/String;
    add-int/lit8 v7, v4, 0x1

    #@3a
    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@3d
    move-result-object v7

    #@3e
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@41
    move-result-object v6

    #@42
    .line 66
    .local v6, "value":Ljava/lang/String;
    new-instance v7, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;

    #@44
    invoke-direct {v7, v2, v6}, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@47
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@4a
    goto :goto_0

    #@4b
    .line 71
    .end local v2    # "hdr":Ljava/lang/String;
    .end local v4    # "index":I
    .end local v6    # "value":Ljava/lang/String;
    :cond_0
    invoke-virtual {v5, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@4e
    move-result v7

    #@4f
    const/4 v8, -0x1

    #@50
    if-eq v7, v8, :cond_2

    #@52
    .line 79
    :cond_1
    if-nez v5, :cond_3

    #@54
    .line 81
    new-instance v7, Ljava/io/IOException;

    #@56
    new-instance v8, Ljava/lang/StringBuilder;

    #@58
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@5b
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v8

    #@5f
    const-string/jumbo v9, " not found"

    #@62
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v8

    #@66
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v8

    #@6a
    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@6d
    throw v7

    #@6e
    .line 76
    :cond_2
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@71
    move-result-object v7

    #@72
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@75
    goto :goto_0

    #@76
    .line 84
    :cond_3
    new-instance v7, Lcom/android/org/bouncycastle/util/io/pem/PemObject;

    #@78
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@7b
    move-result-object v8

    #@7c
    invoke-static {v8}, Lcom/android/org/bouncycastle/util/encoders/Base64;->decode(Ljava/lang/String;)[B

    #@7f
    move-result-object v8

    #@80
    invoke-direct {v7, p1, v3, v8}, Lcom/android/org/bouncycastle/util/io/pem/PemObject;-><init>(Ljava/lang/String;Ljava/util/List;[B)V

    #@83
    return-object v7
.end method


# virtual methods
.method public readPemObject()Lcom/android/org/bouncycastle/util/io/pem/PemObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 28
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/util/io/pem/PemReader;->readLine()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    .line 30
    .local v1, "line":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_0

    #@8
    const-string/jumbo v3, "-----BEGIN "

    #@b
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_1

    #@11
    .line 35
    :cond_0
    if-eqz v1, :cond_2

    #@13
    .line 37
    const-string/jumbo v3, "-----BEGIN "

    #@16
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@19
    move-result v3

    #@1a
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    .line 38
    const/16 v3, 0x2d

    #@20
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    #@23
    move-result v0

    #@24
    .line 39
    .local v0, "index":I
    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    .line 41
    .local v2, "type":Ljava/lang/String;
    if-lez v0, :cond_2

    #@2a
    .line 43
    invoke-direct {p0, v2}, Lcom/android/org/bouncycastle/util/io/pem/PemReader;->loadObject(Ljava/lang/String;)Lcom/android/org/bouncycastle/util/io/pem/PemObject;

    #@2d
    move-result-object v3

    #@2e
    return-object v3

    #@2f
    .line 32
    .end local v0    # "index":I
    .end local v2    # "type":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/util/io/pem/PemReader;->readLine()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    goto :goto_0

    #@34
    .line 47
    :cond_2
    return-object v4
.end method
