.class Lcom/android/server/telecom/TelecomLoaderService$3;
.super Ljava/lang/Object;
.source "TelecomLoaderService.java"

# interfaces
.implements Landroid/content/pm/PackageManagerInternal$PackagesProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/telecom/TelecomLoaderService;->registerDefaultAppProviders()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/TelecomLoaderService;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/TelecomLoaderService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/telecom/TelecomLoaderService;

    #@0
    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/server/telecom/TelecomLoaderService$3;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public getPackages(I)[Ljava/lang/String;
    .locals 6
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 252
    iget-object v2, p0, Lcom/android/server/telecom/TelecomLoaderService$3;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    #@3
    invoke-static {v2}, Lcom/android/server/telecom/TelecomLoaderService;->-get4(Lcom/android/server/telecom/TelecomLoaderService;)Ljava/lang/Object;

    #@6
    move-result-object v3

    #@7
    monitor-enter v3

    #@8
    .line 253
    :try_start_0
    iget-object v2, p0, Lcom/android/server/telecom/TelecomLoaderService$3;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    #@a
    invoke-static {v2}, Lcom/android/server/telecom/TelecomLoaderService;->-get5(Lcom/android/server/telecom/TelecomLoaderService;)Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;

    #@d
    move-result-object v2

    #@e
    if-nez v2, :cond_1

    #@10
    .line 254
    iget-object v2, p0, Lcom/android/server/telecom/TelecomLoaderService$3;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    #@12
    invoke-static {v2}, Lcom/android/server/telecom/TelecomLoaderService;->-get2(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    #@15
    move-result-object v2

    #@16
    if-nez v2, :cond_0

    #@18
    .line 255
    iget-object v2, p0, Lcom/android/server/telecom/TelecomLoaderService$3;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    #@1a
    new-instance v4, Landroid/util/IntArray;

    #@1c
    invoke-direct {v4}, Landroid/util/IntArray;-><init>()V

    #@1f
    invoke-static {v2, v4}, Lcom/android/server/telecom/TelecomLoaderService;->-set1(Lcom/android/server/telecom/TelecomLoaderService;Landroid/util/IntArray;)Landroid/util/IntArray;

    #@22
    .line 257
    :cond_0
    iget-object v2, p0, Lcom/android/server/telecom/TelecomLoaderService$3;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    #@24
    invoke-static {v2}, Lcom/android/server/telecom/TelecomLoaderService;->-get2(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2, p1}, Landroid/util/IntArray;->add(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    monitor-exit v3

    #@2c
    .line 258
    return-object v5

    #@2d
    :cond_1
    monitor-exit v3

    #@2e
    .line 262
    iget-object v2, p0, Lcom/android/server/telecom/TelecomLoaderService$3;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    #@30
    invoke-static {v2}, Lcom/android/server/telecom/TelecomLoaderService;->-get0(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/content/Context;

    #@33
    move-result-object v2

    #@34
    const-string/jumbo v3, "telecom"

    #@37
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@3a
    move-result-object v1

    #@3b
    check-cast v1, Landroid/telecom/TelecomManager;

    #@3d
    .line 263
    .local v1, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v1, p1}, Landroid/telecom/TelecomManager;->getSimCallManager(I)Landroid/telecom/PhoneAccountHandle;

    #@40
    move-result-object v0

    #@41
    .line 264
    .local v0, "phoneAccount":Landroid/telecom/PhoneAccountHandle;
    if-eqz v0, :cond_2

    #@43
    .line 265
    const/4 v2, 0x1

    #@44
    new-array v2, v2, [Ljava/lang/String;

    #@46
    invoke-virtual {v0}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    #@49
    move-result-object v3

    #@4a
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@4d
    move-result-object v3

    #@4e
    const/4 v4, 0x0

    #@4f
    aput-object v3, v2, v4

    #@51
    return-object v2

    #@52
    .line 252
    .end local v0    # "phoneAccount":Landroid/telecom/PhoneAccountHandle;
    .end local v1    # "telecomManager":Landroid/telecom/TelecomManager;
    :catchall_0
    move-exception v2

    #@53
    monitor-exit v3

    #@54
    throw v2

    #@55
    .line 267
    .restart local v0    # "phoneAccount":Landroid/telecom/PhoneAccountHandle;
    .restart local v1    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_2
    return-object v5
.end method
