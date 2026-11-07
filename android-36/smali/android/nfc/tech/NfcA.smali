.class public final Landroid/nfc/tech/NfcA;
.super Landroid/nfc/tech/BasicTagTechnology;
.source "NfcA.java"


# static fields
.field public static final greylist-max-o EXTRA_ATQA:Ljava/lang/String; = "atqa"

.field public static final greylist-max-o EXTRA_SAK:Ljava/lang/String; = "sak"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "NFC"


# instance fields
.field private greylist-max-o mAtqa:[B

.field private greylist-max-o mSak:S


# direct methods
.method public constructor greylist-max-o <init>(Landroid/nfc/Tag;)V
    .registers 4
    .param p1, "tag"    # Landroid/nfc/Tag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/nfc/tech/BasicTagTechnology;-><init>(Landroid/nfc/Tag;I)V

    .line 69
    invoke-virtual {p1, v0}, Landroid/nfc/Tag;->getTechExtras(I)Landroid/os/Bundle;

    move-result-object v0

    .line 70
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "sak"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getShort(Ljava/lang/String;)S

    move-result v1

    iput-short v1, p0, Landroid/nfc/tech/NfcA;->mSak:S

    .line 71
    const-string v1, "atqa"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Landroid/nfc/tech/NfcA;->mAtqa:[B

    .line 72
    return-void
.end method

.method public static whitelist get(Landroid/nfc/Tag;)Landroid/nfc/tech/NfcA;
    .registers 3
    .param p0, "tag"    # Landroid/nfc/Tag;

    .line 58
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/nfc/Tag;->hasTech(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    return-object v1

    .line 60
    :cond_9
    :try_start_9
    new-instance v0, Landroid/nfc/tech/NfcA;

    invoke-direct {v0, p0}, Landroid/nfc/tech/NfcA;-><init>(Landroid/nfc/Tag;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_f

    return-object v0

    .line 61
    :catch_f
    move-exception v0

    .line 62
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

    .line 37
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

    .line 37
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->connect()V

    return-void
.end method

.method public whitelist getAtqa()[B
    .registers 2

    .line 82
    iget-object v0, p0, Landroid/nfc/tech/NfcA;->mAtqa:[B

    return-object v0
.end method

.method public whitelist getMaxTransceiveLength()I
    .registers 2

    .line 128
    invoke-virtual {p0}, Landroid/nfc/tech/NfcA;->getMaxTransceiveLengthInternal()I

    move-result v0

    return v0
.end method

.method public whitelist getSak()S
    .registers 2

    .line 93
    iget-short v0, p0, Landroid/nfc/tech/NfcA;->mSak:S

    return v0
.end method

.method public bridge synthetic whitelist getTag()Landroid/nfc/Tag;
    .registers 2

    .line 37
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->getTag()Landroid/nfc/Tag;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTimeout()I
    .registers 4

    .line 167
    :try_start_0
    iget-object v0, p0, Landroid/nfc/tech/NfcA;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v0}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/nfc/INfcTag;->getTimeout(I)I

    move-result v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    return v0

    .line 168
    :catch_c
    move-exception v0

    .line 169
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NFC"

    const-string v2, "NFC service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    const/4 v1, 0x0

    return v1
.end method

.method public bridge synthetic whitelist isConnected()Z
    .registers 2

    .line 37
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

    .line 37
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->reconnect()V

    return-void
.end method

.method public whitelist setTimeout(I)V
    .registers 5
    .param p1, "timeout"    # I

    .line 148
    :try_start_0
    iget-object v0, p0, Landroid/nfc/tech/NfcA;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v0}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Landroid/nfc/INfcTag;->setTimeout(II)I

    move-result v0

    .line 149
    .local v0, "err":I
    if-nez v0, :cond_e

    .line 154
    .end local v0    # "err":I
    goto :goto_1e

    .line 150
    .restart local v0    # "err":I
    :cond_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The supplied timeout is not valid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/nfc/tech/NfcA;
    .end local p1    # "timeout":I
    throw v1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_16

    .line 152
    .end local v0    # "err":I
    .restart local p0    # "this":Landroid/nfc/tech/NfcA;
    .restart local p1    # "timeout":I
    :catch_16
    move-exception v0

    .line 153
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NFC"

    const-string v2, "NFC service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 155
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1e
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

    .line 120
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/nfc/tech/NfcA;->transceive([BZ)[B

    move-result-object v0

    return-object v0
.end method
