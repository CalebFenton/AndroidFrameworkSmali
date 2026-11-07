.class public Landroid/app/ondeviceintelligence/utils/BinderUtils;
.super Ljava/lang/Object;
.source "BinderUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ondeviceintelligence/utils/BinderUtils$ThrowingRunnable;,
        Landroid/app/ondeviceintelligence/utils/BinderUtils$ThrowingSupplier;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist withCleanCallingIdentity(Landroid/app/ondeviceintelligence/utils/BinderUtils$ThrowingSupplier;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Exception;",
            ">(",
            "Landroid/app/ondeviceintelligence/utils/BinderUtils$ThrowingSupplier<",
            "TT;TE;>;)TT;^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 77
    .local p0, "action":Landroid/app/ondeviceintelligence/utils/BinderUtils$ThrowingSupplier;, "Landroid/app/ondeviceintelligence/utils/BinderUtils$ThrowingSupplier<TT;TE;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 79
    .local v0, "callingIdentity":J
    :try_start_4
    invoke-interface {p0}, Landroid/app/ondeviceintelligence/utils/BinderUtils$ThrowingSupplier;->get()Ljava/lang/Object;

    move-result-object v2
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_c

    .line 81
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 79
    return-object v2

    .line 81
    :catchall_c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 82
    throw v2
.end method

.method public static final blacklist withCleanCallingIdentity(Landroid/app/ondeviceintelligence/utils/BinderUtils$ThrowingRunnable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Exception;",
            ">(",
            "Landroid/app/ondeviceintelligence/utils/BinderUtils$ThrowingRunnable<",
            "TT;>;)V^TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 43
    .local p0, "action":Landroid/app/ondeviceintelligence/utils/BinderUtils$ThrowingRunnable;, "Landroid/app/ondeviceintelligence/utils/BinderUtils$ThrowingRunnable<TT;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 45
    .local v0, "callingIdentity":J
    :try_start_4
    invoke-interface {p0}, Landroid/app/ondeviceintelligence/utils/BinderUtils$ThrowingRunnable;->run()V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_c

    .line 47
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 48
    nop

    .line 49
    return-void

    .line 47
    :catchall_c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 48
    throw v2
.end method
