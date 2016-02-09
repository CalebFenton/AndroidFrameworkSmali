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
        Landroid/print/PrintAttributes$1;
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
    .line 1443
    new-instance v0, Landroid/print/PrintAttributes$1;

    #@2
    invoke-direct {v0}, Landroid/print/PrintAttributes$1;-><init>()V

    #@5
    .line 1442
    sput-object v0, Landroid/print/PrintAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 39
    return-void
.end method

.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 63
    const/4 v0, 0x1

    #@4
    iput v0, p0, Landroid/print/PrintAttributes;->mDuplexMode:I

    #@6
    .line 65
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
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 63
    iput v2, p0, Landroid/print/PrintAttributes;->mDuplexMode:I

    #@7
    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@a
    move-result v0

    #@b
    if-ne v0, v2, :cond_1

    #@d
    invoke-static {p1}, Landroid/print/PrintAttributes$MediaSize;->createFromParcel(Landroid/os/Parcel;)Landroid/print/PrintAttributes$MediaSize;

    #@10
    move-result-object v0

    #@11
    :goto_0
    iput-object v0, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    #@13
    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@16
    move-result v0

    #@17
    if-ne v0, v2, :cond_2

    #@19
    invoke-static {p1}, Landroid/print/PrintAttributes$Resolution;->createFromParcel(Landroid/os/Parcel;)Landroid/print/PrintAttributes$Resolution;

    #@1c
    move-result-object v0

    #@1d
    :goto_1
    iput-object v0, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    #@1f
    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@22
    move-result v0

    #@23
    if-ne v0, v2, :cond_0

    #@25
    invoke-static {p1}, Landroid/print/PrintAttributes$Margins;->createFromParcel(Landroid/os/Parcel;)Landroid/print/PrintAttributes$Margins;

    #@28
    move-result-object v1

    #@29
    :cond_0
    iput-object v1, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    #@2b
    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2e
    move-result v0

    #@2f
    iput v0, p0, Landroid/print/PrintAttributes;->mColorMode:I

    #@31
    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@34
    move-result v0

    #@35
    iput v0, p0, Landroid/print/PrintAttributes;->mDuplexMode:I

    #@37
    .line 69
    return-void

    #@38
    :cond_1
    move-object v0, v1

    #@39
    .line 70
    goto :goto_0

    #@3a
    :cond_2
    move-object v0, v1

    #@3b
    .line 71
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
    .line 1317
    packed-switch p0, :pswitch_data_0

    #@3
    .line 1325
    const-string/jumbo v0, "COLOR_MODE_UNKNOWN"

    #@6
    return-object v0

    #@7
    .line 1319
    :pswitch_0
    const-string/jumbo v0, "COLOR_MODE_MONOCHROME"

    #@a
    return-object v0

    #@b
    .line 1322
    :pswitch_1
    const-string/jumbo v0, "COLOR_MODE_COLOR"

    #@e
    return-object v0

    #@f
    .line 1317
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
    .line 1331
    packed-switch p0, :pswitch_data_0

    #@3
    .line 1342
    :pswitch_0
    const-string/jumbo v0, "DUPLEX_MODE_UNKNOWN"

    #@6
    return-object v0

    #@7
    .line 1333
    :pswitch_1
    const-string/jumbo v0, "DUPLEX_MODE_NONE"

    #@a
    return-object v0

    #@b
    .line 1336
    :pswitch_2
    const-string/jumbo v0, "DUPLEX_MODE_LONG_EDGE"

    #@e
    return-object v0

    #@f
    .line 1339
    :pswitch_3
    const-string/jumbo v0, "DUPLEX_MODE_SHORT_EDGE"

    #@12
    return-object v0

    #@13
    .line 1331
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
    .line 1348
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
    .line 1349
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
    .line 1347
    :cond_1
    return-void
.end method

.method static enforceValidDuplexMode(I)V
    .locals 3
    .param p0, "duplexMode"    # I

    #@0
    .prologue
    .line 1354
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
    .line 1355
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
    .line 1353
    :cond_1
    return-void
.end method


