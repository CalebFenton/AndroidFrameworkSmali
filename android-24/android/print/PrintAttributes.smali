.class public final Landroid/print/PrintAttributes;
.super Ljava/lang/Object;
.source "PrintAttributes.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/PrintAttributes$1;,
        Landroid/print/PrintAttributes$Builder;,
        Landroid/print/PrintAttributes$Margins;,
        Landroid/print/PrintAttributes$MediaSize;,
        Landroid/print/PrintAttributes$Resolution;
    }
.end annotation


# static fields
.field public static final COLOR_MODE_COLOR:I = 0x2

.field public static final COLOR_MODE_MONOCHROME:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/print/PrintAttributes;",
            ">;"
        }
    .end annotation
.end field

.field public static final DUPLEX_MODE_LONG_EDGE:I = 0x2

.field public static final DUPLEX_MODE_NONE:I = 0x1

.field public static final DUPLEX_MODE_SHORT_EDGE:I = 0x4

.field private static final VALID_COLOR_MODES:I = 0x3

.field private static final VALID_DUPLEX_MODES:I = 0x7


# instance fields
.field private mColorMode:I

.field private mDuplexMode:I

.field private mMediaSize:Landroid/print/PrintAttributes$MediaSize;

.field private mMinMargins:Landroid/print/PrintAttributes$Margins;

.field private mResolution:Landroid/print/PrintAttributes$Resolution;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1465
    new-instance v0, Landroid/print/PrintAttributes$1;

    #@2
    invoke-direct {v0}, Landroid/print/PrintAttributes$1;-><init>()V

    #@5
    .line 1464
    sput-object v0, Landroid/print/PrintAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 48
    return-void
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8
    move-result v0

    #@9
    if-ne v0, v2, :cond_3

    #@b
    invoke-static {p1}, Landroid/print/PrintAttributes$MediaSize;->createFromParcel(Landroid/os/Parcel;)Landroid/print/PrintAttributes$MediaSize;

    #@e
    move-result-object v0

    #@f
    :goto_0
    iput-object v0, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    #@11
    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@14
    move-result v0

    #@15
    if-ne v0, v2, :cond_4

    #@17
    invoke-static {p1}, Landroid/print/PrintAttributes$Resolution;->createFromParcel(Landroid/os/Parcel;)Landroid/print/PrintAttributes$Resolution;

    #@1a
    move-result-object v0

    #@1b
    :goto_1
    iput-object v0, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    #@1d
    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@20
    move-result v0

    #@21
    if-ne v0, v2, :cond_0

    #@23
    invoke-static {p1}, Landroid/print/PrintAttributes$Margins;->createFromParcel(Landroid/os/Parcel;)Landroid/print/PrintAttributes$Margins;

    #@26
    move-result-object v1

    #@27
    :cond_0
    iput-object v1, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    #@29
    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2c
    move-result v0

    #@2d
    iput v0, p0, Landroid/print/PrintAttributes;->mColorMode:I

    #@2f
    .line 97
    iget v0, p0, Landroid/print/PrintAttributes;->mColorMode:I

    #@31
    if-eqz v0, :cond_1

    #@33
    .line 98
    iget v0, p0, Landroid/print/PrintAttributes;->mColorMode:I

    #@35
    invoke-static {v0}, Landroid/print/PrintAttributes;->enforceValidColorMode(I)V

    #@38
    .line 100
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3b
    move-result v0

    #@3c
    iput v0, p0, Landroid/print/PrintAttributes;->mDuplexMode:I

    #@3e
    .line 101
    iget v0, p0, Landroid/print/PrintAttributes;->mDuplexMode:I

    #@40
    if-eqz v0, :cond_2

    #@42
    .line 102
    iget v0, p0, Landroid/print/PrintAttributes;->mDuplexMode:I

    #@44
    invoke-static {v0}, Landroid/print/PrintAttributes;->enforceValidDuplexMode(I)V

    #@47
    .line 92
    :cond_2
    return-void

    #@48
    :cond_3
    move-object v0, v1

    #@49
    .line 93
    goto :goto_0

    #@4a
    :cond_4
    move-object v0, v1

    #@4b
    .line 94
    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/print/PrintAttributes;)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/print/PrintAttributes;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method static colorModeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "colorMode"    # I

    #@0
    .prologue
    .line 1343
    packed-switch p0, :pswitch_data_0

    #@3
    .line 1351
    const-string/jumbo v0, "COLOR_MODE_UNKNOWN"

    #@6
    return-object v0

    #@7
    .line 1345
    :pswitch_0
    const-string/jumbo v0, "COLOR_MODE_MONOCHROME"

    #@a
    return-object v0

    #@b
    .line 1348
    :pswitch_1
    const-string/jumbo v0, "COLOR_MODE_COLOR"

    #@e
    return-object v0

    #@f
    .line 1343
    nop

    #@10
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static duplexModeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "duplexMode"    # I

    #@0
    .prologue
    .line 1357
    packed-switch p0, :pswitch_data_0

    #@3
    .line 1368
    :pswitch_0
    const-string/jumbo v0, "DUPLEX_MODE_UNKNOWN"

    #@6
    return-object v0

    #@7
    .line 1359
    :pswitch_1
    const-string/jumbo v0, "DUPLEX_MODE_NONE"

    #@a
    return-object v0

    #@b
    .line 1362
    :pswitch_2
    const-string/jumbo v0, "DUPLEX_MODE_LONG_EDGE"

    #@e
    return-object v0

    #@f
    .line 1365
    :pswitch_3
    const-string/jumbo v0, "DUPLEX_MODE_SHORT_EDGE"

    #@12
    return-object v0

    #@13
    .line 1357
    nop

    #@14
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method static enforceValidColorMode(I)V
    .locals 3
    .param p0, "colorMode"    # I

    #@0
    .prologue
    .line 1374
    and-int/lit8 v0, p0, 0x3

    #@2
    if-eqz v0, :cond_0

    #@4
    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    #@7
    move-result v0

    #@8
    const/4 v1, 0x1

    #@9
    if-eq v0, v1, :cond_1

    #@b
    .line 1375
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@d
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v2, "invalid color mode: "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0

    #@25
    .line 1373
    :cond_1
    return-void
