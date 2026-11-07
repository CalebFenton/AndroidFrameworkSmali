.class public Landroid/metrics/MetricsReader$LogReader;
.super Ljava/lang/Object;
.source "MetricsReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/metrics/MetricsReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogReader"
.end annotation


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o readEvents([IJLjava/util/Collection;)V
    .registers 11
    .param p1, "tags"    # [I
    .param p2, "horizonMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([IJ",
            "Ljava/util/Collection<",
            "Landroid/metrics/MetricsReader$Event;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    .local p4, "events":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/metrics/MetricsReader$Event;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .local v0, "nativeEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/EventLog$Event;>;"
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p2, p3, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    .line 210
    .local v1, "horizonNs":J
    invoke-static {p1, v1, v2, v0}, Landroid/util/EventLog;->readEventsOnWrapping([IJLjava/util/Collection;)V

    .line 211
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/EventLog$Event;

    .line 212
    .local v4, "nativeEvent":Landroid/util/EventLog$Event;
    new-instance v5, Landroid/metrics/MetricsReader$Event;

    invoke-direct {v5, v4}, Landroid/metrics/MetricsReader$Event;-><init>(Landroid/util/EventLog$Event;)V

    .line 213
    .local v5, "event":Landroid/metrics/MetricsReader$Event;
    invoke-interface {p4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 214
    .end local v4    # "nativeEvent":Landroid/util/EventLog$Event;
    .end local v5    # "event":Landroid/metrics/MetricsReader$Event;
    goto :goto_14

    .line 215
    :cond_29
    return-void
.end method

.method public greylist-max-o writeCheckpoint(I)V
    .registers 4
    .param p1, "tag"    # I

    .line 218
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    .line 219
    .local v0, "logger":Lcom/android/internal/logging/MetricsLogger;
    const/16 v1, 0x398

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/logging/MetricsLogger;->action(II)V

    .line 220
    return-void
.end method
