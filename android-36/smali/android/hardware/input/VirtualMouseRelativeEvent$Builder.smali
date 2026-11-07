.class public final Landroid/hardware/input/VirtualMouseRelativeEvent$Builder;
.super Ljava/lang/Object;
.source "VirtualMouseRelativeEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/VirtualMouseRelativeEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mEventTimeNanos:J

.field private blacklist mRelativeX:F

.field private blacklist mRelativeY:F


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/input/VirtualMouseRelativeEvent$Builder;->mEventTimeNanos:J

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/hardware/input/VirtualMouseRelativeEvent;
    .registers 7

    .line 110
    new-instance v0, Landroid/hardware/input/VirtualMouseRelativeEvent;

    iget v1, p0, Landroid/hardware/input/VirtualMouseRelativeEvent$Builder;->mRelativeX:F

    iget v2, p0, Landroid/hardware/input/VirtualMouseRelativeEvent$Builder;->mRelativeY:F

    iget-wide v3, p0, Landroid/hardware/input/VirtualMouseRelativeEvent$Builder;->mEventTimeNanos:J

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/hardware/input/VirtualMouseRelativeEvent;-><init>(FFJLandroid/hardware/input/VirtualMouseRelativeEvent-IA;)V

    return-object v0
.end method

.method public whitelist setEventTimeNanos(J)Landroid/hardware/input/VirtualMouseRelativeEvent$Builder;
    .registers 5
    .param p1, "eventTimeNanos"    # J

    .line 147
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_9

    .line 150
    iput-wide p1, p0, Landroid/hardware/input/VirtualMouseRelativeEvent$Builder;->mEventTimeNanos:J

    .line 151
    return-object p0

    .line 148
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Event time cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setRelativeX(F)Landroid/hardware/input/VirtualMouseRelativeEvent$Builder;
    .registers 2
    .param p1, "relativeX"    # F

    .line 119
    iput p1, p0, Landroid/hardware/input/VirtualMouseRelativeEvent$Builder;->mRelativeX:F

    .line 120
    return-object p0
.end method

.method public whitelist setRelativeY(F)Landroid/hardware/input/VirtualMouseRelativeEvent$Builder;
    .registers 2
    .param p1, "relativeY"    # F

    .line 129
    iput p1, p0, Landroid/hardware/input/VirtualMouseRelativeEvent$Builder;->mRelativeY:F

    .line 130
    return-object p0
.end method
