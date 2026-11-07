.class public final Landroid/media/projection/MediaProjectionConfig$Builder;
.super Ljava/lang/Object;
.source "MediaProjectionConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/projection/MediaProjectionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mInitialSelection:I

.field private blacklist mOptions:I

.field private blacklist mRequesterHint:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 417
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/projection/MediaProjectionConfig$Builder;->mOptions:I

    .line 418
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/projection/MediaProjectionConfig$Builder;->mRequesterHint:Ljava/lang/String;

    .line 424
    invoke-static {}, Lcom/android/media/projection/flags/Flags;->appContentSharing()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 427
    return-void

    .line 425
    :cond_10
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Flag FLAG_APP_CONTENT_SHARING disabled"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist build()Landroid/media/projection/MediaProjectionConfig;
    .registers 7

    .line 499
    new-instance v0, Landroid/media/projection/MediaProjectionConfig;

    iget v1, p0, Landroid/media/projection/MediaProjectionConfig$Builder;->mOptions:I

    iget-object v2, p0, Landroid/media/projection/MediaProjectionConfig$Builder;->mRequesterHint:Ljava/lang/String;

    iget v4, p0, Landroid/media/projection/MediaProjectionConfig$Builder;->mInitialSelection:I

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/media/projection/MediaProjectionConfig;-><init>(ILjava/lang/String;IILandroid/media/projection/MediaProjectionConfig-IA;)V

    return-object v0
.end method

.method public blacklist setInitiallySelectedSource(I)Landroid/media/projection/MediaProjectionConfig$Builder;
    .registers 6
    .param p1, "projectionSource"    # I

    .line 438
    invoke-static {}, Landroid/media/projection/MediaProjectionConfig;->-$$Nest$sfgetPROJECTION_SOURCES()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_12

    aget v3, v0, v2

    .line 439
    .local v3, "source":I
    if-ne p1, v3, :cond_f

    .line 440
    iput p1, p0, Landroid/media/projection/MediaProjectionConfig$Builder;->mInitialSelection:I

    .line 441
    return-object p0

    .line 438
    .end local v3    # "source":I
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 444
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Landroid/media/projection/MediaProjectionConfig;->-$$Nest$sfgetPROJECTION_SOURCES_STRING()[Ljava/lang/String;

    move-result-object v1

    .line 447
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 448
    invoke-static {p1}, Landroid/media/projection/MediaProjectionConfig;->-$$Nest$smprojectionSourceToString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 447
    const-string v2, "projectionSource is no a valid projection source. projectionSource must be one of %s but was %s"

    invoke-virtual {v2, v1}, Ljava/lang/String;->formatted([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setRequesterHint(Ljava/lang/String;)Landroid/media/projection/MediaProjectionConfig$Builder;
    .registers 2
    .param p1, "requesterHint"    # Ljava/lang/String;

    .line 467
    iput-object p1, p0, Landroid/media/projection/MediaProjectionConfig$Builder;->mRequesterHint:Ljava/lang/String;

    .line 468
    return-object p0
.end method

.method public blacklist setSourceEnabled(IZ)Landroid/media/projection/MediaProjectionConfig$Builder;
    .registers 6
    .param p1, "source"    # I
    .param p2, "enabled"    # Z

    .line 483
    invoke-static {}, Landroid/media/projection/MediaProjectionConfig;->-$$Nest$sfgetVALID_PROJECTION_SOURCES()I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_12

    .line 490
    iget v0, p0, Landroid/media/projection/MediaProjectionConfig$Builder;->mOptions:I

    if-eqz p2, :cond_d

    or-int/2addr v0, p1

    goto :goto_f

    :cond_d
    not-int v1, p1

    and-int/2addr v0, v1

    :goto_f
    iput v0, p0, Landroid/media/projection/MediaProjectionConfig$Builder;->mOptions:I

    .line 491
    return-object p0

    .line 484
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Landroid/media/projection/MediaProjectionConfig;->-$$Nest$sfgetPROJECTION_SOURCES_STRING()[Ljava/lang/String;

    move-result-object v1

    .line 487
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 488
    invoke-static {p1}, Landroid/media/projection/MediaProjectionConfig;->-$$Nest$smprojectionSourceToString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 487
    const-string v2, "source is no a valid projection source. source must be any of %s but was %s"

    invoke-virtual {v2, v1}, Ljava/lang/String;->formatted([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