# virtual methods
.method public asLandscape()Landroid/print/PrintAttributes;
    .locals 7

    #@0
    .prologue
    .line 271
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->isPortrait()Z

    #@3
    move-result v3

    #@4
    if-nez v3, :cond_0

    #@6
    .line 272
    return-object p0

    #@7
    .line 275
    :cond_0
    new-instance v0, Landroid/print/PrintAttributes;

    #@9
    invoke-direct {v0}, Landroid/print/PrintAttributes;-><init>()V

    #@c
    .line 278
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
    .line 281
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getResolution()Landroid/print/PrintAttributes$Resolution;

    #@1a
    move-result-object v2

    #@1b
    .line 282
    .local v2, "oldResolution":Landroid/print/PrintAttributes$Resolution;
    new-instance v1, Landroid/print/PrintAttributes$Resolution;

    #@1d
    .line 283
    invoke-virtual {v2}, Landroid/print/PrintAttributes$Resolution;->getId()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    .line 284
    invoke-virtual {v2}, Landroid/print/PrintAttributes$Resolution;->getLabel()Ljava/lang/String;

    #@24
    move-result-object v4

    #@25
    .line 285
    invoke-virtual {v2}, Landroid/print/PrintAttributes$Resolution;->getVerticalDpi()I

    #@28
    move-result v5

    #@29
    .line 286
    invoke-virtual {v2}, Landroid/print/PrintAttributes$Resolution;->getHorizontalDpi()I

    #@2c
    move-result v6

    #@2d
    .line 282
    invoke-direct {v1, v3, v4, v5, v6}, Landroid/print/PrintAttributes$Resolution;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    #@30
    .line 287
    .local v1, "newResolution":Landroid/print/PrintAttributes$Resolution;
    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes;->setResolution(Landroid/print/PrintAttributes$Resolution;)V

    #@33
    .line 290
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getMinMargins()Landroid/print/PrintAttributes$Margins;

    #@36
    move-result-object v3

    #@37
    invoke-virtual {v0, v3}, Landroid/print/PrintAttributes;->setMinMargins(Landroid/print/PrintAttributes$Margins;)V

    #@3a
    .line 292
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getColorMode()I

    #@3d
    move-result v3

    #@3e
    invoke-virtual {v0, v3}, Landroid/print/PrintAttributes;->setColorMode(I)V

    #@41
    .line 293
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getDuplexMode()I

    #@44
    move-result v3

    #@45
    invoke-virtual {v0, v3}, Landroid/print/PrintAttributes;->setDuplexMode(I)V

    #@48
    .line 295
    return-object v0
.end method

.method public asPortrait()Landroid/print/PrintAttributes;
    .locals 7

    #@0
    .prologue
    .line 233
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->isPortrait()Z

    #@3
    move-result v3

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 234
    return-object p0

    #@7
    .line 237
    :cond_0
    new-instance v0, Landroid/print/PrintAttributes;

    #@9
    invoke-direct {v0}, Landroid/print/PrintAttributes;-><init>()V

    #@c
    .line 240
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
    .line 243
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getResolution()Landroid/print/PrintAttributes$Resolution;

    #@1a
    move-result-object v2

    #@1b
    .line 244
    .local v2, "oldResolution":Landroid/print/PrintAttributes$Resolution;
    new-instance v1, Landroid/print/PrintAttributes$Resolution;

    #@1d
    .line 245
    invoke-virtual {v2}, Landroid/print/PrintAttributes$Resolution;->getId()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    .line 246
    invoke-virtual {v2}, Landroid/print/PrintAttributes$Resolution;->getLabel()Ljava/lang/String;

    #@24
    move-result-object v4

    #@25
    .line 247
    invoke-virtual {v2}, Landroid/print/PrintAttributes$Resolution;->getVerticalDpi()I

    #@28
    move-result v5

    #@29
    .line 248
    invoke-virtual {v2}, Landroid/print/PrintAttributes$Resolution;->getHorizontalDpi()I

    #@2c
    move-result v6

    #@2d
    .line 244
    invoke-direct {v1, v3, v4, v5, v6}, Landroid/print/PrintAttributes$Resolution;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    #@30
    .line 249
    .local v1, "newResolution":Landroid/print/PrintAttributes$Resolution;
    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes;->setResolution(Landroid/print/PrintAttributes$Resolution;)V

    #@33
    .line 252
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getMinMargins()Landroid/print/PrintAttributes$Margins;

    #@36
    move-result-object v3

    #@37
    invoke-virtual {v0, v3}, Landroid/print/PrintAttributes;->setMinMargins(Landroid/print/PrintAttributes$Margins;)V

    #@3a
    .line 254
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getColorMode()I

    #@3d
    move-result v3

    #@3e
    invoke-virtual {v0, v3}, Landroid/print/PrintAttributes;->setColorMode(I)V

    #@41
    .line 255
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getDuplexMode()I

    #@44
    move-result v3

    #@45
    invoke-virtual {v0, v3}, Landroid/print/PrintAttributes;->setDuplexMode(I)V

    #@48
    .line 257
    return-object v0
.end method

