.class public final Landroid/hardware/input/VirtualStylusMotionEvent$Builder;
.super Ljava/lang/Object;
.source "VirtualStylusMotionEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/VirtualStylusMotionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAction:I

.field private blacklist mEventTimeNanos:J

.field private blacklist mIsXSet:Z

.field private blacklist mIsYSet:Z

.field private blacklist mPressure:I

.field private blacklist mTiltX:I

.field private blacklist mTiltY:I

.field private blacklist mToolType:I

.field private blacklist mX:I

.field private blacklist mY:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/input/VirtualStylusMotionEvent$Builder;->mToolType:I

    .line 213
    const/4 v1, -0x1

    iput v1, p0, Landroid/hardware/input/VirtualStylusMotionEvent$Builder;->mAction:I

    .line 215
    iput v0, p0, Landroid/hardware/input/VirtualStylusMotionEvent$Builder;->mX:I

    .line 216
    iput v0, p0, Landroid/hardware/input/VirtualStylusMotionEvent$Builder;->mY:I

    .line 217
    iput-boolean v0, p0, Landroid/hardware/input/VirtualStylusMotionEvent$Builder;->mIsXSet:Z

    .line 218
    iput-boolean v0, p0, Landroid/hardware/input/VirtualStylusMotionEvent$Builder;->mIsYSet:Z

    .line 219
    const/16 v1, 0xff

    iput v1, p0, Landroid/hardware/input/VirtualStylusMotionEvent$Builder;->mPressure:I

    .line 220
    iput v0, p0, Landroid/hardware/input/VirtualStylusMotionEvent$Builder;->mTiltX:I

    .line 221
    iput v0, p0, Landroid/hardware/input/VirtualStylusMotionEvent$Builder;->mTiltY:I

    .line 222
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/input/VirtualStylusMotionEvent$Builder;->mEventTimeNanos:J

    return-void
.end method

.method private blacklist validateTilt(I)V
    .registers 4
    .param p1, "tilt"    # I

    .line 394
    const/16 v0, -0x5a

    if-lt p1, v0, :cond_9

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_9

    .line 398
    return-void

    .line 395
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tilt must be between -90 and 90"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/hardware/input/VirtualStylusMotionEvent;
    .registers 13

    .line 233
    iget v0, p0, Landroid/hardware/input/VirtualStylusMotionEvent$Builder;->mToolType:I

    if-eqz v0, :cond_40

    .line 237
    iget v0, p0, Landroid/hardware/input/VirtualStylusMotionEvent$Builder;->mAction:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_38

    .line 241
    iget-boolean v0, p0, Landroid/hardware/input/VirtualStylusMotionEvent$Builder;->mIsXSet:Z

    if-eqz v0, :cond_30

    .line 245
    iget-boolean v0, p0, Landroid/hardware/input/VirtualStylusMotionEvent$Builder;->mIsYSet:Z

    if-eqz v0, :cond_28

    .line 249
    new-instance v1, Landroid/hardware/input/VirtualStylusMotionEvent;

    iget v2, p0, Landroid/hardware/input/VirtualStylusMotionEvent$Builder;->mToolType:I

    iget v3, p0, Landroid/hardware/input/VirtualStylusMotionEvent$Builder;->mAction:I

    iget v4, p0, Landroid/hardware/input/VirtualStylusMotionEvent$Builder;->mX:I

    iget v5, p0, Landroid/hardware/input/VirtualStylusMotionEvent$Builder;->mY:I

    iget v6, p0, Landroid/hardware/input/VirtualStylusMotionEvent$Builder;->mPressure:I

    iget v7, p0, Landroid/hardware/input/VirtualStylusMotionEvent$Builder;->mTiltX:I

    iget v8, p0, Landroid/hardware/input/VirtualStylusMotionEvent$Builder;->mTiltY:I

    iget-wide v9, p0, Landroid/hardware/input/VirtualStylusMotionEvent$Builder;->mEventTimeNanos:J

    const/4 v11, 0x0

    invoke-direct/range {v1 .. v11}, Landroid/hardware/input/VirtualStylusMotionEvent;-><init>(IIIIIIIJLandroid/hardware/input/VirtualStylusMotionEvent-IA;)V

    return-object v1

    .line 246
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot build stylus motion event with unset y-axis location"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot build stylus motion event with unset x-axis location"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot build stylus motion event with unset action"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot build stylus motion event with unset tool type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setAction(I)Landroid/hardware/input/VirtualStylusMotionEvent$Builder;
    .registers 5
    .param p1, "action"    # I

    .line 274
    if-eqz p1, :cond_22

    const/4 v0, 0x1

    if-eq p1, v0, :cond_22

    const/4 v0, 0x2

    if-ne p1, v0, :cond_9

    goto :goto_22

    .line 275
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported stylus action : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_22
    :goto_22
    iput p1, p0, Landroid/hardware/input/VirtualStylusMotionEvent$Builder;->mAction:I

    .line 278
    return-object p0
