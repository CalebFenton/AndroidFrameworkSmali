.class Lcom/android/server/content/SyncManager$10;
.super Landroid/content/ISyncStatusObserver$Stub;
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


# direct methods
.method constructor <init>(Lcom/android/server/content/SyncManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/content/SyncManager;

    #@0
    .prologue
    .line 524
    iput-object p1, p0, Lcom/android/server/content/SyncManager$10;->this$0:Lcom/android/server/content/SyncManager;

    #@2
    invoke-direct {p0}, Landroid/content/ISyncStatusObserver$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onStatusChanged(I)V
    .locals 1
    .param p1, "which"    # I

    #@0
    .prologue
    .line 528
    iget-object v0, p0, Lcom/android/server/content/SyncManager$10;->this$0:Lcom/android/server/content/SyncManager;

    #@2
    invoke-static {v0}, Lcom/android/server/content/SyncManager;->-wrap16(Lcom/android/server/content/SyncManager;)V

    #@5
    .line 526
    return-void
.end method