.method public clear()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 402
    iput-object v0, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    #@3
    .line 403
    iput-object v0, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    #@5
    .line 404
    iput-object v0, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    #@7
    .line 405
    const/4 v0, 0x0

    #@8
    iput v0, p0, Landroid/print/PrintAttributes;->mColorMode:I

    #@a
    .line 406
    const/4 v0, 0x1

    #@b
    iput v0, p0, Landroid/print/PrintAttributes;->mDuplexMode:I

    #@d
    .line 401
    return-void
.end method

.method public copyFrom(Landroid/print/PrintAttributes;)V
    .locals 1
    .param p1, "other"    # Landroid/print/PrintAttributes;

    #@0
    .prologue
    .line 413
    iget-object v0, p1, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    #@2
    iput-object v0, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    #@4
    .line 414
    iget-object v0, p1, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    #@6
    iput-object v0, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    #@8
    .line 415
    iget-object v0, p1, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    #@a
    iput-object v0, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    #@c
    .line 416
    iget v0, p1, Landroid/print/PrintAttributes;->mColorMode:I

    #@e
    iput v0, p0, Landroid/print/PrintAttributes;->mColorMode:I

    #@10
    .line 417
    iget v0, p1, Landroid/print/PrintAttributes;->mDuplexMode:I

    #@12
    iput v0, p0, Landroid/print/PrintAttributes;->mDuplexMode:I

    #@14
    .line 412
    return-void
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 324
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
    .line 341
    if-ne p0, p1, :cond_0

    #@4
    .line 342
    return v4

    #@5
    .line 344
    :cond_0
    if-nez p1, :cond_1

    #@7
    .line 345
    return v3

    #@8
    .line 347
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
    .line 348
    return v3

    #@13
    :cond_2
    move-object v0, p1

    #@14
    .line 350
    check-cast v0, Landroid/print/PrintAttributes;

    #@16
    .line 351
    .local v0, "other":Landroid/print/PrintAttributes;
    iget v1, p0, Landroid/print/PrintAttributes;->mColorMode:I

    #@18
    iget v2, v0, Landroid/print/PrintAttributes;->mColorMode:I

    #@1a
    if-eq v1, v2, :cond_3

    #@1c
    .line 352
    return v3

    #@1d
    .line 354
    :cond_3
    iget v1, p0, Landroid/print/PrintAttributes;->mDuplexMode:I

    #@1f
    iget v2, v0, Landroid/print/PrintAttributes;->mDuplexMode:I

    #@21
    if-eq v1, v2, :cond_4

    #@23
    .line 355
    return v3

    #@24
    .line 357
    :cond_4
    iget-object v1, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    #@26
    if-nez v1, :cond_5

    #@28
    .line 358
    iget-object v1, v0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    #@2a
    if-eqz v1, :cond_6

    #@2c
    .line 359
    return v3

    #@2d
    .line 361
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
    .line 362
    return v3

    #@38
    .line 364
    :cond_6
    iget-object v1, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    #@3a
    if-nez v1, :cond_7

    #@3c
    .line 365
    iget-object v1, v0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    #@3e
    if-eqz v1, :cond_8

    #@40
    .line 366
    return v3

    #@41
    .line 368
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
    .line 369
    return v3

    #@4c
    .line 371
    :cond_8
    iget-object v1, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    #@4e
    if-nez v1, :cond_9

    #@50
    .line 372
    iget-object v1, v0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    #@52
    if-eqz v1, :cond_a

    #@54
    .line 373
    return v3

    #@55
    .line 375
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
    .line 376
    return v3

    #@60
    .line 378
    :cond_a
    return v4
.end method

.method public getColorMode()I
    .locals 1

    #@0
    .prologue
    .line 162
    iget v0, p0, Landroid/print/PrintAttributes;->mColorMode:I

    #@2
    return v0
.end method

.method public getDuplexMode()I
    .locals 1

    #@0
    .prologue
    .line 203
    iget v0, p0, Landroid/print/PrintAttributes;->mDuplexMode:I

    #@2
    return v0
.end method

.method public getMediaSize()Landroid/print/PrintAttributes$MediaSize;
    .locals 1

    #@0
    .prologue
    .line 83
    iget-object v0, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    #@2
    return-object v0
.end method

.method public getMinMargins()Landroid/print/PrintAttributes$Margins;
    .locals 1

    #@0
    .prologue
    .line 131
    iget-object v0, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    #@2
    return-object v0
.end method

