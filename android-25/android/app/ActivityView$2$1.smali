.class Landroid/app/ActivityView$2$1;
.super Ljava/lang/Object;
.source "ActivityView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ActivityView$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/app/ActivityView$2;

.field final synthetic val$surface:Landroid/view/Surface;


# direct methods
.method constructor <init>(Landroid/app/ActivityView$2;Landroid/view/Surface;)V
    .locals 0
    .param p1, "this$1"    # Landroid/app/ActivityView$2;
    .param p2, "val$surface"    # Landroid/view/Surface;

    #@0
    .prologue
    .line 308
    iput-object p1, p0, Landroid/app/ActivityView$2$1;->this$1:Landroid/app/ActivityView$2;

    #@2
    iput-object p2, p0, Landroid/app/ActivityView$2$1;->val$surface:Landroid/view/Surface;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 311
    iget-object v0, p0, Landroid/app/ActivityView$2$1;->this$1:Landroid/app/ActivityView$2;

    #@2
    iget-object v0, v0, Landroid/app/ActivityView$2;->this$0:Landroid/app/ActivityView;

    #@4
    invoke-static {v0}, Landroid/app/ActivityView;->-get2(Landroid/app/ActivityView;)Landroid/app/ActivityView$ActivityViewCallback;

    #@7
    move-result-object v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 312
    iget-object v0, p0, Landroid/app/ActivityView$2$1;->val$surface:Landroid/view/Surface;

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 313
    iget-object v0, p0, Landroid/app/ActivityView$2$1;->this$1:Landroid/app/ActivityView$2;

    #@10
    iget-object v0, v0, Landroid/app/ActivityView$2;->this$0:Landroid/app/ActivityView;

    #@12
    invoke-static {v0}, Landroid/app/ActivityView;->-get2(Landroid/app/ActivityView;)Landroid/app/ActivityView$ActivityViewCallback;

    #@15
    move-result-object v0

    #@16
    iget-object v1, p0, Landroid/app/ActivityView$2$1;->this$1:Landroid/app/ActivityView$2;

    #@18
    iget-object v1, v1, Landroid/app/ActivityView$2;->this$0:Landroid/app/ActivityView;

    #@1a
    invoke-virtual {v0, v1}, Landroid/app/ActivityView$ActivityViewCallback;->onSurfaceAvailable(Landroid/app/ActivityView;)V

    #@1d
    .line 310
    :cond_0
    :goto_0
    return-void

    #@1e
    .line 315
    :cond_1
    iget-object v0, p0, Landroid/app/ActivityView$2$1;->this$1:Landroid/app/ActivityView$2;

    #@20
    iget-object v0, v0, Landroid/app/ActivityView$2;->this$0:Landroid/app/ActivityView;

    #@22
    invoke-static {v0}, Landroid/app/ActivityView;->-get2(Landroid/app/ActivityView;)Landroid/app/ActivityView$ActivityViewCallback;

    #@25
    move-result-object v0

    #@26
    iget-object v1, p0, Landroid/app/ActivityView$2$1;->this$1:Landroid/app/ActivityView$2;

    #@28
    iget-object v1, v1, Landroid/app/ActivityView$2;->this$0:Landroid/app/ActivityView;

    #@2a
    invoke-virtual {v0, v1}, Landroid/app/ActivityView$ActivityViewCallback;->onSurfaceDestroyed(Landroid/app/ActivityView;)V

    #@2d
    goto :goto_0
.end method
