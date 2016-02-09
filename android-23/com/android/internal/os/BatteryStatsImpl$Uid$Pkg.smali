.class public final Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
.super Landroid/os/BatteryStats$Uid$Pkg;
.source "BatteryStatsImpl.java"

# interfaces
.implements Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl$Uid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Pkg"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    }
.end annotation


# instance fields
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

.field final synthetic this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;)V
    .locals 1
    .param p1, "this$1"    # Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@0
    .prologue
    .line 6222
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@2
    invoke-direct {p0}, Landroid/os/BatteryStats$Uid$Pkg;-><init>()V

    #@5
    .line 6215
    new-instance v0, Landroid/util/ArrayMap;

    #@7
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mWakeupAlarms:Landroid/util/ArrayMap;

    #@c
    .line 6220
    new-instance v0, Landroid/util/ArrayMap;

    #@e
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@11
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    #@13
    .line 6223
    iget-object v0, p1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@15
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@17
    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->add(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    #@1a
    .line 6222
    return-void
.end method


# virtual methods
.method detach()V
    .locals 1

    #@0
    .prologue
    .line 6233
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@2
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@4
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@6
    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->remove(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    #@9
    .line 6232
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
    .line 6288
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
    .line 6274
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mWakeupAlarms:Landroid/util/ArrayMap;

    #@2
    return-object v0
.end method

.method final newServiceStatsLocked()Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    .locals 1

    #@0
    .prologue
    .line 6531
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    #@2
    invoke-direct {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;)V

    #@5
    return-object v0
.end method

.method public noteWakeupAlarmLocked(Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 6278
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mWakeupAlarms:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    #@8
    .line 6279
    .local v0, "c":Lcom/android/internal/os/BatteryStatsImpl$Counter;
    if-nez v0, :cond_0

    #@a
    .line 6280
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    #@c
    .end local v0    # "c":Lcom/android/internal/os/BatteryStatsImpl$Counter;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@e
    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@10
    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@12
    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Counter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@15
    .line 6281
    .restart local v0    # "c":Lcom/android/internal/os/BatteryStatsImpl$Counter;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mWakeupAlarms:Landroid/util/ArrayMap;

    #@17
    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    .line 6283
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->stepAtomic()V

    #@1d
    .line 6277
    return-void
.end method

.method public onTimeStarted(JJJ)V
    .locals 0
    .param p1, "elapsedRealtime"    # J
    .param p3, "baseUptime"    # J
    .param p5, "baseRealtime"    # J

    #@0
    .prologue
    .line 6226
    return-void
.end method

.method public onTimeStopped(JJJ)V
    .locals 0
    .param p1, "elapsedRealtime"    # J
    .param p3, "baseUptime"    # J
    .param p5, "baseRealtime"    # J

    #@0
    .prologue
    .line 6229
    return-void
.end method

.method readFromParcelLocked(Landroid/os/Parcel;)V
    .locals 10
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 6237
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v3

    #@4
    .line 6238
    .local v3, "numWA":I
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mWakeupAlarms:Landroid/util/ArrayMap;

    #@6
    invoke-virtual {v7}, Landroid/util/ArrayMap;->clear()V

    #@9
    .line 6239
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    #@c
    .line 6240
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@f
    move-result-object v6

    #@10
    .line 6241
    .local v6, "tag":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mWakeupAlarms:Landroid/util/ArrayMap;

    #@12
    new-instance v8, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    #@14
    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@16
    iget-object v9, v9, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@18
    iget-object v9, v9, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@1a
    invoke-direct {v8, v9, p1}, Lcom/android/internal/os/BatteryStatsImpl$Counter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@1d
    invoke-virtual {v7, v6, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    .line 6239
    add-int/lit8 v0, v0, 0x1

    #@22
    goto :goto_0

    #@23
    .line 6244
    .end local v6    # "tag":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@26
    move-result v2

    #@27
    .line 6245
    .local v2, "numServs":I
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    #@29
    invoke-virtual {v7}, Landroid/util/ArrayMap;->clear()V

    #@2c
    .line 6246
    const/4 v1, 0x0

    #@2d
    .local v1, "m":I
    :goto_1
    if-ge v1, v2, :cond_1

    #@2f
    .line 6247
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@32
    move-result-object v5

    #@33
    .line 6248
    .local v5, "serviceName":Ljava/lang/String;
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    #@35
    invoke-direct {v4, p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;)V

    #@38
    .line 6249
    .local v4, "serv":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    #@3a
    invoke-virtual {v7, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3d
    .line 6251
    invoke-virtual {v4, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->readFromParcelLocked(Landroid/os/Parcel;)V

    #@40
    .line 6246
    add-int/lit8 v1, v1, 0x1

    #@42
    goto :goto_1

    #@43
    .line 6236
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
    .line 6256
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mWakeupAlarms:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@5
    move-result v2

    #@6
    .line 6257
    .local v2, "numWA":I
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@9
    .line 6258
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@c
    .line 6259
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
    .line 6260
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
    .line 6258
    add-int/lit8 v1, v1, 0x1

    #@24
    goto :goto_0

    #@25
    .line 6263
    :cond_0
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    #@27
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@2a
    move-result v0

    #@2b
    .line 6264
    .local v0, "NS":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2e
    .line 6265
    const/4 v1, 0x0

    #@2f
    :goto_1
    if-ge v1, v0, :cond_1

    #@31
    .line 6266
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
    .line 6267
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    #@3e
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@41
    move-result-object v3

    #@42
    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    #@44
    .line 6268
    .local v3, "serv":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    invoke-virtual {v3, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->writeToParcelLocked(Landroid/os/Parcel;)V

    #@47
    .line 6265
    add-int/lit8 v1, v1, 0x1

    #@49
    goto :goto_1

    #@4a
    .line 6255
    .end local v3    # "serv":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    :cond_1
    return-void
.end method
