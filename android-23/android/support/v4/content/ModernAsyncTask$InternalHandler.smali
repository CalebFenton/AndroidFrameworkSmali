.class Landroid/support/v4/content/ModernAsyncTask$InternalHandler;
.super Landroid/os/Handler;
.source "ModernAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/content/ModernAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalHandler"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 473
    .local p0, "this":Landroid/support/v4/content/ModernAsyncTask$InternalHandler;, "Landroid/support/v4/content/ModernAsyncTask<TParams;TProgress;TResult;>.InternalHandler;"
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@7
    .line 472
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 479
    .local p0, "this":Landroid/support/v4/content/ModernAsyncTask$InternalHandler;, "Landroid/support/v4/content/ModernAsyncTask<TParams;TProgress;TResult;>.InternalHandler;"
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2
    check-cast v0, Landroid/support/v4/content/ModernAsyncTask$AsyncTaskResult;

    #@4
    .line 480
    .local v0, "result":Landroid/support/v4/content/ModernAsyncTask$AsyncTaskResult;
    iget v1, p1, Landroid/os/Message;->what:I

    #@6
    packed-switch v1, :pswitch_data_0

    #@9
    .line 478
    :goto_0
    return-void

    #@a
    .line 483
    :pswitch_0
    iget-object v1, v0, Landroid/support/v4/content/ModernAsyncTask$AsyncTaskResult;->mTask:Landroid/support/v4/content/ModernAsyncTask;

    #@c
    iget-object v2, v0, Landroid/support/v4/content/ModernAsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    #@e
    const/4 v3, 0x0

    #@f
    aget-object v2, v2, v3

    #@11
    invoke-static {v1, v2}, Landroid/support/v4/content/ModernAsyncTask;->-wrap1(Landroid/support/v4/content/ModernAsyncTask;Ljava/lang/Object;)V

    #@14
    goto :goto_0

    #@15
    .line 486
    :pswitch_1
    iget-object v1, v0, Landroid/support/v4/content/ModernAsyncTask$AsyncTaskResult;->mTask:Landroid/support/v4/content/ModernAsyncTask;

    #@17
    iget-object v2, v0, Landroid/support/v4/content/ModernAsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    #@19
    invoke-virtual {v1, v2}, Landroid/support/v4/content/ModernAsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    #@1c
    goto :goto_0

    #@1d
    .line 480
    nop

    #@1e
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
