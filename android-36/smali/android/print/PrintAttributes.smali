.class public final Landroid/print/PrintAttributes;
.super Ljava/lang/Object;
.source "PrintAttributes.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/PrintAttributes$MediaSize;,
        Landroid/print/PrintAttributes$Resolution;,
        Landroid/print/PrintAttributes$Margins;,
        Landroid/print/PrintAttributes$Builder;,
        Landroid/print/PrintAttributes$DuplexMode;,
        Landroid/print/PrintAttributes$ColorMode;
    }
.end annotation


# static fields
.field public static final whitelist COLOR_MODE_COLOR:I = 0x2

.field public static final whitelist COLOR_MODE_MONOCHROME:I = 0x1

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/print/PrintAttributes;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DUPLEX_MODE_LONG_EDGE:I = 0x2

.field public static final whitelist DUPLEX_MODE_NONE:I = 0x1

.field public static final whitelist DUPLEX_MODE_SHORT_EDGE:I = 0x4

.field private static final greylist-max-o VALID_COLOR_MODES:I = 0x3

.field private static final greylist-max-o VALID_DUPLEX_MODES:I = 0x7


# instance fields
.field private greylist-max-o mColorMode:I

.field private greylist-max-o mDuplexMode:I

.field private greylist-max-o mMediaSize:Landroid/print/PrintAttributes$MediaSize;

.field private greylist-max-o mMinMargins:Landroid/print/PrintAttributes$Margins;

.field private greylist-max-o mResolution:Landroid/print/PrintAttributes$Resolution;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1516
    new-instance v0, Landroid/print/PrintAttributes$1;

    invoke-direct {v0}, Landroid/print/PrintAttributes$1;-><init>()V

    sput-object v0, Landroid/print/PrintAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor greylist-max-o <init>()V
    .registers 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_10

    invoke-static {p1}, Landroid/print/PrintAttributes$MediaSize;->createFromParcel(Landroid/os/Parcel;)Landroid/print/PrintAttributes$MediaSize;

    move-result-object v0

    goto :goto_11

    :cond_10
    move-object v0, v1

    :goto_11
    iput-object v0, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1e

    invoke-static {p1}, Landroid/print/PrintAttributes$Resolution;->createFromParcel(Landroid/os/Parcel;)Landroid/print/PrintAttributes$Resolution;

    move-result-object v0

    goto :goto_1f

    :cond_1e
    move-object v0, v1

    :goto_1f
    iput-object v0, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_2b

    invoke-static {p1}, Landroid/print/PrintAttributes$Margins;->createFromParcel(Landroid/os/Parcel;)Landroid/print/PrintAttributes$Margins;

    move-result-object v1

    :cond_2b
    iput-object v1, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/print/PrintAttributes;->mColorMode:I

    .line 101
    iget v0, p0, Landroid/print/PrintAttributes;->mColorMode:I

    if-eqz v0, :cond_3c

    .line 102
    iget v0, p0, Landroid/print/PrintAttributes;->mColorMode:I

    invoke-static {v0}, Landroid/print/PrintAttributes;->enforceValidColorMode(I)V

    .line 104
    :cond_3c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/print/PrintAttributes;->mDuplexMode:I

    .line 105
    iget v0, p0, Landroid/print/PrintAttributes;->mDuplexMode:I

    if-eqz v0, :cond_4b

    .line 106
    iget v0, p0, Landroid/print/PrintAttributes;->mDuplexMode:I

    invoke-static {v0}, Landroid/print/PrintAttributes;->enforceValidDuplexMode(I)V

    .line 108
    :cond_4b
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/print/PrintAttributes-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/print/PrintAttributes;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static greylist-max-o colorModeToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "colorMode"    # I

    .line 1395
    packed-switch p0, :pswitch_data_c

    .line 1403
    const-string v0, "COLOR_MODE_UNKNOWN"

    return-object v0

    .line 1400
    :pswitch_6
    const-string v0, "COLOR_MODE_COLOR"

    return-object v0

    .line 1397
    :pswitch_9
    const-string v0, "COLOR_MODE_MONOCHROME"

    return-object v0

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method static greylist-max-o duplexModeToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "duplexMode"    # I

    .line 1409
    packed-switch p0, :pswitch_data_10

    .line 1420
    :pswitch_3
    const-string v0, "DUPLEX_MODE_UNKNOWN"

    return-object v0

    .line 1417
    :pswitch_6
    const-string v0, "DUPLEX_MODE_SHORT_EDGE"

    return-object v0

    .line 1414
    :pswitch_9
    const-string v0, "DUPLEX_MODE_LONG_EDGE"

    return-object v0

    .line 1411
    :pswitch_c
    const-string v0, "DUPLEX_MODE_NONE"

    return-object v0

    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_c
        :pswitch_9
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method static greylist-max-o enforceValidColorMode(I)V
    .registers 4
    .param p0, "colorMode"    # I

    .line 1426
    and-int/lit8 v0, p0, 0x3

    if-eqz v0, :cond_c

    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 1429
    return-void

    .line 1427
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid color mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static greylist-max-o enforceValidDuplexMode(I)V
    .registers 4
    .param p0, "duplexMode"    # I

    .line 1432
    and-int/lit8 v0, p0, 0x7

    if-eqz v0, :cond_c

    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 1435
    return-void

    .line 1433
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid duplex mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public greylist-max-o asLandscape()Landroid/print/PrintAttributes;
    .registers 8

    .line 304
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->isPortrait()Z

    move-result v0

    if-nez v0, :cond_7

    .line 305
    return-object p0

    .line 308
    :cond_7
    new-instance v0, Landroid/print/PrintAttributes;

    invoke-direct {v0}, Landroid/print/PrintAttributes;-><init>()V

    .line 311
    .local v0, "attributes":Landroid/print/PrintAttributes;
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getMediaSize()Landroid/print/PrintAttributes$MediaSize;

    move-result-object v1

    invoke-virtual {v1}, Landroid/print/PrintAttributes$MediaSize;->asLandscape()Landroid/print/PrintAttributes$MediaSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)V

    .line 314
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getResolution()Landroid/print/PrintAttributes$Resolution;

    move-result-object v1

    .line 315
    .local v1, "oldResolution":Landroid/print/PrintAttributes$Resolution;
    new-instance v2, Landroid/print/PrintAttributes$Resolution;

    .line 316
    invoke-virtual {v1}, Landroid/print/PrintAttributes$Resolution;->getId()Ljava/lang/String;

    move-result-object v3

    .line 317
    invoke-virtual {v1}, Landroid/print/PrintAttributes$Resolution;->getLabel()Ljava/lang/String;

    move-result-object v4

    .line 318
    invoke-virtual {v1}, Landroid/print/PrintAttributes$Resolution;->getVerticalDpi()I

    move-result v5

    .line 319
    invoke-virtual {v1}, Landroid/print/PrintAttributes$Resolution;->getHorizontalDpi()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/print/PrintAttributes$Resolution;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 320
    .local v2, "newResolution":Landroid/print/PrintAttributes$Resolution;
    invoke-virtual {v0, v2}, Landroid/print/PrintAttributes;->setResolution(Landroid/print/PrintAttributes$Resolution;)V

    .line 323
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getMinMargins()Landroid/print/PrintAttributes$Margins;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/print/PrintAttributes;->setMinMargins(Landroid/print/PrintAttributes$Margins;)V

    .line 325
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getColorMode()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/print/PrintAttributes;->setColorMode(I)V

    .line 326
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getDuplexMode()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/print/PrintAttributes;->setDuplexMode(I)V

    .line 328
    return-object v0
