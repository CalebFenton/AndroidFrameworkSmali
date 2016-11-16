.class public final Lcom/android/server/DeviceIdleController$LocalService;
.super Ljava/lang/Object;
.source "DeviceIdleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method public constructor <init>(Lcom/android/server/DeviceIdleController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/DeviceIdleController;

    #@0
    .prologue
    .line 1241
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public addPowerSaveTempWhitelistAppDirect(IJZLjava/lang/String;)V
    .locals 8
    .param p1, "appId"    # I
    .param p2, "duration"    # J
    .param p4, "sync"    # Z
    .param p5, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1244
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    #@2
    const/4 v2, 0x0

    #@3
    move v3, p1

    #@4
    move-wide v4, p2

    #@5
    move v6, p4

    #@6
    move-object v7, p5

    #@7
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/DeviceIdleController;->addPowerSaveTempWhitelistAppDirectInternal(IIJZLjava/lang/String;)V

    #@a
    .line 1243
    return-void
.end method

.method public getNotificationWhitelistDuration()J
    .locals 2

    #@0
    .prologue
    .line 1248
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    #@2
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->-get1(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$Constants;

    #@5
    move-result-object v0

    #@6
    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->NOTIFICATION_WHITELIST_DURATION:J

    #@8
    return-wide v0
.end method

.method public getPowerSaveWhitelistUserAppIds()[I
    .locals 1

    #@0
    .prologue
    .line 1271
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    #@2
    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getPowerSaveWhitelistUserAppIds()[I

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public setAlarmsActive(Z)V
    .locals 1
    .param p1, "active"    # Z

    #@0
    .prologue
    .line 1261
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/DeviceIdleController;->setAlarmsActive(Z)V

    #@5
    .line 1260
    return-void
.end method

.method public setJobsActive(Z)V
    .locals 1
    .param p1, "active"    # Z

    #@0
    .prologue
    .line 1256
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/DeviceIdleController;->setJobsActive(Z)V

    #@5
    .line 1255
    return-void
.end method

.method public setNetworkPolicyTempWhitelistCallback(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "callback"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 1252
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/DeviceIdleController;->setNetworkPolicyTempWhitelistCallbackInternal(Ljava/lang/Runnable;)V

    #@5
    .line 1251
    return-void
.end method
