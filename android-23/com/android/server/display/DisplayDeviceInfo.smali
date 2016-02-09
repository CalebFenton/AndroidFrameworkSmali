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

.field public defaultModeId:I

.field public densityDpi:I

.field public flags:I

.field public height:I

.field public modeId:I

.field public name:Ljava/lang/String;

.field public ownerPackageName:Ljava/lang/String;

.field public ownerUid:I

.field public presentationDeadlineNanos:J

.field public rotation:I

.field public state:I

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
    .line 211
    const/4 v0, 0x0

    #@8
    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    #@a
    .line 227
    const/4 v0, 0x2

    #@b
    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    #@d
    .line 31
    return-void
.end method

.method private static flagsToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "flags"    # I

    #@0
    .prologue
    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 369
    .local v0, "msg":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 370
    const-string/jumbo v1, ", FLAG_DEFAULT_DISPLAY"

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    .line 372
    :cond_0
    and-int/lit8 v1, p0, 0x2

    #@11
    if-eqz v1, :cond_1

    #@13
    .line 373
    const-string/jumbo v1, ", FLAG_ROTATES_WITH_CONTENT"

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    .line 375
    :cond_1
    and-int/lit8 v1, p0, 0x4

    #@1b
    if-eqz v1, :cond_2

    #@1d
    .line 376
    const-string/jumbo v1, ", FLAG_SECURE"

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    .line 378
    :cond_2
    and-int/lit8 v1, p0, 0x8

    #@25
    if-eqz v1, :cond_3

    #@27
    .line 379
    const-string/jumbo v1, ", FLAG_SUPPORTS_PROTECTED_BUFFERS"

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    .line 381
    :cond_3
    and-int/lit8 v1, p0, 0x10

    #@2f
    if-eqz v1, :cond_4

    #@31
    .line 382
    const-string/jumbo v1, ", FLAG_PRIVATE"

    #@34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    .line 384
    :cond_4
    and-int/lit8 v1, p0, 0x20

    #@39
    if-eqz v1, :cond_5

    #@3b
    .line 385
    const-string/jumbo v1, ", FLAG_NEVER_BLANK"

    #@3e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    .line 387
    :cond_5
    and-int/lit8 v1, p0, 0x40

    #@43
    if-eqz v1, :cond_6

    #@45
    .line 388
    const-string/jumbo v1, ", FLAG_PRESENTATION"

    #@48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    .line 390
    :cond_6
    and-int/lit16 v1, p0, 0x80

    #@4d
    if-eqz v1, :cond_7

    #@4f
    .line 391
    const-string/jumbo v1, ", FLAG_OWN_CONTENT_ONLY"

    #@52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    .line 393
    :cond_7
    and-int/lit16 v1, p0, 0x100

    #@57
    if-eqz v1, :cond_8

    #@59
    .line 394
    const-string/jumbo v1, ", FLAG_ROUND"

    #@5c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    .line 396
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
    .line 355
    packed-switch p0, :pswitch_data_0

    #@3
    .line 363
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    .line 357
    :pswitch_0
    const-string/jumbo v0, "NONE"

    #@b
    return-object v0

    #@c
    .line 359
    :pswitch_1
    const-string/jumbo v0, "INTERNAL"

    #@f
    return-object v0

    #@10
    .line 361
    :pswitch_2
    const-string/jumbo v0, "EXTERNAL"

    #@13
    return-object v0

    #@14
    .line 355
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
    .line 302
    iget-object v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    #@2
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    #@4
    .line 303
    iget-object v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    #@6
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    #@8
    .line 304
    iget v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    #@a
    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    #@c
    .line 305
    iget v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    #@e
    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    #@10
    .line 306
    iget v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->modeId:I

    #@12
    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->modeId:I

    #@14
    .line 307
    iget v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->defaultModeId:I

    #@16
    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->defaultModeId:I

    #@18
    .line 308
    iget-object v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    #@1a
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    #@1c
    .line 309
    iget v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    #@1e
    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    #@20
    .line 310
    iget v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    #@22
    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    #@24
    .line 311
    iget v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    #@26
    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    #@28
    .line 312
    iget-wide v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->appVsyncOffsetNanos:J

    #@2a
    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->appVsyncOffsetNanos:J

    #@2c
    .line 313
    iget-wide v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    #@2e
    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    #@30
    .line 314
    iget v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    #@32
    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    #@34
    .line 315
    iget v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    #@36
    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    #@38
    .line 316
    iget v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    #@3a
    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    #@3c
    .line 317
    iget v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    #@3e
    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    #@40
    .line 318
    iget-object v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->address:Ljava/lang/String;

    #@42
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->address:Ljava/lang/String;

    #@44
    .line 319
    iget v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    #@46
    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    #@48
    .line 320
    iget v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->ownerUid:I

    #@4a
    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->ownerUid:I

    #@4c
    .line 321
    iget-object v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->ownerPackageName:Ljava/lang/String;

    #@4e
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->ownerPackageName:Ljava/lang/String;

    #@50
    .line 301
    return-void
