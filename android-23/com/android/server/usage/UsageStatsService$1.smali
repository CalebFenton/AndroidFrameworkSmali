.class Lcom/android/server/usage/UsageStatsService$1;
.super Ljava/lang/Object;
.source "UsageStatsService.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/UsageStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/UsageStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/usage/UsageStatsService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/usage/UsageStatsService;

    #@0
    .prologue
    .line 261
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService$1;->this$0:Lcom/android/server/usage/UsageStatsService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0
    .param p1, "displayId"    # I

    #@0
    .prologue
    .line 263
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 2
    .param p1, "displayId"    # I

    #@0
    .prologue
    .line 270
    if-nez p1, :cond_0

    #@2
    .line 271
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$1;->this$0:Lcom/android/server/usage/UsageStatsService;

    #@4
    invoke-static {v0}, Lcom/android/server/usage/UsageStatsService;->-get0(Lcom/android/server/usage/UsageStatsService;)Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    monitor-enter v1

    #@9
    .line 272
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$1;->this$0:Lcom/android/server/usage/UsageStatsService;

    #@b
    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->updateDisplayLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    monitor-exit v1

    #@f
    .line 269
    :cond_0
    return-void

    #@10
    .line 271
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0
.end method

.method public onDisplayRemoved(I)V
    .locals 0
    .param p1, "displayId"    # I

    #@0
    .prologue
    .line 266
    return-void
.end method
