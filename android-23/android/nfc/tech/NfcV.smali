.class public final Landroid/nfc/tech/NfcV;
.super Landroid/nfc/tech/BasicTagTechnology;
.source "NfcV.java"


# static fields
.field public static final EXTRA_DSFID:Ljava/lang/String; = "dsfid"

.field public static final EXTRA_RESP_FLAGS:Ljava/lang/String; = "respflags"


# instance fields
.field private mDsfId:B

.field private mRespFlags:B


# direct methods
.method public constructor <init>(Landroid/nfc/Tag;)V
    .locals 2
    .param p1, "tag"    # Landroid/nfc/Tag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x5

    #@1
    .line 65
    invoke-direct {p0, p1, v1}, Landroid/nfc/tech/BasicTagTechnology;-><init>(Landroid/nfc/Tag;I)V

    #@4
    .line 66
    invoke-virtual {p1, v1}, Landroid/nfc/Tag;->getTechExtras(I)Landroid/os/Bundle;

    #@7
    move-result-object v0

    #@8
    .line 67
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "respflags"

    #@b
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    #@e
    move-result v1

    #@f
    iput-byte v1, p0, Landroid/nfc/tech/NfcV;->mRespFlags:B

    #@11
    .line 68
    const-string/jumbo v1, "dsfid"

    #@14
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    #@17
    move-result v1

    #@18
    iput-byte v1, p0, Landroid/nfc/tech/NfcV;->mDsfId:B

    #@1a
    .line 64
    return-void
.end method

.method public static get(Landroid/nfc/Tag;)Landroid/nfc/tech/NfcV;
    .locals 3
    .param p0, "tag"    # Landroid/nfc/Tag;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 55
    const/4 v1, 0x5

    #@2
    invoke-virtual {p0, v1}, Landroid/nfc/Tag;->hasTech(I)Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    return-object v2

    #@9
    .line 57
    :cond_0
    :try_start_0
    new-instance v1, Landroid/nfc/tech/NfcV;

    #@b
    invoke-direct {v1, p0}, Landroid/nfc/tech/NfcV;-><init>(Landroid/nfc/Tag;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    return-object v1

    #@f
    .line 58
    :catch_0
    move-exception v0

    #@10
    .line 59
    .local v0, "e":Landroid/os/RemoteException;
    return-object v2
.end method


# virtual methods
.method public bridge synthetic close()V
    .locals 0

    #@0
    .prologue
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->close()V

    #@3
    return-void
.end method

.method public bridge synthetic connect()V
    .locals 0

    #@0
    .prologue
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->connect()V

    #@3
    return-void
.end method

.method public getDsfId()B
    .locals 1

    #@0
    .prologue
    .line 90
    iget-byte v0, p0, Landroid/nfc/tech/NfcV;->mDsfId:B

    #@2
    return v0
.end method

.method public getMaxTransceiveLength()I
    .locals 1

    #@0
    .prologue
    .line 124
    invoke-virtual {p0}, Landroid/nfc/tech/NfcV;->getMaxTransceiveLengthInternal()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getResponseFlags()B
    .locals 1

    #@0
    .prologue
    .line 79
    iget-byte v0, p0, Landroid/nfc/tech/NfcV;->mRespFlags:B

    #@2
    return v0
.end method

.method public bridge synthetic getTag()Landroid/nfc/Tag;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->getTag()Landroid/nfc/Tag;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic isConnected()Z
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->isConnected()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic reconnect()V
    .locals 0

    #@0
    .prologue
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->reconnect()V

    #@3
    return-void
.end method

.method public transceive([B)[B
    .locals 1
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 115
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/nfc/tech/NfcV;->transceive([BZ)[B

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method