.end method

.method public whitelist setEventTimeNanos(J)Landroid/hardware/input/VirtualStylusMotionEvent$Builder;
    .registers 5
    .param p1, "eventTimeNanos"    # J

    .line 386
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_9

    .line 389
    iput-wide p1, p0, Landroid/hardware/input/VirtualStylusMotionEvent$Builder;->mEventTimeNanos:J

    .line 390
    return-object p0

    .line 387
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Event time cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setPressure(I)Landroid/hardware/input/VirtualStylusMotionEvent$Builder;
    .registers 4
    .param p1, "pressure"    # I

    .line 319
    if-ltz p1, :cond_9

    const/16 v0, 0xff

    if-gt p1, v0, :cond_9

    .line 323
    iput p1, p0, Landroid/hardware/input/VirtualStylusMotionEvent$Builder;->mPressure:I

    .line 324
    return-object p0

    .line 320
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Pressure should be between 0 and 255"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setTiltX(I)Landroid/hardware/input/VirtualStylusMotionEvent$Builder;
    .registers 2
    .param p1, "tiltX"    # I

    .line 344
    invoke-direct {p0, p1}, Landroid/hardware/input/VirtualStylusMotionEvent$Builder;->validateTilt(I)V

    .line 345
    iput p1, p0, Landroid/hardware/input/VirtualStylusMotionEvent$Builder;->mTiltX:I

    .line 346
    return-object p0
.end method

.method public whitelist setTiltY(I)Landroid/hardware/input/VirtualStylusMotionEvent$Builder;
    .registers 2
    .param p1, "tiltY"    # I

    .line 366
    invoke-direct {p0, p1}, Landroid/hardware/input/VirtualStylusMotionEvent$Builder;->validateTilt(I)V

    .line 367
    iput p1, p0, Landroid/hardware/input/VirtualStylusMotionEvent$Builder;->mTiltY:I

    .line 368
    return-object p0
.end method

.method public whitelist setToolType(I)Landroid/hardware/input/VirtualStylusMotionEvent$Builder;
    .registers 5
    .param p1, "toolType"    # I

    .line 260
    const/4 v0, 0x2

    if-eq p1, v0, :cond_20

    const/4 v0, 0x4

    if-ne p1, v0, :cond_7

    goto :goto_20

    .line 261
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported stylus tool type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_20
    :goto_20
    iput p1, p0, Landroid/hardware/input/VirtualStylusMotionEvent$Builder;->mToolType:I

    .line 264
    return-object p0
.end method

.method public whitelist setX(I)Landroid/hardware/input/VirtualStylusMotionEvent$Builder;
    .registers 3
    .param p1, "absX"    # I

    .line 288
    iput p1, p0, Landroid/hardware/input/VirtualStylusMotionEvent$Builder;->mX:I

    .line 289
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/input/VirtualStylusMotionEvent$Builder;->mIsXSet:Z

    .line 290
    return-object p0
.end method

.method public whitelist setY(I)Landroid/hardware/input/VirtualStylusMotionEvent$Builder;
    .registers 3
    .param p1, "absY"    # I

    .line 300
    iput p1, p0, Landroid/hardware/input/VirtualStylusMotionEvent$Builder;->mY:I

    .line 301
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/input/VirtualStylusMotionEvent$Builder;->mIsYSet:Z

    .line 302
    return-object p0
.end method