.end method

.method public diff(Lcom/android/server/display/DisplayDeviceInfo;)I
    .locals 6
    .param p1, "other"    # Lcom/android/server/display/DisplayDeviceInfo;

    #@0
    .prologue
    .line 268
    const/4 v0, 0x0

    #@1
    .line 269
    .local v0, "diff":I
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    #@3
    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    #@5
    if-eq v1, v2, :cond_0

    #@7
    .line 270
    const/4 v0, 0x1

    #@8
    .line 272
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
    .line 273
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
    .line 274
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    #@1e
    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    #@20
    if-eq v1, v2, :cond_2

    #@22
    .line 291
    :cond_1
    or-int/lit8 v0, v0, 0x2

    #@24
    .line 293
    :goto_0
    return v0

    #@25
    .line 275
    :cond_2
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    #@27
    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    #@29
    if-ne v1, v2, :cond_1

    #@2b
    .line 276
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->modeId:I

    #@2d
    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->modeId:I

    #@2f
    if-ne v1, v2, :cond_1

    #@31
    .line 277
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->defaultModeId:I

    #@33
    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->defaultModeId:I

    #@35
    if-ne v1, v2, :cond_1

    #@37
    .line 278
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
    .line 279
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    #@43
    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    #@45
    if-ne v1, v2, :cond_1

    #@47
    .line 280
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    #@49
    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    #@4b
    cmpl-float v1, v1, v2

    #@4d
    if-nez v1, :cond_1

    #@4f
    .line 281
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    #@51
    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    #@53
    cmpl-float v1, v1, v2

    #@55
    if-nez v1, :cond_1

    #@57
    .line 282
    iget-wide v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->appVsyncOffsetNanos:J

    #@59
    iget-wide v4, p1, Lcom/android/server/display/DisplayDeviceInfo;->appVsyncOffsetNanos:J

    #@5b
    cmp-long v1, v2, v4

    #@5d
    if-nez v1, :cond_1

    #@5f
    .line 283
    iget-wide v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    #@61
    iget-wide v4, p1, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    #@63
    cmp-long v1, v2, v4

    #@65
    if-nez v1, :cond_1

    #@67
    .line 284
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    #@69
    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    #@6b
    if-ne v1, v2, :cond_1

    #@6d
    .line 285
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    #@6f
    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    #@71
    if-ne v1, v2, :cond_1

    #@73
    .line 286
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    #@75
    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    #@77
    if-ne v1, v2, :cond_1

    #@79
    .line 287
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    #@7b
    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    #@7d
    if-ne v1, v2, :cond_1

    #@7f
    .line 288
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->address:Ljava/lang/String;

    #@81
    iget-object v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->address:Ljava/lang/String;

    #@83
    invoke-static {v1, v2}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@86
    move-result v1

    #@87
    if-eqz v1, :cond_1

    #@89
    .line 289
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->ownerUid:I

    #@8b
    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->ownerUid:I

    #@8d
    if-ne v1, v2, :cond_1

    #@8f
    .line 290
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->ownerPackageName:Ljava/lang/String;

    #@91
    iget-object v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->ownerPackageName:Ljava/lang/String;

    #@93
    invoke-static {v1, v2}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@96
    move-result v1

    #@97
    if-eqz v1, :cond_1

    #@99
    goto :goto_0
