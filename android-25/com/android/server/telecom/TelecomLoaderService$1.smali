.class Lcom/android/server/telecom/TelecomLoaderService$1;
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
    .line 204
    iput-object p1, p0, Lcom/android/server/telecom/TelecomLoaderService$1;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

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
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 207
    iget-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService$1;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    #@4
    invoke-static {v1}, Lcom/android/server/telecom/TelecomLoaderService;->-get4(Lcom/android/server/telecom/TelecomLoaderService;)Ljava/lang/Object;

    #@7
    move-result-object v2

    #@8
    monitor-enter v2

    #@9
    .line 208
    :try_start_0
    iget-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService$1;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    #@b
    invoke-static {v1}, Lcom/android/server/telecom/TelecomLoaderService;->-get5(Lcom/android/server/telecom/TelecomLoaderService;)Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;

    #@e
    move-result-object v1

    #@f
    if-nez v1, :cond_1

    #@11
    .line 209
    iget-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService$1;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    #@13
    invoke-static {v1}, Lcom/android/server/telecom/TelecomLoaderService;->-get3(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    #@16
    move-result-object v1

    #@17
    if-nez v1, :cond_0

    #@19
    .line 210
    iget-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService$1;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    #@1b
    new-instance v3, Landroid/util/IntArray;

    #@1d
    invoke-direct {v3}, Landroid/util/IntArray;-><init>()V

    #@20
    invoke-static {v1, v3}, Lcom/android/server/telecom/TelecomLoaderService;->-set2(Lcom/android/server/telecom/TelecomLoaderService;Landroid/util/IntArray;)Landroid/util/IntArray;

    #@23
    .line 212
    :cond_0
    iget-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService$1;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    #@25
    invoke-static {v1}, Lcom/android/server/telecom/TelecomLoaderService;->-get3(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1, p1}, Landroid/util/IntArray;->add(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    monitor-exit v2

    #@2d
    .line 213
    return-object v4

    #@2e
    :cond_1
    monitor-exit v2

    #@2f
    .line 217
    iget-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService$1;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    #@31
    invoke-static {v1}, Lcom/android/server/telecom/TelecomLoaderService;->-get0(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/content/Context;

    #@34
    move-result-object v1

    #@35
    .line 216
    invoke-static {v1, v3}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    #@38
    move-result-object v0

    #@39
    .line 218
    .local v0, "smsComponent":Landroid/content/ComponentName;
    if-eqz v0, :cond_2

    #@3b
    .line 219
    new-array v1, v3, [Ljava/lang/String;

    #@3d
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@40
    move-result-object v2

    #@41
    const/4 v3, 0x0

    #@42
    aput-object v2, v1, v3

    #@44
    return-object v1

    #@45
    .line 207
    .end local v0    # "smsComponent":Landroid/content/ComponentName;
    :catchall_0
    move-exception v1

    #@46
    monitor-exit v2

    #@47
    throw v1

    #@48
    .line 221
    .restart local v0    # "smsComponent":Landroid/content/ComponentName;
    :cond_2
    return-object v4
.end method
