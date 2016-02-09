.class public abstract Landroid/widget/Filter;
.super Ljava/lang/Object;
.source "Filter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Filter$FilterResults;,
        Landroid/widget/Filter$FilterListener;,
        Landroid/widget/Filter$RequestHandler;,
        Landroid/widget/Filter$ResultsHandler;,
        Landroid/widget/Filter$RequestArguments;,
        Landroid/widget/Filter$Delayer;
    }
.end annotation


# static fields
.field private static final FILTER_TOKEN:I = -0x2f2f0ff3

.field private static final FINISH_TOKEN:I = -0x21524111

.field private static final LOG_TAG:Ljava/lang/String; = "Filter"

.field private static final THREAD_NAME:Ljava/lang/String; = "Filter"


# instance fields
.field private mDelayer:Landroid/widget/Filter$Delayer;

.field private final mLock:Ljava/lang/Object;

.field private mResultHandler:Landroid/os/Handler;

.field private mThreadHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Landroid/widget/Filter;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/Filter;->mLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/Filter;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/Filter;->mResultHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/widget/Filter;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/Filter;->mThreadHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/widget/Filter;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/widget/Filter;->mThreadHandler:Landroid/os/Handler;

    #@2
    return-object p1
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 51
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Landroid/widget/Filter;->mLock:Ljava/lang/Object;

    #@a
    .line 57
    new-instance v0, Landroid/widget/Filter$ResultsHandler;

    #@c
    const/4 v1, 0x0

    #@d
    invoke-direct {v0, p0, v1}, Landroid/widget/Filter$ResultsHandler;-><init>(Landroid/widget/Filter;Landroid/widget/Filter$ResultsHandler;)V

    #@10
    iput-object v0, p0, Landroid/widget/Filter;->mResultHandler:Landroid/os/Handler;

    #@12
    .line 56
    return-void
.end method


# virtual methods
.method public convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "resultValue"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 173
    if-nez p1, :cond_0

    #@2
    const-string/jumbo v0, ""

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    goto :goto_0
.end method

.method public final filter(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 84
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    #@4
    .line 83
    return-void
.end method

.method public final filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V
    .locals 9
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/widget/Filter$FilterListener;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 102
    iget-object v6, p0, Landroid/widget/Filter;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v6

    #@4
    .line 103
    :try_start_0
    iget-object v7, p0, Landroid/widget/Filter;->mThreadHandler:Landroid/os/Handler;

    #@6
    if-nez v7, :cond_0

    #@8
    .line 104
    new-instance v4, Landroid/os/HandlerThread;

    #@a
    .line 105
    const-string/jumbo v7, "Filter"

    #@d
    const/16 v8, 0xa

    #@f
    .line 104
    invoke-direct {v4, v7, v8}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    #@12
    .line 106
    .local v4, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    #@15
    .line 107
    new-instance v7, Landroid/widget/Filter$RequestHandler;

    #@17
    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@1a
    move-result-object v8

    #@1b
    invoke-direct {v7, p0, v8}, Landroid/widget/Filter$RequestHandler;-><init>(Landroid/widget/Filter;Landroid/os/Looper;)V

    #@1e
    iput-object v7, p0, Landroid/widget/Filter;->mThreadHandler:Landroid/os/Handler;

    #@20
    .line 110
    .end local v4    # "thread":Landroid/os/HandlerThread;
    :cond_0
    iget-object v7, p0, Landroid/widget/Filter;->mDelayer:Landroid/widget/Filter$Delayer;

    #@22
    if-nez v7, :cond_2

    #@24
    const-wide/16 v2, 0x0

    #@26
    .line 112
    .local v2, "delay":J
    :goto_0
    iget-object v7, p0, Landroid/widget/Filter;->mThreadHandler:Landroid/os/Handler;

    #@28
    const v8, -0x2f2f0ff3

    #@2b
    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@2e
    move-result-object v1

    #@2f
    .line 114
    .local v1, "message":Landroid/os/Message;
    new-instance v0, Landroid/widget/Filter$RequestArguments;

    #@31
    const/4 v7, 0x0

    #@32
    invoke-direct {v0, v7}, Landroid/widget/Filter$RequestArguments;-><init>(Landroid/widget/Filter$RequestArguments;)V

    #@35
    .line 117
    .local v0, "args":Landroid/widget/Filter$RequestArguments;
    if-eqz p1, :cond_1

    #@37
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@3a
    move-result-object v5

    #@3b
    :cond_1
    iput-object v5, v0, Landroid/widget/Filter$RequestArguments;->constraint:Ljava/lang/CharSequence;

    #@3d
    .line 118
    iput-object p2, v0, Landroid/widget/Filter$RequestArguments;->listener:Landroid/widget/Filter$FilterListener;

    #@3f
    .line 119
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@41
    .line 121
    iget-object v5, p0, Landroid/widget/Filter;->mThreadHandler:Landroid/os/Handler;

    #@43
    const v7, -0x2f2f0ff3

    #@46
    invoke-virtual {v5, v7}, Landroid/os/Handler;->removeMessages(I)V

    #@49
    .line 122
    iget-object v5, p0, Landroid/widget/Filter;->mThreadHandler:Landroid/os/Handler;

    #@4b
    const v7, -0x21524111

    #@4e
    invoke-virtual {v5, v7}, Landroid/os/Handler;->removeMessages(I)V

    #@51
    .line 123
    iget-object v5, p0, Landroid/widget/Filter;->mThreadHandler:Landroid/os/Handler;

    #@53
    invoke-virtual {v5, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@56
    monitor-exit v6

    #@57
    .line 101
    return-void

    #@58
    .line 110
    .end local v0    # "args":Landroid/widget/Filter$RequestArguments;
    .end local v1    # "message":Landroid/os/Message;
    .end local v2    # "delay":J
    :cond_2
    :try_start_1
    iget-object v7, p0, Landroid/widget/Filter;->mDelayer:Landroid/widget/Filter$Delayer;

    #@5a
    invoke-interface {v7, p1}, Landroid/widget/Filter$Delayer;->getPostingDelay(Ljava/lang/CharSequence;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5d
    move-result-wide v2

    #@5e
    .restart local v2    # "delay":J
    goto :goto_0

    #@5f
    .line 102
    .end local v2    # "delay":J
    :catchall_0
    move-exception v5

    #@60
    monitor-exit v6

    #@61
    throw v5
.end method

.method protected abstract performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
.end method

.method protected abstract publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
.end method

.method public setDelayer(Landroid/widget/Filter$Delayer;)V
    .locals 2
    .param p1, "delayer"    # Landroid/widget/Filter$Delayer;

    #@0
    .prologue
    .line 69
    iget-object v0, p0, Landroid/widget/Filter;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 70
    :try_start_0
    iput-object p1, p0, Landroid/widget/Filter;->mDelayer:Landroid/widget/Filter$Delayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    .line 68
    return-void

    #@7
    .line 69
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method
