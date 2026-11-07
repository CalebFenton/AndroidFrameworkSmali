.class Ljava/io/DeleteOnExitHook;
.super Ljava/lang/Object;
.source "DeleteOnExitHook.java"


# static fields
.field private static blacklist files:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 37
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Ljava/io/DeleteOnExitHook;->files:Ljava/util/LinkedHashSet;

    .line 40
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v1, Ljava/io/DeleteOnExitHook$1;

    invoke-direct {v1}, Ljava/io/DeleteOnExitHook$1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    .line 46
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized blacklist add(Ljava/lang/String;)V
    .registers 4
    .param p0, "file"    # Ljava/lang/String;

    const-class v0, Ljava/io/DeleteOnExitHook;

    monitor-enter v0

    .line 51
    :try_start_3
    sget-object v1, Ljava/io/DeleteOnExitHook;->files:Ljava/util/LinkedHashSet;

    if-eqz v1, :cond_e

    .line 56
    sget-object v1, Ljava/io/DeleteOnExitHook;->files:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, p0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_16

    .line 57
    monitor-exit v0

    return-void

    .line 53
    :cond_e
    :try_start_e
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Shutdown in progress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 50
    .end local p0    # "file":Ljava/lang/String;
    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_16

    throw p0
.end method

.method static blacklist runHooks()V
    .registers 5

    .line 62
    const-class v0, Ljava/io/DeleteOnExitHook;

    monitor-enter v0

    .line 63
    :try_start_3
    sget-object v1, Ljava/io/DeleteOnExitHook;->files:Ljava/util/LinkedHashSet;

    .line 64
    .local v1, "theFiles":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    const/4 v2, 0x0

    sput-object v2, Ljava/io/DeleteOnExitHook;->files:Ljava/util/LinkedHashSet;

    .line 65
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_2b

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 71
    .local v0, "toBeDeleted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 72
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 73
    .local v3, "filename":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 74
    .end local v3    # "filename":Ljava/lang/String;
    goto :goto_15

    .line 75
    :cond_2a
    return-void

    .line 65
    .end local v0    # "toBeDeleted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "theFiles":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    :catchall_2b
    move-exception v1

    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v1
.end method
