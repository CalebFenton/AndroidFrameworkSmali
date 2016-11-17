.class final Lcom/android/okhttp/okio/AsyncTimeout$Watchdog;
.super Ljava/lang/Thread;
.source "AsyncTimeout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/okio/AsyncTimeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Watchdog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 279
    const-string/jumbo v0, "Okio Watchdog"

    #@3
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    #@6
    .line 280
    const/4 v0, 0x1

    #@7
    invoke-virtual {p0, v0}, Lcom/android/okhttp/okio/AsyncTimeout$Watchdog;->setDaemon(Z)V

    #@a
    .line 278
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 286
    :cond_0
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/android/okhttp/okio/AsyncTimeout;->-wrap0()Lcom/android/okhttp/okio/AsyncTimeout;

    #@3
    move-result-object v1

    #@4
    .line 289
    .local v1, "timedOut":Lcom/android/okhttp/okio/AsyncTimeout;
    if-eqz v1, :cond_0

    #@6
    .line 292
    invoke-virtual {v1}, Lcom/android/okhttp/okio/AsyncTimeout;->timedOut()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    goto :goto_0

    #@a
    .line 293
    .end local v1    # "timedOut":Lcom/android/okhttp/okio/AsyncTimeout;
    :catch_0
    move-exception v0

    #@b
    .local v0, "ignored":Ljava/lang/InterruptedException;
    goto :goto_0
.end method
