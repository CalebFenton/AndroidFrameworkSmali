.class public Ljavax/obex/ObexPacket;
.super Ljava/lang/Object;
.source "ObexPacket.java"


# instance fields
.field public mHeaderId:I

.field public mLength:I

.field public mPayload:[B


# direct methods
.method private constructor <init>(II)V
    .locals 1
    .param p1, "headerId"    # I
    .param p2, "length"    # I

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 26
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Ljavax/obex/ObexPacket;->mPayload:[B

    #@6
    .line 29
    iput p1, p0, Ljavax/obex/ObexPacket;->mHeaderId:I

    #@8
    .line 30
    iput p2, p0, Ljavax/obex/ObexPacket;->mLength:I

    #@a
    .line 28
    return-void
.end method

.method public static read(ILjava/io/InputStream;)Ljavax/obex/ObexPacket;
    .locals 6
    .param p0, "headerId"    # I
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 53
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    #@3
    move-result v1

    #@4
    .line 54
    .local v1, "length":I
    shl-int/lit8 v4, v1, 0x8

    #@6
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    #@9
    move-result v5

    #@a
    add-int v1, v4, v5

    #@c
    .line 56
    new-instance v2, Ljavax/obex/ObexPacket;

    #@e
    invoke-direct {v2, p0, v1}, Ljavax/obex/ObexPacket;-><init>(II)V

    #@11
    .line 59
    .local v2, "newPacket":Ljavax/obex/ObexPacket;
    const/4 v3, 0x0

    #@12
    .line 60
    .local v3, "temp":[B
    const/4 v4, 0x3

    #@13
    if-le v1, v4, :cond_0

    #@15
    .line 62
    add-int/lit8 v4, v1, -0x3

    #@17
    new-array v3, v4, [B

    #@19
    .line 63
    .local v3, "temp":[B
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    #@1c
    move-result v0

    #@1d
    .line 64
    .local v0, "bytesReceived":I
    :goto_0
    array-length v4, v3

    #@1e
    if-eq v0, v4, :cond_0

    #@20
    .line 65
    array-length v4, v3

    #@21
    sub-int/2addr v4, v0

    #@22
    invoke-virtual {p1, v3, v0, v4}, Ljava/io/InputStream;->read([BII)I

    #@25
    move-result v4

    #@26
    add-int/2addr v0, v4

    #@27
    goto :goto_0

    #@28
    .line 68
    .end local v0    # "bytesReceived":I
    .end local v3    # "temp":[B
    :cond_0
    iput-object v3, v2, Ljavax/obex/ObexPacket;->mPayload:[B

    #@2a
    .line 69
    return-object v2
.end method

.method public static read(Ljava/io/InputStream;)Ljavax/obex/ObexPacket;
    .locals 2
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 40
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    #@3
    move-result v0

    #@4
    .line 41
    .local v0, "headerId":I
    invoke-static {v0, p0}, Ljavax/obex/ObexPacket;->read(ILjava/io/InputStream;)Ljavax/obex/ObexPacket;

    #@7
    move-result-object v1

    #@8
    return-object v1
.end method
