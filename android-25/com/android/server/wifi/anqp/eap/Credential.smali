.class public Lcom/android/server/wifi/anqp/eap/Credential;
.super Ljava/lang/Object;
.source "Credential.java"

# interfaces
.implements Lcom/android/server/wifi/anqp/eap/AuthParam;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/anqp/eap/Credential$CredType;
    }
.end annotation


# instance fields
.field private final mAuthInfoID:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

.field private final mCredType:Lcom/android/server/wifi/anqp/eap/Credential$CredType;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;ILjava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "infoID"    # Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;
    .param p2, "length"    # I
    .param p3, "payload"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    #@0
    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 31
    const/4 v1, 0x1

    #@4
    if-eq p2, v1, :cond_0

    #@6
    .line 32
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
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
    .line 35
    :cond_0
    iput-object p1, p0, Lcom/android/server/wifi/anqp/eap/Credential;->mAuthInfoID:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    #@22
    .line 36
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->get()B

    #@25
    move-result v1

    #@26
    and-int/lit16 v0, v1, 0xff

    #@28
    .line 38
    .local v0, "typeID":I
    invoke-static {}, Lcom/android/server/wifi/anqp/eap/Credential$CredType;->values()[Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    #@2b
    move-result-object v1

    #@2c
    array-length v1, v1

    #@2d
    if-ge v0, v1, :cond_1

    #@2f
    .line 39
    invoke-static {}, Lcom/android/server/wifi/anqp/eap/Credential$CredType;->values()[Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    #@32
    move-result-object v1

    #@33
    aget-object v1, v1, v0

    #@35
    .line 38
    :goto_0
    iput-object v1, p0, Lcom/android/server/wifi/anqp/eap/Credential;->mCredType:Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    #@37
    .line 30
    return-void

    #@38
    .line 40
    :cond_1
    sget-object v1, Lcom/android/server/wifi/anqp/eap/Credential$CredType;->Reserved:Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    #@3a
    goto :goto_0
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
    .line 55
    if-ne p1, p0, :cond_0

    #@4
    .line 56
    return v0

    #@5
    .line 57
    :cond_0
    if-eqz p1, :cond_1

    #@7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v2

    #@b
    const-class v3, Lcom/android/server/wifi/anqp/eap/Credential;

    #@d
    if-eq v2, v3, :cond_2

    #@f
    .line 58
    :cond_1
    return v1

    #@10
    .line 60
    :cond_2
    check-cast p1, Lcom/android/server/wifi/anqp/eap/Credential;

    #@12
    .end local p1    # "thatObject":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/android/server/wifi/anqp/eap/Credential;->getCredType()Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {p0}, Lcom/android/server/wifi/anqp/eap/Credential;->getCredType()Lcom/android/server/wifi/anqp/eap/Credential$CredType;

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
    .line 45
    iget-object v0, p0, Lcom/android/server/wifi/anqp/eap/Credential;->mAuthInfoID:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    #@2
    return-object v0
.end method

.method public getCredType()Lcom/android/server/wifi/anqp/eap/Credential$CredType;
    .locals 1

    #@0
    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/wifi/anqp/eap/Credential;->mCredType:Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/server/wifi/anqp/eap/Credential;->mAuthInfoID:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    #@2
    invoke-virtual {v0}, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->hashCode()I

    #@5
    move-result v0

    #@6
    mul-int/lit8 v0, v0, 0x1f

    #@8
    iget-object v1, p0, Lcom/android/server/wifi/anqp/eap/Credential;->mCredType:Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    #@a
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/Credential$CredType;->hashCode()I

    #@d
    move-result v1

    #@e
    add-int/2addr v0, v1

    #@f
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Auth method "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lcom/android/server/wifi/anqp/eap/Credential;->mAuthInfoID:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, " = "

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget-object v1, p0, Lcom/android/server/wifi/anqp/eap/Credential;->mCredType:Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    const-string/jumbo v1, "\n"

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    return-object v0
.end method
