.class final Ljava/sql/DriverManager$2;
.super Ljava/lang/Object;
.source "DriverManager.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/sql/DriverManager;->loadInitialDrivers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 490
    invoke-virtual {p0}, Ljava/sql/DriverManager$2;->run()Ljava/lang/Void;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 4

    #@0
    .prologue
    .line 492
    const-class v3, Ljava/sql/Driver;

    #@2
    invoke-static {v3}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    #@5
    move-result-object v1

    #@6
    .line 493
    .local v1, "loadedDrivers":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<Ljava/sql/Driver;>;"
    invoke-virtual {v1}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v0

    #@a
    .line 508
    .local v0, "driversIterator":Ljava/util/Iterator;
    :goto_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_0

    #@10
    .line 509
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    goto :goto_0

    #@14
    .line 511
    :catch_0
    move-exception v2

    #@15
    .line 514
    :cond_0
    const/4 v3, 0x0

    #@16
    return-object v3
.end method
