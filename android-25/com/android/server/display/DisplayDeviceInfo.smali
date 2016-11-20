.class final Lcom/android/server/display/DisplayDeviceInfo;
.super Ljava/lang/Object;
.source "DisplayDeviceInfo.java"


# static fields
.field public static final DIFF_COLOR_MODE:I = 0x4

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

.field public colorMode:I

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

.field public supportedColorModes:[I

.field public supportedModes:[Landroid/view/Display$Mode;

.field public touch:I

.field public type:I

.field public uniqueId:Ljava/lang/String;

.field public width:I

.field public xDpi:F

.field public yDpi:F


# direct methods
.method constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 161
    sget-object v0, Landroid/view/Display$Mode;->EMPTY_ARRAY:[Landroid/view/Display$Mode;

    #@6
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    #@8
    .line 167
    const/4 v0, 0x1

    #@9
    new-array v0, v0, [I

    #@b
    aput v1, v0, v1

    #@d
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorModes:[I

    #@f
    .line 227
    iput v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    #@11
    .line 243
    const/4 v0, 0x2

    #@12
    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    #@14
    .line 31
    return-void
.end method

.method private static flagsToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "flags"    # I

    #@0
    .prologue
    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 396
    .local v0, "msg":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 397
    const-string/jumbo v1, ", FLAG_DEFAULT_DISPLAY"

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    .line 399
    :cond_0
    and-int/lit8 v1, p0, 0x2

    #@11
    if-eqz v1, :cond_1

    #@13
    .line 400
    const-string/jumbo v1, ", FLAG_ROTATES_WITH_CONTENT"

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    .line 402
    :cond_1
    and-int/lit8 v1, p0, 0x4

    #@1b
    if-eqz v1, :cond_2

    #@1d
    .line 403
    const-string/jumbo v1, ", FLAG_SECURE"

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    .line 405
    :cond_2
    and-int/lit8 v1, p0, 0x8

    #@25
    if-eqz v1, :cond_3

    #@27
    .line 406
    const-string/jumbo v1, ", FLAG_SUPPORTS_PROTECTED_BUFFERS"

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    .line 408
    :cond_3
    and-int/lit8 v1, p0, 0x10

    #@2f
    if-eqz v1, :cond_4

    #@31
    .line 409
    const-string/jumbo v1, ", FLAG_PRIVATE"

    #@34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    .line 411
    :cond_4
    and-int/lit8 v1, p0, 0x20

    #@39
    if-eqz v1, :cond_5

    #@3b
    .line 412
    const-string/jumbo v1, ", FLAG_NEVER_BLANK"

    #@3e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    .line 414
    :cond_5
    and-int/lit8 v1, p0, 0x40

    #@43
    if-eqz v1, :cond_6

    #@45
    .line 415
    const-string/jumbo v1, ", FLAG_PRESENTATION"

    #@48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    .line 417
    :cond_6
    and-int/lit16 v1, p0, 0x80

    #@4d
    if-eqz v1, :cond_7

    #@4f
    .line 418
    const-string/jumbo v1, ", FLAG_OWN_CONTENT_ONLY"

    #@52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    .line 420
    :cond_7
    and-int/lit16 v1, p0, 0x100

    #@57
    if-eqz v1, :cond_8

    #@59
    .line 421
    const-string/jumbo v1, ", FLAG_ROUND"

    #@5c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    .line 423
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
    .line 382
    packed-switch p0, :pswitch_data_0

    #@3
    .line 390
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    .line 384
    :pswitch_0
    const-string/jumbo v0, "NONE"

    #@b
    return-object v0

    #@c
    .line 386
    :pswitch_1
    const-string/jumbo v0, "INTERNAL"

    #@f
    return-object v0

    #@10
    .line 388
    :pswitch_2
    const-string/jumbo v0, "EXTERNAL"

    #@13
    return-object v0

    #@14
    .line 382
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
    .line 323
    iget-object v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    #@2
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    #@4
    .line 324
    iget-object v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    #@6
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    #@8
    .line 325
    iget v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    #@a
    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    #@c
    .line 326
    iget v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    #@e
    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    #@10
    .line 327
    iget v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->modeId:I

    #@12
    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->modeId:I

    #@14
    .line 328
    iget v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->defaultModeId:I

    #@16
    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->defaultModeId:I

    #@18
    .line 329
    iget-object v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    #@1a
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    #@1c
    .line 330
    iget v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->colorMode:I

    #@1e
    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->colorMode:I

    #@20
    .line 331
    iget-object v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorModes:[I

    #@22
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorModes:[I

    #@24
    .line 332
    iget-object v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    #@26
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    #@28
    .line 333
    iget v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    #@2a
    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    #@2c
    .line 334
    iget v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    #@2e
    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    #@30
    .line 335
    iget v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    #@32
    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    #@34
    .line 336
    iget-wide v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->appVsyncOffsetNanos:J

    #@36
    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->appVsyncOffsetNanos:J

    #@38
    .line 337
    iget-wide v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    #@3a
    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    #@3c
    .line 338
    iget v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    #@3e
    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    #@40
    .line 339
    iget v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    #@42
    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    #@44
    .line 340
    iget v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    #@46
    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    #@48
    .line 341
    iget v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    #@4a
    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    #@4c
    .line 342
    iget-object v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->address:Ljava/lang/String;

    #@4e
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->address:Ljava/lang/String;

    #@50
    .line 343
    iget v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    #@52
    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    #@54
    .line 344
    iget v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->ownerUid:I

    #@56
    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->ownerUid:I

    #@58
    .line 345
    iget-object v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->ownerPackageName:Ljava/lang/String;

    #@5a
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->ownerPackageName:Ljava/lang/String;

    #@5c
    .line 322
    return-void
.end method

.method public diff(Lcom/android/server/display/DisplayDeviceInfo;)I
    .locals 6
    .param p1, "other"    # Lcom/android/server/display/DisplayDeviceInfo;

    #@0
    .prologue
    .line 284
    const/4 v0, 0x0

    #@1
    .line 285
    .local v0, "diff":I
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    #@3
    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    #@5
    if-eq v1, v2, :cond_0

    #@7
    .line 286
    const/4 v0, 0x1

    #@8
    .line 288
    :cond_0
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->colorMode:I

    #@a
    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->colorMode:I

    #@c
    if-eq v1, v2, :cond_1

    #@e
    .line 289
    or-int/lit8 v0, v0, 0x4

    #@10
    .line 291
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    #@12
    iget-object v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    #@14
    invoke-static {v1, v2}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_2

    #@1a
    .line 292
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    #@1c
    iget-object v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    #@1e
    invoke-static {v1, v2}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@21
    move-result v1

    #@22
    if-eqz v1, :cond_2

    #@24
    .line 293
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    #@26
    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    #@28
    if-eq v1, v2, :cond_3

    #@2a
    .line 312
    :cond_2
    or-int/lit8 v0, v0, 0x2

    #@2c
    .line 314
    :goto_0
    return v0

    #@2d
    .line 294
    :cond_3
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    #@2f
    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    #@31
    if-ne v1, v2, :cond_2

    #@33
    .line 295
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->modeId:I

    #@35
    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->modeId:I

    #@37
    if-ne v1, v2, :cond_2

    #@39
    .line 296
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->defaultModeId:I

    #@3b
    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->defaultModeId:I

    #@3d
    if-ne v1, v2, :cond_2

    #@3f
    .line 297
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    #@41
    iget-object v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    #@43
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@46
    move-result v1

    #@47
    if-eqz v1, :cond_2

    #@49
    .line 298
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorModes:[I

    #@4b
    iget-object v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorModes:[I

    #@4d
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    #@50
    move-result v1

    #@51
    if-eqz v1, :cond_2

    #@53
    .line 299
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    #@55
    iget-object v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    #@57
    invoke-static {v1, v2}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@5a
    move-result v1

    #@5b
    if-eqz v1, :cond_2

    #@5d
    .line 300
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    #@5f
    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    #@61
    if-ne v1, v2, :cond_2

    #@63
    .line 301
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    #@65
    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    #@67
    cmpl-float v1, v1, v2

    #@69
    if-nez v1, :cond_2

    #@6b
    .line 302
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    #@6d
    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    #@6f
    cmpl-float v1, v1, v2

    #@71
    if-nez v1, :cond_2

    #@73
    .line 303
    iget-wide v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->appVsyncOffsetNanos:J

    #@75
    iget-wide v4, p1, Lcom/android/server/display/DisplayDeviceInfo;->appVsyncOffsetNanos:J

    #@77
    cmp-long v1, v2, v4

    #@79
    if-nez v1, :cond_2

    #@7b
    .line 304
    iget-wide v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    #@7d
    iget-wide v4, p1, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    #@7f
    cmp-long v1, v2, v4

    #@81
    if-nez v1, :cond_2

    #@83
    .line 305
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    #@85
    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    #@87
    if-ne v1, v2, :cond_2

    #@89
    .line 306
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    #@8b
    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    #@8d
    if-ne v1, v2, :cond_2

    #@8f
    .line 307
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    #@91
    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    #@93
    if-ne v1, v2, :cond_2

    #@95
    .line 308
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    #@97
    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    #@99
    if-ne v1, v2, :cond_2

    #@9b
    .line 309
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->address:Ljava/lang/String;

    #@9d
    iget-object v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->address:Ljava/lang/String;

    #@9f
    invoke-static {v1, v2}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@a2
    move-result v1

    #@a3
    if-eqz v1, :cond_2

    #@a5
    .line 310
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->ownerUid:I

    #@a7
    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->ownerUid:I

    #@a9
    if-ne v1, v2, :cond_2

    #@ab
    .line 311
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->ownerPackageName:Ljava/lang/String;

    #@ad
    iget-object v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->ownerPackageName:Ljava/lang/String;

    #@af
    invoke-static {v1, v2}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@b2
    move-result v1

    #@b3
    if-eqz v1, :cond_2

    #@b5
    goto/16 :goto_0
.end method

.method public equals(Lcom/android/server/display/DisplayDeviceInfo;)Z
    .locals 2
    .param p1, "other"    # Lcom/android/server/display/DisplayDeviceInfo;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 276
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
    .line 272
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
    .line 319
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
    .line 263
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
    .line 266
    iget v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    #@c
    int-to-float v0, v0

    #@d
    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    #@f
    .line 267
    iget v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    #@11
    int-to-float v0, v0

    #@12
    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    #@14
    .line 262
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 352
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "DisplayDeviceInfo{\""

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 353
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
    .line 354
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
    .line 355
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
    .line 356
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
    .line 357
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
    .line 358
    const-string/jumbo v1, ", colorMode "

    #@61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v1

    #@65
    iget v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->colorMode:I

    #@67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6a
    .line 359
    const-string/jumbo v1, ", supportedColorModes "

    #@6d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v1

    #@71
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorModes:[I

    #@73
    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    #@76
    move-result-object v2

    #@77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    .line 360
    const-string/jumbo v1, ", HdrCapabilities "

    #@7d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v1

    #@81
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    #@83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@86
    .line 361
    const-string/jumbo v1, ", density "

    #@89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v1

    #@8d
    iget v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    #@8f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@92
    .line 362
    const-string/jumbo v1, ", "

    #@95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v1

    #@99
    iget v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    #@9b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v1

    #@9f
    const-string/jumbo v2, " x "

    #@a2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v1

    #@a6
    iget v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    #@a8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v1

    #@ac
    const-string/jumbo v2, " dpi"

    #@af
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    .line 363
    const-string/jumbo v1, ", appVsyncOff "

    #@b5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v1

    #@b9
    iget-wide v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->appVsyncOffsetNanos:J

    #@bb
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@be
    .line 364
    const-string/jumbo v1, ", presDeadline "

    #@c1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v1

    #@c5
    iget-wide v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    #@c7
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@ca
    .line 365
    const-string/jumbo v1, ", touch "

    #@cd
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v1

    #@d1
    iget v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    #@d3
    invoke-static {v2}, Lcom/android/server/display/DisplayDeviceInfo;->touchToString(I)Ljava/lang/String;

    #@d6
    move-result-object v2

    #@d7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@da
    .line 366
    const-string/jumbo v1, ", rotation "

    #@dd
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e0
    move-result-object v1

    #@e1
    iget v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    #@e3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e6
    .line 367
    const-string/jumbo v1, ", type "

    #@e9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ec
    move-result-object v1

    #@ed
    iget v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    #@ef
    invoke-static {v2}, Landroid/view/Display;->typeToString(I)Ljava/lang/String;

    #@f2
    move-result-object v2

    #@f3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f6
    .line 368
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->address:Ljava/lang/String;

    #@f8
    if-eqz v1, :cond_0

    #@fa
    .line 369
    const-string/jumbo v1, ", address "

    #@fd
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@100
    move-result-object v1

    #@101
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->address:Ljava/lang/String;

    #@103
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@106
    .line 371
    :cond_0
    const-string/jumbo v1, ", state "

    #@109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10c
    move-result-object v1

    #@10d
    iget v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    #@10f
    invoke-static {v2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    #@112
    move-result-object v2

    #@113
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@116
    .line 372
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->ownerUid:I

    #@118
    if-nez v1, :cond_1

    #@11a
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->ownerPackageName:Ljava/lang/String;

    #@11c
    if-eqz v1, :cond_2

    #@11e
    .line 373
    :cond_1
    const-string/jumbo v1, ", owner "

    #@121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@124
    move-result-object v1

    #@125
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->ownerPackageName:Ljava/lang/String;

    #@127
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12a
    .line 374
    const-string/jumbo v1, " (uid "

    #@12d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@130
    move-result-object v1

    #@131
    iget v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->ownerUid:I

    #@133
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@136
    move-result-object v1

    #@137
    const-string/jumbo v2, ")"

    #@13a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13d
    .line 376
    :cond_2
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    #@13f
    invoke-static {v1}, Lcom/android/server/display/DisplayDeviceInfo;->flagsToString(I)Ljava/lang/String;

    #@142
    move-result-object v1

    #@143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@146
    .line 377
    const-string/jumbo v1, "}"

    #@149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14c
    .line 378
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14f
    move-result-object v1

    #@150
    return-object v1
.end method
