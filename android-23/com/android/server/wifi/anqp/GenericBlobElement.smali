.class public Lcom/android/server/wifi/anqp/GenericBlobElement;
.super Lcom/android/server/wifi/anqp/ANQPElement;
.source "GenericBlobElement.java"


# instance fields
.field private final mData:[B


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "infoID"    # Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    .param p2, "payload"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/android/server/wifi/anqp/ANQPElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;)V

    #@3
    .line 15
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    #@6
    move-result v0

    #@7
    new-array v0, v0, [B

    #@9
    iput-object v0, p0, Lcom/android/server/wifi/anqp/GenericBlobElement;->mData:[B

    #@b
    .line 16
    iget-object v0, p0, Lcom/android/server/wifi/anqp/GenericBlobElement;->mData:[B

    #@d
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@10
    .line 13
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    #@0
    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/server/wifi/anqp/GenericBlobElement;->mData:[B

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Element ID "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p0}, Lcom/android/server/wifi/anqp/GenericBlobElement;->getID()Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    const-string/jumbo v1, ": "

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    iget-object v1, p0, Lcom/android/server/wifi/anqp/GenericBlobElement;->mData:[B

    #@1d
    invoke-static {v1}, Lcom/android/server/wifi/hotspot2/Utils;->toHexString([B)Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    return-object v0
.end method
