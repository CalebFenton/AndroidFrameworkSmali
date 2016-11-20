.class Landroid/animation/AnimationHandler$2;
.super Ljava/lang/Object;
.source "AnimationHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/animation/AnimationHandler;->doAnimationFrame(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/animation/AnimationHandler;

.field final synthetic val$callback:Landroid/animation/AnimationHandler$AnimationFrameCallback;


# direct methods
.method constructor <init>(Landroid/animation/AnimationHandler;Landroid/animation/AnimationHandler$AnimationFrameCallback;)V
    .locals 0
    .param p1, "this$0"    # Landroid/animation/AnimationHandler;
    .param p2, "val$callback"    # Landroid/animation/AnimationHandler$AnimationFrameCallback;

    #@0
    .prologue
    .line 148
    iput-object p1, p0, Landroid/animation/AnimationHandler$2;->this$0:Landroid/animation/AnimationHandler;

    #@2
    iput-object p2, p0, Landroid/animation/AnimationHandler$2;->val$callback:Landroid/animation/AnimationHandler$AnimationFrameCallback;

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
    .line 151
    iget-object v0, p0, Landroid/animation/AnimationHandler$2;->this$0:Landroid/animation/AnimationHandler;

    #@2
    iget-object v1, p0, Landroid/animation/AnimationHandler$2;->val$callback:Landroid/animation/AnimationHandler$AnimationFrameCallback;

    #@4
    iget-object v2, p0, Landroid/animation/AnimationHandler$2;->this$0:Landroid/animation/AnimationHandler;

    #@6
    invoke-static {v2}, Landroid/animation/AnimationHandler;->-wrap0(Landroid/animation/AnimationHandler;)Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;

    #@9
    move-result-object v2

    #@a
    invoke-interface {v2}, Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;->getFrameTime()J

    #@d
    move-result-wide v2

    #@e
    invoke-static {v0, v1, v2, v3}, Landroid/animation/AnimationHandler;->-wrap1(Landroid/animation/AnimationHandler;Landroid/animation/AnimationHandler$AnimationFrameCallback;J)V

    #@11
    .line 150
    return-void
.end method
