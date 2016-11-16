.class public Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
.super Landroid/os/BatteryStats$Uid$Pkg;
.source "BatteryStatsImpl.java"

# interfaces
.implements Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl$Uid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Pkg"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    }
.end annotation


# instance fields
.field protected mBsi:Lcom/android/internal/os/BatteryStatsImpl;

.field final mServiceStats:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;",
            ">;"
        }
    .end annotation
.end field

.field mWakeupAlarms:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/BatteryStatsImpl$Counter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;)V
    .locals 1
    .param p1, "bsi"    # Lcom/android/internal/os/BatteryStatsImpl;

    #@0
    .prologue
    .line 7285
    invoke-direct {p0}, Landroid/os/BatteryStats$Uid$Pkg;-><init>()V

    #@3
    .line 7278
    new-instance v0, Landroid/util/ArrayMap;

    #@5
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mWakeupAlarms:Landroid/util/ArrayMap;

    #@a
    .line 7283
    new-instance v0, Landroid/util/ArrayMap;

    #@c
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    #@11
    .line 7286
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@13
    .line 7287
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@15
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@17
    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->add(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    #@1a
    .line 7285
    return-void
.end method


# virtual methods
.method detach()V
    .locals 1

    #@0
    .prologue
    .line 7297
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@2
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@4
    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->remove(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    #@7
    .line 7296
    return-void
.end method

.method public getServiceStats()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Uid$Pkg$Serv;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 7352
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    #@2
    return-object v0
.end method

.method public getWakeupAlarmStats()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Counter;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 7338
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mWakeupAlarms:Landroid/util/ArrayMap;

    #@2
    return-object v0
.end method

.method final newServiceStatsLocked()Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    .locals 2

    #@0
    .prologue
    .line 7612
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    #@2
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@4
    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;-><init>(Lcom/android/internal/os/BatteryStatsImpl;)V

    #@7
    return-object v0
.end method

.method public noteWakeupAlarmLocked(Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 7342
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mWakeupAlarms:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    #@8
    .line 7343
    .local v0, "c":Lcom/android/internal/os/BatteryStatsImpl$Counter;
    if-nez v0, :cond_0

    #@a
    .line 7344
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    #@c
    .end local v0    # "c":Lcom/android/internal/os/BatteryStatsImpl$Counter;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@e
    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@10
    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Counter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@13
    .line 7345
    .restart local v0    # "c":Lcom/android/internal/os/BatteryStatsImpl$Counter;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mWakeupAlarms:Landroid/util/ArrayMap;

    #@15
    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    .line 7347
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->stepAtomic()V

    #@1b
    .line 7341
    return-void
.end method

.method public onTimeStarted(JJJ)V
    .locals 0
    .param p1, "elapsedRealtime"    # J
    .param p3, "baseUptime"    # J
    .param p5, "baseRealtime"    # J

    #@0
    .prologue
    .line 7290
    return-void
.end method

.method public onTimeStopped(JJJ)V
    .locals 0
    .param p1, "elapsedRealtime"    # J
    .param p3, "baseUptime"    # J
    .param p5, "baseRealtime"    # J

    #@0
    .prologue
    .line 7293
    return-void
.end method

.method readFromParcelLocked(Landroid/os/Parcel;)V
    .locals 10
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 7301
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v3

    #@4
    .line 7302
    .local v3, "numWA":I
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mWakeupAlarms:Landroid/util/ArrayMap;

    #@6
    invoke-virtual {v7}, Landroid/util/ArrayMap;->clear()V

    #@9
    .line 7303
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    #@c
    .line 7304
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@f
    move-result-object v6

    #@10
    .line 7305
    .local v6, "tag":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mWakeupAlarms:Landroid/util/ArrayMap;

    #@12
    new-instance v8, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    #@14
    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@16
    iget-object v9, v9, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@18
    invoke-direct {v8, v9, p1}, Lcom/android/internal/os/BatteryStatsImpl$Counter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@1b
    invoke-virtual {v7, v6, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1e
    .line 7303
    add-int/lit8 v0, v0, 0x1

    #@20
    goto :goto_0

    #@21
    .line 7308
    .end local v6    # "tag":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@24
    move-result v2

    #@25
    .line 7309
    .local v2, "numServs":I
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    #@27
    invoke-virtual {v7}, Landroid/util/ArrayMap;->clear()V

    #@2a
    .line 7310
    const/4 v1, 0x0

    #@2b
    .local v1, "m":I
    :goto_1
    if-ge v1, v2, :cond_1

    #@2d
    .line 7311
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@30
    move-result-object v5

    #@31
    .line 7312
    .local v5, "serviceName":Ljava/lang/String;
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    #@33
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@35
    invoke-direct {v4, v7}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;-><init>(Lcom/android/internal/os/BatteryStatsImpl;)V

    #@38
    .line 7313
    .local v4, "serv":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    #@3a
    invoke-virtual {v7, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3d
    .line 7315
    invoke-virtual {v4, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->readFromParcelLocked(Landroid/os/Parcel;)V

    #@40
    .line 7310
    add-int/lit8 v1, v1, 0x1

    #@42
    goto :goto_1

    #@43
    .line 7300
    .end local v4    # "serv":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    .end local v5    # "serviceName":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method writeToParcelLocked(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "out"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 7320
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mWakeupAlarms:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@5
    move-result v2

    #@6
    .line 7321
    .local v2, "numWA":I
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@9
    .line 7322
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@c
    .line 7323
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mWakeupAlarms:Landroid/util/ArrayMap;

    #@e
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@11
    move-result-object v4

    #@12
    check-cast v4, Ljava/lang/String;

    #@14
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    .line 7324
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mWakeupAlarms:Landroid/util/ArrayMap;

    #@19
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@1c
    move-result-object v4

    #@1d
    check-cast v4, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    #@1f
    invoke-virtual {v4, p1}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->writeToParcel(Landroid/os/Parcel;)V

    #@22
    .line 7322
    add-int/lit8 v1, v1, 0x1

    #@24
    goto :goto_0

    #@25
    .line 7327
    :cond_0
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    #@27
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@2a
    move-result v0

    #@2b
    .line 7328
    .local v0, "NS":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2e
    .line 7329
    const/4 v1, 0x0

    #@2f
    :goto_1
    if-ge v1, v0, :cond_1

    #@31
    .line 7330
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    #@33
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@36
    move-result-object v4

    #@37
    check-cast v4, Ljava/lang/String;

    #@39
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@3c
    .line 7331
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    #@3e
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@41
    move-result-object v3

    #@42
    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    #@44
    .line 7332
    .local v3, "serv":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    invoke-virtual {v3, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->writeToParcelLocked(Landroid/os/Parcel;)V

    #@47
    .line 7329
    add-int/lit8 v1, v1, 0x1

    #@49
    goto :goto_1

    #@4a
    .line 7319
    .end local v3    # "serv":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    :cond_1
    return-void
.end method
