.class final Landroid/media/internal/guava_common/eventbus/Subscriber$SynchronizedSubscriber;
.super Landroid/media/internal/guava_common/eventbus/Subscriber;
.source "Subscriber.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/eventbus/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SynchronizedSubscriber"
.end annotation


# virtual methods
.method blacklist invokeSubscriberMethod(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 141
    monitor-enter p0

    .line 142
    :try_start_1
    invoke-super {p0, p1}, Landroid/media/internal/guava_common/eventbus/Subscriber;->invokeSubscriberMethod(Ljava/lang/Object;)V

    .line 143
    monitor-exit p0

    return-void

    :catchall_6
    move-exception p1

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw p1
.end method
