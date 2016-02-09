.class Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;
.super Ljava/lang/Object;
.source "TelecomLoaderService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/TelecomLoaderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TelecomServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/TelecomLoaderService;


# direct methods
.method private constructor <init>(Lcom/android/server/telecom/TelecomLoaderService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/telecom/TelecomLoaderService;

    #@0
    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/telecom/TelecomLoaderService;Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/telecom/TelecomLoaderService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;-><init>(Lcom/android/server/telecom/TelecomLoaderService;)V

    #@3
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 13
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 63
    :try_start_0
    new-instance v10, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection$1;

    #@2
    invoke-direct {v10, p0}, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection$1;-><init>(Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;)V

    #@5
    .line 68
    const/4 v11, 0x0

    #@6
    .line 63
    invoke-interface {p2, v10, v11}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    #@9
    .line 69
    iget-object v10, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    #@b
    invoke-static {v10}, Lcom/android/server/telecom/TelecomLoaderService;->-get0(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/content/Context;

    #@e
    move-result-object v10

    #@f
    const/4 v11, 0x0

    #@10
    invoke-static {v10, v11}, Lcom/android/internal/telephony/SmsApplication;->getDefaultMmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    #@13
    .line 70
    const-string/jumbo v10, "telecom"

    #@16
    invoke-static {v10, p2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@19
    .line 72
    iget-object v10, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    #@1b
    invoke-static {v10}, Lcom/android/server/telecom/TelecomLoaderService;->-get4(Lcom/android/server/telecom/TelecomLoaderService;)Ljava/lang/Object;

    #@1e
    move-result-object v11

    #@1f
    monitor-enter v11
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    .line 73
    :try_start_1
    iget-object v10, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    #@22
    invoke-static {v10}, Lcom/android/server/telecom/TelecomLoaderService;->-get3(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    #@25
    move-result-object v10

    #@26
    if-nez v10, :cond_0

    #@28
    iget-object v10, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    #@2a
    invoke-static {v10}, Lcom/android/server/telecom/TelecomLoaderService;->-get1(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    #@2d
    move-result-object v10

    #@2e
    if-eqz v10, :cond_1

    #@30
    .line 76
    :cond_0
    const-class v10, Landroid/content/pm/PackageManagerInternal;

    #@32
    .line 75
    invoke-static {v10}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@35
    move-result-object v2

    #@36
    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    #@38
    .line 78
    .local v2, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    iget-object v10, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    #@3a
    invoke-static {v10}, Lcom/android/server/telecom/TelecomLoaderService;->-get3(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    #@3d
    move-result-object v10

    #@3e
    if-eqz v10, :cond_3

    #@40
    .line 80
    iget-object v10, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    #@42
    invoke-static {v10}, Lcom/android/server/telecom/TelecomLoaderService;->-get0(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/content/Context;

    #@45
    move-result-object v10

    #@46
    const/4 v12, 0x1

    #@47
    .line 79
    invoke-static {v10, v12}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    #@4a
    move-result-object v6

    #@4b
    .line 81
    .local v6, "smsComponent":Landroid/content/ComponentName;
    if-eqz v6, :cond_3

    #@4d
    .line 82
    iget-object v10, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    #@4f
    invoke-static {v10}, Lcom/android/server/telecom/TelecomLoaderService;->-get3(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    #@52
    move-result-object v10

    #@53
    invoke-virtual {v10}, Landroid/util/IntArray;->size()I

    #@56
    move-result v5

    #@57
    .line 83
    .local v5, "requestCount":I
    add-int/lit8 v1, v5, -0x1

    #@59
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    #@5b
    .line 84
    iget-object v10, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    #@5d
    invoke-static {v10}, Lcom/android/server/telecom/TelecomLoaderService;->-get3(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    #@60
    move-result-object v10

    #@61
    invoke-virtual {v10, v1}, Landroid/util/IntArray;->get(I)I

    #@64
    move-result v9

    #@65
    .line 85
    .local v9, "userid":I
    iget-object v10, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    #@67
    invoke-static {v10}, Lcom/android/server/telecom/TelecomLoaderService;->-get3(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    #@6a
    move-result-object v10

    #@6b
    invoke-virtual {v10, v1}, Landroid/util/IntArray;->remove(I)V

    #@6e
    .line 87
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@71
    move-result-object v10

    #@72
    .line 86
    invoke-virtual {v2, v10, v9}, Landroid/content/pm/PackageManagerInternal;->grantDefaultPermissionsToDefaultSmsApp(Ljava/lang/String;I)V

    #@75
    .line 83
    add-int/lit8 v1, v1, -0x1

    #@77
    goto :goto_0

    #@78
    .line 74
    .end local v1    # "i":I
    .end local v2    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v5    # "requestCount":I
    .end local v6    # "smsComponent":Landroid/content/ComponentName;
    .end local v9    # "userid":I
    :cond_1
    iget-object v10, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    #@7a
    invoke-static {v10}, Lcom/android/server/telecom/TelecomLoaderService;->-get2(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@7d
    move-result-object v10

    #@7e
    if-nez v10, :cond_0

    #@80
    :cond_2
    :try_start_2
    monitor-exit v11
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@81
    .line 59
    :goto_1
    return-void

    #@82
    .line 92
    .restart local v2    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    :cond_3
    :try_start_3
    iget-object v10, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    #@84
    invoke-static {v10}, Lcom/android/server/telecom/TelecomLoaderService;->-get1(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    #@87
    move-result-object v10

    #@88
    if-eqz v10, :cond_4

    #@8a
    .line 94
    iget-object v10, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    #@8c
    invoke-static {v10}, Lcom/android/server/telecom/TelecomLoaderService;->-get0(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/content/Context;

    #@8f
    move-result-object v10

    #@90
    .line 93
    invoke-static {v10}, Landroid/telecom/DefaultDialerManager;->getDefaultDialerApplication(Landroid/content/Context;)Ljava/lang/String;

    #@93
    move-result-object v3

    #@94
    .line 95
    .local v3, "packageName":Ljava/lang/String;
    if-eqz v3, :cond_4

    #@96
    .line 96
    iget-object v10, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    #@98
    invoke-static {v10}, Lcom/android/server/telecom/TelecomLoaderService;->-get1(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    #@9b
    move-result-object v10

    #@9c
    invoke-virtual {v10}, Landroid/util/IntArray;->size()I

    #@9f
    move-result v5

    #@a0
    .line 97
    .restart local v5    # "requestCount":I
    add-int/lit8 v1, v5, -0x1

    #@a2
    .restart local v1    # "i":I
    :goto_2
    if-ltz v1, :cond_4

    #@a4
    .line 98
    iget-object v10, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    #@a6
    invoke-static {v10}, Lcom/android/server/telecom/TelecomLoaderService;->-get1(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    #@a9
    move-result-object v10

    #@aa
    invoke-virtual {v10, v1}, Landroid/util/IntArray;->get(I)I

    #@ad
    move-result v8

    #@ae
    .line 99
    .local v8, "userId":I
    iget-object v10, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    #@b0
    invoke-static {v10}, Lcom/android/server/telecom/TelecomLoaderService;->-get1(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    #@b3
    move-result-object v10

    #@b4
    invoke-virtual {v10, v1}, Landroid/util/IntArray;->remove(I)V

    #@b7
    .line 100
    invoke-virtual {v2, v3, v8}, Landroid/content/pm/PackageManagerInternal;->grantDefaultPermissionsToDefaultDialerApp(Ljava/lang/String;I)V

    #@ba
    .line 97
    add-int/lit8 v1, v1, -0x1

    #@bc
    goto :goto_2

    #@bd
    .line 105
    .end local v1    # "i":I
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v5    # "requestCount":I
    .end local v8    # "userId":I
    :cond_4
    iget-object v10, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    #@bf
    invoke-static {v10}, Lcom/android/server/telecom/TelecomLoaderService;->-get2(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    #@c2
    move-result-object v10

    #@c3
    if-eqz v10, :cond_2

    #@c5
    .line 107
    iget-object v10, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    #@c7
    invoke-static {v10}, Lcom/android/server/telecom/TelecomLoaderService;->-get0(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/content/Context;

    #@ca
    move-result-object v10

    #@cb
    const-string/jumbo v12, "telecom"

    #@ce
    invoke-virtual {v10, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@d1
    move-result-object v7

    #@d2
    check-cast v7, Landroid/telecom/TelecomManager;

    #@d4
    .line 108
    .local v7, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v7}, Landroid/telecom/TelecomManager;->getSimCallManager()Landroid/telecom/PhoneAccountHandle;

    #@d7
    move-result-object v4

    #@d8
    .line 109
    .local v4, "phoneAccount":Landroid/telecom/PhoneAccountHandle;
    if-eqz v4, :cond_2

    #@da
    .line 110
    iget-object v10, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    #@dc
    invoke-static {v10}, Lcom/android/server/telecom/TelecomLoaderService;->-get2(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    #@df
    move-result-object v10

    #@e0
    invoke-virtual {v10}, Landroid/util/IntArray;->size()I

    #@e3
    move-result v5

    #@e4
    .line 112
    .restart local v5    # "requestCount":I
    invoke-virtual {v4}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    #@e7
    move-result-object v10

    #@e8
    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@eb
    move-result-object v3

    #@ec
    .line 113
    .restart local v3    # "packageName":Ljava/lang/String;
    add-int/lit8 v1, v5, -0x1

    #@ee
    .restart local v1    # "i":I
    :goto_3
    if-ltz v1, :cond_2

    #@f0
    .line 114
    iget-object v10, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    #@f2
    invoke-static {v10}, Lcom/android/server/telecom/TelecomLoaderService;->-get2(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    #@f5
    move-result-object v10

    #@f6
    invoke-virtual {v10, v1}, Landroid/util/IntArray;->get(I)I

    #@f9
    move-result v8

    #@fa
    .line 115
    .restart local v8    # "userId":I
    iget-object v10, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    #@fc
    invoke-static {v10}, Lcom/android/server/telecom/TelecomLoaderService;->-get2(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    #@ff
    move-result-object v10

    #@100
    invoke-virtual {v10, v1}, Landroid/util/IntArray;->remove(I)V

    #@103
    .line 116
    invoke-virtual {v2, v3, v8}, Landroid/content/pm/PackageManagerInternal;->grantDefaultPermissionsToDefaultSimCallManager(Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@106
    .line 113
    add-int/lit8 v1, v1, -0x1

    #@108
    goto :goto_3

    #@109
    .line 72
    .end local v1    # "i":I
    .end local v2    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "phoneAccount":Landroid/telecom/PhoneAccountHandle;
    .end local v5    # "requestCount":I
    .end local v7    # "telecomManager":Landroid/telecom/TelecomManager;
    .end local v8    # "userId":I
    :catchall_0
    move-exception v10

    #@10a
    :try_start_4
    monitor-exit v11

    #@10b
    throw v10
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    #@10c
    .line 124
    :catch_0
    move-exception v0

    #@10d
    .line 125
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v10, "TelecomLoaderService"

    #@110
    const-string/jumbo v11, "Failed linking to death."

    #@113
    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@116
    goto/16 :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    #@2
    invoke-static {v0}, Lcom/android/server/telecom/TelecomLoaderService;->-wrap0(Lcom/android/server/telecom/TelecomLoaderService;)V

    #@5
    .line 130
    return-void
.end method
