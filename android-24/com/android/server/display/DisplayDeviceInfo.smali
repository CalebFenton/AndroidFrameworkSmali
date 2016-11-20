.class final Lcom/android/server/display/DisplayDeviceInfo;
.super Ljava/lang/Object;
.source "DisplayDeviceInfo.java"


# static fields
.field public static final DIFF_OTHER:I = 0x2

.field public static final DIFF_STATE:I = 0x1

.field public static final FLAG_DEFAULT_DISPLAY:I = 0x1

.field public static final FLAG_NEVER_BLANK:I = 0x20

.field public static final FLAG_OWN_CONTENT_ONLY:I = 0x80

.field public static final FLAG_PRESENTATION:I = 0x40

.field public static final FLAG_PRIVATE:I = 0x10

.field public static final FLAG_ROTATES_WITH_CONTENT:I = 0x2

.field public static final FLAG_ROUND:I = 0x100

.field public static final FLAG_SECURE:I = 0x4

.field public static final FLAG_SUPPORTS_PROTECTED_BUFFERS:I = 0x8

.field public static final TOUCH_EXTERNAL:I = 0x2

.field public static final TOUCH_INTERNAL:I = 0x1

.field public static final TOUCH_NONE:I


# instance fields
.field public address:Ljava/lang/String;

.field public appVsyncOffsetNanos:J

.field public colorTransformId:I

.field public defaultColorTransformId:I

.field public defaultModeId:I

.field public densityDpi:I

.field public flags:I

.field public hdrCapabilities:Landroid/view/Display$HdrCapabilities;

.field public height:I

.field public modeId:I

.field public name:Ljava/lang/String;

.field public ownerPackageName:Ljava/lang/String;

.field public ownerUid:I

.field public presentationDeadlineNanos:J

.field public rotation:I

.field public state:I