.end method

.method public greylist-max-o asPortrait()Landroid/print/PrintAttributes;
    .registers 8

    .line 266
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 267
    return-object p0

    .line 270
    :cond_7
    new-instance v0, Landroid/print/PrintAttributes;

    invoke-direct {v0}, Landroid/print/PrintAttributes;-><init>()V

    .line 273
    .local v0, "attributes":Landroid/print/PrintAttributes;
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getMediaSize()Landroid/print/PrintAttributes$MediaSize;

    move-result-object v1

    invoke-virtual {v1}, Landroid/print/PrintAttributes$MediaSize;->asPortrait()Landroid/print/PrintAttributes$MediaSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)V

    .line 276
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getResolution()Landroid/print/PrintAttributes$Resolution;

    move-result-object v1

    .line 277
    .local v1, "oldResolution":Landroid/print/PrintAttributes$Resolution;
    new-instance v2, Landroid/print/PrintAttributes$Resolution;

    .line 278
    invoke-virtual {v1}, Landroid/print/PrintAttributes$Resolution;->getId()Ljava/lang/String;

    move-result-object v3

    .line 279
    invoke-virtual {v1}, Landroid/print/PrintAttributes$Resolution;->getLabel()Ljava/lang/String;

    move-result-object v4

    .line 280
    invoke-virtual {v1}, Landroid/print/PrintAttributes$Resolution;->getVerticalDpi()I

    move-result v5

    .line 281
    invoke-virtual {v1}, Landroid/print/PrintAttributes$Resolution;->getHorizontalDpi()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/print/PrintAttributes$Resolution;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 282
    .local v2, "newResolution":Landroid/print/PrintAttributes$Resolution;
    invoke-virtual {v0, v2}, Landroid/print/PrintAttributes;->setResolution(Landroid/print/PrintAttributes$Resolution;)V

    .line 285
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getMinMargins()Landroid/print/PrintAttributes$Margins;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/print/PrintAttributes;->setMinMargins(Landroid/print/PrintAttributes$Margins;)V

    .line 287
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getColorMode()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/print/PrintAttributes;->setColorMode(I)V

    .line 288
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getDuplexMode()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/print/PrintAttributes;->setDuplexMode(I)V

    .line 290
    return-object v0
