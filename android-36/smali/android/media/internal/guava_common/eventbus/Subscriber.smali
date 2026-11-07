.class Landroid/media/internal/guava_common/eventbus/Subscriber;
.super Ljava/lang/Object;
.source "Subscriber.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/guava_common/eventbus/Subscriber$SynchronizedSubscriber;
    }
.end annotation


# instance fields
.field private final blacklist method:Ljava/lang/reflect/Method;

.field final blacklist target:Ljava/lang/Object;


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 110
    instance-of v0, p1, Landroid/media/internal/guava_common/eventbus/Subscriber;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 111
    check-cast p1, Landroid/media/internal/guava_common/eventbus/Subscriber;

    .line 115
    iget-object v0, p0, Landroid/media/internal/guava_common/eventbus/Subscriber;->target:Ljava/lang/Object;

    iget-object v2, p1, Landroid/media/internal/guava_common/eventbus/Subscriber;->target:Ljava/lang/Object;

    if-ne v0, v2, :cond_19

    iget-object p0, p0, Landroid/media/internal/guava_common/eventbus/Subscriber;->method:Ljava/lang/reflect/Method;

    iget-object p1, p1, Landroid/media/internal/guava_common/eventbus/Subscriber;->method:Ljava/lang/reflect/Method;

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    const/4 p0, 0x1

    return p0

    :cond_19
    return v1
.end method

.method public final whitelist test-api hashCode()I
    .registers 2

    .line 105
    iget-object v0, p0, Landroid/media/internal/guava_common/eventbus/Subscriber;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Landroid/media/internal/guava_common/eventbus/Subscriber;->target:Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method blacklist invokeSubscriberMethod(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 85
    :try_start_0
    iget-object v0, p0, Landroid/media/internal/guava_common/eventbus/Subscriber;->method:Ljava/lang/reflect/Method;

    iget-object p0, p0, Landroid/media/internal/guava_common/eventbus/Subscriber;->target:Ljava/lang/Object;

    invoke-static {p1}, Landroid/media/internal/guava_common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_f} :catch_12
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_f} :catch_10
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_f} :catch_14

    return-void

    :catch_10
    move-exception p0

    goto :goto_25

    :catch_12
    move-exception p0

    goto :goto_3c

    :catch_14
    move-exception p0

    .line 91
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Ljava/lang/Error;

    if-eqz p1, :cond_24

    .line 92
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 94
    :cond_24
    throw p0

    .line 89
    :goto_25
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Method became inaccessible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 87
    :goto_3c
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Method rejected target/argument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
