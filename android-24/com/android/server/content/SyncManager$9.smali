.class Lcom/android/server/content/SyncManager$9;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;


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
    .line 500
    iput-object p1, p0, Lcom/android/server/content/SyncManager$9;->this$0:Lcom/android/server/content/SyncManager;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onPeriodicSyncAdded(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;JJ)V
    .locals 7
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "pollFrequency"    # J
    .param p5, "flex"    # J

    #@0
    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/server/content/SyncManager$9;->this$0:Lcom/android/server/content/SyncManager;

    #@2
    move-object v1, p1

    #@3
    move-wide v2, p3

    #@4
    move-wide v4, p5

    #@5
    move-object v6, p2

    #@6
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/content/SyncManager;->updateOrAddPeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V

    #@9
    .line 503
    return-void
.end method
