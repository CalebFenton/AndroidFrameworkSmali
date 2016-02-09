.class Lcom/android/server/content/SyncManager$11;
.super Landroid/database/ContentObserver;
.source "SyncManager.java"


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

.field final synthetic val$resolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/android/server/content/SyncManager;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/content/SyncManager;
    .param p2, "$anonymous0"    # Landroid/os/Handler;
    .param p3, "val$resolver"    # Landroid/content/ContentResolver;

    #@0
    .prologue
    .line 536
    iput-object p1, p0, Lcom/android/server/content/SyncManager$11;->this$0:Lcom/android/server/content/SyncManager;

    #@2
    iput-object p3, p0, Lcom/android/server/content/SyncManager$11;->val$resolver:Landroid/content/ContentResolver;

    #@4
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    #@7
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    #@0
    .prologue
    .line 538
    iget-object v0, p0, Lcom/android/server/content/SyncManager$11;->this$0:Lcom/android/server/content/SyncManager;

    #@2
    invoke-static {v0}, Lcom/android/server/content/SyncManager;->-get14(Lcom/android/server/content/SyncManager;)Z

    #@5
    move-result v1

    #@6
    iget-object v2, p0, Lcom/android/server/content/SyncManager$11;->this$0:Lcom/android/server/content/SyncManager;

    #@8
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->-wrap3(Lcom/android/server/content/SyncManager;)Z

    #@b
    move-result v2

    #@c
    or-int/2addr v1, v2

    #@d
    invoke-static {v0, v1}, Lcom/android/server/content/SyncManager;->-set3(Lcom/android/server/content/SyncManager;Z)Z

    #@10
    .line 539
    iget-object v0, p0, Lcom/android/server/content/SyncManager$11;->this$0:Lcom/android/server/content/SyncManager;

    #@12
    invoke-static {v0}, Lcom/android/server/content/SyncManager;->-get14(Lcom/android/server/content/SyncManager;)Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_0

    #@18
    .line 540
    iget-object v0, p0, Lcom/android/server/content/SyncManager$11;->this$0:Lcom/android/server/content/SyncManager;

    #@1a
    invoke-static {v0}, Lcom/android/server/content/SyncManager;->-get18(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncManager$SyncHandler;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0}, Lcom/android/server/content/SyncManager$SyncHandler;->onDeviceProvisioned()V

    #@21
    .line 541
    iget-object v0, p0, Lcom/android/server/content/SyncManager$11;->val$resolver:Landroid/content/ContentResolver;

    #@23
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    #@26
    .line 537
    :cond_0
    return-void
.end method
