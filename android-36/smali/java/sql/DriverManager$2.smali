.class Ljava/sql/DriverManager$2;
.super Ljava/lang/Object;
.source "DriverManager.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/sql/DriverManager;->loadInitialDrivers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 499
    invoke-virtual {p0}, Ljava/sql/DriverManager$2;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljava/lang/Void;
    .registers 4

    .line 502
    const-class v0, Ljava/sql/Driver;

    invoke-static {v0}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    move-result-object v0

    .line 503
    .local v0, "loadedDrivers":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<Ljava/sql/Driver;>;"
    invoke-virtual {v0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 518
    .local v1, "driversIterator":Ljava/util/Iterator;
    :goto_a
    :try_start_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 519
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_15

    goto :goto_a

    .line 523
    :cond_14
    goto :goto_16

    .line 521
    :catchall_15
    move-exception v2

    .line 524
    :goto_16
    const/4 v2, 0x0

    return-object v2
.end method
