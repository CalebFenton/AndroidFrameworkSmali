.class Lcom/android/server/content/SyncManager$3;
.super Landroid/content/BroadcastReceiver;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManager;
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
    .line 312
    iput-object p1, p0, Lcom/android/server/content/SyncManager$3;->this$0:Lcom/android/server/content/SyncManager;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/server/content/SyncManager$3;->this$0:Lcom/android/server/content/SyncManager;

    #@2
    sget-object v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->USER_ALL_PROVIDER_ALL_ACCOUNTS_ALL:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@4
    invoke-static {v0, v1}, Lcom/android/server/content/SyncManager;->-wrap26(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    #@7
    .line 314
    return-void
.end method