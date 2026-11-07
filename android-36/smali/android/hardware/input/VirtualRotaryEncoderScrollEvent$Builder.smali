.class public final Landroid/hardware/input/VirtualRotaryEncoderScrollEvent$Builder;
.super Ljava/lang/Object;
.source "VirtualRotaryEncoderScrollEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/VirtualRotaryEncoderScrollEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mEventTimeNanos:J

.field private blacklist mScrollAmount:F


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/input/VirtualRotaryEncoderScrollEvent$Builder;->mScrollAmount:F

    .line 100
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/input/VirtualRotaryEncoderScrollEvent$Builder;->mEventTimeNanos:J

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/hardware/input/VirtualRotaryEncoderScrollEvent;
    .registers 6

    .line 106
    new-instance v0, Landroid/hardware/input/VirtualRotaryEncoderScrollEvent;

    iget v1, p0, Landroid/hardware/input/VirtualRotaryEncoderScrollEvent$Builder;->mScrollAmount:F

    iget-wide v2, p0, Landroid/hardware/input/VirtualRotaryEncoderScrollEvent$Builder;->mEventTimeNanos:J

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/hardware/input/VirtualRotaryEncoderScrollEvent;-><init>(FJLandroid/hardware/input/VirtualRotaryEncoderScrollEvent-IA;)V

    return-object v0
.end method

.method public whitelist setEventTimeNanos(J)Landroid/hardware/input/VirtualRotaryEncoderScrollEvent$Builder;
    .registers 5
    .param p1, "eventTimeNanos"    # J

    .line 141
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_9

    .line 144
    iput-wide p1, p0, Landroid/hardware/input/VirtualRotaryEncoderScrollEvent$Builder;->mEventTimeNanos:J

    .line 145
    return-object p0

    .line 142
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Event time cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setScrollAmount(F)Landroid/hardware/input/VirtualRotaryEncoderScrollEvent$Builder;
    .registers 5
    .param p1, "scrollAmount"    # F

    .line 122
    const/high16 v0, 0x3f800000    # 1.0f

    const-string v1, "scrollAmount"

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(FFFLjava/lang/String;)F

    .line 123
    iput p1, p0, Landroid/hardware/input/VirtualRotaryEncoderScrollEvent$Builder;->mScrollAmount:F

    .line 124
    return-object p0
.end method
