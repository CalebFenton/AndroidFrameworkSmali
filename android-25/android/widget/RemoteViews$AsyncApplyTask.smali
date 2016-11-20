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
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/widget/RemoteViews$ViewTree;",
        ">;",
        "Landroid/os/CancellationSignal$OnCancelListener;"
    }
.end annotation


# instance fields
.field private mActions:[Landroid/widget/RemoteViews$Action;

.field final mContext:Landroid/content/Context;

.field private mError:Ljava/lang/Exception;

.field final mHandler:Landroid/widget/RemoteViews$OnClickHandler;

.field final mListener:Landroid/widget/RemoteViews$OnViewAppliedListener;

.field final mParent:Landroid/view/ViewGroup;

.field final mRV:Landroid/widget/RemoteViews;

.field private mResult:Landroid/view/View;

.field private mTree:Landroid/widget/RemoteViews$ViewTree;

.field final synthetic this$0:Landroid/widget/RemoteViews;


# direct methods
.method static synthetic -get0(Landroid/widget/RemoteViews$AsyncApplyTask;)Landroid/view/View;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mResult:Landroid/view/View;

    #@2
    return-object v0
.end method

.method private constructor <init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;Landroid/content/Context;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$OnClickHandler;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/RemoteViews;
    .param p2, "rv"    # Landroid/widget/RemoteViews;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "listener"    # Landroid/widget/RemoteViews$OnViewAppliedListener;
    .param p6, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;
    .param p7, "result"    # Landroid/view/View;

    #@0
    .prologue
    .line 3295
    iput-object p1, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->this$0:Landroid/widget/RemoteViews;

    #@2
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    #@5
    .line 3298
    iput-object p2, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mRV:Landroid/widget/RemoteViews;

    #@7
    .line 3299
    iput-object p3, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mParent:Landroid/view/ViewGroup;

    #@9
    .line 3300
    iput-object p4, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mContext:Landroid/content/Context;

    #@b
    .line 3301
    iput-object p5, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mListener:Landroid/widget/RemoteViews$OnViewAppliedListener;

    #@d
    .line 3302
    iput-object p6, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mHandler:Landroid/widget/RemoteViews$OnClickHandler;

    #@f
    .line 3304
    iput-object p7, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mResult:Landroid/view/View;

    #@11
    .line 3305
    invoke-static {p4, p6}, Landroid/widget/RemoteViews;->-wrap7(Landroid/content/Context;Landroid/widget/RemoteViews$OnClickHandler;)V

    #@14
    .line 3297
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;Landroid/content/Context;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$OnClickHandler;Landroid/view/View;Landroid/widget/RemoteViews$AsyncApplyTask;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/RemoteViews;
    .param p2, "rv"    # Landroid/widget/RemoteViews;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "listener"    # Landroid/widget/RemoteViews$OnViewAppliedListener;
    .param p6, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;
    .param p7, "result"    # Landroid/view/View;

    #@0
    .prologue
    invoke-direct/range {p0 .. p7}, Landroid/widget/RemoteViews$AsyncApplyTask;-><init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;Landroid/content/Context;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$OnClickHandler;Landroid/view/View;)V

    #@3
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/widget/RemoteViews$ViewTree;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Void;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 3311
    :try_start_0
    iget-object v3, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mResult:Landroid/view/View;

    #@3
    if-nez v3, :cond_0

    #@5
    .line 3312
    iget-object v3, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->this$0:Landroid/widget/RemoteViews;

    #@7
    iget-object v4, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mContext:Landroid/content/Context;

    #@9
    iget-object v5, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mRV:Landroid/widget/RemoteViews;

    #@b
    iget-object v6, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mParent:Landroid/view/ViewGroup;

    #@d
    invoke-static {v3, v4, v5, v6}, Landroid/widget/RemoteViews;->-wrap1(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;)Landroid/view/View;

    #@10
    move-result-object v3

    #@11
    iput-object v3, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mResult:Landroid/view/View;

    #@13
    .line 3315
    :cond_0
    new-instance v3, Landroid/widget/RemoteViews$ViewTree;

    #@15
    iget-object v4, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mResult:Landroid/view/View;

    #@17
    const/4 v5, 0x0

    #@18
    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews$ViewTree;-><init>(Landroid/view/View;Landroid/widget/RemoteViews$ViewTree;)V

    #@1b
    iput-object v3, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mTree:Landroid/widget/RemoteViews$ViewTree;

    #@1d
    .line 3316
    iget-object v3, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mRV:Landroid/widget/RemoteViews;

    #@1f
    invoke-static {v3}, Landroid/widget/RemoteViews;->-get2(Landroid/widget/RemoteViews;)Ljava/util/ArrayList;

    #@22
    move-result-object v3

    #@23
    if-eqz v3, :cond_3

    #@25
    .line 3317
    iget-object v3, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mRV:Landroid/widget/RemoteViews;

    #@27
    invoke-static {v3}, Landroid/widget/RemoteViews;->-get2(Landroid/widget/RemoteViews;)Ljava/util/ArrayList;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@2e
    move-result v0

    #@2f
    .line 3318
    .local v0, "count":I
    new-array v3, v0, [Landroid/widget/RemoteViews$Action;

    #@31
    iput-object v3, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mActions:[Landroid/widget/RemoteViews$Action;

    #@33
    .line 3319
    const/4 v2, 0x0

    #@34
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    #@36
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    #@39
    move-result v3

    #@3a
    if-eqz v3, :cond_2

    #@3c
    .line 3326
    .end local v0    # "count":I
    .end local v2    # "i":I
    :cond_1
    :goto_1
    iget-object v3, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mTree:Landroid/widget/RemoteViews$ViewTree;

    #@3e
    return-object v3

    #@3f
    .line 3321
    .restart local v0    # "count":I
    .restart local v2    # "i":I
    :cond_2
    iget-object v4, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mActions:[Landroid/widget/RemoteViews$Action;

    #@41
    iget-object v3, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mRV:Landroid/widget/RemoteViews;

    #@43
    invoke-static {v3}, Landroid/widget/RemoteViews;->-get2(Landroid/widget/RemoteViews;)Ljava/util/ArrayList;

    #@46
    move-result-object v3

    #@47
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4a
    move-result-object v3

    #@4b
    check-cast v3, Landroid/widget/RemoteViews$Action;

    #@4d
    iget-object v5, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mTree:Landroid/widget/RemoteViews$ViewTree;

    #@4f
    iget-object v6, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mParent:Landroid/view/ViewGroup;

    #@51
    iget-object v7, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mHandler:Landroid/widget/RemoteViews$OnClickHandler;

    #@53
    invoke-virtual {v3, v5, v6, v7}, Landroid/widget/RemoteViews$Action;->initActionAsync(Landroid/widget/RemoteViews$ViewTree;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/widget/RemoteViews$Action;

    #@56
    move-result-object v3

    #@57
    aput-object v3, v4, v2

    #@59
    .line 3319
    add-int/lit8 v2, v2, 0x1

    #@5b
    goto :goto_0

    #@5c
    .line 3324
    .end local v0    # "count":I
    .end local v2    # "i":I
    :cond_3
    const/4 v3, 0x0

    #@5d
    iput-object v3, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mActions:[Landroid/widget/RemoteViews$Action;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@5f
    goto :goto_1

    #@60
    .line 3327
    :catch_0
    move-exception v1

    #@61
    .line 3328
    .local v1, "e":Ljava/lang/Exception;
    iput-object v1, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mError:Ljava/lang/Exception;

    #@63
    .line 3329
    return-object v8
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 3309
    check-cast p1, [Ljava/lang/Void;

    #@2
    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/widget/RemoteViews$AsyncApplyTask;->doInBackground([Ljava/lang/Void;)Landroid/widget/RemoteViews$ViewTree;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public onCancel()V
    .locals 1

    #@0
    .prologue
    .line 3366
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    #@4
    .line 3365
    return-void
.end method

.method protected onPostExecute(Landroid/widget/RemoteViews$ViewTree;)V
    .locals 8
    .param p1, "viewTree"    # Landroid/widget/RemoteViews$ViewTree;

    #@0
    .prologue
    .line 3335
    iget-object v3, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mError:Ljava/lang/Exception;

    #@2
    if-nez v3, :cond_1

    #@4
    .line 3337
    :try_start_0
    iget-object v3, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mActions:[Landroid/widget/RemoteViews$Action;

    #@6
    if-eqz v3, :cond_1

    #@8
    .line 3338
    iget-object v3, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mHandler:Landroid/widget/RemoteViews$OnClickHandler;

    #@a
    if-nez v3, :cond_0

    #@c
    .line 3339
    invoke-static {}, Landroid/widget/RemoteViews;->-get1()Landroid/widget/RemoteViews$OnClickHandler;

    #@f
    move-result-object v2

    #@10
    .line 3340
    .local v2, "handler":Landroid/widget/RemoteViews$OnClickHandler;
    :goto_0
    iget-object v4, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mActions:[Landroid/widget/RemoteViews$Action;

    #@12
    const/4 v3, 0x0

    #@13
    array-length v5, v4

    #@14
    :goto_1
    if-ge v3, v5, :cond_1

    #@16
    aget-object v0, v4, v3

    #@18
    .line 3341
    .local v0, "a":Landroid/widget/RemoteViews$Action;
    invoke-static {p1}, Landroid/widget/RemoteViews$ViewTree;->-get0(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;

    #@1b
    move-result-object v6

    #@1c
    iget-object v7, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mParent:Landroid/view/ViewGroup;

    #@1e
    invoke-virtual {v0, v6, v7, v2}, Landroid/widget/RemoteViews$Action;->apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V

    #@21
    .line 3340
    add-int/lit8 v3, v3, 0x1

    #@23
    goto :goto_1

    #@24
    .line 3339
    .end local v0    # "a":Landroid/widget/RemoteViews$Action;
    .end local v2    # "handler":Landroid/widget/RemoteViews$OnClickHandler;
    :cond_0
    iget-object v2, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mHandler:Landroid/widget/RemoteViews$OnClickHandler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    .restart local v2    # "handler":Landroid/widget/RemoteViews$OnClickHandler;
    goto :goto_0

    #@27
    .line 3344
    .end local v2    # "handler":Landroid/widget/RemoteViews$OnClickHandler;
    :catch_0
    move-exception v1

    #@28
    .line 3345
    .local v1, "e":Ljava/lang/Exception;
    iput-object v1, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mError:Ljava/lang/Exception;

    #@2a
    .line 3349
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v3, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mListener:Landroid/widget/RemoteViews$OnViewAppliedListener;

    #@2c
    if-eqz v3, :cond_4

    #@2e
    .line 3350
    iget-object v3, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mError:Ljava/lang/Exception;

    #@30
    if-eqz v3, :cond_3

    #@32
    .line 3351
    iget-object v3, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mListener:Landroid/widget/RemoteViews$OnViewAppliedListener;

    #@34
    iget-object v4, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mError:Ljava/lang/Exception;

    #@36
    invoke-interface {v3, v4}, Landroid/widget/RemoteViews$OnViewAppliedListener;->onError(Ljava/lang/Exception;)V

    #@39
    .line 3334
    :cond_2
    :goto_2
    return-void

    #@3a
    .line 3353
    :cond_3
    iget-object v3, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mListener:Landroid/widget/RemoteViews$OnViewAppliedListener;

    #@3c
    invoke-static {p1}, Landroid/widget/RemoteViews$ViewTree;->-get0(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;

    #@3f
    move-result-object v4

    #@40
    invoke-interface {v3, v4}, Landroid/widget/RemoteViews$OnViewAppliedListener;->onViewApplied(Landroid/view/View;)V

    #@43
    goto :goto_2

    #@44
    .line 3355
    :cond_4
    iget-object v3, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mError:Ljava/lang/Exception;

    #@46
    if-eqz v3, :cond_2

    #@48
    .line 3356
    iget-object v3, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mError:Ljava/lang/Exception;

    #@4a
    instance-of v3, v3, Landroid/widget/RemoteViews$ActionException;

    #@4c
    if-eqz v3, :cond_5

    #@4e
    .line 3357
    iget-object v3, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mError:Ljava/lang/Exception;

    #@50
    check-cast v3, Landroid/widget/RemoteViews$ActionException;

    #@52
    throw v3

    #@53
    .line 3359
    :cond_5
    new-instance v3, Landroid/widget/RemoteViews$ActionException;

    #@55
    iget-object v4, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mError:Ljava/lang/Exception;

    #@57
    invoke-direct {v3, v4}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/Exception;)V

    #@5a
    throw v3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "viewTree"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 3334
    check-cast p1, Landroid/widget/RemoteViews$ViewTree;

    #@2
    .end local p1    # "viewTree":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/widget/RemoteViews$AsyncApplyTask;->onPostExecute(Landroid/widget/RemoteViews$ViewTree;)V

    #@5
    return-void
.end method
