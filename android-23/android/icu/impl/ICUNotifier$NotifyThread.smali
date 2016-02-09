.class Landroid/icu/impl/ICUNotifier$NotifyThread;
.super Ljava/lang/Thread;
.source "ICUNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NotifyThread"
.end annotation


# instance fields
.field private final notifier:Landroid/icu/impl/ICUNotifier;

.field private final queue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Ljava/util/EventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/icu/impl/ICUNotifier;)V
    .locals 1
    .param p1, "notifier"    # Landroid/icu/impl/ICUNotifier;

    #@0
    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    #@3
    .line 118
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/icu/impl/ICUNotifier$NotifyThread;->queue:Ljava/util/List;

    #@a
    .line 121
    iput-object p1, p0, Landroid/icu/impl/ICUNotifier$NotifyThread;->notifier:Landroid/icu/impl/ICUNotifier;

    #@c
    .line 120
    return-void
.end method


# virtual methods
.method public queue([Ljava/util/EventListener;)V
    .locals 1
    .param p1, "list"    # [Ljava/util/EventListener;

    #@0
    .prologue
    .line 128
    monitor-enter p0

    #@1
    .line 129
    :try_start_0
    iget-object v0, p0, Landroid/icu/impl/ICUNotifier$NotifyThread;->queue:Ljava/util/List;

    #@3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@6
    .line 130
    invoke-virtual {p0}, Landroid/icu/impl/ICUNotifier$NotifyThread;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit p0

    #@a
    .line 127
    return-void

    #@b
    .line 128
    :catchall_0
    move-exception v0

    #@c
    monitor-exit p0

    #@d
    throw v0
.end method

.method public run()V
    .locals 5

    #@0
    .prologue
    .line 142
    :cond_0
    :goto_0
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@1
    .line 143
    :goto_1
    :try_start_1
    iget-object v3, p0, Landroid/icu/impl/ICUNotifier$NotifyThread;->queue:Ljava/util/List;

    #@3
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    #@6
    move-result v3

    #@7
    if-eqz v3, :cond_1

    #@9
    .line 144
    invoke-virtual {p0}, Landroid/icu/impl/ICUNotifier$NotifyThread;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@c
    goto :goto_1

    #@d
    .line 142
    :catchall_0
    move-exception v3

    #@e
    :try_start_2
    monitor-exit p0

    #@f
    throw v3
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    #@10
    .line 153
    :catch_0
    move-exception v0

    #@11
    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    #@12
    .line 146
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    :try_start_3
    iget-object v3, p0, Landroid/icu/impl/ICUNotifier$NotifyThread;->queue:Ljava/util/List;

    #@14
    const/4 v4, 0x0

    #@15
    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@18
    move-result-object v2

    #@19
    check-cast v2, [Ljava/util/EventListener;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@1b
    .local v2, "list":[Ljava/util/EventListener;
    :try_start_4
    monitor-exit p0

    #@1c
    .line 149
    const/4 v1, 0x0

    #@1d
    .local v1, "i":I
    :goto_2
    array-length v3, v2

    #@1e
    if-ge v1, v3, :cond_0

    #@20
    .line 150
    iget-object v3, p0, Landroid/icu/impl/ICUNotifier$NotifyThread;->notifier:Landroid/icu/impl/ICUNotifier;

    #@22
    aget-object v4, v2, v1

    #@24
    invoke-virtual {v3, v4}, Landroid/icu/impl/ICUNotifier;->notifyListener(Ljava/util/EventListener;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    #@27
    .line 149
    add-int/lit8 v1, v1, 0x1

    #@29
    goto :goto_2
.end method
