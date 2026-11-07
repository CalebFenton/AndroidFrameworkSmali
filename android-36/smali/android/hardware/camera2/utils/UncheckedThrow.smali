.class public Landroid/hardware/camera2/utils/UncheckedThrow;
.super Ljava/lang/Object;
.source "UncheckedThrow.java"


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o throwAnyException(Ljava/lang/Exception;)V
    .registers 1
    .param p0, "e"    # Ljava/lang/Exception;

    .line 33
    invoke-static {p0}, Landroid/hardware/camera2/utils/UncheckedThrow;->throwAnyImpl(Ljava/lang/Throwable;)V

    .line 34
    return-void
.end method

.method public static greylist-max-o throwAnyException(Ljava/lang/Throwable;)V
    .registers 1
    .param p0, "e"    # Ljava/lang/Throwable;

    .line 45
    invoke-static {p0}, Landroid/hardware/camera2/utils/UncheckedThrow;->throwAnyImpl(Ljava/lang/Throwable;)V

    .line 46
    return-void
.end method

.method private static greylist-max-o throwAnyImpl(Ljava/lang/Throwable;)V
    .registers 1
    .param p0, "e"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            ")V^TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 50
    throw p0
.end method
