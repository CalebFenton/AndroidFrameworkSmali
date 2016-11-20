.class public final Landroid/nfc/tech/NfcBarcode;
.super Landroid/nfc/tech/BasicTagTechnology;
.source "NfcBarcode.java"


# static fields
.field public static final EXTRA_BARCODE_TYPE:Ljava/lang/String; = "barcodetype"

.field public static final TYPE_KOVIO:I = 0x1

.field public static final TYPE_UNKNOWN:I = -0x1


# instance fields
.field private mType:I


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
    const/16 v1, 0xa

    #@2
    .line 64
    invoke-direct {p0, p1, v1}, Landroid/nfc/tech/BasicTagTechnology;-><init>(Landroid/nfc/Tag;I)V

    #@5
    .line 65
    invoke-virtual {p1, v1}, Landroid/nfc/Tag;->getTechExtras(I)Landroid/os/Bundle;

    #@8
    move-result-object v0

    #@9
    .line 66
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    #@b
    .line 67
    const-string/jumbo v1, "barcodetype"

    #@e
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@11
    move-result v1

    #@12
    iput v1, p0, Landroid/nfc/tech/NfcBarcode;->mType:I

    #@14
    .line 63
    return-void

    #@15
    .line 69
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    #@17
    const-string/jumbo v2, "NfcBarcode tech extras are null."

    #@1a
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v1
.end method

.method public static get(Landroid/nfc/Tag;)Landroid/nfc/tech/NfcBarcode;
    .locals 3
    .param p0, "tag"    # Landroid/nfc/Tag;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 51
    const/16 v1, 0xa

    #@3
    invoke-virtual {p0, v1}, Landroid/nfc/Tag;->hasTech(I)Z

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_0

    #@9
    return-object v2

    #@a
    .line 53
    :cond_0
    :try_start_0
    new-instance v1, Landroid/nfc/tech/NfcBarcode;

    #@c
    invoke-direct {v1, p0}, Landroid/nfc/tech/NfcBarcode;-><init>(Landroid/nfc/Tag;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    return-object v1

    #@10
    .line 54
    :catch_0
    move-exception v0

    #@11
    .line 55
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

.method public getBarcode()[B
    .locals 1

    #@0
    .prologue
    .line 122
    iget v0, p0, Landroid/nfc/tech/NfcBarcode;->mType:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 127
    const/4 v0, 0x0

    #@6
    return-object v0

    #@7
    .line 125
    :pswitch_0
    iget-object v0, p0, Landroid/nfc/tech/NfcBarcode;->mTag:Landroid/nfc/Tag;

    #@9
    invoke-virtual {v0}, Landroid/nfc/Tag;->getId()[B

    #@c
    move-result-object v0

    #@d
    return-object v0

    #@e
    .line 122
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
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

.method public getType()I
    .locals 1

    #@0
    .prologue
    .line 83
    iget v0, p0, Landroid/nfc/tech/NfcBarcode;->mType:I

    #@2
    return v0
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
