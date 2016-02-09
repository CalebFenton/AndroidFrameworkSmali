.class public final Landroid/nfc/tech/NfcF;
.super Landroid/nfc/tech/BasicTagTechnology;
.source "NfcF.java"


# static fields
.field public static final EXTRA_PMM:Ljava/lang/String; = "pmm"

.field public static final EXTRA_SC:Ljava/lang/String; = "systemcode"

.field private static final TAG:Ljava/lang/String; = "NFC"


# instance fields
.field private mManufacturer:[B

.field private mSystemCode:[B


# direct methods
.method public constructor <init>(Landroid/nfc/Tag;)V
    .locals 3
    .param p1, "tag"    # Landroid/nfc/Tag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x4

    #@1
    const/4 v1, 0x0

    #@2
    .line 68
    invoke-direct {p0, p1, v2}, Landroid/nfc/tech/BasicTagTechnology;-><init>(Landroid/nfc/Tag;I)V

    #@5
    .line 45
    iput-object v1, p0, Landroid/nfc/tech/NfcF;->mSystemCode:[B

    #@7
    .line 46
    iput-object v1, p0, Landroid/nfc/tech/NfcF;->mManufacturer:[B

    #@9
    .line 69
    invoke-virtual {p1, v2}, Landroid/nfc/Tag;->getTechExtras(I)Landroid/os/Bundle;

    #@c
    move-result-object v0

    #@d
    .line 70
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    #@f
    .line 71
    const-string/jumbo v1, "systemcode"

    #@12
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    #@15
    move-result-object v1

    #@16
    iput-object v1, p0, Landroid/nfc/tech/NfcF;->mSystemCode:[B

    #@18
    .line 72
    const-string/jumbo v1, "pmm"

    #@1b
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    #@1e
    move-result-object v1

    #@1f
    iput-object v1, p0, Landroid/nfc/tech/NfcF;->mManufacturer:[B

    #@21
    .line 67
    :cond_0
    return-void
.end method

.method public static get(Landroid/nfc/Tag;)Landroid/nfc/tech/NfcF;
    .locals 3
    .param p0, "tag"    # Landroid/nfc/Tag;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 58
    const/4 v1, 0x4

    #@2
    invoke-virtual {p0, v1}, Landroid/nfc/Tag;->hasTech(I)Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    return-object v2

    #@9
    .line 60
    :cond_0
    :try_start_0
    new-instance v1, Landroid/nfc/tech/NfcF;

    #@b
    invoke-direct {v1, p0}, Landroid/nfc/tech/NfcF;-><init>(Landroid/nfc/Tag;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    return-object v1

    #@f
    .line 61
    :catch_0
    move-exception v0

    #@10
    .line 62
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

.method public getManufacturer()[B
    .locals 1

    #@0
    .prologue
    .line 95
    iget-object v0, p0, Landroid/nfc/tech/NfcF;->mManufacturer:[B

    #@2
    return-object v0
.end method

.method public getMaxTransceiveLength()I
    .locals 1

    #@0
    .prologue
    .line 127
    invoke-virtual {p0}, Landroid/nfc/tech/NfcF;->getMaxTransceiveLengthInternal()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getSystemCode()[B
    .locals 1

    #@0
    .prologue
    .line 84
    iget-object v0, p0, Landroid/nfc/tech/NfcF;->mSystemCode:[B

    #@2
    return-object v0
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

.method public getTimeout()I
    .locals 3

    #@0
    .prologue
    .line 164
    :try_start_0
    iget-object v1, p0, Landroid/nfc/tech/NfcF;->mTag:Landroid/nfc/Tag;

    #@2
    invoke-virtual {v1}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    #@5
    move-result-object v1

    #@6
    const/4 v2, 0x4

    #@7
    invoke-interface {v1, v2}, Landroid/nfc/INfcTag;->getTimeout(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result v1

    #@b
    return v1

    #@c
    .line 165
    :catch_0
    move-exception v0

    #@d
    .line 166
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "NFC"

    #@10
    const-string/jumbo v2, "NFC service dead"

    #@13
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@16
    .line 167
    const/4 v1, 0x0

    #@17
    return v1
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

.method public setTimeout(I)V
    .locals 4
    .param p1, "timeout"    # I

    #@0
    .prologue
    .line 146
    :try_start_0
    iget-object v2, p0, Landroid/nfc/tech/NfcF;->mTag:Landroid/nfc/Tag;

    #@2
    invoke-virtual {v2}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    #@5
    move-result-object v2

    #@6
    const/4 v3, 0x4

    #@7
    invoke-interface {v2, v3, p1}, Landroid/nfc/INfcTag;->setTimeout(II)I

    #@a
    move-result v1

    #@b
    .line 147
    .local v1, "err":I
    if-eqz v1, :cond_0

    #@d
    .line 148
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v3, "The supplied timeout is not valid"

    #@12
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    .line 150
    .end local v1    # "err":I
    :catch_0
    move-exception v0

    #@17
    .line 151
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "NFC"

    #@1a
    const-string/jumbo v3, "NFC service dead"

    #@1d
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@20
    .line 144
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
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
    .line 119
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/nfc/tech/NfcF;->transceive([BZ)[B

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method
