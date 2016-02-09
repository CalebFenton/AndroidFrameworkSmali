.class public final Landroid/nfc/tech/NfcB;
.super Landroid/nfc/tech/BasicTagTechnology;
.source "NfcB.java"


# static fields
.field public static final EXTRA_APPDATA:Ljava/lang/String; = "appdata"

.field public static final EXTRA_PROTINFO:Ljava/lang/String; = "protinfo"


# instance fields
.field private mAppData:[B

.field private mProtInfo:[B


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
    const/4 v1, 0x2

    #@1
    .line 64
    invoke-direct {p0, p1, v1}, Landroid/nfc/tech/BasicTagTechnology;-><init>(Landroid/nfc/Tag;I)V

    #@4
    .line 65
    invoke-virtual {p1, v1}, Landroid/nfc/Tag;->getTechExtras(I)Landroid/os/Bundle;

    #@7
    move-result-object v0

    #@8
    .line 66
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "appdata"

    #@b
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    #@e
    move-result-object v1

    #@f
    iput-object v1, p0, Landroid/nfc/tech/NfcB;->mAppData:[B

    #@11
    .line 67
    const-string/jumbo v1, "protinfo"

    #@14
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    #@17
    move-result-object v1

    #@18
    iput-object v1, p0, Landroid/nfc/tech/NfcB;->mProtInfo:[B

    #@1a
    .line 63
    return-void
.end method

.method public static get(Landroid/nfc/Tag;)Landroid/nfc/tech/NfcB;
    .locals 3
    .param p0, "tag"    # Landroid/nfc/Tag;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 54
    const/4 v1, 0x2

    #@2
    invoke-virtual {p0, v1}, Landroid/nfc/Tag;->hasTech(I)Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    return-object v2

    #@9
    .line 56
    :cond_0
    :try_start_0
    new-instance v1, Landroid/nfc/tech/NfcB;

    #@b
    invoke-direct {v1, p0}, Landroid/nfc/tech/NfcB;-><init>(Landroid/nfc/Tag;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    return-object v1

    #@f
    .line 57
    :catch_0
    move-exception v0

    #@10
    .line 58
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

.method public getApplicationData()[B
    .locals 1

    #@0
    .prologue
    .line 78
    iget-object v0, p0, Landroid/nfc/tech/NfcB;->mAppData:[B

    #@2
    return-object v0
.end method

.method public getMaxTransceiveLength()I
    .locals 1

    #@0
    .prologue
    .line 123
    invoke-virtual {p0}, Landroid/nfc/tech/NfcB;->getMaxTransceiveLengthInternal()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getProtocolInfo()[B
    .locals 1

    #@0
    .prologue
    .line 89
    iget-object v0, p0, Landroid/nfc/tech/NfcB;->mProtInfo:[B

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
    invoke-virtual {p0, p1, v0}, Landroid/nfc/tech/NfcB;->transceive([BZ)[B

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method
