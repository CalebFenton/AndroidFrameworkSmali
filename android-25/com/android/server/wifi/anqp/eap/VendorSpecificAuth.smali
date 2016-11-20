.class public Lcom/android/server/wifi/anqp/eap/VendorSpecificAuth;
.super Ljava/lang/Object;
.source "VendorSpecificAuth.java"

# interfaces
.implements Lcom/android/server/wifi/anqp/eap/AuthParam;


# instance fields
.field private final mData:[B


# direct methods
.method public constructor <init>(ILjava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "length"    # I
    .param p2, "payload"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    #@0
    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 15
    new-array v0, p1, [B

    #@5
    iput-object v0, p0, Lcom/android/server/wifi/anqp/eap/VendorSpecificAuth;->mData:[B

    #@7
    .line 16
    iget-object v0, p0, Lcom/android/server/wifi/anqp/eap/VendorSpecificAuth;->mData:[B

    #@9
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@c
    .line 14
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "thatObject"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 30
    if-ne p1, p0, :cond_0

    #@2
    .line 31
    const/4 v0, 0x1

    #@3
    return v0

    #@4
    .line 32
    :cond_0
    if-eqz p1, :cond_1

    #@6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@9
    move-result-object v0

    #@a
    const-class v1, Lcom/android/server/wifi/anqp/eap/VendorSpecificAuth;

    #@c
    if-eq v0, v1, :cond_2

    #@e
    .line 33
    :cond_1
    const/4 v0, 0x0

    #@f
    return v0

    #@10
    .line 35
    :cond_2
    check-cast p1, Lcom/android/server/wifi/anqp/eap/VendorSpecificAuth;

    #@12
    .end local p1    # "thatObject":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/android/server/wifi/anqp/eap/VendorSpecificAuth;->getData()[B

    #@15
    move-result-object v0

    #@16
    invoke-virtual {p0}, Lcom/android/server/wifi/anqp/eap/VendorSpecificAuth;->getData()[B

    #@19
    move-result-object v1

    #@1a
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    #@1d
    move-result v0

    #@1e
    return v0
.end method

.method public getAuthInfoID()Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;
    .locals 1

    #@0
    .prologue
    .line 21
    sget-object v0, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->VendorSpecific:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    #@2
    return-object v0
.end method

.method public getData()[B
    .locals 1

    #@0
    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/server/wifi/anqp/eap/VendorSpecificAuth;->mData:[B

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/server/wifi/anqp/eap/VendorSpecificAuth;->mData:[B

    #@2
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Auth method VendorSpecificAuth, data = "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lcom/android/server/wifi/anqp/eap/VendorSpecificAuth;->mData:[B

    #@e
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    const/16 v1, 0xa

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    return-object v0
.end method
