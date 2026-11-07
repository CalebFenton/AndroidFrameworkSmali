.class Landroid/media/TextTrackRegion;
.super Ljava/lang/Object;
.source "WebVttRenderer.java"


# static fields
.field static final greylist-max-o SCROLL_VALUE_NONE:I = 0x12c

.field static final greylist-max-o SCROLL_VALUE_SCROLL_UP:I = 0x12d


# instance fields
.field greylist-max-o mAnchorPointX:F

.field greylist-max-o mAnchorPointY:F

.field greylist-max-o mId:Ljava/lang/String;

.field greylist-max-o mLines:I

.field greylist-max-o mScrollValue:I

.field greylist-max-o mViewportAnchorPointX:F

.field greylist-max-o mViewportAnchorPointY:F

.field greylist-max-o mWidth:F


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 3

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    const-string v0, ""

    iput-object v0, p0, Landroid/media/TextTrackRegion;->mId:Ljava/lang/String;

    .line 355
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Landroid/media/TextTrackRegion;->mWidth:F

    .line 356
    const/4 v1, 0x3

    iput v1, p0, Landroid/media/TextTrackRegion;->mLines:I

    .line 357
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/TextTrackRegion;->mViewportAnchorPointX:F

    iput v1, p0, Landroid/media/TextTrackRegion;->mAnchorPointX:F

    .line 358
    iput v0, p0, Landroid/media/TextTrackRegion;->mViewportAnchorPointY:F

    iput v0, p0, Landroid/media/TextTrackRegion;->mAnchorPointY:F

    .line 359
    const/16 v0, 0x12c

    iput v0, p0, Landroid/media/TextTrackRegion;->mScrollValue:I

    .line 360
    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " {id:\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/media/TextTrackRegion;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 364
    const-string v1, "\", width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/TextTrackRegion;->mWidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 365
    const-string v1, ", lines:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/TextTrackRegion;->mLines:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 366
    const-string v1, ", anchorPoint:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/TextTrackRegion;->mAnchorPointX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 367
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/media/TextTrackRegion;->mAnchorPointY:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 368
    const-string v2, "), viewportAnchorPoints:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/media/TextTrackRegion;->mViewportAnchorPointX:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 369
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/TextTrackRegion;->mViewportAnchorPointY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 370
    const-string v1, "), scrollValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 371
    iget v1, p0, Landroid/media/TextTrackRegion;->mScrollValue:I

    const/16 v2, 0x12c

    if-ne v1, v2, :cond_62

    const-string v1, "none"

    goto :goto_6d

    .line 372
    :cond_62
    iget v1, p0, Landroid/media/TextTrackRegion;->mScrollValue:I

    const/16 v2, 0x12d

    if-ne v1, v2, :cond_6b

    const-string v1, "scroll_up"

    goto :goto_6d

    .line 373
    :cond_6b
    const-string v1, "INVALID"

    .line 371
    :goto_6d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 374
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 375
    .local v0, "res":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
