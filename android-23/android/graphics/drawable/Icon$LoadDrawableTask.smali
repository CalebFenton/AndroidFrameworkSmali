.class Landroid/graphics/drawable/Icon$LoadDrawableTask;
.super Ljava/lang/Object;
.source "Icon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/Icon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadDrawableTask"
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;

.field final mMessage:Landroid/os/Message;

.field final synthetic this$0:Landroid/graphics/drawable/Icon;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Icon;Landroid/content/Context;Landroid/os/Handler;Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;)V
    .locals 1
    .param p1, "this$0"    # Landroid/graphics/drawable/Icon;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "listener"    # Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;

    #@0
    .prologue
    .line 751
    iput-object p1, p0, Landroid/graphics/drawable/Icon$LoadDrawableTask;->this$0:Landroid/graphics/drawable/Icon;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 753
    iput-object p2, p0, Landroid/graphics/drawable/Icon$LoadDrawableTask;->mContext:Landroid/content/Context;

    #@7
    .line 754
    new-instance v0, Landroid/graphics/drawable/Icon$LoadDrawableTask$1;

    #@9
    invoke-direct {v0, p0, p4}, Landroid/graphics/drawable/Icon$LoadDrawableTask$1;-><init>(Landroid/graphics/drawable/Icon$LoadDrawableTask;Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;)V

    #@c
    invoke-static {p3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Landroid/graphics/drawable/Icon$LoadDrawableTask;->mMessage:Landroid/os/Message;

    #@12
    .line 752
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Icon;Landroid/content/Context;Landroid/os/Message;)V
    .locals 0
    .param p1, "this$0"    # Landroid/graphics/drawable/Icon;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 762
    iput-object p1, p0, Landroid/graphics/drawable/Icon$LoadDrawableTask;->this$0:Landroid/graphics/drawable/Icon;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 763
    iput-object p2, p0, Landroid/graphics/drawable/Icon$LoadDrawableTask;->mContext:Landroid/content/Context;

    #@7
    .line 764
    iput-object p3, p0, Landroid/graphics/drawable/Icon$LoadDrawableTask;->mMessage:Landroid/os/Message;

    #@9
    .line 762
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    #@0
    .prologue
    .line 769
    iget-object v0, p0, Landroid/graphics/drawable/Icon$LoadDrawableTask;->mMessage:Landroid/os/Message;

    #@2
    iget-object v1, p0, Landroid/graphics/drawable/Icon$LoadDrawableTask;->this$0:Landroid/graphics/drawable/Icon;

    #@4
    iget-object v2, p0, Landroid/graphics/drawable/Icon$LoadDrawableTask;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    #@9
    move-result-object v1

    #@a
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@c
    .line 770
    iget-object v0, p0, Landroid/graphics/drawable/Icon$LoadDrawableTask;->mMessage:Landroid/os/Message;

    #@e
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@11
    .line 768
    return-void
.end method

.method public runAsync()V
    .locals 1

    #@0
    .prologue
    .line 774
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    #@2
    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    #@5
    .line 773
    return-void
.end method
