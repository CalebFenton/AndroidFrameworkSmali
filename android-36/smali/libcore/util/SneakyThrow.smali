.class public Llibcore/util/SneakyThrow;
.super Ljava/lang/Object;
.source "SneakyThrow.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static blacklist test-api sneakyThrow(Ljava/lang/Throwable;)V
    .registers 1
    .param p0, "t"    # Ljava/lang/Throwable;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 48
    invoke-static {p0}, Llibcore/util/SneakyThrow;->sneakyThrow_(Ljava/lang/Throwable;)V

    .line 49
    return-void
.end method

.method private static blacklist sneakyThrow_(Ljava/lang/Throwable;)V
    .registers 1
    .param p0, "t"    # Ljava/lang/Throwable;
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

    .line 52
    throw p0
.end method
