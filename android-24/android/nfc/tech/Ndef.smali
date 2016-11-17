.class public final Landroid/nfc/tech/Ndef;
.super Landroid/nfc/tech/BasicTagTechnology;
.source "Ndef.java"


# static fields
.field public static final EXTRA_NDEF_CARDSTATE:Ljava/lang/String; = "ndefcardstate"

.field public static final EXTRA_NDEF_MAXLENGTH:Ljava/lang/String; = "ndefmaxlength"

.field public static final EXTRA_NDEF_MSG:Ljava/lang/String; = "ndefmsg"

.field public static final EXTRA_NDEF_TYPE:Ljava/lang/String; = "ndeftype"

.field public static final ICODE_SLI:Ljava/lang/String; = "com.nxp.ndef.icodesli"

.field public static final MIFARE_CLASSIC:Ljava/lang/String; = "com.nxp.ndef.mifareclassic"

.field public static final NDEF_MODE_READ_ONLY:I = 0x1

.field public static final NDEF_MODE_READ_WRITE:I = 0x2

.field public static final NDEF_MODE_UNKNOWN:I = 0x3

.field public static final NFC_FORUM_TYPE_1:Ljava/lang/String; = "org.nfcforum.ndef.type1"

.field public static final NFC_FORUM_TYPE_2:Ljava/lang/String; = "org.nfcforum.ndef.type2"

.field public static final NFC_FORUM_TYPE_3:Ljava/lang/String; = "org.nfcforum.ndef.type3"

.field public static final NFC_FORUM_TYPE_4:Ljava/lang/String; = "org.nfcforum.ndef.type4"

.field private static final TAG:Ljava/lang/String; = "NFC"

.field public static final TYPE_1:I = 0x1

.field public static final TYPE_2:I = 0x2

.field public static final TYPE_3:I = 0x3

.field public static final TYPE_4:I = 0x4

.field public static final TYPE_ICODE_SLI:I = 0x66

.field public static final TYPE_MIFARE_CLASSIC:I = 0x65

.field public static final TYPE_OTHER:I = -0x1

.field public static final UNKNOWN:Ljava/lang/String; = "android.ndef.unknown"


# instance fields
.field private final mCardState:I

.field private final mMaxNdefSize:I

.field private final mNdefMsg:Landroid/nfc/NdefMessage;

.field private final mNdefType:I


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
    const/4 v1, 0x6

    #@1
    .line 159
    invoke-direct {p0, p1, v1}, Landroid/nfc/tech/BasicTagTechnology;-><init>(Landroid/nfc/Tag;I)V

    #@4
    .line 160
    invoke-virtual {p1, v1}, Landroid/nfc/Tag;->getTechExtras(I)Landroid/os/Bundle;

    #@7
    move-result-object v0

    #@8
    .line 161
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    #@a
    .line 162
    const-string/jumbo v1, "ndefmaxlength"

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@10
    move-result v1

    #@11
    iput v1, p0, Landroid/nfc/tech/Ndef;->mMaxNdefSize:I

    #@13
    .line 163
    const-string/jumbo v1, "ndefcardstate"

    #@16
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@19
    move-result v1

    #@1a
    iput v1, p0, Landroid/nfc/tech/Ndef;->mCardState:I

    #@1c
    .line 164
    const-string/jumbo v1, "ndefmsg"

    #@1f
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@22
    move-result-object v1

    #@23
    check-cast v1, Landroid/nfc/NdefMessage;

    #@25
    iput-object v1, p0, Landroid/nfc/tech/Ndef;->mNdefMsg:Landroid/nfc/NdefMessage;

    #@27
    .line 165
    const-string/jumbo v1, "ndeftype"

    #@2a
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@2d
    move-result v1

    #@2e
    iput v1, p0, Landroid/nfc/tech/Ndef;->mNdefType:I

    #@30
    .line 158
    return-void

    #@31
    .line 167
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    #@33
    const-string/jumbo v2, "NDEF tech extras are null."

    #@36
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@39
    throw v1
.end method