.end method

.method static enforceValidDuplexMode(I)V
    .locals 3
    .param p0, "duplexMode"    # I

    #@0
    .prologue
    .line 1380
    and-int/lit8 v0, p0, 0x7

    #@2
    if-eqz v0, :cond_0

    #@4
    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    #@7
    move-result v0

    #@8
    const/4 v1, 0x1

    #@9
    if-eq v0, v1, :cond_1

    #@b
    .line 1381
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@d
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v2, "invalid duplex mode: "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0

    #@25
    .line 1379
    :cond_1
    return-void
.end method


# virtual methods
.method public asLandscape()Landroid/print/PrintAttributes;
    .locals 7

    #@0
    .prologue
    .line 300
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->isPortrait()Z

    #@3
    move-result v3

    #@4
    if-nez v3, :cond_0

    #@6
    .line 301
    return-object p0

    #@7
    .line 304
    :cond_0
    new-instance v0, Landroid/print/PrintAttributes;

    #@9
    invoke-direct {v0}, Landroid/print/PrintAttributes;-><init>()V

    #@c
    .line 307
    .local v0, "attributes":Landroid/print/PrintAttributes;
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getMediaSize()Landroid/print/PrintAttributes$MediaSize;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v3}, Landroid/print/PrintAttributes$MediaSize;->asLandscape()Landroid/print/PrintAttributes$MediaSize;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v0, v3}, Landroid/print/PrintAttributes;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)V

    #@17
    .line 310
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getResolution()Landroid/print/PrintAttributes$Resolution;

    #@1a
    move-result-object v2

    #@1b
    .line 311
    .local v2, "oldResolution":Landroid/print/PrintAttributes$Resolution;
    new-instance v1, Landroid/print/PrintAttributes$Resolution;

    #@1d
    .line 312
    invoke-virtual {v2}, Landroid/print/PrintAttributes$Resolution;->getId()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    .line 313
    invoke-virtual {v2}, Landroid/print/PrintAttributes$Resolution;->getLabel()Ljava/lang/String;

    #@24
    move-result-object v4

    #@25
    .line 314
    invoke-virtual {v2}, Landroid/print/PrintAttributes$Resolution;->getVerticalDpi()I

    #@28
    move-result v5

    #@29
    .line 315
    invoke-virtual {v2}, Landroid/print/PrintAttributes$Resolution;->getHorizontalDpi()I

    #@2c
    move-result v6

    #@2d
    .line 311
    invoke-direct {v1, v3, v4, v5, v6}, Landroid/print/PrintAttributes$Resolution;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    #@30
    .line 316
    .local v1, "newResolution":Landroid/print/PrintAttributes$Resolution;
    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes;->setResolution(Landroid/print/PrintAttributes$Resolution;)V

    #@33
    .line 319
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getMinMargins()Landroid/print/PrintAttributes$Margins;

    #@36
    move-result-object v3

    #@37
    invoke-virtual {v0, v3}, Landroid/print/PrintAttributes;->setMinMargins(Landroid/print/PrintAttributes$Margins;)V

    #@3a
    .line 321
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getColorMode()I

    #@3d
    move-result v3

    #@3e
    invoke-virtual {v0, v3}, Landroid/print/PrintAttributes;->setColorMode(I)V

    #@41
    .line 322
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getDuplexMode()I

    #@44
    move-result v3

    #@45
    invoke-virtual {v0, v3}, Landroid/print/PrintAttributes;->setDuplexMode(I)V

    #@48
    .line 324
    return-object v0
