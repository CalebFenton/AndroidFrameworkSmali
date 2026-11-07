.class public final Ldalvik/system/RuntimeHooks;
.super Ljava/lang/Object;
.source "RuntimeHooks.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# static fields
.field private static blacklist zoneIdSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public static blacklist clearTimeZoneIdSupplier()V
    .registers 1

    .line 76
    const/4 v0, 0x0

    sput-object v0, Ldalvik/system/RuntimeHooks;->zoneIdSupplier:Ljava/util/function/Supplier;

    .line 77
    return-void
.end method

.method public static blacklist getTimeZoneIdSupplier()Ljava/util/function/Supplier;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 85
    sget-object v0, Ldalvik/system/RuntimeHooks;->zoneIdSupplier:Ljava/util/function/Supplier;

    return-object v0
.end method

.method public static blacklist test-api setTimeZoneIdSupplier(Ljava/util/function/Supplier;)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 64
    .local p0, "zoneIdSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/String;>;"
    sget-object v0, Ldalvik/system/RuntimeHooks;->zoneIdSupplier:Ljava/util/function/Supplier;

    if-nez v0, :cond_11

    .line 67
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Supplier;

    sput-object v0, Ldalvik/system/RuntimeHooks;->zoneIdSupplier:Ljava/util/function/Supplier;

    .line 68
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 69
    return-void

    .line 65
    :cond_11
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "zoneIdSupplier instance already set"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist test-api setUncaughtExceptionPreHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .registers 1
    .param p0, "uncaughtExceptionHandler"    # Ljava/lang/Thread$UncaughtExceptionHandler;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 102
    invoke-static {p0}, Ljava/lang/Thread;->setUncaughtExceptionPreHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 103
    return-void
.end method
