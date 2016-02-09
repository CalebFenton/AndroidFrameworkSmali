.class final Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ConsumeBatchedInputImmediatelyRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;

    #@0
    .prologue
    .line 6055
    iput-object p1, p0, Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;->this$0:Landroid/view/ViewRootImpl;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    #@0
    .prologue
    .line 6058
    iget-object v0, p0, Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;->this$0:Landroid/view/ViewRootImpl;

    #@2
    const-wide/16 v2, -0x1

    #@4
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewRootImpl;->doConsumeBatchedInput(J)V

    #@7
    .line 6057
    return-void
.end method