.method public getResolution()Landroid/print/PrintAttributes$Resolution;
    .locals 1

    #@0
    .prologue
    .line 103
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
    .line 329
    const/16 v0, 0x1f

    #@3
    .line 331
    .local v0, "prime":I
    iget v2, p0, Landroid/print/PrintAttributes;->mColorMode:I

    #@5
    add-int/lit8 v1, v2, 0x1f

    #@7
    .line 332
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    #@9
    iget v4, p0, Landroid/print/PrintAttributes;->mDuplexMode:I

    #@b
    add-int v1, v2, v4

    #@d
    .line 333
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
    .line 334
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
    .line 335
    mul-int/lit8 v2, v1, 0x1f

    #@21
    iget-object v4, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    #@23
    if-nez v4, :cond_2

    #@25
    :goto_2
    add-int v1, v2, v3

    #@27
    .line 336
    return v1

    #@28
    .line 333
    :cond_0
    iget-object v2, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    #@2a
    invoke-virtual {v2}, Landroid/print/PrintAttributes$Margins;->hashCode()I

    #@2d
    move-result v2

    #@2e
    goto :goto_0

    #@2f
    .line 334
    :cond_1
    iget-object v2, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    #@31
    invoke-virtual {v2}, Landroid/print/PrintAttributes$MediaSize;->hashCode()I

    #@34
    move-result v2

    #@35
    goto :goto_1

    #@36
    .line 335
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
    .line 190
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
    .line 176
    invoke-static {p1}, Landroid/print/PrintAttributes;->enforceValidColorMode(I)V

    #@3
    .line 177
    iput p1, p0, Landroid/print/PrintAttributes;->mColorMode:I

    #@5
    .line 175
    return-void
.end method

.method public setDuplexMode(I)V
    .locals 0
    .param p1, "duplexMode"    # I

    #@0
    .prologue
    .line 218
    invoke-static {p1}, Landroid/print/PrintAttributes;->enforceValidDuplexMode(I)V

    #@3
    .line 219
    iput p1, p0, Landroid/print/PrintAttributes;->mDuplexMode:I

    #@5
    .line 217
    return-void
.end method

.method public setMediaSize(Landroid/print/PrintAttributes$MediaSize;)V
    .locals 0
    .param p1, "mediaSize"    # Landroid/print/PrintAttributes$MediaSize;

    #@0
    .prologue
    .line 94
    iput-object p1, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    #@2
    .line 93
    return-void
.end method

.method public setMinMargins(Landroid/print/PrintAttributes$Margins;)V
    .locals 0
    .param p1, "margins"    # Landroid/print/PrintAttributes$Margins;

    #@0
    .prologue
    .line 150
    iput-object p1, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    #@2
    .line 149
    return-void
.end method

.method public setResolution(Landroid/print/PrintAttributes$Resolution;)V
    .locals 0
    .param p1, "resolution"    # Landroid/print/PrintAttributes$Resolution;

    #@0
    .prologue
    .line 114
    iput-object p1, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    #@2
    .line 113
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 384
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "PrintAttributes{"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 385
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
    .line 386
    iget-object v1, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    #@19
    if-eqz v1, :cond_1

    #@1b
    .line 387
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
    .line 388
    const-string/jumbo v1, "portrait"

    #@2d
    .line 387
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    .line 392
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
    .line 393
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
    .line 394
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
    .line 395
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
    .line 396
    const-string/jumbo v1, "}"

    #@6b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    .line 397
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@71
    move-result-object v1

    #@72
    return-object v1

    #@73
    .line 388
    :cond_0
    const-string/jumbo v1, "landscape"

    #@76
    goto :goto_0

    #@77
    .line 390
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
    .line 300
    iget-object v0, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 301
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@9
    .line 302
    iget-object v0, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    #@b
    invoke-virtual {v0, p1}, Landroid/print/PrintAttributes$MediaSize;->writeToParcel(Landroid/os/Parcel;)V

    #@e
    .line 306
    :goto_0
    iget-object v0, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 307
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 308
    iget-object v0, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    #@17
    invoke-virtual {v0, p1}, Landroid/print/PrintAttributes$Resolution;->writeToParcel(Landroid/os/Parcel;)V

    #@1a
    .line 312
    :goto_1
    iget-object v0, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    #@1c
    if-eqz v0, :cond_2

    #@1e
    .line 313
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 314
    iget-object v0, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    #@23
    invoke-virtual {v0, p1}, Landroid/print/PrintAttributes$Margins;->writeToParcel(Landroid/os/Parcel;)V

    #@26
    .line 318
    :goto_2
    iget v0, p0, Landroid/print/PrintAttributes;->mColorMode:I

    #@28
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2b
    .line 319
    iget v0, p0, Landroid/print/PrintAttributes;->mDuplexMode:I

    #@2d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@30
    .line 299
    return-void

    #@31
    .line 304
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@34
    goto :goto_0

    #@35
    .line 310
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@38
    goto :goto_1

    #@39
    .line 316
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3c
    goto :goto_2
.end method
