.class public final Landroid/companion/virtual/sensor/VirtualSensorEvent$Builder;
.super Ljava/lang/Object;
.source "VirtualSensorEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/sensor/VirtualSensorEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mTimestampNanos:J

.field private blacklist mValues:[F


# direct methods
.method public constructor whitelist <init>([F)V
    .registers 4
    .param p1, "values"    # [F

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/companion/virtual/sensor/VirtualSensorEvent$Builder;->mTimestampNanos:J

    .line 101
    iput-object p1, p0, Landroid/companion/virtual/sensor/VirtualSensorEvent$Builder;->mValues:[F

    .line 102
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/companion/virtual/sensor/VirtualSensorEvent;
    .registers 6

    .line 109
    iget-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensorEvent$Builder;->mValues:[F

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensorEvent$Builder;->mValues:[F

    array-length v0, v0

    if-eqz v0, :cond_22

    .line 113
    iget-wide v0, p0, Landroid/companion/virtual/sensor/VirtualSensorEvent$Builder;->mTimestampNanos:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_17

    .line 114
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/companion/virtual/sensor/VirtualSensorEvent$Builder;->mTimestampNanos:J

    .line 116
    :cond_17
    new-instance v0, Landroid/companion/virtual/sensor/VirtualSensorEvent;

    iget-object v1, p0, Landroid/companion/virtual/sensor/VirtualSensorEvent$Builder;->mValues:[F

    iget-wide v2, p0, Landroid/companion/virtual/sensor/VirtualSensorEvent$Builder;->mTimestampNanos:J

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/companion/virtual/sensor/VirtualSensorEvent;-><init>([FJLandroid/companion/virtual/sensor/VirtualSensorEvent-IA;)V

    return-object v0

    .line 110
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot build virtual sensor event with no values."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setTimestampNanos(J)Landroid/companion/virtual/sensor/VirtualSensorEvent$Builder;
    .registers 3
    .param p1, "timestampNanos"    # J

    .line 130
    iput-wide p1, p0, Landroid/companion/virtual/sensor/VirtualSensorEvent$Builder;->mTimestampNanos:J

    .line 131
    return-object p0
.end method
