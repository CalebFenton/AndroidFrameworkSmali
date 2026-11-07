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
.field private final blacklist notifier:Landroid/icu/impl/ICUNotifier;

.field private final blacklist queue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[",
            "Ljava/util/EventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Landroid/icu/impl/ICUNotifier;)V
    .registers 3
    .param p1, "notifier"    # Landroid/icu/impl/ICUNotifier;

    .line 122
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/ICUNotifier$NotifyThread;->queue:Ljava/util/List;

    .line 123
    iput-object p1, p0, Landroid/icu/impl/ICUNotifier$NotifyThread;->notifier:Landroid/icu/impl/ICUNotifier;

    .line 124
    return-void
.end method


# virtual methods
.method public blacklist queue([Ljava/util/EventListener;)V
    .registers 3
    .param p1, "list"    # [Ljava/util/EventListener;

    .line 130
    monitor-enter p0

    .line 131
    :try_start_1
    iget-object v0, p0, Landroid/icu/impl/ICUNotifier$NotifyThread;->queue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 133
    monitor-exit p0

    .line 134
    return-void

    .line 133
    :catchall_b
    move-exception v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public whitelist test-api run()V
    .registers 5

    .line 145
    nop

    :goto_1
    :try_start_1
    monitor-enter p0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_2} :catch_2a

    .line 146
    :goto_2
    :try_start_2
    iget-object v0, p0, Landroid/icu/impl/ICUNotifier$NotifyThread;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 147
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_2

    .line 149
    :cond_e
    iget-object v0, p0, Landroid/icu/impl/ICUNotifier$NotifyThread;->queue:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/EventListener;

    .line 150
    .local v0, "list":[Ljava/util/EventListener;
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_2 .. :try_end_18} :catchall_27

    .line 152
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_19
    :try_start_19
    array-length v2, v0

    if-ge v1, v2, :cond_26

    .line 153
    iget-object v2, p0, Landroid/icu/impl/ICUNotifier$NotifyThread;->notifier:Landroid/icu/impl/ICUNotifier;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Landroid/icu/impl/ICUNotifier;->notifyListener(Ljava/util/EventListener;)V
    :try_end_23
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_23} :catch_2a

    .line 152
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 157
    .end local v1    # "i":I
    :cond_26
    goto :goto_1

    .line 150
    .end local v0    # "list":[Ljava/util/EventListener;
    :catchall_27
    move-exception v0

    :try_start_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    .end local p0    # "this":Landroid/icu/impl/ICUNotifier$NotifyThread;
    :try_start_29
    throw v0
    :try_end_2a
    .catch Ljava/lang/InterruptedException; {:try_start_29 .. :try_end_2a} :catch_2a

    .line 156
    .restart local p0    # "this":Landroid/icu/impl/ICUNotifier$NotifyThread;
    :catch_2a
    move-exception v0

    .line 157
    goto :goto_1
.end method