.end method

.method public greylist-max-o clear()V
    .registers 2

    .line 435
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    .line 436
    iput-object v0, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    .line 437
    iput-object v0, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    .line 438
    const/4 v0, 0x0

    iput v0, p0, Landroid/print/PrintAttributes;->mColorMode:I

    .line 439
    iput v0, p0, Landroid/print/PrintAttributes;->mDuplexMode:I

    .line 440
    return-void
.end method

.method public greylist-max-o copyFrom(Landroid/print/PrintAttributes;)V
    .registers 3
    .param p1, "other"    # Landroid/print/PrintAttributes;

    .line 446
    iget-object v0, p1, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    iput-object v0, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    .line 447
    iget-object v0, p1, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    iput-object v0, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    .line 448
    iget-object v0, p1, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    iput-object v0, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    .line 449
    iget v0, p1, Landroid/print/PrintAttributes;->mColorMode:I

    iput v0, p0, Landroid/print/PrintAttributes;->mColorMode:I

    .line 450
    iget v0, p1, Landroid/print/PrintAttributes;->mDuplexMode:I

    iput v0, p0, Landroid/print/PrintAttributes;->mDuplexMode:I

    .line 451
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 357
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 374
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 375
    return v0

    .line 377
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 378
    return v1

    .line 380
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 381
    return v1

    .line 383
    :cond_13
    move-object v2, p1

    check-cast v2, Landroid/print/PrintAttributes;

    .line 384
    .local v2, "other":Landroid/print/PrintAttributes;
    iget v3, p0, Landroid/print/PrintAttributes;->mColorMode:I

    iget v4, v2, Landroid/print/PrintAttributes;->mColorMode:I

    if-eq v3, v4, :cond_1d

    .line 385
    return v1

    .line 387
    :cond_1d
    iget v3, p0, Landroid/print/PrintAttributes;->mDuplexMode:I

    iget v4, v2, Landroid/print/PrintAttributes;->mDuplexMode:I

    if-eq v3, v4, :cond_24

    .line 388
    return v1

    .line 390
    :cond_24
    iget-object v3, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    if-nez v3, :cond_2d

    .line 391
    iget-object v3, v2, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    if-eqz v3, :cond_38

    .line 392
    return v1

    .line 394
    :cond_2d
    iget-object v3, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    iget-object v4, v2, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    invoke-virtual {v3, v4}, Landroid/print/PrintAttributes$Margins;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    .line 395
    return v1

    .line 397
    :cond_38
    iget-object v3, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    if-nez v3, :cond_41

    .line 398
    iget-object v3, v2, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    if-eqz v3, :cond_4c

    .line 399
    return v1

    .line 401
    :cond_41
    iget-object v3, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    iget-object v4, v2, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {v3, v4}, Landroid/print/PrintAttributes$MediaSize;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4c

    .line 402
    return v1

    .line 404
    :cond_4c
    iget-object v3, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    if-nez v3, :cond_55

    .line 405
    iget-object v3, v2, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    if-eqz v3, :cond_60

    .line 406
    return v1

    .line 408
    :cond_55
    iget-object v3, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    iget-object v4, v2, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    invoke-virtual {v3, v4}, Landroid/print/PrintAttributes$Resolution;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_60

    .line 409
    return v1

    .line 411
    :cond_60
    return v0
.end method

.method public whitelist getColorMode()I
    .registers 2

    .line 195
    iget v0, p0, Landroid/print/PrintAttributes;->mColorMode:I

    return v0
.end method

.method public whitelist getDuplexMode()I
    .registers 2

    .line 236
    iget v0, p0, Landroid/print/PrintAttributes;->mDuplexMode:I

    return v0
.end method

.method public whitelist getMediaSize()Landroid/print/PrintAttributes$MediaSize;
    .registers 2

    .line 116
    iget-object v0, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    return-object v0
.end method

.method public whitelist getMinMargins()Landroid/print/PrintAttributes$Margins;
    .registers 2

    .line 164
    iget-object v0, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    return-object v0
.end method

