.class Lcom/android/server/content/SyncManager$8;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/content/SyncManager;-><init>(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method constructor <init>(Lcom/android/server/content/SyncManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/content/SyncManager;

    #@0
    .prologue
    .line 428
    iput-object p1, p0, Lcom/android/server/content/SyncManager$8;->this$0:Lcom/android/server/content/SyncManager;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onSyncRequest(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILandroid/os/Bundle;)V
    .locals 11
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "reason"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    const-wide/16 v6, 0x0

    #@2
    .line 431
    iget-boolean v0, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    #@4
    if-eqz v0, :cond_1

    #@6
    .line 432
    iget-object v0, p0, Lcom/android/server/content/SyncManager$8;->this$0:Lcom/android/server/content/SyncManager;

    #@8
    iget-object v1, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@a
    iget v2, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@c
    iget-object v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@e
    .line 435
    const/4 v10, 0x0

    #@f
    move v3, p2

    #@10
    move-object v5, p3

    #@11
    move-wide v8, v6

    #@12
    .line 432
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;JJZ)V

    #@15
    .line 430
    :cond_0
    :goto_0
    return-void

    #@16
    .line 436
    :cond_1
    iget-boolean v0, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_service:Z

    #@18
    if-eqz v0, :cond_0

    #@1a
    .line 437
    iget-object v1, p0, Lcom/android/server/content/SyncManager$8;->this$0:Lcom/android/server/content/SyncManager;

    #@1c
    iget-object v2, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    #@1e
    iget v3, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@20
    move v4, p2

    #@21
    move-object v5, p3

    #@22
    move-wide v8, v6

    #@23
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/content/ComponentName;IILandroid/os/Bundle;JJ)V

    #@26
    goto :goto_0
.end method