.field public supportedColorTransforms:[Landroid/view/Display$ColorTransform;

.field public supportedModes:[Landroid/view/Display$Mode;

.field public touch:I

.field public type:I

.field public uniqueId:Ljava/lang/String;

.field public width:I

.field public xDpi:F

.field public yDpi:F


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 156
    sget-object v0, Landroid/view/Display$Mode;->EMPTY_ARRAY:[Landroid/view/Display$Mode;

    #@5
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    #@7
    .line 165
    sget-object v0, Landroid/view/Display$ColorTransform;->EMPTY_ARRAY:[Landroid/view/Display$ColorTransform;

    #@9
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorTransforms:[Landroid/view/Display$ColorTransform;

    #@b
    .line 225
    const/4 v0, 0x0

    #@c
    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    #@e
    .line 241
    const/4 v0, 0x2

    #@f
    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    #@11
    .line 31
    return-void
.end method

.method private static flagsToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "flags"    # I

    #@0
    .prologue
    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 395
    .local v0, "msg":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 396
    const-string/jumbo v1, ", FLAG_DEFAULT_DISPLAY"

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    .line 398
    :cond_0
    and-int/lit8 v1, p0, 0x2

    #@11
    if-eqz v1, :cond_1

    #@13
    .line 399
    const-string/jumbo v1, ", FLAG_ROTATES_WITH_CONTENT"

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    .line 401
    :cond_1
    and-int/lit8 v1, p0, 0x4

    #@1b
    if-eqz v1, :cond_2

    #@1d
    .line 402
    const-string/jumbo v1, ", FLAG_SECURE"

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    .line 404
    :cond_2
    and-int/lit8 v1, p0, 0x8

    #@25
    if-eqz v1, :cond_3

    #@27
    .line 405
    const-string/jumbo v1, ", FLAG_SUPPORTS_PROTECTED_BUFFERS"

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    .line 407
    :cond_3
    and-int/lit8 v1, p0, 0x10

    #@2f
    if-eqz v1, :cond_4

    #@31
    .line 408
    const-string/jumbo v1, ", FLAG_PRIVATE"

    #@34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    .line 410
    :cond_4
    and-int/lit8 v1, p0, 0x20

    #@39
    if-eqz v1, :cond_5

    #@3b
    .line 411
    const-string/jumbo v1, ", FLAG_NEVER_BLANK"

    #@3e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    .line 413
    :cond_5
    and-int/lit8 v1, p0, 0x40

    #@43
    if-eqz v1, :cond_6

    #@45
    .line 414
    const-string/jumbo v1, ", FLAG_PRESENTATION"

    #@48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    .line 416
    :cond_6
    and-int/lit16 v1, p0, 0x80

    #@4d
    if-eqz v1, :cond_7

    #@4f
    .line 417
    const-string/jumbo v1, ", FLAG_OWN_CONTENT_ONLY"

    #@52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    .line 419
    :cond_7
    and-int/lit16 v1, p0, 0x100

    #@57
    if-eqz v1, :cond_8

    #@59
    .line 420
    const-string/jumbo v1, ", FLAG_ROUND"

    #@5c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    .line 422
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v1

    #@63
    return-object v1
.end method

.method private static touchToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "touch"    # I

    #@0
    .prologue
    .line 381
    packed-switch p0, :pswitch_data_0

    #@3
    .line 389
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    .line 383
    :pswitch_0
    const-string/jumbo v0, "NONE"

    #@b
    return-object v0

    #@c
    .line 385
    :pswitch_1
    const-string/jumbo v0, "INTERNAL"

    #@f
    return-object v0

    #@10
    .line 387
    :pswitch_2
    const-string/jumbo v0, "EXTERNAL"

    #@13
    return-object v0

    #@14
    .line 381
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public copyFrom(Lcom/android/server/display/DisplayDeviceInfo;)V
    .locals 2
    .param p1, "other"    # Lcom/android/server/display/DisplayDeviceInfo;

    #@0
    .prologue
    .line 320
    iget-object v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    #@2
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    #@4
    .line 321
    iget-object v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    #@6
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    #@8
    .line 322
    iget v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    #@a
    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    #@c
    .line 323
    iget v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    #@e
    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    #@10
    .line 324
    iget v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->modeId:I

    #@12
    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->modeId:I

    #@14
    .line 325
    iget v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->defaultModeId:I

    #@16
    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->defaultModeId:I

    #@18
    .line 326
    iget-object v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    #@1a
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    #@1c
    .line 327
    iget v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->colorTransformId:I

    #@1e
    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->colorTransformId:I

    #@20
    .line 328
    iget v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->defaultColorTransformId:I

    #@22
    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->defaultColorTransformId:I

    #@24
    .line 329
    iget-object v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorTransforms:[Landroid/view/Display$ColorTransform;

    #@26
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorTransforms:[Landroid/view/Display$ColorTransform;

    #@28
    .line 330
    iget-object v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    #@2a
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    #@2c
    .line 331
    iget v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    #@2e
    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    #@30
    .line 332
    iget v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    #@32
    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    #@34
    .line 333
    iget v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    #@36
    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    #@38
    .line 334
    iget-wide v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->appVsyncOffsetNanos:J

    #@3a
    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->appVsyncOffsetNanos:J

    #@3c
    .line 335
    iget-wide v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    #@3e
    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    #@40
    .line 336
    iget v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    #@42
    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    #@44
    .line 337
    iget v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    #@46
    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    #@48
    .line 338
    iget v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    #@4a
    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    #@4c
    .line 339
    iget v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    #@4e
    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    #@50
    .line 340
    iget-object v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->address:Ljava/lang/String;

    #@52
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->address:Ljava/lang/String;

    #@54
    .line 341
    iget v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    #@56
    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    #@58
    .line 342
    iget v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->ownerUid:I

    #@5a
    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->ownerUid:I

    #@5c
    .line 343
    iget-object v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->ownerPackageName:Ljava/lang/String;

    #@5e
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->ownerPackageName:Ljava/lang/String;

    #@60
    .line 319
    return-void
.end method

.method public diff(Lcom/android/server/display/DisplayDeviceInfo;)I
    .locals 6
    .param p1, "other"    # Lcom/android/server/display/DisplayDeviceInfo;

    #@0
    .prologue
    .line 282
    const/4 v0, 0x0

    #@1
    .line 283
    .local v0, "diff":I
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    #@3
    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    #@5
    if-eq v1, v2, :cond_0

    #@7
    .line 284
    const/4 v0, 0x1

    #@8
    .line 286
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    #@a
    iget-object v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    #@c
    invoke-static {v1, v2}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_1

    #@12
    .line 287
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    #@14
    iget-object v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    #@16
    invoke-static {v1, v2}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_1

    #@1c
    .line 288
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    #@1e
    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    #@20
    if-eq v1, v2, :cond_2

    #@22
    .line 309
    :cond_1
    or-int/lit8 v0, v0, 0x2

    #@24
    .line 311
    :goto_0
    return v0

    #@25
    .line 289
    :cond_2
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    #@27
    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    #@29
    if-ne v1, v2, :cond_1

    #@2b
    .line 290
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->modeId:I

    #@2d
    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->modeId:I

    #@2f
    if-ne v1, v2, :cond_1

    #@31
    .line 291
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->defaultModeId:I

    #@33
    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->defaultModeId:I

    #@35
    if-ne v1, v2, :cond_1

    #@37
    .line 292
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    #@39
    iget-object v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    #@3b
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@3e
    move-result v1

    #@3f
    if-eqz v1, :cond_1

    #@41
    .line 293
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->colorTransformId:I

    #@43
    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->colorTransformId:I

    #@45
    if-ne v1, v2, :cond_1

    #@47
    .line 294
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->defaultColorTransformId:I

    #@49
    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->defaultColorTransformId:I

    #@4b
    if-ne v1, v2, :cond_1

    #@4d
    .line 295
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorTransforms:[Landroid/view/Display$ColorTransform;

    #@4f
    iget-object v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorTransforms:[Landroid/view/Display$ColorTransform;

    #@51
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@54
    move-result v1

    #@55
    if-eqz v1, :cond_1

    #@57
    .line 296
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    #@59
    iget-object v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    #@5b
    invoke-static {v1, v2}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@5e
    move-result v1

    #@5f
    if-eqz v1, :cond_1

    #@61
    .line 297
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    #@63
    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    #@65
    if-ne v1, v2, :cond_1

    #@67
    .line 298
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    #@69
    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    #@6b
    cmpl-float v1, v1, v2

    #@6d
    if-nez v1, :cond_1

    #@6f
    .line 299
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    #@71
    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    #@73
    cmpl-float v1, v1, v2

    #@75
    if-nez v1, :cond_1

    #@77
    .line 300
    iget-wide v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->appVsyncOffsetNanos:J

    #@79
    iget-wide v4, p1, Lcom/android/server/display/DisplayDeviceInfo;->appVsyncOffsetNanos:J

    #@7b
    cmp-long v1, v2, v4

    #@7d
    if-nez v1, :cond_1

    #@7f
    .line 301
    iget-wide v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    #@81
    iget-wide v4, p1, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    #@83
    cmp-long v1, v2, v4

    #@85
    if-nez v1, :cond_1

    #@87
    .line 302
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    #@89
    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    #@8b
    if-ne v1, v2, :cond_1

    #@8d
    .line 303
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    #@8f
    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    #@91
    if-ne v1, v2, :cond_1

    #@93
    .line 304
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    #@95
    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    #@97
    if-ne v1, v2, :cond_1

    #@99
    .line 305
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    #@9b
    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    #@9d
    if-ne v1, v2, :cond_1

    #@9f
    .line 306
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->address:Ljava/lang/String;

    #@a1
    iget-object v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->address:Ljava/lang/String;

    #@a3
    invoke-static {v1, v2}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@a6
    move-result v1

    #@a7
    if-eqz v1, :cond_1

    #@a9
    .line 307
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->ownerUid:I

    #@ab
    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->ownerUid:I

    #@ad
    if-ne v1, v2, :cond_1

    #@af
    .line 308
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->ownerPackageName:Ljava/lang/String;

    #@b1
    iget-object v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->ownerPackageName:Ljava/lang/String;

    #@b3
    invoke-static {v1, v2}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@b6
    move-result v1

    #@b7
    if-eqz v1, :cond_1

    #@b9
    goto/16 :goto_0
.end method

.method public equals(Lcom/android/server/display/DisplayDeviceInfo;)Z
    .locals 2
    .param p1, "other"    # Lcom/android/server/display/DisplayDeviceInfo;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 274
    if-eqz p1, :cond_0

    #@3
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceInfo;->diff(Lcom/android/server/display/DisplayDeviceInfo;)I

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 270
    instance-of v0, p1, Lcom/android/server/display/DisplayDeviceInfo;

    #@2
    if-eqz v0, :cond_0

    #@4
    check-cast p1, Lcom/android/server/display/DisplayDeviceInfo;

    #@6
    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceInfo;->equals(Lcom/android/server/display/DisplayDeviceInfo;)Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 316
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public setAssumedDensityForExternalDisplay(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    #@0
    .prologue
    .line 261
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    #@3
    move-result v0

    #@4
    mul-int/lit16 v0, v0, 0x140

    #@6
    div-int/lit16 v0, v0, 0x438

    #@8
    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    #@a
    .line 264
    iget v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    #@c
    int-to-float v0, v0

    #@d
    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    #@f
    .line 265
    iget v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    #@11
    int-to-float v0, v0

    #@12
    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    #@14
    .line 260
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 350
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "DisplayDeviceInfo{\""

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 351
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    const-string/jumbo v2, "\": uniqueId=\""

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    const-string/jumbo v2, "\", "

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    .line 352
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    const-string/jumbo v2, " x "

    #@2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    iget v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    #@33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@36
    .line 353
    const-string/jumbo v1, ", modeId "

    #@39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    iget v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->modeId:I

    #@3f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@42
    .line 354
    const-string/jumbo v1, ", defaultModeId "

    #@45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v1

    #@49
    iget v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->defaultModeId:I

    #@4b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4e
    .line 355
    const-string/jumbo v1, ", supportedModes "

    #@51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v1

    #@55
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    #@57
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@5a
    move-result-object v2

    #@5b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    .line 356
    const-string/jumbo v1, ", colorTransformId "

    #@61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v1

    #@65
    iget v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->colorTransformId:I

    #@67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6a
    .line 357
    const-string/jumbo v1, ", defaultColorTransformId "

    #@6d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v1

    #@71
    iget v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->defaultColorTransformId:I

    #@73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@76
    .line 358
    const-string/jumbo v1, ", supportedColorTransforms "

    #@79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v1

    #@7d
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorTransforms:[Landroid/view/Display$ColorTransform;

    #@7f
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@82
    move-result-object v2

    #@83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    .line 359
    const-string/jumbo v1, ", HdrCapabilities "

    #@89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v1

    #@8d
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    #@8f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@92
    .line 360
    const-string/jumbo v1, ", density "

    #@95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v1

    #@99
    iget v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    #@9b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9e
    .line 361
    const-string/jumbo v1, ", "

    #@a1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v1

    #@a5
    iget v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    #@a7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v1

    #@ab
    const-string/jumbo v2, " x "

    #@ae
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v1

    #@b2
    iget v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    #@b4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v1

    #@b8
    const-string/jumbo v2, " dpi"

    #@bb
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    .line 362
    const-string/jumbo v1, ", appVsyncOff "

    #@c1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v1

    #@c5
    iget-wide v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->appVsyncOffsetNanos:J

    #@c7
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@ca
    .line 363
    const-string/jumbo v1, ", presDeadline "

    #@cd
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v1

    #@d1
    iget-wide v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    #@d3
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@d6
    .line 364
    const-string/jumbo v1, ", touch "

    #@d9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v1

    #@dd
    iget v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    #@df
    invoke-static {v2}, Lcom/android/server/display/DisplayDeviceInfo;->touchToString(I)Ljava/lang/String;

    #@e2
    move-result-object v2

    #@e3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e6
    .line 365
    const-string/jumbo v1, ", rotation "

    #@e9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ec
    move-result-object v1

    #@ed
    iget v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    #@ef
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f2
    .line 366
    const-string/jumbo v1, ", type "

    #@f5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f8
    move-result-object v1

    #@f9
    iget v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    #@fb
    invoke-static {v2}, Landroid/view/Display;->typeToString(I)Ljava/lang/String;

    #@fe
    move-result-object v2

    #@ff
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@102
    .line 367
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->address:Ljava/lang/String;

    #@104
    if-eqz v1, :cond_0

    #@106
    .line 368
    const-string/jumbo v1, ", address "

    #@109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10c
    move-result-object v1

    #@10d
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->address:Ljava/lang/String;

    #@10f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@112
    .line 370
    :cond_0
    const-string/jumbo v1, ", state "

    #@115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@118
    move-result-object v1

    #@119
    iget v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    #@11b
    invoke-static {v2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    #@11e
    move-result-object v2

    #@11f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@122
    .line 371
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->ownerUid:I

    #@124
    if-nez v1, :cond_1

    #@126
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->ownerPackageName:Ljava/lang/String;

    #@128
    if-eqz v1, :cond_2

    #@12a
    .line 372
    :cond_1
    const-string/jumbo v1, ", owner "

    #@12d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@130
    move-result-object v1

    #@131
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->ownerPackageName:Ljava/lang/String;

    #@133
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@136
    .line 373
    const-string/jumbo v1, " (uid "

    #@139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13c
    move-result-object v1

    #@13d
    iget v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->ownerUid:I

    #@13f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@142
    move-result-object v1

    #@143
    const-string/jumbo v2, ")"

    #@146
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@149
    .line 375
    :cond_2
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    #@14b
    invoke-static {v1}, Lcom/android/server/display/DisplayDeviceInfo;->flagsToString(I)Ljava/lang/String;

    #@14e
    move-result-object v1

    #@14f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@152
    .line 376
    const-string/jumbo v1, "}"

    #@155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@158
    .line 377
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15b
    move-result-object v1

    #@15c
    return-object v1
.end method
