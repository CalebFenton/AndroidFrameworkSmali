.class public Landroid/icu/impl/IllegalIcuArgumentException;
.super Ljava/lang/IllegalArgumentException;
.source "IllegalIcuArgumentException.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x3496294bfd718099L


# direct methods
.method public constructor greylist-max-r <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 22
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "errorMessage"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 26
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .line 27
    return-void
.end method


# virtual methods
.method public declared-synchronized blacklist initCause(Ljava/lang/Throwable;)Landroid/icu/impl/IllegalIcuArgumentException;
    .registers 3
    .param p1, "cause"    # Ljava/lang/Throwable;

    monitor-enter p0

    .line 35
    :try_start_1
    invoke-super {p0, p1}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/IllegalIcuArgumentException;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    .line 35
    .end local p0    # "this":Landroid/icu/impl/IllegalIcuArgumentException;
    .end local p1    # "cause":Ljava/lang/Throwable;
    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method public bridge synthetic whitelist test-api initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 17
    invoke-virtual {p0, p1}, Landroid/icu/impl/IllegalIcuArgumentException;->initCause(Ljava/lang/Throwable;)Landroid/icu/impl/IllegalIcuArgumentException;

    move-result-object p1

    return-object p1
.end method