.end method

.method public asPortrait()Landroid/print/PrintAttributes;
    .locals 7

    #@0
    .prologue
    .line 262
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->isPortrait()Z

    #@3
    move-result v3

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 263
    return-object p0

    #@7
    .line 266
    :cond_0
    new-instance v0, Landroid/print/PrintAttributes;

    #@9
    invoke-direct {v0}, Landroid/print/PrintAttributes;-><init>()V

    #@c
    .line 269
    .local v0, "attributes":Landroid/print/PrintAttributes;
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getMediaSize()Landroid/print/PrintAttributes$MediaSize;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v3}, Landroid/print/PrintAttributes$MediaSize;->asPortrait()Landroid/print/PrintAttributes$MediaSize;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v0, v3}, Landroid/print/PrintAttributes;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)V

    #@17
    .line 272
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getResolution()Landroid/print/PrintAttributes$Resolution;

    #@1a
    move-result-object v2

    #@1b
    .line 273
    .local v2, "oldResolution":Landroid/print/PrintAttributes$Resolution;
    new-instance v1, Landroid/print/PrintAttributes$Resolution;

    #@1d
    .line 274
    invoke-virtual {v2}, Landroid/print/PrintAttributes$Resolution;->getId()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    .line 275
    invoke-virtual {v2}, Landroid/print/PrintAttributes$Resolution;->getLabel()Ljava/lang/String;

    #@24
    move-result-object v4

    #@25
    .line 276
    invoke-virtual {v2}, Landroid/print/PrintAttributes$Resolution;->getVerticalDpi()I

    #@28
    move-result v5

    #@29
    .line 277
    invoke-virtual {v2}, Landroid/print/PrintAttributes$Resolution;->getHorizontalDpi()I

    #@2c
    move-result v6

    #@2d
    .line 273
    invoke-direct {v1, v3, v4, v5, v6}, Landroid/print/PrintAttributes$Resolution;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    #@30
    .line 278
    .local v1, "newResolution":Landroid/print/PrintAttributes$Resolution;
    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes;->setResolution(Landroid/print/PrintAttributes$Resolution;)V

    #@33
    .line 281
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getMinMargins()Landroid/print/PrintAttributes$Margins;

    #@36
    move-result-object v3

    #@37
    invoke-virtual {v0, v3}, Landroid/print/PrintAttributes;->setMinMargins(Landroid/print/PrintAttributes$Margins;)V

    #@3a
    .line 283
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getColorMode()I

    #@3d
    move-result v3

    #@3e
    invoke-virtual {v0, v3}, Landroid/print/PrintAttributes;->setColorMode(I)V

    #@41
    .line 284
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getDuplexMode()I

    #@44
    move-result v3

    #@45
    invoke-virtual {v0, v3}, Landroid/print/PrintAttributes;->setDuplexMode(I)V

    #@48
    .line 286
    return-object v0
.end method

