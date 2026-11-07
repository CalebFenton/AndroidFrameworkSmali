.class final Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$DirectChannelConfiguration;
.super Ljava/lang/Object;
.source "VirtualSensorDirectChannelWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DirectChannelConfiguration"
.end annotation


# instance fields
.field private final blacklist mEventCounter:Ljava/util/concurrent/atomic/AtomicLong;

.field private final blacklist mReportToken:I

.field private final blacklist mSensorType:I

.field private final blacklist mSharedMemoryWrapper:Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$SharedMemoryWrapper;


# direct methods
.method constructor blacklist <init>(IILandroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$SharedMemoryWrapper;)V
    .registers 7
    .param p1, "reportToken"    # I
    .param p2, "sensorType"    # I
    .param p3, "sharedMemoryWrapper"    # Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$SharedMemoryWrapper;

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    iput p1, p0, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$DirectChannelConfiguration;->mReportToken:I

    .line 282
    iput p2, p0, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$DirectChannelConfiguration;->mSensorType:I

    .line 283
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$DirectChannelConfiguration;->mEventCounter:Ljava/util/concurrent/atomic/AtomicLong;

    .line 284
    iput-object p3, p0, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$DirectChannelConfiguration;->mSharedMemoryWrapper:Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$SharedMemoryWrapper;

    .line 285
    return-void
.end method


# virtual methods
.method blacklist write(Landroid/companion/virtual/sensor/VirtualSensorEvent;)V
    .registers 11
    .param p1, "event"    # Landroid/companion/virtual/sensor/VirtualSensorEvent;

    .line 288
    iget-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$DirectChannelConfiguration;->mEventCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAcquire()J

    move-result-wide v4

    .line 289
    .local v4, "currentCounter":J
    iget-object v1, p0, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$DirectChannelConfiguration;->mSharedMemoryWrapper:Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$SharedMemoryWrapper;

    iget v2, p0, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$DirectChannelConfiguration;->mReportToken:I

    iget v3, p0, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$DirectChannelConfiguration;->mSensorType:I

    const-wide/16 v6, 0x1

    add-long v7, v4, v6

    move-object v6, p1

    .end local p1    # "event":Landroid/companion/virtual/sensor/VirtualSensorEvent;
    .local v6, "event":Landroid/companion/virtual/sensor/VirtualSensorEvent;
    .local v7, "currentCounter":J
    invoke-virtual/range {v1 .. v6}, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$SharedMemoryWrapper;->write(IIJLandroid/companion/virtual/sensor/VirtualSensorEvent;)V

    .line 290
    .end local v4    # "currentCounter":J
    const-wide v0, 0x100000000L

    cmp-long p1, v7, v0

    if-nez p1, :cond_1f

    .line 291
    const-wide/16 v7, 0x1

    .line 293
    :cond_1f
    iget-object p1, p0, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$DirectChannelConfiguration;->mEventCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1, v7, v8}, Ljava/util/concurrent/atomic/AtomicLong;->setRelease(J)V

    .line 294
    return-void
.end method
