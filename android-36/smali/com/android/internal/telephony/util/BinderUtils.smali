.class public Lcom/android/internal/telephony/util/BinderUtils;
.super Ljava/lang/Object;
.source "BinderUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/util/BinderUtils$ThrowingRunnable;,
        Lcom/android/internal/telephony/util/BinderUtils$ThrowingSupplier;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist withCleanCallingIdentity(Lcom/android/internal/telephony/util/BinderUtils$ThrowingSupplier;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Exception;",
            ">(",
            "Lcom/android/internal/telephony/util/BinderUtils$ThrowingSupplier<",
            "TT;TE;>;)TT;^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 77
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 79
    :try_start_4
    invoke-interface {p0}, Lcom/android/internal/telephony/util/BinderUtils$ThrowingSupplier;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_c

    .line 81
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_c
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 82
    throw p0
.end method

.method public static final blacklist withCleanCallingIdentity(Lcom/android/internal/telephony/util/BinderUtils$ThrowingRunnable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Exception;",
            ">(",
            "Lcom/android/internal/telephony/util/BinderUtils$ThrowingRunnable<",
            "TT;>;)V^TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 43
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 45
    :try_start_4
    invoke-interface {p0}, Lcom/android/internal/telephony/util/BinderUtils$ThrowingRunnable;->run()V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_b

    .line 47
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_b
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 48
    throw p0
.end method