.end method

.method public equals(Lcom/android/server/display/DisplayDeviceInfo;)Z
    .locals 2
    .param p1, "other"    # Lcom/android/server/display/DisplayDeviceInfo;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 260
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
    .line 256
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
    .line 298
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
    .line 247
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
    .line 250
    iget v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    #@c
    int-to-float v0, v0

    #@d
    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    #@f
    .line 251
    iget v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    #@11
    int-to-float v0, v0

    #@12
    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    #@14
    .line 246
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 328
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "DisplayDeviceInfo{\""

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 329
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
    .line 330
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
    .line 331
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
    .line 332
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
    .line 333
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
    .line 334
    const-string/jumbo v1, ", density "

    #@61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v1

    #@65
    iget v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    #@67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6a
    .line 335
    const-string/jumbo v1, ", "

    #@6d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v1

    #@71
    iget v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    #@73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@76
    move-result-object v1

    #@77
    const-string/jumbo v2, " x "

    #@7a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v1

    #@7e
    iget v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    #@80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@83
    move-result-object v1

    #@84
    const-string/jumbo v2, " dpi"

    #@87
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    .line 336
    const-string/jumbo v1, ", appVsyncOff "

    #@8d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v1

    #@91
    iget-wide v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->appVsyncOffsetNanos:J

    #@93
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@96
    .line 337
    const-string/jumbo v1, ", presDeadline "

    #@99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v1

    #@9d
    iget-wide v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    #@9f
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@a2
    .line 338
    const-string/jumbo v1, ", touch "

    #@a5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v1

    #@a9
    iget v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    #@ab
    invoke-static {v2}, Lcom/android/server/display/DisplayDeviceInfo;->touchToString(I)Ljava/lang/String;

    #@ae
    move-result-object v2

    #@af
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    .line 339
    const-string/jumbo v1, ", rotation "

    #@b5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v1

    #@b9
    iget v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    #@bb
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@be
    .line 340
    const-string/jumbo v1, ", type "

    #@c1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v1

    #@c5
    iget v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    #@c7
    invoke-static {v2}, Landroid/view/Display;->typeToString(I)Ljava/lang/String;

    #@ca
    move-result-object v2

    #@cb
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    .line 341
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->address:Ljava/lang/String;

    #@d0
    if-eqz v1, :cond_0

    #@d2
    .line 342
    const-string/jumbo v1, ", address "

    #@d5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v1

    #@d9
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->address:Ljava/lang/String;

    #@db
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@de
    .line 344
    :cond_0
    const-string/jumbo v1, ", state "

    #@e1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e4
    move-result-object v1

    #@e5
    iget v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    #@e7
    invoke-static {v2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    #@ea
    move-result-object v2

    #@eb
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ee
    .line 345
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->ownerUid:I

    #@f0
    if-nez v1, :cond_1

    #@f2
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->ownerPackageName:Ljava/lang/String;

    #@f4
    if-eqz v1, :cond_2

    #@f6
    .line 346
    :cond_1
    const-string/jumbo v1, ", owner "

    #@f9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fc
    move-result-object v1

    #@fd
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->ownerPackageName:Ljava/lang/String;

    #@ff
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@102
    .line 347
    const-string/jumbo v1, " (uid "

    #@105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@108
    move-result-object v1

    #@109
    iget v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->ownerUid:I

    #@10b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@10e
    move-result-object v1

    #@10f
    const-string/jumbo v2, ")"

    #@112
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@115
    .line 349
    :cond_2
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    #@117
    invoke-static {v1}, Lcom/android/server/display/DisplayDeviceInfo;->flagsToString(I)Ljava/lang/String;

    #@11a
    move-result-object v1

    #@11b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11e
    .line 350
    const-string/jumbo v1, "}"

    #@121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@124
    .line 351
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@127
    move-result-object v1

    #@128
    return-object v1
.end method
