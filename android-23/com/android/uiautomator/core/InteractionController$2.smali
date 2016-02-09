.class Lcom/android/uiautomator/core/InteractionController$2;
.super Ljava/lang/Object;
.source "InteractionController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/uiautomator/core/InteractionController;->clickRunnable(II)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/uiautomator/core/InteractionController;

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Lcom/android/uiautomator/core/InteractionController;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/uiautomator/core/InteractionController;
    .param p2, "val$x"    # I
    .param p3, "val$y"    # I

    #@0
    .prologue
    .line 272
    iput-object p1, p0, Lcom/android/uiautomator/core/InteractionController$2;->this$0:Lcom/android/uiautomator/core/InteractionController;

    #@2
    iput p2, p0, Lcom/android/uiautomator/core/InteractionController$2;->val$x:I

    #@4
    iput p3, p0, Lcom/android/uiautomator/core/InteractionController$2;->val$y:I

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    #@0
    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/uiautomator/core/InteractionController$2;->this$0:Lcom/android/uiautomator/core/InteractionController;

    #@2
    iget v1, p0, Lcom/android/uiautomator/core/InteractionController$2;->val$x:I

    #@4
    iget v2, p0, Lcom/android/uiautomator/core/InteractionController$2;->val$y:I

    #@6
    invoke-static {v0, v1, v2}, Lcom/android/uiautomator/core/InteractionController;->-wrap1(Lcom/android/uiautomator/core/InteractionController;II)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 276
    const-wide/16 v0, 0x64

    #@e
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    #@11
    .line 277
    iget-object v0, p0, Lcom/android/uiautomator/core/InteractionController$2;->this$0:Lcom/android/uiautomator/core/InteractionController;

    #@13
    iget v1, p0, Lcom/android/uiautomator/core/InteractionController$2;->val$x:I

    #@15
    iget v2, p0, Lcom/android/uiautomator/core/InteractionController$2;->val$y:I

    #@17
    invoke-static {v0, v1, v2}, Lcom/android/uiautomator/core/InteractionController;->-wrap2(Lcom/android/uiautomator/core/InteractionController;II)Z

    #@1a
    .line 274
    :cond_0
    return-void
.end method
