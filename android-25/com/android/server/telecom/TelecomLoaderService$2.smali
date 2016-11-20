.class Lcom/android/server/telecom/TelecomLoaderService$2;
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
    .line 227
    iput-object p1, p0, Lcom/android/server/telecom/TelecomLoaderService$2;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public getPackages(I)[Ljava/lang/String;
    .locals 5
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 230
    iget-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService$2;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    #@3
    invoke-static {v1}, Lcom/android/server/telecom/TelecomLoaderService;->-get4(Lcom/android/server/telecom/TelecomLoaderService;)Ljava/lang/Object;

    #@6
    move-result-object v2

    #@7
    monitor-enter v2

    #@8
    .line 231
    :try_start_0
    iget-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService$2;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    #@a
    invoke-static {v1}, Lcom/android/server/telecom/TelecomLoaderService;->-get5(Lcom/android/server/telecom/TelecomLoaderService;)Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;

    #@d
    move-result-object v1

    #@e
    if-nez v1, :cond_1

    #@10
    .line 232
    iget-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService$2;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    #@12
    invoke-static {v1}, Lcom/android/server/telecom/TelecomLoaderService;->-get1(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    #@15
    move-result-object v1

    #@16
    if-nez v1, :cond_0

    #@18
    .line 233
    iget-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService$2;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    #@1a
    new-instance v3, Landroid/util/IntArray;

    #@1c
    invoke-direct {v3}, Landroid/util/IntArray;-><init>()V

    #@1f
    invoke-static {v1, v3}, Lcom/android/server/telecom/TelecomLoaderService;->-set0(Lcom/android/server/telecom/TelecomLoaderService;Landroid/util/IntArray;)Landroid/util/IntArray;

    #@22
    .line 235
    :cond_0
    iget-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService$2;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    #@24
    invoke-static {v1}, Lcom/android/server/telecom/TelecomLoaderService;->-get1(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1, p1}, Landroid/util/IntArray;->add(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    monitor-exit v2

    #@2c
    .line 236
    return-object v4

    #@2d
    :cond_1
    monitor-exit v2

    #@2e
    .line 239
    iget-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService$2;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    #@30
    invoke-static {v1}, Lcom/android/server/telecom/TelecomLoaderService;->-get0(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/content/Context;

    #@33
    move-result-object v1

    #@34
    invoke-static {v1}, Landroid/telecom/DefaultDialerManager;->getDefaultDialerApplication(Landroid/content/Context;)Ljava/lang/String;

    #@37
    move-result-object v0

    #@38
    .line 240
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_2

    #@3a
    .line 241
    const/4 v1, 0x1

    #@3b
    new-array v1, v1, [Ljava/lang/String;

    #@3d
    const/4 v2, 0x0

    #@3e
    aput-object v0, v1, v2

    #@40
    return-object v1

    #@41
    .line 230
    .end local v0    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception v1

    #@42
    monitor-exit v2

    #@43
    throw v1

    #@44
    .line 243
    .restart local v0    # "packageName":Ljava/lang/String;
    :cond_2
    return-object v4
.end method
