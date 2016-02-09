.class public final Landroid/nfc/tech/MifareUltralight;
.super Landroid/nfc/tech/BasicTagTechnology;
.source "MifareUltralight.java"


# static fields
.field public static final EXTRA_IS_UL_C:Ljava/lang/String; = "isulc"

.field private static final MAX_PAGE_COUNT:I = 0x100

.field private static final NXP_MANUFACTURER_ID:I = 0x4

.field public static final PAGE_SIZE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "NFC"

.field public static final TYPE_ULTRALIGHT:I = 0x1

.field public static final TYPE_ULTRALIGHT_C:I = 0x2

.field public static final TYPE_UNKNOWN:I = -0x1


# instance fields
.field private mType:I


# direct methods
.method public constructor <init>(Landroid/nfc/Tag;)V
    .locals 5
    .param p1, "tag"    # Landroid/nfc/Tag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v4, 0x9

    #@2
    const/4 v3, 0x0

    #@3
    .line 104
    invoke-direct {p0, p1, v4}, Landroid/nfc/tech/BasicTagTechnology;-><init>(Landroid/nfc/Tag;I)V

    #@6
    .line 107
    invoke-static {p1}, Landroid/nfc/tech/NfcA;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/NfcA;

    #@9
    move-result-object v0

    #@a
    .line 109
    .local v0, "a":Landroid/nfc/tech/NfcA;
    const/4 v2, -0x1

    #@b
    iput v2, p0, Landroid/nfc/tech/MifareUltralight;->mType:I

    #@d
    .line 111
    invoke-virtual {v0}, Landroid/nfc/tech/NfcA;->getSak()S

    #@10
    move-result v2

    #@11
    if-nez v2, :cond_0

    #@13
    invoke-virtual {p1}, Landroid/nfc/Tag;->getId()[B

    #@16
    move-result-object v2

    #@17
    aget-byte v2, v2, v3

    #@19
    const/4 v3, 0x4

    #@1a
    if-ne v2, v3, :cond_0

    #@1c
    .line 112
    invoke-virtual {p1, v4}, Landroid/nfc/Tag;->getTechExtras(I)Landroid/os/Bundle;

    #@1f
    move-result-object v1

    #@20
    .line 113
    .local v1, "extras":Landroid/os/Bundle;
    const-string/jumbo v2, "isulc"

    #@23
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@26
    move-result v2

    #@27
    if-eqz v2, :cond_1

    #@29
    .line 114
    const/4 v2, 0x2

    #@2a
    iput v2, p0, Landroid/nfc/tech/MifareUltralight;->mType:I

    #@2c
    .line 103
    .end local v1    # "extras":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    #@2d
    .line 116
    .restart local v1    # "extras":Landroid/os/Bundle;
    :cond_1
    const/4 v2, 0x1

    #@2e
    iput v2, p0, Landroid/nfc/tech/MifareUltralight;->mType:I

    #@30
    goto :goto_0
.end method

.method public static get(Landroid/nfc/Tag;)Landroid/nfc/tech/MifareUltralight;
    .locals 3
    .param p0, "tag"    # Landroid/nfc/Tag;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 94
    const/16 v1, 0x9

    #@3
    invoke-virtual {p0, v1}, Landroid/nfc/Tag;->hasTech(I)Z

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_0

    #@9
    return-object v2

    #@a
    .line 96
    :cond_0
    :try_start_0
    new-instance v1, Landroid/nfc/tech/MifareUltralight;

    #@c
    invoke-direct {v1, p0}, Landroid/nfc/tech/MifareUltralight;-><init>(Landroid/nfc/Tag;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    return-object v1

    #@10
    .line 97
    :catch_0
    move-exception v0

    #@11
    .line 98
    .local v0, "e":Landroid/os/RemoteException;
    return-object v2
.end method

.method private static validatePageIndex(I)V
    .locals 3
    .param p0, "pageIndex"    # I

    #@0
    .prologue
    .line 274
    if-ltz p0, :cond_0

    #@2
    const/16 v0, 0x100

    #@4
    if-lt p0, v0, :cond_1

    #@6
    .line 275
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "page out of bounds: "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 268
    :cond_1
    return-void
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

.method public getMaxTransceiveLength()I
    .locals 1

    #@0
    .prologue
    .line 223
    invoke-virtual {p0}, Landroid/nfc/tech/MifareUltralight;->getMaxTransceiveLengthInternal()I

    #@3
    move-result v0

    #@4
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

.method public getTimeout()I
    .locals 3

    #@0
    .prologue
    .line 261
    :try_start_0
    iget-object v1, p0, Landroid/nfc/tech/MifareUltralight;->mTag:Landroid/nfc/Tag;

    #@2
    invoke-virtual {v1}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    #@5
    move-result-object v1

    #@6
    const/16 v2, 0x9

    #@8
    invoke-interface {v1, v2}, Landroid/nfc/INfcTag;->getTimeout(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v1

    #@c
    return v1

    #@d
    .line 262
    :catch_0
    move-exception v0

    #@e
    .line 263
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "NFC"

    #@11
    const-string/jumbo v2, "NFC service dead"

    #@14
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@17
    .line 264
    const/4 v1, 0x0

    #@18
    return v1
.end method

.method public getType()I
    .locals 1

    #@0
    .prologue
    .line 133
    iget v0, p0, Landroid/nfc/tech/MifareUltralight;->mType:I

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

.method public readPages(I)[B
    .locals 4
    .param p1, "pageOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 160
    invoke-static {p1}, Landroid/nfc/tech/MifareUltralight;->validatePageIndex(I)V

    #@4
    .line 161
    invoke-virtual {p0}, Landroid/nfc/tech/MifareUltralight;->checkConnected()V

    #@7
    .line 163
    const/4 v1, 0x2

    #@8
    new-array v0, v1, [B

    #@a
    const/16 v1, 0x30

    #@c
    aput-byte v1, v0, v3

    #@e
    int-to-byte v1, p1

    #@f
    const/4 v2, 0x1

    #@10
    aput-byte v1, v0, v2

    #@12
    .line 164
    .local v0, "cmd":[B
    invoke-virtual {p0, v0, v3}, Landroid/nfc/tech/MifareUltralight;->transceive([BZ)[B

    #@15
    move-result-object v1

    #@16
    return-object v1
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
    .line 242
    :try_start_0
    iget-object v2, p0, Landroid/nfc/tech/MifareUltralight;->mTag:Landroid/nfc/Tag;

    #@2
    invoke-virtual {v2}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    #@5
    move-result-object v2

    #@6
    .line 243
    const/16 v3, 0x9

    #@8
    .line 242
    invoke-interface {v2, v3, p1}, Landroid/nfc/INfcTag;->setTimeout(II)I

    #@b
    move-result v1

    #@c
    .line 244
    .local v1, "err":I
    if-eqz v1, :cond_0

    #@e
    .line 245
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@10
    const-string/jumbo v3, "The supplied timeout is not valid"

    #@13
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 247
    .end local v1    # "err":I
    :catch_0
    move-exception v0

    #@18
    .line 248
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "NFC"

    #@1b
    const-string/jumbo v3, "NFC service dead"

    #@1e
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@21
    .line 240
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
    .line 215
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/nfc/tech/MifareUltralight;->transceive([BZ)[B

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public writePage(I[B)V
    .locals 4
    .param p1, "pageOffset"    # I
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 185
    invoke-static {p1}, Landroid/nfc/tech/MifareUltralight;->validatePageIndex(I)V

    #@4
    .line 186
    invoke-virtual {p0}, Landroid/nfc/tech/MifareUltralight;->checkConnected()V

    #@7
    .line 188
    array-length v1, p2

    #@8
    add-int/lit8 v1, v1, 0x2

    #@a
    new-array v0, v1, [B

    #@c
    .line 189
    .local v0, "cmd":[B
    const/16 v1, -0x5e

    #@e
    aput-byte v1, v0, v3

    #@10
    .line 190
    int-to-byte v1, p1

    #@11
    const/4 v2, 0x1

    #@12
    aput-byte v1, v0, v2

    #@14
    .line 191
    array-length v1, p2

    #@15
    const/4 v2, 0x2

    #@16
    invoke-static {p2, v3, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@19
    .line 193
    invoke-virtual {p0, v0, v3}, Landroid/nfc/tech/MifareUltralight;->transceive([BZ)[B

    #@1c
    .line 184
    return-void
.end method
