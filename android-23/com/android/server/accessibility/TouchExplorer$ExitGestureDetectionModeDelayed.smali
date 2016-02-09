.class final Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;
.super Ljava/lang/Object;
.source "TouchExplorer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/TouchExplorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ExitGestureDetectionModeDelayed"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/TouchExplorer;


# direct methods
.method private constructor <init>(Lcom/android/server/accessibility/TouchExplorer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accessibility/TouchExplorer;

    #@0
    .prologue
    .line 1274
    iput-object p1, p0, Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/TouchExplorer;Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accessibility/TouchExplorer;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;-><init>(Lcom/android/server/accessibility/TouchExplorer;)V

    #@3
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    #@0
    .prologue
    .line 1281
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #@2
    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer;->-get3(Lcom/android/server/accessibility/TouchExplorer;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@9
    .line 1280
    return-void
.end method

.method public post()V
    .locals 4

    #@0
    .prologue
    .line 1277
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #@2
    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer;->-get3(Lcom/android/server/accessibility/TouchExplorer;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    const-wide/16 v2, 0x7d0

    #@8
    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@b
    .line 1276
    return-void
.end method

.method public run()V
    .locals 2

    #@0
    .prologue
    .line 1287
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #@2
    const/high16 v1, 0x80000

    #@4
    invoke-static {v0, v1}, Lcom/android/server/accessibility/TouchExplorer;->-wrap1(Lcom/android/server/accessibility/TouchExplorer;I)V

    #@7
    .line 1290
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #@9
    const/16 v1, 0x200

    #@b
    invoke-static {v0, v1}, Lcom/android/server/accessibility/TouchExplorer;->-wrap1(Lcom/android/server/accessibility/TouchExplorer;I)V

    #@e
    .line 1291
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #@10
    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer;->clear()V

    #@13
    .line 1285
    return-void
.end method
