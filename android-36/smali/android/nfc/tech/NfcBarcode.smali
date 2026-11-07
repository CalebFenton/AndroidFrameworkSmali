.class public final Landroid/nfc/tech/NfcBarcode;
.super Landroid/nfc/tech/BasicTagTechnology;
.source "NfcBarcode.java"


# static fields
.field public static final greylist-max-o EXTRA_BARCODE_TYPE:Ljava/lang/String; = "barcodetype"

.field public static final whitelist TYPE_KOVIO:I = 0x1

.field public static final whitelist TYPE_UNKNOWN:I = -0x1


# instance fields
.field private greylist-max-o mType:I


# direct methods
.method public constructor greylist-max-o <init>(Landroid/nfc/Tag;)V
    .registers 5
    .param p1, "tag"    # Landroid/nfc/Tag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Landroid/nfc/tech/BasicTagTechnology;-><init>(Landroid/nfc/Tag;I)V

    .line 65
    invoke-virtual {p1, v0}, Landroid/nfc/Tag;->getTechExtras(I)Landroid/os/Bundle;

    move-result-object v0

    .line 66
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_14

    .line 67
    const-string v1, "barcodetype"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/nfc/tech/NfcBarcode;->mType:I

    .line 71
    return-void

    .line 69
    :cond_14
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "NfcBarcode tech extras are null."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist get(Landroid/nfc/Tag;)Landroid/nfc/tech/NfcBarcode;
    .registers 3
    .param p0, "tag"    # Landroid/nfc/Tag;

    .line 51
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroid/nfc/Tag;->hasTech(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 53
    :cond_a
    :try_start_a
    new-instance v0, Landroid/nfc/tech/NfcBarcode;

    invoke-direct {v0, p0}, Landroid/nfc/tech/NfcBarcode;-><init>(Landroid/nfc/Tag;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-object v0

    .line 54
    :catch_10
    move-exception v0

    .line 55
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

    .line 29
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

    .line 29
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->connect()V

    return-void
.end method

.method public whitelist getBarcode()[B
    .registers 2

    .line 122
    iget v0, p0, Landroid/nfc/tech/NfcBarcode;->mType:I

    packed-switch v0, :pswitch_data_e

    .line 127
    const/4 v0, 0x0

    return-object v0

    .line 125
    :pswitch_7
    iget-object v0, p0, Landroid/nfc/tech/NfcBarcode;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v0}, Landroid/nfc/Tag;->getId()[B

    move-result-object v0

    return-object v0

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_7
    .end packed-switch
.end method

.method public bridge synthetic whitelist getTag()Landroid/nfc/Tag;
    .registers 2

    .line 29
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->getTag()Landroid/nfc/Tag;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getType()I
    .registers 2

    .line 83
    iget v0, p0, Landroid/nfc/tech/NfcBarcode;->mType:I

    return v0
.end method

.method public bridge synthetic whitelist isConnected()Z
    .registers 2

    .line 29
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

    .line 29
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->reconnect()V

    return-void
.end method