.method public clear()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 431
    iput-object v0, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    #@4
    .line 432
    iput-object v0, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    #@6
    .line 433
    iput-object v0, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    #@8
    .line 434
    iput v1, p0, Landroid/print/PrintAttributes;->mColorMode:I

    #@a
    .line 435
    iput v1, p0, Landroid/print/PrintAttributes;->mDuplexMode:I

    #@c
    .line 430
    return-void
.end method

.method public copyFrom(Landroid/print/PrintAttributes;)V
    .locals 1
    .param p1, "other"    # Landroid/print/PrintAttributes;

    #@0
    .prologue
    .line 442
    iget-object v0, p1, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    #@2
    iput-object v0, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    #@4
    .line 443
    iget-object v0, p1, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    #@6
    iput-object v0, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    #@8
    .line 444
    iget-object v0, p1, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    #@a
    iput-object v0, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    #@c
    .line 445
    iget v0, p1, Landroid/print/PrintAttributes;->mColorMode:I

    #@e
    iput v0, p0, Landroid/print/PrintAttributes;->mColorMode:I

    #@10
    .line 446
    iget v0, p1, Landroid/print/PrintAttributes;->mDuplexMode:I

    #@12
    iput v0, p0, Landroid/print/PrintAttributes;->mDuplexMode:I

    #@14
    .line 441
    return-void
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 353
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 370
    if-ne p0, p1, :cond_0

    #@4
    .line 371
    return v4

    #@5
    .line 373
    :cond_0
    if-nez p1, :cond_1

    #@7
    .line 374
    return v3

    #@8
    .line 376
    :cond_1
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@f
    move-result-object v2

    #@10
    if-eq v1, v2, :cond_2

    #@12
    .line 377
    return v3

    #@13
    :cond_2
    move-object v0, p1

    #@14
    .line 379
    check-cast v0, Landroid/print/PrintAttributes;

    #@16
    .line 380
    .local v0, "other":Landroid/print/PrintAttributes;
    iget v1, p0, Landroid/print/PrintAttributes;->mColorMode:I

    #@18
    iget v2, v0, Landroid/print/PrintAttributes;->mColorMode:I

    #@1a
    if-eq v1, v2, :cond_3

    #@1c
    .line 381
    return v3

    #@1d
    .line 383
    :cond_3
    iget v1, p0, Landroid/print/PrintAttributes;->mDuplexMode:I

    #@1f
    iget v2, v0, Landroid/print/PrintAttributes;->mDuplexMode:I

    #@21
    if-eq v1, v2, :cond_4

    #@23
    .line 384
    return v3

    #@24
    .line 386
    :cond_4
    iget-object v1, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    #@26
    if-nez v1, :cond_5

    #@28
    .line 387
    iget-object v1, v0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    #@2a
    if-eqz v1, :cond_6

    #@2c
    .line 388
    return v3

    #@2d
    .line 390
    :cond_5
    iget-object v1, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    #@2f
    iget-object v2, v0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    #@31
    invoke-virtual {v1, v2}, Landroid/print/PrintAttributes$Margins;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v1

    #@35
    if-nez v1, :cond_6

    #@37
    .line 391
    return v3

    #@38
    .line 393
    :cond_6
    iget-object v1, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    #@3a
    if-nez v1, :cond_7

    #@3c
    .line 394
    iget-object v1, v0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    #@3e
    if-eqz v1, :cond_8

    #@40
    .line 395
    return v3

    #@41
    .line 397
    :cond_7
    iget-object v1, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    #@43
    iget-object v2, v0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    #@45
    invoke-virtual {v1, v2}, Landroid/print/PrintAttributes$MediaSize;->equals(Ljava/lang/Object;)Z

    #@48
    move-result v1

    #@49
    if-nez v1, :cond_8

    #@4b
    .line 398
    return v3

    #@4c
    .line 400
    :cond_8
    iget-object v1, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    #@4e
    if-nez v1, :cond_9

    #@50
    .line 401
    iget-object v1, v0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    #@52
    if-eqz v1, :cond_a

    #@54
    .line 402
    return v3

    #@55
    .line 404
    :cond_9
    iget-object v1, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    #@57
    iget-object v2, v0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    #@59
    invoke-virtual {v1, v2}, Landroid/print/PrintAttributes$Resolution;->equals(Ljava/lang/Object;)Z

    #@5c
    move-result v1

    #@5d
    if-nez v1, :cond_a

    #@5f
    .line 405
    return v3

    #@60
    .line 407
    :cond_a
    return v4
