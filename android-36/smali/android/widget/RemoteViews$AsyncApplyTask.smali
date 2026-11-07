.class Landroid/widget/RemoteViews$AsyncApplyTask;
.super Landroid/os/AsyncTask;
.source "RemoteViews.java"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncApplyTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/widget/RemoteViews$ViewTree;",
        ">;",
        "Landroid/os/CancellationSignal$OnCancelListener;"
    }
.end annotation


# instance fields
.field private greylist-max-o mActions:[Landroid/widget/RemoteViews$Action;

.field final blacklist mApplyParams:Landroid/widget/RemoteViews$ActionApplyParams;

.field final blacklist mCancelSignal:Landroid/os/CancellationSignal;

.field final greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mError:Ljava/lang/Exception;

.field final greylist-max-o mListener:Landroid/widget/RemoteViews$OnViewAppliedListener;

.field final greylist-max-o mParent:Landroid/view/ViewGroup;

.field final greylist-max-o mRV:Landroid/widget/RemoteViews;

.field private greylist-max-o mResult:Landroid/view/View;

.field final blacklist mTopLevel:Z

.field private greylist-max-o mTree:Landroid/widget/RemoteViews$ViewTree;

.field final synthetic blacklist this$0:Landroid/widget/RemoteViews;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmError(Landroid/widget/RemoteViews$AsyncApplyTask;)Ljava/lang/Exception;
    .registers 1

    iget-object p0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mError:Ljava/lang/Exception;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmResult(Landroid/widget/RemoteViews$AsyncApplyTask;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mResult:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mstartTaskOnExecutor(Landroid/widget/RemoteViews$AsyncApplyTask;Ljava/util/concurrent/Executor;)Landroid/os/CancellationSignal;
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$AsyncApplyTask;->startTaskOnExecutor(Ljava/util/concurrent/Executor;)Landroid/os/CancellationSignal;

    move-result-object p0

    return-object p0
.end method

.method private constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;Landroid/content/Context;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$ActionApplyParams;Landroid/view/View;Z)V
    .registers 9
    .param p2, "rv"    # Landroid/widget/RemoteViews;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "listener"    # Landroid/widget/RemoteViews$OnViewAppliedListener;
    .param p6, "applyParams"    # Landroid/widget/RemoteViews$ActionApplyParams;
    .param p7, "result"    # Landroid/view/View;
    .param p8, "topLevel"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 8316
    iput-object p1, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->this$0:Landroid/widget/RemoteViews;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 8295
    new-instance p1, Landroid/os/CancellationSignal;

    invoke-direct {p1}, Landroid/os/CancellationSignal;-><init>()V

    iput-object p1, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mCancelSignal:Landroid/os/CancellationSignal;

    .line 8317
    iput-object p2, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mRV:Landroid/widget/RemoteViews;

    .line 8318
    iput-object p3, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mParent:Landroid/view/ViewGroup;

    .line 8319
    iput-object p4, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mContext:Landroid/content/Context;

    .line 8320
    iput-object p5, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mListener:Landroid/widget/RemoteViews$OnViewAppliedListener;

    .line 8321
    iput-boolean p8, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mTopLevel:Z

    .line 8322
    iput-object p6, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mApplyParams:Landroid/widget/RemoteViews$ActionApplyParams;

    .line 8323
    iput-object p7, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mResult:Landroid/view/View;

    .line 8324
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;Landroid/content/Context;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$ActionApplyParams;Landroid/view/View;ZLandroid/widget/RemoteViews-IA;)V
    .registers 10

    invoke-direct/range {p0 .. p8}, Landroid/widget/RemoteViews$AsyncApplyTask;-><init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;Landroid/content/Context;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$ActionApplyParams;Landroid/view/View;Z)V

    return-void
.end method

.method private blacklist startTaskOnExecutor(Ljava/util/concurrent/Executor;)Landroid/os/CancellationSignal;
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 8416
    iget-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mCancelSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0, p0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 8417
    if-nez p1, :cond_a

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    goto :goto_b

    :cond_a
    move-object v0, p1

    :goto_b
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews$AsyncApplyTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 8418
    iget-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mCancelSignal:Landroid/os/CancellationSignal;

    return-object v0
