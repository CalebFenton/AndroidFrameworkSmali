.class public Lcom/android/server/wifi/anqp/RawByteElement;
.super Lcom/android/server/wifi/anqp/ANQPElement;
.source "RawByteElement.java"


# instance fields
.field private final mPayload:[B


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "infoID"    # Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    .param p2, "payload"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/android/server/wifi/anqp/ANQPElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;)V

    #@3
    .line 13
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    #@6
    move-result v0

    #@7
    new-array v0, v0, [B

    #@9
    iput-object v0, p0, Lcom/android/server/wifi/anqp/RawByteElement;->mPayload:[B

    #@b
    .line 14
    iget-object v0, p0, Lcom/android/server/wifi/anqp/RawByteElement;->mPayload:[B

    #@d
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@10
    .line 11
    return-void
.end method


# virtual methods
.method public getPayload()[B
    .locals 1

    #@0
    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/server/wifi/anqp/RawByteElement;->mPayload:[B

    #@2
    return-object v0
.end method
