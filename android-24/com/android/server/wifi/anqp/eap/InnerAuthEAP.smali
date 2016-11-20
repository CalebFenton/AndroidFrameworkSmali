.class public Lcom/android/server/wifi/anqp/eap/InnerAuthEAP;
.super Ljava/lang/Object;
.source "InnerAuthEAP.java"

# interfaces
.implements Lcom/android/server/wifi/anqp/eap/AuthParam;


# instance fields
.field private final mEapMethodID:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;


# direct methods
.method public constructor <init>(ILjava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "length"    # I
    .param p2, "payload"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    #@0
    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 16
    const/4 v1, 0x1

    #@4
    if-eq p1, v1, :cond_0

    #@6
    .line 17
    new-instance v1, Ljava/net/ProtocolException;

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "Bad length: "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v1

    #@20
    .line 19
    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    #@23
    move-result v1

    #@24
    and-int/lit16 v0, v1, 0xff

    #@26
    .line 20
    .local v0, "typeID":I
    invoke-static {v0}, Lcom/android/server/wifi/anqp/eap/EAP;->mapEAPMethod(I)Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@29
    move-result-object v1

    #@2a
    iput-object v1, p0, Lcom/android/server/wifi/anqp/eap/InnerAuthEAP;->mEapMethodID:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@2c
    .line 15
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;)V
    .locals 0
    .param p1, "eapMethodID"    # Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@0
    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 24
    iput-object p1, p0, Lcom/android/server/wifi/anqp/eap/InnerAuthEAP;->mEapMethodID:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@5
    .line 23
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "thatObject"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 43
    if-ne p1, p0, :cond_0

    #@4
    .line 44
    return v0

    #@5
    .line 45
    :cond_0
    if-eqz p1, :cond_1

    #@7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v2

    #@b
    const-class v3, Lcom/android/server/wifi/anqp/eap/InnerAuthEAP;

    #@d
    if-eq v2, v3, :cond_2

    #@f
    .line 46
    :cond_1
    return v1

    #@10
    .line 48
    :cond_2
    check-cast p1, Lcom/android/server/wifi/anqp/eap/InnerAuthEAP;

    #@12
    .end local p1    # "thatObject":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/android/server/wifi/anqp/eap/InnerAuthEAP;->getEAPMethodID()Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {p0}, Lcom/android/server/wifi/anqp/eap/InnerAuthEAP;->getEAPMethodID()Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@19
    move-result-object v3

    #@1a
    if-ne v2, v3, :cond_3

    #@1c
    :goto_0
    return v0

    #@1d
    :cond_3
    move v0, v1

    #@1e
    goto :goto_0
.end method

.method public getAuthInfoID()Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;
    .locals 1

    #@0
    .prologue
    .line 29
    sget-object v0, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->InnerAuthEAPMethodType:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    #@2
    return-object v0
.end method

.method public getEAPMethodID()Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;
    .locals 1

    #@0
    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/server/wifi/anqp/eap/InnerAuthEAP;->mEapMethodID:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/server/wifi/anqp/eap/InnerAuthEAP;->mEapMethodID:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/server/wifi/anqp/eap/InnerAuthEAP;->mEapMethodID:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@6
    invoke-virtual {v0}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->hashCode()I

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Auth method InnerAuthEAP, inner = "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lcom/android/server/wifi/anqp/eap/InnerAuthEAP;->mEapMethodID:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const/16 v1, 0xa

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    return-object v0
.end method
