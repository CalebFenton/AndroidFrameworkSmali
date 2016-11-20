.class Landroid/media/TextTrackRegion;
.super Ljava/lang/Object;
.source "WebVttRenderer.java"


# static fields
.field static final SCROLL_VALUE_NONE:I = 0x12c

.field static final SCROLL_VALUE_SCROLL_UP:I = 0x12d


# instance fields
.field mAnchorPointX:F

.field mAnchorPointY:F

.field mId:Ljava/lang/String;

.field mLines:I

.field mScrollValue:I

.field mViewportAnchorPointX:F

.field mViewportAnchorPointY:F

.field mWidth:F


# direct methods
.method constructor <init>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/high16 v1, 0x42c80000    # 100.0f

    #@3
    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 352
    const-string/jumbo v0, ""

    #@9
    iput-object v0, p0, Landroid/media/TextTrackRegion;->mId:Ljava/lang/String;

    #@b
    .line 353
    iput v1, p0, Landroid/media/TextTrackRegion;->mWidth:F

    #@d
    .line 354
    const/4 v0, 0x3

    #@e
    iput v0, p0, Landroid/media/TextTrackRegion;->mLines:I

    #@10
    .line 355
    iput v2, p0, Landroid/media/TextTrackRegion;->mViewportAnchorPointX:F

    #@12
    iput v2, p0, Landroid/media/TextTrackRegion;->mAnchorPointX:F

    #@14
    .line 356
    iput v1, p0, Landroid/media/TextTrackRegion;->mViewportAnchorPointY:F

    #@16
    iput v1, p0, Landroid/media/TextTrackRegion;->mAnchorPointY:F

    #@18
    .line 357
    const/16 v0, 0x12c

    #@1a
    iput v0, p0, Landroid/media/TextTrackRegion;->mScrollValue:I

    #@1c
    .line 351
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 361
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    const-string/jumbo v2, " {id:\""

    #@5
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@8
    iget-object v2, p0, Landroid/media/TextTrackRegion;->mId:Ljava/lang/String;

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    .line 362
    const-string/jumbo v2, "\", width:"

    #@11
    .line 361
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    .line 362
    iget v2, p0, Landroid/media/TextTrackRegion;->mWidth:F

    #@17
    .line 361
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    .line 363
    const-string/jumbo v2, ", lines:"

    #@1e
    .line 361
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    .line 363
    iget v2, p0, Landroid/media/TextTrackRegion;->mLines:I

    #@24
    .line 361
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    .line 364
    const-string/jumbo v2, ", anchorPoint:("

    #@2b
    .line 361
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    .line 364
    iget v2, p0, Landroid/media/TextTrackRegion;->mAnchorPointX:F

    #@31
    .line 361
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    .line 365
    const-string/jumbo v2, ", "

    #@38
    .line 361
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    .line 365
    iget v2, p0, Landroid/media/TextTrackRegion;->mAnchorPointY:F

    #@3e
    .line 361
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    .line 366
    const-string/jumbo v2, "), viewportAnchorPoints:"

    #@45
    .line 361
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v1

    #@49
    .line 366
    iget v2, p0, Landroid/media/TextTrackRegion;->mViewportAnchorPointX:F

    #@4b
    .line 361
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v1

    #@4f
    .line 367
    const-string/jumbo v2, ", "

    #@52
    .line 361
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v1

    #@56
    .line 367
    iget v2, p0, Landroid/media/TextTrackRegion;->mViewportAnchorPointY:F

    #@58
    .line 361
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v1

    #@5c
    .line 368
    const-string/jumbo v2, "), scrollValue:"

    #@5f
    .line 361
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v2

    #@63
    .line 369
    iget v1, p0, Landroid/media/TextTrackRegion;->mScrollValue:I

    #@65
    const/16 v3, 0x12c

    #@67
    if-ne v1, v3, :cond_0

    #@69
    const-string/jumbo v1, "none"

    #@6c
    .line 361
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v1

    #@70
    .line 372
    const-string/jumbo v2, "}"

    #@73
    .line 361
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v0

    #@77
    .line 373
    .local v0, "res":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7a
    move-result-object v1

    #@7b
    return-object v1

    #@7c
    .line 370
    .end local v0    # "res":Ljava/lang/StringBuilder;
    :cond_0
    iget v1, p0, Landroid/media/TextTrackRegion;->mScrollValue:I

    #@7e
    const/16 v3, 0x12d

    #@80
    if-ne v1, v3, :cond_1

    #@82
    const-string/jumbo v1, "scroll_up"

    #@85
    goto :goto_0

    #@86
    .line 371
    :cond_1
    const-string/jumbo v1, "INVALID"

    #@89
    goto :goto_0
.end method
