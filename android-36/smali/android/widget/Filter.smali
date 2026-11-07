.class public abstract Landroid/widget/Filter;
.super Ljava/lang/Object;
.source "Filter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Filter$ResultsHandler;,
        Landroid/widget/Filter$Delayer;,
        Landroid/widget/Filter$FilterListener;,
        Landroid/widget/Filter$RequestHandler;,
        Landroid/widget/Filter$RequestArguments;,
        Landroid/widget/Filter$FilterResults;
    }
.end annotation


# static fields
.field private static final greylist-max-o FILTER_TOKEN:I = -0x2f2f0ff3

.field private static final greylist-max-o FINISH_TOKEN:I = -0x21524111

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "Filter"

.field private static final greylist-max-o THREAD_NAME:Ljava/lang/String; = "Filter"


# instance fields
.field private greylist-max-o mDelayer:Landroid/widget/Filter$Delayer;

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private greylist-max-o mResultHandler:Landroid/os/Handler;

.field private greylist-max-o mThreadHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/widget/Filter;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/widget/Filter;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmResultHandler(Landroid/widget/Filter;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/widget/Filter;->mResultHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmThreadHandler(Landroid/widget/Filter;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/widget/Filter;->mThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmThreadHandler(Landroid/widget/Filter;Landroid/os/Handler;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/Filter;->mThreadHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/widget/Filter;->mLock:Ljava/lang/Object;

    .line 58
    new-instance v0, Landroid/widget/Filter$ResultsHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/Filter$ResultsHandler;-><init>(Landroid/widget/Filter;Landroid/widget/Filter-IA;)V

    iput-object v0, p0, Landroid/widget/Filter;->mResultHandler:Landroid/os/Handler;

    .line 59
    return-void
.end method


# virtual methods
.method public whitelist convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "resultValue"    # Ljava/lang/Object;

    .line 175
    if-nez p1, :cond_5

    const-string v0, ""

    goto :goto_9

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_9
    return-object v0
.end method

.method public final whitelist filter(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .line 86
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 87
    return-void
.end method

.method public final whitelist filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V
    .registers 10
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/widget/Filter$FilterListener;

    .line 104
    iget-object v0, p0, Landroid/widget/Filter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 105
    :try_start_3
    iget-object v1, p0, Landroid/widget/Filter;->mThreadHandler:Landroid/os/Handler;

    if-nez v1, :cond_1e

    .line 106
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "Filter"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 108
    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 109
    new-instance v2, Landroid/widget/Filter$RequestHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Landroid/widget/Filter$RequestHandler;-><init>(Landroid/widget/Filter;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/widget/Filter;->mThreadHandler:Landroid/os/Handler;

    .line 112
    .end local v1    # "thread":Landroid/os/HandlerThread;
    :cond_1e
    iget-object v1, p0, Landroid/widget/Filter;->mDelayer:Landroid/widget/Filter$Delayer;

    if-nez v1, :cond_25

    const-wide/16 v1, 0x0

    goto :goto_2b

    :cond_25
    iget-object v1, p0, Landroid/widget/Filter;->mDelayer:Landroid/widget/Filter$Delayer;

    invoke-interface {v1, p1}, Landroid/widget/Filter$Delayer;->getPostingDelay(Ljava/lang/CharSequence;)J

    move-result-wide v1

    .line 114
    .local v1, "delay":J
    :goto_2b
    iget-object v3, p0, Landroid/widget/Filter;->mThreadHandler:Landroid/os/Handler;

    const v4, -0x2f2f0ff3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 116
    .local v3, "message":Landroid/os/Message;
    new-instance v5, Landroid/widget/Filter$RequestArguments;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/widget/Filter$RequestArguments;-><init>(Landroid/widget/Filter-IA;)V

    .line 119
    .local v5, "args":Landroid/widget/Filter$RequestArguments;
    if-eqz p1, :cond_40

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_40
    iput-object v6, v5, Landroid/widget/Filter$RequestArguments;->constraint:Ljava/lang/CharSequence;

    .line 120
    iput-object p2, v5, Landroid/widget/Filter$RequestArguments;->listener:Landroid/widget/Filter$FilterListener;

    .line 121
    iput-object v5, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 123
    iget-object v6, p0, Landroid/widget/Filter;->mThreadHandler:Landroid/os/Handler;

    invoke-virtual {v6, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 124
    iget-object v4, p0, Landroid/widget/Filter;->mThreadHandler:Landroid/os/Handler;

    const v6, -0x21524111

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 125
    iget-object v4, p0, Landroid/widget/Filter;->mThreadHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 126
    nop

    .end local v1    # "delay":J
    .end local v3    # "message":Landroid/os/Message;
    .end local v5    # "args":Landroid/widget/Filter$RequestArguments;
    monitor-exit v0

    .line 127
    return-void

    .line 126
    :catchall_5b
    move-exception v1

    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_3 .. :try_end_5d} :catchall_5b

    throw v1
.end method

.method protected abstract whitelist performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
.end method

.method protected abstract whitelist publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
.end method

.method public greylist setDelayer(Landroid/widget/Filter$Delayer;)V
    .registers 4
    .param p1, "delayer"    # Landroid/widget/Filter$Delayer;

    .line 71
    iget-object v0, p0, Landroid/widget/Filter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 72
    :try_start_3
    iput-object p1, p0, Landroid/widget/Filter;->mDelayer:Landroid/widget/Filter$Delayer;

    .line 73
    monitor-exit v0

    .line 74
    return-void

    .line 73
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method
