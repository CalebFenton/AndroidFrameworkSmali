.class public final Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
.super Landroid/os/BatteryStats$Uid$Sensor;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl$Uid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Sensor"
.end annotation


# instance fields
.field final mHandle:I

.field mTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field final synthetic this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .param p2, "handle"    # I

    #@0
    .prologue
    .line 5813
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@2
    invoke-direct {p0}, Landroid/os/BatteryStats$Uid$Sensor;-><init>()V

    #@5
    .line 5814
    iput p2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mHandle:I

    #@7
    .line 5813
    return-void
.end method

.method private readTimerFromParcel(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .locals 6
    .param p1, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p2, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 5818
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 5819
    return-object v1

    #@9
    .line 5822
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@b
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@d
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mSensorTimers:Landroid/util/SparseArray;

    #@f
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mHandle:I

    #@11
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v3

    #@15
    check-cast v3, Ljava/util/ArrayList;

    #@17
    .line 5823
    .local v3, "pool":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    if-nez v3, :cond_1

    #@19
    .line 5824
    new-instance v3, Ljava/util/ArrayList;

    #@1b
    .end local v3    # "pool":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@1e
    .line 5825
    .restart local v3    # "pool":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@20
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@22
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mSensorTimers:Landroid/util/SparseArray;

    #@24
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mHandle:I

    #@26
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@29
    .line 5827
    :cond_1
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2b
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@2d
    move-object v4, p1

    #@2e
    move-object v5, p2

    #@2f
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@32
    return-object v0
.end method


# virtual methods
.method public getHandle()I
    .locals 1

    #@0
    .prologue
    .line 5853
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mHandle:I

    #@2
    return v0
.end method

.method public bridge synthetic getSensorTime()Landroid/os/BatteryStats$Timer;
    .locals 1

    #@0
    .prologue
    .line 5847
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->getSensorTime()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getSensorTime()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1

    #@0
    .prologue
    .line 5848
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    return-object v0
.end method

.method readFromParcelLocked(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V
    .locals 1
    .param p1, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p2, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 5839
    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->readTimerFromParcel(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@6
    .line 5838
    return-void
.end method

.method reset()Z
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 5831
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@3
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 5832
    const/4 v0, 0x0

    #@a
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@c
    .line 5833
    return v1

    #@d
    .line 5835
    :cond_0
    const/4 v0, 0x0

    #@e
    return v0
.end method

.method writeToParcelLocked(Landroid/os/Parcel;J)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "elapsedRealtimeUs"    # J

    #@0
    .prologue
    .line 5843
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    invoke-static {p1, v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeTimerToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$Timer;J)V

    #@5
    .line 5842
    return-void
.end method