.end method


# virtual methods
.method protected varargs blacklist doInBackground([Ljava/lang/Void;)Landroid/widget/RemoteViews$ViewTree;
    .registers 10
    .param p1, "params"    # [Ljava/lang/Void;

    .line 8330
    const/4 v1, 0x0

    :try_start_1
    iget-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mResult:Landroid/view/View;

    if-nez v0, :cond_18

    .line 8331
    iget-object v2, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->this$0:Landroid/widget/RemoteViews;

    iget-object v3, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mRV:Landroid/widget/RemoteViews;

    iget-object v5, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mParent:Landroid/view/ViewGroup;

    iget-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mApplyParams:Landroid/widget/RemoteViews$ActionApplyParams;

    iget-object v7, v0, Landroid/widget/RemoteViews$ActionApplyParams;->colorResources:Landroid/widget/RemoteViews$ColorResources;

    const/4 v6, 0x0

    invoke-static/range {v2 .. v7}, Landroid/widget/RemoteViews;->-$$Nest$minflateView(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;ILandroid/widget/RemoteViews$ColorResources;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mResult:Landroid/view/View;

    .line 8334
    :cond_18
    new-instance v0, Landroid/widget/RemoteViews$ViewTree;

    iget-object v2, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mResult:Landroid/view/View;

    invoke-direct {v0, v2, v1}, Landroid/widget/RemoteViews$ViewTree;-><init>(Landroid/view/View;Landroid/widget/RemoteViews-IA;)V

    iput-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mTree:Landroid/widget/RemoteViews$ViewTree;

    .line 8336
    iget-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mRV:Landroid/widget/RemoteViews;

    invoke-static {v0}, Landroid/widget/RemoteViews;->-$$Nest$fgetmActions(Landroid/widget/RemoteViews;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_79

    .line 8337
    iget-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mRV:Landroid/widget/RemoteViews;

    invoke-static {v0}, Landroid/widget/RemoteViews;->-$$Nest$fgetmActions(Landroid/widget/RemoteViews;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v0

    .line 8338
    .local v2, "count":I
    new-array v0, v2, [Landroid/widget/RemoteViews$Action;

    iput-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mActions:[Landroid/widget/RemoteViews$Action;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_38} :catch_7e

    .line 8340
    :try_start_38
    iget-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->this$0:Landroid/widget/RemoteViews;

    invoke-static {v0}, Landroid/widget/RemoteViews;->-$$Nest$mhasDrawInstructions(Landroid/widget/RemoteViews;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 8341
    const-string v0, "RemoteViews#initActionAsyncWithDrawInstructions"

    goto :goto_45

    .line 8342
    :cond_43
    const-string v0, "RemoteViews#initActionAsync"

    .line 8340
    :goto_45
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 8343
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_49
    if-ge v0, v2, :cond_6e

    invoke-virtual {p0}, Landroid/widget/RemoteViews$AsyncApplyTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_6e

    .line 8345
    iget-object v3, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mActions:[Landroid/widget/RemoteViews$Action;

    iget-object v4, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mRV:Landroid/widget/RemoteViews;

    invoke-static {v4}, Landroid/widget/RemoteViews;->-$$Nest$fgetmActions(Landroid/widget/RemoteViews;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/RemoteViews$Action;

    iget-object v5, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mTree:Landroid/widget/RemoteViews$ViewTree;

    iget-object v6, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mParent:Landroid/view/ViewGroup;

    iget-object v7, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mApplyParams:Landroid/widget/RemoteViews$ActionApplyParams;

    .line 8346
    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/RemoteViews$Action;->initActionAsync(Landroid/widget/RemoteViews$ViewTree;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)Landroid/widget/RemoteViews$Action;

    move-result-object v4

    aput-object v4, v3, v0
    :try_end_6b
    .catchall {:try_start_38 .. :try_end_6b} :catchall_73

    .line 8343
    add-int/lit8 v0, v0, 0x1

    goto :goto_49

    .line 8349
    .end local v0    # "i":I
    :cond_6e
    :try_start_6e
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 8350
    nop

    .line 8351
    .end local v2    # "count":I
    goto :goto_7b

    .line 8349
    .restart local v2    # "count":I
    :catchall_73
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 8350
    nop

    .end local p0    # "this":Landroid/widget/RemoteViews$AsyncApplyTask;
    .end local p1    # "params":[Ljava/lang/Void;
    throw v0

    .line 8352
    .end local v2    # "count":I
    .restart local p0    # "this":Landroid/widget/RemoteViews$AsyncApplyTask;
    .restart local p1    # "params":[Ljava/lang/Void;
    :cond_79
    iput-object v1, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mActions:[Landroid/widget/RemoteViews$Action;

    .line 8354
    :goto_7b
    iget-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mTree:Landroid/widget/RemoteViews$ViewTree;
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_7d} :catch_7e

    return-object v0

    .line 8355
    :catch_7e
    move-exception v0

    .line 8356
    .local v0, "e":Ljava/lang/Exception;
    iput-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mError:Ljava/lang/Exception;

    .line 8357
    return-object v1
.end method

.method protected bridge synthetic whitelist doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 8293
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/widget/RemoteViews$AsyncApplyTask;->doInBackground([Ljava/lang/Void;)Landroid/widget/RemoteViews$ViewTree;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onCancel()V
    .registers 2

    .line 8412
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/RemoteViews$AsyncApplyTask;->cancel(Z)Z

    .line 8413
    return-void
.end method

.method protected greylist-max-o onPostExecute(Landroid/widget/RemoteViews$ViewTree;)V
    .registers 9
    .param p1, "viewTree"    # Landroid/widget/RemoteViews$ViewTree;

    .line 8363
    iget-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mCancelSignal:Landroid/os/CancellationSignal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 8364
    iget-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mError:Ljava/lang/Exception;

    if-nez v0, :cond_70

    .line 8365
    iget-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mListener:Landroid/widget/RemoteViews$OnViewAppliedListener;

    if-eqz v0, :cond_17

    .line 8366
    iget-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mListener:Landroid/widget/RemoteViews$OnViewAppliedListener;

    invoke-static {p1}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmRoot(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/widget/RemoteViews$OnViewAppliedListener;->onViewInflated(Landroid/view/View;)V

    .line 8370
    :cond_17
    :try_start_17
    iget-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mActions:[Landroid/widget/RemoteViews$Action;

    if-eqz v0, :cond_59

    .line 8371
    iget-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mApplyParams:Landroid/widget/RemoteViews$ActionApplyParams;

    invoke-virtual {v0}, Landroid/widget/RemoteViews$ActionApplyParams;->clone()Landroid/widget/RemoteViews$ActionApplyParams;

    move-result-object v0

    .line 8372
    .local v0, "applyParams":Landroid/widget/RemoteViews$ActionApplyParams;
    iget-object v1, v0, Landroid/widget/RemoteViews$ActionApplyParams;->handler:Landroid/widget/RemoteViews$InteractionHandler;

    if-nez v1, :cond_2b

    .line 8373
    invoke-static {}, Landroid/widget/RemoteViews;->-$$Nest$sfgetDEFAULT_INTERACTION_HANDLER()Landroid/widget/RemoteViews$InteractionHandler;

    move-result-object v1

    iput-object v1, v0, Landroid/widget/RemoteViews$ActionApplyParams;->handler:Landroid/widget/RemoteViews$InteractionHandler;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_2b} :catch_6d

    .line 8376
    :cond_2b
    :try_start_2b
    iget-object v1, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->this$0:Landroid/widget/RemoteViews;

    invoke-static {v1}, Landroid/widget/RemoteViews;->-$$Nest$mhasDrawInstructions(Landroid/widget/RemoteViews;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 8377
    const-string v1, "RemoteViews#applyActionsAsyncWithDrawInstructions"

    goto :goto_38

    .line 8378
    :cond_36
    const-string v1, "RemoteViews#applyActionsAsync"

    .line 8376
    :goto_38
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 8379
    iget-object v1, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mActions:[Landroid/widget/RemoteViews$Action;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_3f
    if-ge v3, v2, :cond_4f

    aget-object v4, v1, v3

    .line 8380
    .local v4, "a":Landroid/widget/RemoteViews$Action;
    invoke-static {p1}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmRoot(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5, v6, v0}, Landroid/widget/RemoteViews$Action;->apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
    :try_end_4c
    .catchall {:try_start_2b .. :try_end_4c} :catchall_53

    .line 8379
    .end local v4    # "a":Landroid/widget/RemoteViews$Action;
    add-int/lit8 v3, v3, 0x1

    goto :goto_3f

    .line 8383
    :cond_4f
    :try_start_4f
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 8384
    goto :goto_59

    .line 8383
    :catchall_53
    move-exception v1

    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 8384
    nop

    .end local p0    # "this":Landroid/widget/RemoteViews$AsyncApplyTask;
    .end local p1    # "viewTree":Landroid/widget/RemoteViews$ViewTree;
    throw v1

    .line 8387
    .end local v0    # "applyParams":Landroid/widget/RemoteViews$ActionApplyParams;
    .restart local p0    # "this":Landroid/widget/RemoteViews$AsyncApplyTask;
    .restart local p1    # "viewTree":Landroid/widget/RemoteViews$ViewTree;
    :cond_59
    :goto_59
    iget-boolean v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mTopLevel:Z

    if-eqz v0, :cond_6c

    iget-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mResult:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_6c

    .line 8388
    iget-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->this$0:Landroid/widget/RemoteViews;

    iget-object v1, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mResult:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Landroid/widget/RemoteViews;->-$$Nest$mfinalizeViewRecycling(Landroid/widget/RemoteViews;Landroid/view/ViewGroup;)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_6c} :catch_6d

    .line 8392
    :cond_6c
    goto :goto_70

    .line 8390
    :catch_6d
    move-exception v0

    .line 8391
    .local v0, "e":Ljava/lang/Exception;
    iput-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mError:Ljava/lang/Exception;

    .line 8395
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_70
    :goto_70
    iget-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mListener:Landroid/widget/RemoteViews$OnViewAppliedListener;

    if-eqz v0, :cond_8a

    .line 8396
    iget-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mError:Ljava/lang/Exception;

    if-eqz v0, :cond_80

    .line 8397
    iget-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mListener:Landroid/widget/RemoteViews$OnViewAppliedListener;

    iget-object v1, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mError:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Landroid/widget/RemoteViews$OnViewAppliedListener;->onError(Ljava/lang/Exception;)V

    goto :goto_a1

    .line 8399
    :cond_80
    iget-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mListener:Landroid/widget/RemoteViews$OnViewAppliedListener;

    invoke-static {p1}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmRoot(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/widget/RemoteViews$OnViewAppliedListener;->onViewApplied(Landroid/view/View;)V

    goto :goto_a1

    .line 8401
    :cond_8a
    iget-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mError:Ljava/lang/Exception;

    if-eqz v0, :cond_a1

    .line 8402
    iget-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mError:Ljava/lang/Exception;

    instance-of v0, v0, Landroid/widget/RemoteViews$ActionException;

    if-eqz v0, :cond_99

    .line 8403
    iget-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mError:Ljava/lang/Exception;

    check-cast v0, Landroid/widget/RemoteViews$ActionException;

    throw v0

    .line 8405
    :cond_99
    new-instance v0, Landroid/widget/RemoteViews$ActionException;

    iget-object v1, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mError:Ljava/lang/Exception;

    invoke-direct {v0, v1}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 8408
    :cond_a1
    :goto_a1
    return-void
.end method

.method protected bridge synthetic whitelist onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 8293
    check-cast p1, Landroid/widget/RemoteViews$ViewTree;

    invoke-virtual {p0, p1}, Landroid/widget/RemoteViews$AsyncApplyTask;->onPostExecute(Landroid/widget/RemoteViews$ViewTree;)V

    return-void
.end method
