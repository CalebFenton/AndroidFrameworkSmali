.class public final Llibcore/io/Libcore;
.super Ljava/lang/Object;
.source "Libcore.java"


# static fields
.field public static volatile greylist os:Llibcore/io/Os;

.field public static final blacklist rawOs:Llibcore/io/Os;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 31
    new-instance v0, Llibcore/io/Linux;

    invoke-direct {v0}, Llibcore/io/Linux;-><init>()V

    sput-object v0, Llibcore/io/Libcore;->rawOs:Llibcore/io/Os;

    .line 39
    new-instance v0, Llibcore/io/BlockGuardOs;

    sget-object v1, Llibcore/io/Libcore;->rawOs:Llibcore/io/Os;

    invoke-direct {v0, v1}, Llibcore/io/BlockGuardOs;-><init>(Llibcore/io/Os;)V

    sput-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist compareAndSetOs(Llibcore/io/Os;Llibcore/io/Os;)Z
    .registers 5
    .param p0, "expect"    # Llibcore/io/Os;
    .param p1, "update"    # Llibcore/io/Os;

    .line 50
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    const/4 v1, 0x0

    if-eq v0, p0, :cond_9

    .line 52
    return v1

    .line 54
    :cond_9
    const-class v0, Llibcore/io/Libcore;

    monitor-enter v0

    .line 55
    :try_start_c
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    if-ne v2, p0, :cond_11

    const/4 v1, 0x1

    .line 56
    .local v1, "result":Z
    :cond_11
    if-eqz v1, :cond_15

    .line 57
    sput-object p1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    .line 59
    :cond_15
    monitor-exit v0

    return v1

    .line 60
    .end local v1    # "result":Z
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_17

    throw v1
.end method

.method public static blacklist getOs()Llibcore/io/Os;
    .registers 1

    .line 42
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    return-object v0
.end method
