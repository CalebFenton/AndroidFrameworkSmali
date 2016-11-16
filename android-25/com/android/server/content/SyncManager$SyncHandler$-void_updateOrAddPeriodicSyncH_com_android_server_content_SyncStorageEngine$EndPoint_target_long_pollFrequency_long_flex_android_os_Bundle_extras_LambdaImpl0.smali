.class final synthetic Lcom/android/server/content/SyncManager$SyncHandler$-void_updateOrAddPeriodicSyncH_com_android_server_content_SyncStorageEngine$EndPoint_target_long_pollFrequency_long_flex_android_os_Bundle_extras_LambdaImpl0;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManager$SyncHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_updateOrAddPeriodicSyncH_com_android_server_content_SyncStorageEngine$EndPoint_target_long_pollFrequency_long_flex_android_os_Bundle_extras_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$extras:Landroid/os/Bundle;

.field private synthetic val$flex:J

.field private synthetic val$pollFrequency:J

.field private synthetic val$target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

.field private synthetic val$this:Lcom/android/server/content/SyncManager$SyncHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/content/SyncManager$SyncHandler;Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V
    .locals 1

    #@0
    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/android/server/content/SyncManager$SyncHandler$-void_updateOrAddPeriodicSyncH_com_android_server_content_SyncStorageEngine$EndPoint_target_long_pollFrequency_long_flex_android_os_Bundle_extras_LambdaImpl0;->val$this:Lcom/android/server/content/SyncManager$SyncHandler;

    #@5
    iput-object p2, p0, Lcom/android/server/content/SyncManager$SyncHandler$-void_updateOrAddPeriodicSyncH_com_android_server_content_SyncStorageEngine$EndPoint_target_long_pollFrequency_long_flex_android_os_Bundle_extras_LambdaImpl0;->val$target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@7
    iput-wide p3, p0, Lcom/android/server/content/SyncManager$SyncHandler$-void_updateOrAddPeriodicSyncH_com_android_server_content_SyncStorageEngine$EndPoint_target_long_pollFrequency_long_flex_android_os_Bundle_extras_LambdaImpl0;->val$pollFrequency:J

    #@9
    iput-wide p5, p0, Lcom/android/server/content/SyncManager$SyncHandler$-void_updateOrAddPeriodicSyncH_com_android_server_content_SyncStorageEngine$EndPoint_target_long_pollFrequency_long_flex_android_os_Bundle_extras_LambdaImpl0;->val$flex:J

    #@b
    iput-object p7, p0, Lcom/android/server/content/SyncManager$SyncHandler$-void_updateOrAddPeriodicSyncH_com_android_server_content_SyncStorageEngine$EndPoint_target_long_pollFrequency_long_flex_android_os_Bundle_extras_LambdaImpl0;->val$extras:Landroid/os/Bundle;

    #@d
    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "arg0"    # Landroid/os/Bundle;

    #@0
    .prologue
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler$-void_updateOrAddPeriodicSyncH_com_android_server_content_SyncStorageEngine$EndPoint_target_long_pollFrequency_long_flex_android_os_Bundle_extras_LambdaImpl0;->val$this:Lcom/android/server/content/SyncManager$SyncHandler;

    #@2
    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler$-void_updateOrAddPeriodicSyncH_com_android_server_content_SyncStorageEngine$EndPoint_target_long_pollFrequency_long_flex_android_os_Bundle_extras_LambdaImpl0;->val$target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@4
    iget-wide v2, p0, Lcom/android/server/content/SyncManager$SyncHandler$-void_updateOrAddPeriodicSyncH_com_android_server_content_SyncStorageEngine$EndPoint_target_long_pollFrequency_long_flex_android_os_Bundle_extras_LambdaImpl0;->val$pollFrequency:J

    #@6
    iget-wide v4, p0, Lcom/android/server/content/SyncManager$SyncHandler$-void_updateOrAddPeriodicSyncH_com_android_server_content_SyncStorageEngine$EndPoint_target_long_pollFrequency_long_flex_android_os_Bundle_extras_LambdaImpl0;->val$flex:J

    #@8
    iget-object v6, p0, Lcom/android/server/content/SyncManager$SyncHandler$-void_updateOrAddPeriodicSyncH_com_android_server_content_SyncStorageEngine$EndPoint_target_long_pollFrequency_long_flex_android_os_Bundle_extras_LambdaImpl0;->val$extras:Landroid/os/Bundle;

    #@a
    move-object v7, p1

    #@b
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/content/SyncManager$SyncHandler;->-com_android_server_content_SyncManager$SyncHandler_lambda$1(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;Landroid/os/Bundle;)V

    #@e
    return-void
.end method