.method public static get(Landroid/nfc/Tag;)Landroid/nfc/tech/Ndef;
    .locals 3
    .param p0, "tag"    # Landroid/nfc/Tag;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 146
    const/4 v1, 0x6

    #@2
    invoke-virtual {p0, v1}, Landroid/nfc/Tag;->hasTech(I)Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    return-object v2

    #@9
    .line 148
    :cond_0
    :try_start_0
    new-instance v1, Landroid/nfc/tech/Ndef;

    #@b
    invoke-direct {v1, p0}, Landroid/nfc/tech/Ndef;-><init>(Landroid/nfc/Tag;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    return-object v1

    #@f
    .line 149
    :catch_0
    move-exception v0

    #@10
    .line 150
    .local v0, "e":Landroid/os/RemoteException;
    return-object v2
.end method


# virtual methods
.method public canMakeReadOnly()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 344
    iget-object v2, p0, Landroid/nfc/tech/Ndef;->mTag:Landroid/nfc/Tag;

    #@3
    invoke-virtual {v2}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    #@6
    move-result-object v1

    #@7
    .line 345
    .local v1, "tagService":Landroid/nfc/INfcTag;
    if-nez v1, :cond_0

    #@9
    .line 346
    return v4

    #@a
    .line 349
    :cond_0
    :try_start_0
    iget v2, p0, Landroid/nfc/tech/Ndef;->mNdefType:I

    #@c
    invoke-interface {v1, v2}, Landroid/nfc/INfcTag;->canMakeReadOnly(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result v2

    #@10
    return v2

    #@11
    .line 350
    :catch_0
    move-exception v0

    #@12
    .line 351
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "NFC"

    #@15
    const-string/jumbo v3, "NFC service dead"

    #@18
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1b
    .line 352
    return v4
.end method

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

.method public getCachedNdefMessage()Landroid/nfc/NdefMessage;
    .locals 1

    #@0
    .prologue
    .line 185
    iget-object v0, p0, Landroid/nfc/tech/Ndef;->mNdefMsg:Landroid/nfc/NdefMessage;

    #@2
    return-object v0
.end method

.method public getMaxSize()I
    .locals 1

    #@0
    .prologue
    .line 227
    iget v0, p0, Landroid/nfc/tech/Ndef;->mMaxNdefSize:I

    #@2
    return v0
.end method

.method public getNdefMessage()Landroid/nfc/NdefMessage;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/nfc/FormatException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 266
    invoke-virtual {p0}, Landroid/nfc/tech/Ndef;->checkConnected()V

    #@4
    .line 269
    :try_start_0
    iget-object v4, p0, Landroid/nfc/tech/Ndef;->mTag:Landroid/nfc/Tag;

    #@6
    invoke-virtual {v4}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    #@9
    move-result-object v3

    #@a
    .line 270
    .local v3, "tagService":Landroid/nfc/INfcTag;
    if-nez v3, :cond_0

    #@c
    .line 271
    new-instance v4, Ljava/io/IOException;

    #@e
    const-string/jumbo v5, "Mock tags don\'t support this operation."

    #@11
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@14
    throw v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 285
    .end local v3    # "tagService":Landroid/nfc/INfcTag;
    :catch_0
    move-exception v0

    #@16
    .line 286
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "NFC"

    #@19
    const-string/jumbo v5, "NFC service dead"

    #@1c
    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1f
    .line 287
    return-object v6

    #@20
    .line 273
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v3    # "tagService":Landroid/nfc/INfcTag;
    :cond_0
    :try_start_1
    iget-object v4, p0, Landroid/nfc/tech/Ndef;->mTag:Landroid/nfc/Tag;

    #@22
    invoke-virtual {v4}, Landroid/nfc/Tag;->getServiceHandle()I

    #@25
    move-result v2

    #@26
    .line 274
    .local v2, "serviceHandle":I
    invoke-interface {v3, v2}, Landroid/nfc/INfcTag;->isNdef(I)Z

    #@29
    move-result v4

    #@2a
    if-eqz v4, :cond_3

    #@2c
    .line 275
    invoke-interface {v3, v2}, Landroid/nfc/INfcTag;->ndefRead(I)Landroid/nfc/NdefMessage;

    #@2f
    move-result-object v1

    #@30
    .line 276
    .local v1, "msg":Landroid/nfc/NdefMessage;
    if-nez v1, :cond_1

    #@32
    invoke-interface {v3, v2}, Landroid/nfc/INfcTag;->isPresent(I)Z

    #@35
    move-result v4

    #@36
    if-eqz v4, :cond_2

    #@38
    .line 279
    :cond_1
    return-object v1

    #@39
    .line 277
    :cond_2
    new-instance v4, Landroid/nfc/TagLostException;

    #@3b
    invoke-direct {v4}, Landroid/nfc/TagLostException;-><init>()V

    #@3e
    throw v4

    #@3f
    .line 280
    .end local v1    # "msg":Landroid/nfc/NdefMessage;
    :cond_3
    invoke-interface {v3, v2}, Landroid/nfc/INfcTag;->isPresent(I)Z

    #@42
    move-result v4

    #@43
    if-nez v4, :cond_4

    #@45
    .line 281
    new-instance v4, Landroid/nfc/TagLostException;

    #@47
    invoke-direct {v4}, Landroid/nfc/TagLostException;-><init>()V

    #@4a
    throw v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@4b
    .line 283
    :cond_4
    return-object v6
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

.method public getType()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 201
    iget v0, p0, Landroid/nfc/tech/Ndef;->mNdefType:I

    #@2
    sparse-switch v0, :sswitch_data_0

    #@5
    .line 215
    const-string/jumbo v0, "android.ndef.unknown"

    #@8
    return-object v0

    #@9
    .line 203
    :sswitch_0
    const-string/jumbo v0, "org.nfcforum.ndef.type1"

    #@c
    return-object v0

    #@d
    .line 205
    :sswitch_1
    const-string/jumbo v0, "org.nfcforum.ndef.type2"

    #@10
    return-object v0

    #@11
    .line 207
    :sswitch_2
    const-string/jumbo v0, "org.nfcforum.ndef.type3"

    #@14
    return-object v0

    #@15
    .line 209
    :sswitch_3
    const-string/jumbo v0, "org.nfcforum.ndef.type4"

    #@18
    return-object v0

    #@19
    .line 211
    :sswitch_4
    const-string/jumbo v0, "com.nxp.ndef.mifareclassic"

    #@1c
    return-object v0

    #@1d
    .line 213
    :sswitch_5
    const-string/jumbo v0, "com.nxp.ndef.icodesli"

    #@20
    return-object v0

    #@21
    .line 201
    nop

    #@22
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x65 -> :sswitch_4
        0x66 -> :sswitch_5
    .end sparse-switch
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

.method public isWritable()Z
    .locals 2

    #@0
    .prologue
    .line 242
    iget v0, p0, Landroid/nfc/tech/Ndef;->mCardState:I

    #@2
    const/4 v1, 0x2

    #@3
    if-ne v0, v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method public makeReadOnly()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 375
    invoke-virtual {p0}, Landroid/nfc/tech/Ndef;->checkConnected()V

    #@4
    .line 378
    :try_start_0
    iget-object v3, p0, Landroid/nfc/tech/Ndef;->mTag:Landroid/nfc/Tag;

    #@6
    invoke-virtual {v3}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    #@9
    move-result-object v2

    #@a
    .line 379
    .local v2, "tagService":Landroid/nfc/INfcTag;
    if-nez v2, :cond_0

    #@c
    .line 380
    return v5

    #@d
    .line 382
    :cond_0
    iget-object v3, p0, Landroid/nfc/tech/Ndef;->mTag:Landroid/nfc/Tag;

    #@f
    invoke-virtual {v3}, Landroid/nfc/Tag;->getServiceHandle()I

    #@12
    move-result v3

    #@13
    invoke-interface {v2, v3}, Landroid/nfc/INfcTag;->isNdef(I)Z

    #@16
    move-result v3

    #@17
    if-eqz v3, :cond_1

    #@19
    .line 383
    iget-object v3, p0, Landroid/nfc/tech/Ndef;->mTag:Landroid/nfc/Tag;

    #@1b
    invoke-virtual {v3}, Landroid/nfc/Tag;->getServiceHandle()I

    #@1e
    move-result v3

    #@1f
    invoke-interface {v2, v3}, Landroid/nfc/INfcTag;->ndefMakeReadOnly(I)I

    #@22
    move-result v1

    #@23
    .line 384
    .local v1, "errorCode":I
    sparse-switch v1, :sswitch_data_0

    #@26
    .line 393
    new-instance v3, Ljava/io/IOException;

    #@28
    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    #@2b
    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2c
    .line 399
    .end local v1    # "errorCode":I
    .end local v2    # "tagService":Landroid/nfc/INfcTag;
    :catch_0
    move-exception v0

    #@2d
    .line 400
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "NFC"

    #@30
    const-string/jumbo v4, "NFC service dead"

    #@33
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@36
    .line 401
    return v5

    #@37
    .line 386
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "errorCode":I
    .restart local v2    # "tagService":Landroid/nfc/INfcTag;
    :sswitch_0
    const/4 v3, 0x1

    #@38
    return v3

    #@39
    .line 388
    :sswitch_1
    :try_start_1
    new-instance v3, Ljava/io/IOException;

    #@3b
    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    #@3e
    throw v3

    #@3f
    .line 390
    :sswitch_2
    return v5

    #@40
    .line 397
    .end local v1    # "errorCode":I
    :cond_1
    new-instance v3, Ljava/io/IOException;

    #@42
    const-string/jumbo v4, "Tag is not ndef"

    #@45
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@48
    throw v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@49
    .line 384
    nop

    #@4a
    :sswitch_data_0
    .sparse-switch
        -0x8 -> :sswitch_2
        -0x1 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic reconnect()V
    .locals 0

    #@0
    .prologue
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->reconnect()V

    #@3
    return-void
.end method

.method public writeNdefMessage(Landroid/nfc/NdefMessage;)V
    .locals 6
    .param p1, "msg"    # Landroid/nfc/NdefMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/nfc/FormatException;
        }
    .end annotation

    #@0
    .prologue
    .line 306
    invoke-virtual {p0}, Landroid/nfc/tech/Ndef;->checkConnected()V

    #@3
    .line 309
    :try_start_0
    iget-object v4, p0, Landroid/nfc/tech/Ndef;->mTag:Landroid/nfc/Tag;

    #@5
    invoke-virtual {v4}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    #@8
    move-result-object v3

    #@9
    .line 310
    .local v3, "tagService":Landroid/nfc/INfcTag;
    if-nez v3, :cond_0

    #@b
    .line 311
    new-instance v4, Ljava/io/IOException;

    #@d
    const-string/jumbo v5, "Mock tags don\'t support this operation."

    #@10
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@13
    throw v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 331
    .end local v3    # "tagService":Landroid/nfc/INfcTag;
    :catch_0
    move-exception v0

    #@15
    .line 332
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "NFC"

    #@18
    const-string/jumbo v5, "NFC service dead"

    #@1b
    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1e
    .line 305
    .end local v0    # "e":Landroid/os/RemoteException;
    :sswitch_0
    return-void

    #@1f
    .line 313
    .restart local v3    # "tagService":Landroid/nfc/INfcTag;
    :cond_0
    :try_start_1
    iget-object v4, p0, Landroid/nfc/tech/Ndef;->mTag:Landroid/nfc/Tag;

    #@21
    invoke-virtual {v4}, Landroid/nfc/Tag;->getServiceHandle()I

    #@24
    move-result v2

    #@25
    .line 314
    .local v2, "serviceHandle":I
    invoke-interface {v3, v2}, Landroid/nfc/INfcTag;->isNdef(I)Z

    #@28
    move-result v4

    #@29
    if-eqz v4, :cond_1

    #@2b
    .line 315
    invoke-interface {v3, v2, p1}, Landroid/nfc/INfcTag;->ndefWrite(ILandroid/nfc/NdefMessage;)I

    #@2e
    move-result v1

    #@2f
    .line 316
    .local v1, "errorCode":I
    sparse-switch v1, :sswitch_data_0

    #@32
    .line 325
    new-instance v4, Ljava/io/IOException;

    #@34
    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    #@37
    throw v4

    #@38
    .line 320
    :sswitch_1
    new-instance v4, Ljava/io/IOException;

    #@3a
    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    #@3d
    throw v4

    #@3e
    .line 322
    :sswitch_2
    new-instance v4, Landroid/nfc/FormatException;

    #@40
    invoke-direct {v4}, Landroid/nfc/FormatException;-><init>()V

    #@43
    throw v4

    #@44
    .line 329
    .end local v1    # "errorCode":I
    :cond_1
    new-instance v4, Ljava/io/IOException;

    #@46
    const-string/jumbo v5, "Tag is not ndef"

    #@49
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@4c
    throw v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@4d
    .line 316
    nop

    #@4e
    :sswitch_data_0
    .sparse-switch
        -0x8 -> :sswitch_2
        -0x1 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method
