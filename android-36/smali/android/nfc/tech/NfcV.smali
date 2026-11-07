.class public final Landroid/nfc/tech/NfcV;
.super Landroid/nfc/tech/BasicTagTechnology;
.source "NfcV.java"


# static fields
.field public static final greylist-max-o EXTRA_DSFID:Ljava/lang/String; = "dsfid"

.field public static final greylist-max-o EXTRA_RESP_FLAGS:Ljava/lang/String; = "respflags"


# instance fields
.field private greylist-max-o mDsfId:B

.field private greylist-max-o mRespFlags:B


# direct methods
.method public constructor greylist-max-o <init>(Landroid/nfc/Tag;)V
    .registers 4
    .param p1, "tag"    # Landroid/nfc/Tag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Landroid/nfc/tech/BasicTagTechnology;-><init>(Landroid/nfc/Tag;I)V

    .line 66
    invoke-virtual {p1, v0}, Landroid/nfc/Tag;->getTechExtras(I)Landroid/os/Bundle;

    move-result-object v0

    .line 67
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "respflags"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v1

    iput-byte v1, p0, Landroid/nfc/tech/NfcV;->mRespFlags:B

    .line 68
    const-string v1, "dsfid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v1

    iput-byte v1, p0, Landroid/nfc/tech/NfcV;->mDsfId:B

    .line 69
    return-void
.end method

.method public static whitelist get(Landroid/nfc/Tag;)Landroid/nfc/tech/NfcV;
    .registers 3
    .param p0, "tag"    # Landroid/nfc/Tag;

    .line 55
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/nfc/Tag;->hasTech(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    return-object v1

    .line 57
    :cond_9
    :try_start_9
    new-instance v0, Landroid/nfc/tech/NfcV;

    invoke-direct {v0, p0}, Landroid/nfc/tech/NfcV;-><init>(Landroid/nfc/Tag;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_f

    return-object v0

    .line 58
    :catch_f
    move-exception v0

    .line 59
    .local v0, "e":Landroid/os/RemoteException;
    return-object v1
.end method


# virtual methods
.method public bridge synthetic whitelist test-api close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->close()V

    return-void
.end method

.method public bridge synthetic whitelist connect()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->connect()V

    return-void
.end method

.method public whitelist getDsfId()B
    .registers 2

    .line 90
    iget-byte v0, p0, Landroid/nfc/tech/NfcV;->mDsfId:B

    return v0
.end method

.method public whitelist getMaxTransceiveLength()I
    .registers 2

    .line 124
    invoke-virtual {p0}, Landroid/nfc/tech/NfcV;->getMaxTransceiveLengthInternal()I

    move-result v0

    return v0
.end method

.method public whitelist getResponseFlags()B
    .registers 2

    .line 79
    iget-byte v0, p0, Landroid/nfc/tech/NfcV;->mRespFlags:B

    return v0
.end method

.method public bridge synthetic whitelist getTag()Landroid/nfc/Tag;
    .registers 2

    .line 35
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->getTag()Landroid/nfc/Tag;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist isConnected()Z
    .registers 2

    .line 35
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->isConnected()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic blacklist reconnect()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->reconnect()V

    return-void
.end method

.method public whitelist transceive([B)[B
    .registers 3
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/nfc/tech/NfcV;->transceive([BZ)[B

    move-result-object v0

    return-object v0
.end method
