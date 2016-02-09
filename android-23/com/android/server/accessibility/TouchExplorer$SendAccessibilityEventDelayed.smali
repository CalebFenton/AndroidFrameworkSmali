.class Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;
.super Ljava/lang/Object;
.source "TouchExplorer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/TouchExplorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendAccessibilityEventDelayed"
.end annotation


# instance fields
.field private final mDelay:I

.field private final mEventType:I

.field final synthetic this$0:Lcom/android/server/accessibility/TouchExplorer;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/TouchExplorer;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accessibility/TouchExplorer;
    .param p2, "eventType"    # I
    .param p3, "delay"    # I

    #@0
    .prologue
    .line 1499
    iput-object p1, p0, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 1500
    iput p2, p0, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->mEventType:I

    #@7
    .line 1501
    iput p3, p0, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->mDelay:I

    #@9
    .line 1499
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    #@0
    .prologue
    .line 1505
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #@2
    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer;->-get3(Lcom/android/server/accessibility/TouchExplorer;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@9
    .line 1504
    return-void
.end method

.method public forceSendAndRemove()V
    .locals 1

    #@0
    .prologue
    .line 1517
    invoke-virtual {p0}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1518
    invoke-virtual {p0}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->run()V

    #@9
    .line 1519
    invoke-virtual {p0}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    #@c
    .line 1516
    :cond_0
    return-void
.end method

.method public isPending()Z
    .locals 1

    #@0
    .prologue
    .line 1513
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #@2
    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer;->-get3(Lcom/android/server/accessibility/TouchExplorer;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public post()V
    .locals 4

    #@0
    .prologue
    .line 1509
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #@2
    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer;->-get3(Lcom/android/server/accessibility/TouchExplorer;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    iget v1, p0, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->mDelay:I

    #@8
    int-to-long v2, v1

    #@9
    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@c
    .line 1508
    return-void
.end method

.method public run()V
    .locals 2

    #@0
    .prologue
    .line 1525
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #@2
    iget v1, p0, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->mEventType:I

    #@4
    invoke-static {v0, v1}, Lcom/android/server/accessibility/TouchExplorer;->-wrap1(Lcom/android/server/accessibility/TouchExplorer;I)V

    #@7
    .line 1524
    return-void
.end method
