.class public Landroid/content/pm/MacAuthenticatedInputStream;
.super Ljava/io/FilterInputStream;
.source "MacAuthenticatedInputStream.java"


# instance fields
.field private final mMac:Ljavax/crypto/Mac;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljavax/crypto/Mac;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "mac"    # Ljavax/crypto/Mac;

    #@0
    .prologue
    .line 36
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    #@3
    .line 38
    iput-object p2, p0, Landroid/content/pm/MacAuthenticatedInputStream;->mMac:Ljavax/crypto/Mac;

    #@5
    .line 35
    return-void
.end method


# virtual methods
.method public isTagEqual([B)Z
    .locals 6
    .param p1, "tag"    # [B

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 42
    iget-object v4, p0, Landroid/content/pm/MacAuthenticatedInputStream;->mMac:Ljavax/crypto/Mac;

    #@3
    invoke-virtual {v4}, Ljavax/crypto/Mac;->doFinal()[B

    #@6
    move-result-object v0

    #@7
    .line 44
    .local v0, "actualTag":[B
    if-eqz p1, :cond_0

    #@9
    if-nez v0, :cond_1

    #@b
    .line 45
    :cond_0
    return v3

    #@c
    .line 44
    :cond_1
    array-length v4, p1

    #@d
    array-length v5, v0

    #@e
    if-ne v4, v5, :cond_0

    #@10
    .line 53
    const/4 v2, 0x0

    #@11
    .line 54
    .local v2, "value":I
    const/4 v1, 0x0

    #@12
    .local v1, "i":I
    :goto_0
    array-length v4, p1

    #@13
    if-ge v1, v4, :cond_2

    #@15
    .line 55
    aget-byte v4, p1, v1

    #@17
    aget-byte v5, v0, v1

    #@19
    xor-int/2addr v4, v5

    #@1a
    or-int/2addr v2, v4

    #@1b
    .line 54
    add-int/lit8 v1, v1, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 58
    :cond_2
    if-nez v2, :cond_3

    #@20
    const/4 v3, 0x1

    #@21
    :cond_3
    return v3
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 63
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    #@3
    move-result v0

    #@4
    .line 64
    .local v0, "b":I
    if-ltz v0, :cond_0

    #@6
    .line 65
    iget-object v1, p0, Landroid/content/pm/MacAuthenticatedInputStream;->mMac:Ljavax/crypto/Mac;

    #@8
    int-to-byte v2, v0

    #@9
    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->update(B)V

    #@c
    .line 67
    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 72
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    #@3
    move-result v0

    #@4
    .line 73
    .local v0, "numRead":I
    if-lez v0, :cond_0

    #@6
    .line 74
    iget-object v1, p0, Landroid/content/pm/MacAuthenticatedInputStream;->mMac:Ljavax/crypto/Mac;

    #@8
    invoke-virtual {v1, p1, p2, v0}, Ljavax/crypto/Mac;->update([BII)V

    #@b
    .line 76
    :cond_0
    return v0
.end method
