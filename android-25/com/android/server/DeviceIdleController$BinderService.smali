.class final Lcom/android/server/DeviceIdleController$BinderService;
.super Landroid/os/IDeviceIdleController$Stub;
.source "DeviceIdleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method private constructor <init>(Lcom/android/server/DeviceIdleController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/DeviceIdleController;

    #@0
    .prologue
    .line 1124
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    #@2
    invoke-direct {p0}, Landroid/os/IDeviceIdleController$Stub;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/DeviceIdleController;Lcom/android/server/DeviceIdleController$BinderService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/DeviceIdleController;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/DeviceIdleController$BinderService;-><init>(Lcom/android/server/DeviceIdleController;)V

    #@3
    return-void
.end method


# virtual methods
.method public addPowerSaveTempWhitelistApp(Ljava/lang/String;JILjava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "duration"    # J
    .param p4, "userId"    # I
    .param p5, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1193
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    #@2
    move-object v1, p1

    #@3
    move-wide v2, p2

    #@4
    move v4, p4

    #@5
    move-object v5, p5

    #@6
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/DeviceIdleController;->addPowerSaveTempWhitelistAppChecked(Ljava/lang/String;JILjava/lang/String;)V

    #@9
    .line 1192
    return-void
.end method

.method public addPowerSaveTempWhitelistAppForMms(Ljava/lang/String;ILjava/lang/String;)J
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1198
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    #@2
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->-get1(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$Constants;

    #@5
    move-result-object v0

    #@6
    iget-wide v2, v0, Lcom/android/server/DeviceIdleController$Constants;->MMS_TEMP_APP_WHITELIST_DURATION:J

    #@8
    .line 1199
    .local v2, "duration":J
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    #@a
    move-object v1, p1

    #@b
    move v4, p2

    #@c
    move-object v5, p3

    #@d
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/DeviceIdleController;->addPowerSaveTempWhitelistAppChecked(Ljava/lang/String;JILjava/lang/String;)V

    #@10
    .line 1200
    return-wide v2
.end method

.method public addPowerSaveTempWhitelistAppForSms(Ljava/lang/String;ILjava/lang/String;)J
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1205
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    #@2
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->-get1(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$Constants;

    #@5
    move-result-object v0

    #@6
    iget-wide v2, v0, Lcom/android/server/DeviceIdleController$Constants;->SMS_TEMP_APP_WHITELIST_DURATION:J

    #@8
    .line 1206
    .local v2, "duration":J
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    #@a
    move-object v1, p1

    #@b
    move v4, p2

    #@c
    move-object v5, p3

    #@d
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/DeviceIdleController;->addPowerSaveTempWhitelistAppChecked(Ljava/lang/String;JILjava/lang/String;)V

    #@10
    .line 1207
    return-wide v2
.end method

.method public addPowerSaveWhitelistApp(Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1126
    iget-object v2, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    #@2
    invoke-virtual {v2}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    #@5
    move-result-object v2

    #@6
    const-string/jumbo v3, "android.permission.DEVICE_POWER"

    #@9
    .line 1127
    const/4 v4, 0x0

    #@a
    .line 1126
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@d
    .line 1128
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@10
    move-result-wide v0

    #@11
    .line 1130
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    #@13
    invoke-virtual {v2, p1}, Lcom/android/server/DeviceIdleController;->addPowerSaveWhitelistAppInternal(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 1132
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@19
    .line 1125
    return-void

    #@1a
    .line 1131
    :catchall_0
    move-exception v2

    #@1b
    .line 1132
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1e
    .line 1131
    throw v2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1232
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/DeviceIdleController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@5
    .line 1231
    return-void
.end method

.method public exitIdle(Ljava/lang/String;)V
    .locals 5
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1211
    iget-object v2, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    #@2
    invoke-virtual {v2}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    #@5
    move-result-object v2

    #@6
    const-string/jumbo v3, "android.permission.DEVICE_POWER"

    #@9
    .line 1212
    const/4 v4, 0x0

    #@a
    .line 1211
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@d
    .line 1213
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@10
    move-result-wide v0

    #@11
    .line 1215
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    #@13
    invoke-virtual {v2, p1}, Lcom/android/server/DeviceIdleController;->exitIdleInternal(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 1217
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@19
    .line 1210
    return-void

    #@1a
    .line 1216
    :catchall_0
    move-exception v2

    #@1b
    .line 1217
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1e
    .line 1216
    throw v2
.end method

.method public getAppIdTempWhitelist()[I
    .locals 1

    #@0
    .prologue
    .line 1180
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    #@2
    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getAppIdTempWhitelistInternal()[I

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getAppIdUserWhitelist()[I
    .locals 1

    #@0
    .prologue
    .line 1176
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    #@2
    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getAppIdUserWhitelistInternal()[I

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getAppIdWhitelist()[I
    .locals 1

    #@0
    .prologue
    .line 1172
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    #@2
    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getAppIdWhitelistInternal()[I

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getAppIdWhitelistExceptIdle()[I
    .locals 1

    #@0
    .prologue
    .line 1168
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    #@2
    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getAppIdWhitelistExceptIdleInternal()[I

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getFullPowerWhitelist()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1164
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    #@2
    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getFullPowerWhitelistInternal()[Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getFullPowerWhitelistExceptIdle()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1160
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    #@2
    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getFullPowerWhitelistExceptIdleInternal()[Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSystemPowerWhitelist()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1152
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    #@2
    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getSystemPowerWhitelistInternal()[Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSystemPowerWhitelistExceptIdle()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1148
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    #@2
    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getSystemPowerWhitelistExceptIdleInternal()[Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getUserPowerWhitelist()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1156
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    #@2
    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getUserPowerWhitelistInternal()[Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public isPowerSaveWhitelistApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1188
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/DeviceIdleController;->isPowerSaveWhitelistAppInternal(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isPowerSaveWhitelistExceptIdleApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1184
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/DeviceIdleController;->isPowerSaveWhitelistExceptIdleAppInternal(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 7
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "resultReceiver"    # Landroid/os/ResultReceiver;

    #@0
    .prologue
    .line 1237
    new-instance v0, Lcom/android/server/DeviceIdleController$Shell;

    #@2
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    #@4
    invoke-direct {v0, v1}, Lcom/android/server/DeviceIdleController$Shell;-><init>(Lcom/android/server/DeviceIdleController;)V

    #@7
    move-object v1, p0

    #@8
    move-object v2, p1

    #@9
    move-object v3, p2

    #@a
    move-object v4, p3

    #@b
    move-object v5, p4

    #@c
    move-object v6, p5

    #@d
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/DeviceIdleController$Shell;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ResultReceiver;)I

    #@10
    .line 1236
    return-void
.end method

.method public registerMaintenanceActivityListener(Landroid/os/IMaintenanceActivityListener;)Z
    .locals 1
    .param p1, "listener"    # Landroid/os/IMaintenanceActivityListener;

    #@0
    .prologue
    .line 1223
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/DeviceIdleController;->registerMaintenanceActivityListener(Landroid/os/IMaintenanceActivityListener;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public removePowerSaveWhitelistApp(Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1137
    iget-object v2, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    #@2
    invoke-virtual {v2}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    #@5
    move-result-object v2

    #@6
    const-string/jumbo v3, "android.permission.DEVICE_POWER"

    #@9
    .line 1138
    const/4 v4, 0x0

    #@a
    .line 1137
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@d
    .line 1139
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@10
    move-result-wide v0

    #@11
    .line 1141
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    #@13
    invoke-virtual {v2, p1}, Lcom/android/server/DeviceIdleController;->removePowerSaveWhitelistAppInternal(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 1143
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@19
    .line 1136
    return-void

    #@1a
    .line 1142
    :catchall_0
    move-exception v2

    #@1b
    .line 1143
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1e
    .line 1142
    throw v2
.end method

.method public unregisterMaintenanceActivityListener(Landroid/os/IMaintenanceActivityListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/os/IMaintenanceActivityListener;

    #@0
    .prologue
    .line 1228
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/DeviceIdleController;->unregisterMaintenanceActivityListener(Landroid/os/IMaintenanceActivityListener;)V

    #@5
    .line 1227
    return-void
.end method