.method public whitelist getResolution()Landroid/print/PrintAttributes$Resolution;
    .registers 2

    .line 136
    iget-object v0, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 362
    const/16 v0, 0x1f

    .line 363
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 364
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/print/PrintAttributes;->mColorMode:I

    add-int/2addr v2, v3

    .line 365
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget v3, p0, Landroid/print/PrintAttributes;->mDuplexMode:I

    add-int/2addr v1, v3

    .line 366
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    const/4 v4, 0x0

    if-nez v3, :cond_16

    move v3, v4

    goto :goto_1c

    :cond_16
    iget-object v3, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    invoke-virtual {v3}, Landroid/print/PrintAttributes$Margins;->hashCode()I

    move-result v3

    :goto_1c
    add-int/2addr v2, v3

    .line 367
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    if-nez v3, :cond_25

    move v3, v4

    goto :goto_2b

    :cond_25
    iget-object v3, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {v3}, Landroid/print/PrintAttributes$MediaSize;->hashCode()I

    move-result v3

    :goto_2b
    add-int/2addr v1, v3

    .line 368
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    if-nez v3, :cond_33

    goto :goto_39

    :cond_33
    iget-object v3, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    invoke-virtual {v3}, Landroid/print/PrintAttributes$Resolution;->hashCode()I

    move-result v4

    :goto_39
    add-int/2addr v2, v4

    .line 369
    .end local v1    # "result":I
    .restart local v2    # "result":I
    return v2
.end method

.method public greylist-max-o isPortrait()Z
    .registers 2

    .line 223
    iget-object v0, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {v0}, Landroid/print/PrintAttributes$MediaSize;->isPortrait()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o setColorMode(I)V
    .registers 2
    .param p1, "colorMode"    # I

    .line 209
    invoke-static {p1}, Landroid/print/PrintAttributes;->enforceValidColorMode(I)V

    .line 210
    iput p1, p0, Landroid/print/PrintAttributes;->mColorMode:I

    .line 211
    return-void
.end method

.method public greylist-max-o setDuplexMode(I)V
    .registers 2
    .param p1, "duplexMode"    # I

    .line 251
    invoke-static {p1}, Landroid/print/PrintAttributes;->enforceValidDuplexMode(I)V

    .line 252
    iput p1, p0, Landroid/print/PrintAttributes;->mDuplexMode:I

    .line 253
    return-void
.end method

.method public greylist-max-o setMediaSize(Landroid/print/PrintAttributes$MediaSize;)V
    .registers 2
    .param p1, "mediaSize"    # Landroid/print/PrintAttributes$MediaSize;

    .line 127
    iput-object p1, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    .line 128
    return-void
.end method

.method public greylist-max-o setMinMargins(Landroid/print/PrintAttributes$Margins;)V
    .registers 2
    .param p1, "margins"    # Landroid/print/PrintAttributes$Margins;

    .line 183
    iput-object p1, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    .line 184
    return-void
.end method

.method public greylist-max-o setResolution(Landroid/print/PrintAttributes$Resolution;)V
    .registers 2
    .param p1, "resolution"    # Landroid/print/PrintAttributes$Resolution;

    .line 147
    iput-object p1, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    .line 148
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 417
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "PrintAttributes{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    const-string/jumbo v1, "mediaSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 419
    iget-object v1, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    const-string v2, ", orientation: "

    if-eqz v1, :cond_33

    .line 420
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {v2}, Landroid/print/PrintAttributes$MediaSize;->isPortrait()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 421
    const-string/jumbo v2, "portrait"

    goto :goto_2f

    :cond_2c
    const-string/jumbo v2, "landscape"

    .line 420
    :goto_2f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3d

    .line 423
    :cond_33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    :goto_3d
    const-string v1, ", resolution: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 426
    const-string v1, ", minMargins: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 427
    const-string v1, ", colorMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/print/PrintAttributes;->mColorMode:I

    invoke-static {v2}, Landroid/print/PrintAttributes;->colorModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    const-string v1, ", duplexMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/print/PrintAttributes;->mDuplexMode:I

    invoke-static {v2}, Landroid/print/PrintAttributes;->duplexModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 333
    iget-object v0, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    .line 334
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 335
    iget-object v0, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {v0, p1}, Landroid/print/PrintAttributes$MediaSize;->writeToParcel(Landroid/os/Parcel;)V

    goto :goto_12

    .line 337
    :cond_f
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    :goto_12
    iget-object v0, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    if-eqz v0, :cond_1f

    .line 340
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    iget-object v0, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    invoke-virtual {v0, p1}, Landroid/print/PrintAttributes$Resolution;->writeToParcel(Landroid/os/Parcel;)V

    goto :goto_22

    .line 343
    :cond_1f
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    :goto_22
    iget-object v0, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    if-eqz v0, :cond_2f

    .line 346
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 347
    iget-object v0, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    invoke-virtual {v0, p1}, Landroid/print/PrintAttributes$Margins;->writeToParcel(Landroid/os/Parcel;)V

    goto :goto_32

    .line 349
    :cond_2f
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 351
    :goto_32
    iget v0, p0, Landroid/print/PrintAttributes;->mColorMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 352
    iget v0, p0, Landroid/print/PrintAttributes;->mDuplexMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 353
    return-void
.end method