.end method

.method public getColorMode()I
    .locals 1

    #@0
    .prologue
    .line 191
    iget v0, p0, Landroid/print/PrintAttributes;->mColorMode:I

    #@2
    return v0
.end method

.method public getDuplexMode()I
    .locals 1

    #@0
    .prologue
    .line 232
    iget v0, p0, Landroid/print/PrintAttributes;->mDuplexMode:I

    #@2
    return v0
.end method

.method public getMediaSize()Landroid/print/PrintAttributes$MediaSize;
    .locals 1

    #@0
    .prologue
    .line 112
    iget-object v0, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    #@2
    return-object v0
.end method

.method public getMinMargins()Landroid/print/PrintAttributes$Margins;
    .locals 1

    #@0
    .prologue
    .line 160
    iget-object v0, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    #@2
    return-object v0
.end method

.method public getResolution()Landroid/print/PrintAttributes$Resolution;
    .locals 1

    #@0
    .prologue
    .line 132
    iget-object v0, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 5

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 358
    const/16 v0, 0x1f

    #@3
    .line 360
    .local v0, "prime":I
    iget v2, p0, Landroid/print/PrintAttributes;->mColorMode:I

    #@5
    add-int/lit8 v1, v2, 0x1f

    #@7
    .line 361
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    #@9
    iget v4, p0, Landroid/print/PrintAttributes;->mDuplexMode:I

    #@b
    add-int v1, v2, v4

    #@d
    .line 362
    mul-int/lit8 v4, v1, 0x1f

    #@f
    iget-object v2, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    #@11
    if-nez v2, :cond_0

    #@13
    move v2, v3

    #@14
    :goto_0
    add-int v1, v4, v2

    #@16
    .line 363
    mul-int/lit8 v4, v1, 0x1f

    #@18
    iget-object v2, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    #@1a
    if-nez v2, :cond_1

    #@1c
    move v2, v3

    #@1d
    :goto_1
    add-int v1, v4, v2

    #@1f
    .line 364
    mul-int/lit8 v2, v1, 0x1f

    #@21
    iget-object v4, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    #@23
    if-nez v4, :cond_2

    #@25
    :goto_2
    add-int v1, v2, v3

    #@27
    .line 365
    return v1

    #@28
    .line 362
    :cond_0
    iget-object v2, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    #@2a
    invoke-virtual {v2}, Landroid/print/PrintAttributes$Margins;->hashCode()I

    #@2d
    move-result v2

    #@2e
    goto :goto_0

    #@2f
    .line 363
    :cond_1
    iget-object v2, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    #@31
    invoke-virtual {v2}, Landroid/print/PrintAttributes$MediaSize;->hashCode()I

    #@34
    move-result v2

    #@35
    goto :goto_1

    #@36
    .line 364
    :cond_2
    iget-object v3, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    #@38
    invoke-virtual {v3}, Landroid/print/PrintAttributes$Resolution;->hashCode()I

    #@3b
    move-result v3

    #@3c
    goto :goto_2
.end method

.method public isPortrait()Z
    .locals 1

    #@0
    .prologue
    .line 219
    iget-object v0, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    #@2
    invoke-virtual {v0}, Landroid/print/PrintAttributes$MediaSize;->isPortrait()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public setColorMode(I)V
    .locals 0
    .param p1, "colorMode"    # I

    #@0
    .prologue
    .line 205
    invoke-static {p1}, Landroid/print/PrintAttributes;->enforceValidColorMode(I)V

    #@3
    .line 206
    iput p1, p0, Landroid/print/PrintAttributes;->mColorMode:I

    #@5
    .line 204
    return-void
.end method

.method public setDuplexMode(I)V
    .locals 0
    .param p1, "duplexMode"    # I

    #@0
    .prologue
    .line 247
    invoke-static {p1}, Landroid/print/PrintAttributes;->enforceValidDuplexMode(I)V

    #@3
    .line 248
    iput p1, p0, Landroid/print/PrintAttributes;->mDuplexMode:I

    #@5
    .line 246
    return-void
.end method

