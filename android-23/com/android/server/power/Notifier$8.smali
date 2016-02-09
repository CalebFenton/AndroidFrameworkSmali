.class Lcom/android/server/power/Notifier$8;
.super Ljava/lang/Object;
.source "Notifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/Notifier;->handleLateInteractiveChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/Notifier;

.field final synthetic val$why:I


# direct methods
.method constructor <init>(Lcom/android/server/power/Notifier;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/Notifier;
    .param p2, "val$why"    # I

    #@0
    .prologue
    .line 413
    iput-object p1, p0, Lcom/android/server/power/Notifier$8;->this$0:Lcom/android/server/power/Notifier;

    #@2
    iput p2, p0, Lcom/android/server/power/Notifier$8;->val$why:I

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 416
    const/4 v0, 0x4

    #@2
    new-array v0, v0, [Ljava/lang/Object;

    #@4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7
    move-result-object v1

    #@8
    aput-object v1, v0, v3

    #@a
    iget v1, p0, Lcom/android/server/power/Notifier$8;->val$why:I

    #@c
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f
    move-result-object v1

    #@10
    const/4 v2, 0x1

    #@11
    aput-object v1, v0, v2

    #@13
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@16
    move-result-object v1

    #@17
    const/4 v2, 0x2

    #@18
    aput-object v1, v0, v2

    #@1a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1d
    move-result-object v1

    #@1e
    const/4 v2, 0x3

    #@1f
    aput-object v1, v0, v2

    #@21
    const/16 v1, 0xaa8

    #@23
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@26
    .line 417
    iget-object v0, p0, Lcom/android/server/power/Notifier$8;->this$0:Lcom/android/server/power/Notifier;

    #@28
    invoke-static {v0}, Lcom/android/server/power/Notifier;->-get2(Lcom/android/server/power/Notifier;)Landroid/view/WindowManagerPolicy;

    #@2b
    move-result-object v0

    #@2c
    iget v1, p0, Lcom/android/server/power/Notifier$8;->val$why:I

    #@2e
    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->finishedGoingToSleep(I)V

    #@31
    .line 415
    return-void
.end method
