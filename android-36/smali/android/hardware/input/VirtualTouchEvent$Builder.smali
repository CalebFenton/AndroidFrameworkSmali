.class public final Landroid/hardware/input/VirtualTouchEvent$Builder;
.super Ljava/lang/Object;
.source "VirtualTouchEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/VirtualTouchEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAction:I

.field private blacklist mEventTimeNanos:J

.field private blacklist mMajorAxisSize:F

.field private blacklist mPointerId:I

.field private blacklist mPressure:F

.field private blacklist mToolType:I

.field private blacklist mX:F

.field private blacklist mY:F


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mToolType:I

    .line 219
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mPointerId:I

    .line 220
    iput v0, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mAction:I

    .line 221
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mX:F

    .line 222
    iput v0, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mY:F

    .line 223
    iput v0, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mPressure:F

    .line 224
    iput v0, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mMajorAxisSize:F

    .line 225
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mEventTimeNanos:J

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/hardware/input/VirtualTouchEvent;
    .registers 14

    .line 235
    iget v0, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mToolType:I

    if-eqz v0, :cond_4f

    iget v0, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mPointerId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4f

    iget v0, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mAction:I

    if-eq v0, v1, :cond_4f

    iget v0, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mX:F

    .line 236
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_4f

    iget v0, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 240
    iget v0, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mToolType:I

    const/4 v1, 0x3

    const/4 v2, 0x5

    if-ne v0, v2, :cond_27

    iget v0, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mAction:I

    if-ne v0, v1, :cond_30

    :cond_27
    iget v0, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mAction:I

    if-ne v0, v1, :cond_38

    iget v0, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mToolType:I

    if-ne v0, v2, :cond_30

    goto :goto_38

    .line 242
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ACTION_CANCEL and TOOL_TYPE_PALM must always appear together"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_38
    :goto_38
    new-instance v2, Landroid/hardware/input/VirtualTouchEvent;

    iget v3, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mPointerId:I

    iget v4, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mToolType:I

    iget v5, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mAction:I

    iget v6, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mX:F

    iget v7, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mY:F

    iget v8, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mPressure:F

    iget v9, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mMajorAxisSize:F

    iget-wide v10, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mEventTimeNanos:J

    const/4 v12, 0x0

    invoke-direct/range {v2 .. v12}, Landroid/hardware/input/VirtualTouchEvent;-><init>(IIIFFFFJLandroid/hardware/input/VirtualTouchEvent-IA;)V

    return-object v2

    .line 237
    :cond_4f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot build virtual touch event with unset required fields"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setAction(I)Landroid/hardware/input/VirtualTouchEvent$Builder;
    .registers 5
    .param p1, "action"    # I

    .line 286
    if-eqz p1, :cond_25

    const/4 v0, 0x1

    if-eq p1, v0, :cond_25

    const/4 v0, 0x2

    if-eq p1, v0, :cond_25

    const/4 v0, 0x3

    if-ne p1, v0, :cond_c

    goto :goto_25

    .line 288
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported touch event action type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_25
    :goto_25
    iput p1, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mAction:I

    .line 292
    return-object p0
.end method

.method public whitelist setEventTimeNanos(J)Landroid/hardware/input/VirtualTouchEvent$Builder;
    .registers 5
    .param p1, "eventTimeNanos"    # J

    .line 366
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_9

    .line 369
    iput-wide p1, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mEventTimeNanos:J

    .line 370
    return-object p0

    .line 367
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Event time cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setMajorAxisSize(F)Landroid/hardware/input/VirtualTouchEvent$Builder;
    .registers 4
    .param p1, "majorAxisSize"    # F

    .line 344
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_8

    .line 348
    iput p1, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mMajorAxisSize:F

    .line 349
    return-object p0

    .line 345
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Touch event major axis size cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setPointerId(I)Landroid/hardware/input/VirtualTouchEvent$Builder;
    .registers 5
    .param p1, "pointerId"    # I

    .line 258
    if-ltz p1, :cond_9

    const/16 v0, 0xf

    if-gt p1, v0, :cond_9

    .line 263
    iput p1, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mPointerId:I

    .line 264
    return-object p0

    .line 259
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The pointer id must be in the range 0 - 15inclusive, but was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setPressure(F)Landroid/hardware/input/VirtualTouchEvent$Builder;
    .registers 4
    .param p1, "pressure"    # F

    .line 331
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_8

    .line 334
    iput p1, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mPressure:F

    .line 335
    return-object p0

    .line 332
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Touch event pressure cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setToolType(I)Landroid/hardware/input/VirtualTouchEvent$Builder;
    .registers 4
    .param p1, "toolType"    # I

    .line 273
    const/4 v0, 0x1

    if-eq p1, v0, :cond_f

    const/4 v0, 0x5

    if-ne p1, v0, :cond_7

    goto :goto_f

    .line 274
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported touch event tool type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_f
    :goto_f
    iput p1, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mToolType:I

    .line 277
    return-object p0
.end method

.method public whitelist setX(F)Landroid/hardware/input/VirtualTouchEvent$Builder;
    .registers 2
    .param p1, "absX"    # F

    .line 301
    iput p1, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mX:F

    .line 302
    return-object p0
.end method

.method public whitelist setY(F)Landroid/hardware/input/VirtualTouchEvent$Builder;
    .registers 2
    .param p1, "absY"    # F

    .line 311
    iput p1, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mY:F

    .line 312
    return-object p0
.end method