.method public setMediaSize(Landroid/print/PrintAttributes$MediaSize;)V
    .locals 0
    .param p1, "mediaSize"    # Landroid/print/PrintAttributes$MediaSize;

    #@0
    .prologue
    .line 123
    iput-object p1, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    #@2
    .line 122
    return-void
.end method

.method public setMinMargins(Landroid/print/PrintAttributes$Margins;)V
    .locals 0
    .param p1, "margins"    # Landroid/print/PrintAttributes$Margins;

    #@0
    .prologue
    .line 179
    iput-object p1, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    #@2
    .line 178
    return-void
.end method

.method public setResolution(Landroid/print/PrintAttributes$Resolution;)V
    .locals 0
    .param p1, "resolution"    # Landroid/print/PrintAttributes$Resolution;

    #@0
    .prologue
    .line 143
    iput-object p1, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    #@2
    .line 142
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 413
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "PrintAttributes{"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 414
    const-string/jumbo v1, "mediaSize: "

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    iget-object v2, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    .line 415
    iget-object v1, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    #@19
    if-eqz v1, :cond_1

    #@1b
    .line 416
    const-string/jumbo v1, ", orientation: "

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    iget-object v1, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    #@24
    invoke-virtual {v1}, Landroid/print/PrintAttributes$MediaSize;->isPortrait()Z

    #@27
    move-result v1

    #@28
    if-eqz v1, :cond_0

    #@2a
    .line 417
    const-string/jumbo v1, "portrait"

    #@2d
    .line 416
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    .line 421
    :goto_1
    const-string/jumbo v1, ", resolution: "

    #@33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    iget-object v2, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    #@39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3c
    .line 422
    const-string/jumbo v1, ", minMargins: "

    #@3f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    iget-object v2, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    #@45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@48
    .line 423
    const-string/jumbo v1, ", colorMode: "

    #@4b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v1

    #@4f
    iget v2, p0, Landroid/print/PrintAttributes;->mColorMode:I

    #@51
    invoke-static {v2}, Landroid/print/PrintAttributes;->colorModeToString(I)Ljava/lang/String;

    #@54
    move-result-object v2

    #@55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    .line 424
    const-string/jumbo v1, ", duplexMode: "

    #@5b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v1

    #@5f
    iget v2, p0, Landroid/print/PrintAttributes;->mDuplexMode:I

    #@61
    invoke-static {v2}, Landroid/print/PrintAttributes;->duplexModeToString(I)Ljava/lang/String;

    #@64
    move-result-object v2

    #@65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    .line 425
    const-string/jumbo v1, "}"

    #@6b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    .line 426
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@71
    move-result-object v1

    #@72
    return-object v1

    #@73
    .line 417
    :cond_0
    const-string/jumbo v1, "landscape"

    #@76
    goto :goto_0

    #@77
    .line 419
    :cond_1
    const-string/jumbo v1, ", orientation: "

    #@7a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v1

    #@7e
    const-string/jumbo v2, "null"

    #@81
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 329
    iget-object v0, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 330
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@9
    .line 331
    iget-object v0, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    #@b
    invoke-virtual {v0, p1}, Landroid/print/PrintAttributes$MediaSize;->writeToParcel(Landroid/os/Parcel;)V

    #@e
    .line 335
    :goto_0
    iget-object v0, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 336
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 337
    iget-object v0, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    #@17
    invoke-virtual {v0, p1}, Landroid/print/PrintAttributes$Resolution;->writeToParcel(Landroid/os/Parcel;)V

    #@1a
    .line 341
    :goto_1
    iget-object v0, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    #@1c
    if-eqz v0, :cond_2

    #@1e
    .line 342
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 343
    iget-object v0, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    #@23
    invoke-virtual {v0, p1}, Landroid/print/PrintAttributes$Margins;->writeToParcel(Landroid/os/Parcel;)V

    #@26
    .line 347
    :goto_2
    iget v0, p0, Landroid/print/PrintAttributes;->mColorMode:I

    #@28
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2b
    .line 348
    iget v0, p0, Landroid/print/PrintAttributes;->mDuplexMode:I

    #@2d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@30
    .line 328
    return-void

    #@31
    .line 333
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@34
    goto :goto_0

    #@35
    .line 339
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@38
    goto :goto_1

    #@39
    .line 345
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3c
    goto :goto_2
.end method
