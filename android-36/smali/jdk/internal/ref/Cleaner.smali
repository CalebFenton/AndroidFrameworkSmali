.class public Ljdk/internal/ref/Cleaner;
.super Ljava/lang/ref/PhantomReference;
.source "Cleaner.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/PhantomReference<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final blacklist dummyQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist first:Ljdk/internal/ref/Cleaner;


# instance fields
.field private blacklist next:Ljdk/internal/ref/Cleaner;

.field private blacklist prev:Ljdk/internal/ref/Cleaner;

.field private final blacklist thunk:Ljava/lang/Runnable;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 67
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Ljdk/internal/ref/Cleaner;->dummyQueue:Ljava/lang/ref/ReferenceQueue;

    .line 72
    const/4 v0, 0x0

    sput-object v0, Ljdk/internal/ref/Cleaner;->first:Ljdk/internal/ref/Cleaner;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/Object;Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "referent"    # Ljava/lang/Object;
    .param p2, "thunk"    # Ljava/lang/Runnable;

    .line 115
    sget-object v0, Ljdk/internal/ref/Cleaner;->dummyQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p0, p1, v0}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Ljdk/internal/ref/Cleaner;->next:Ljdk/internal/ref/Cleaner;

    iput-object v0, p0, Ljdk/internal/ref/Cleaner;->prev:Ljdk/internal/ref/Cleaner;

    .line 116
    iput-object p2, p0, Ljdk/internal/ref/Cleaner;->thunk:Ljava/lang/Runnable;

    .line 117
    return-void
.end method

.method private static declared-synchronized blacklist add(Ljdk/internal/ref/Cleaner;)Ljdk/internal/ref/Cleaner;
    .registers 3
    .param p0, "cl"    # Ljdk/internal/ref/Cleaner;

    const-class v0, Ljdk/internal/ref/Cleaner;

    monitor-enter v0

    .line 79
    :try_start_3
    sget-object v1, Ljdk/internal/ref/Cleaner;->first:Ljdk/internal/ref/Cleaner;

    if-eqz v1, :cond_f

    .line 80
    sget-object v1, Ljdk/internal/ref/Cleaner;->first:Ljdk/internal/ref/Cleaner;

    iput-object v1, p0, Ljdk/internal/ref/Cleaner;->next:Ljdk/internal/ref/Cleaner;

    .line 81
    sget-object v1, Ljdk/internal/ref/Cleaner;->first:Ljdk/internal/ref/Cleaner;

    iput-object p0, v1, Ljdk/internal/ref/Cleaner;->prev:Ljdk/internal/ref/Cleaner;

    .line 83
    :cond_f
    sput-object p0, Ljdk/internal/ref/Cleaner;->first:Ljdk/internal/ref/Cleaner;
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_13

    .line 84
    monitor-exit v0

    return-object p0

    .line 78
    .end local p0    # "cl":Ljdk/internal/ref/Cleaner;
    :catchall_13
    move-exception p0

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public static blacklist create(Ljava/lang/Object;Ljava/lang/Runnable;)Ljdk/internal/ref/Cleaner;
    .registers 3
    .param p0, "ob"    # Ljava/lang/Object;
    .param p1, "thunk"    # Ljava/lang/Runnable;

    .line 131
    if-nez p1, :cond_4

    .line 132
    const/4 v0, 0x0

    return-object v0

    .line 133
    :cond_4
    new-instance v0, Ljdk/internal/ref/Cleaner;

    invoke-direct {v0, p0, p1}, Ljdk/internal/ref/Cleaner;-><init>(Ljava/lang/Object;Ljava/lang/Runnable;)V

    invoke-static {v0}, Ljdk/internal/ref/Cleaner;->add(Ljdk/internal/ref/Cleaner;)Ljdk/internal/ref/Cleaner;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized blacklist remove(Ljdk/internal/ref/Cleaner;)Z
    .registers 4
    .param p0, "cl"    # Ljdk/internal/ref/Cleaner;

    const-class v0, Ljdk/internal/ref/Cleaner;

    monitor-enter v0

    .line 90
    :try_start_3
    iget-object v1, p0, Ljdk/internal/ref/Cleaner;->next:Ljdk/internal/ref/Cleaner;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_36

    if-ne v1, p0, :cond_a

    .line 91
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 94
    :cond_a
    :try_start_a
    sget-object v1, Ljdk/internal/ref/Cleaner;->first:Ljdk/internal/ref/Cleaner;

    if-ne v1, p0, :cond_1b

    .line 95
    iget-object v1, p0, Ljdk/internal/ref/Cleaner;->next:Ljdk/internal/ref/Cleaner;

    if-eqz v1, :cond_17

    .line 96
    iget-object v1, p0, Ljdk/internal/ref/Cleaner;->next:Ljdk/internal/ref/Cleaner;

    sput-object v1, Ljdk/internal/ref/Cleaner;->first:Ljdk/internal/ref/Cleaner;

    goto :goto_1b

    .line 98
    :cond_17
    iget-object v1, p0, Ljdk/internal/ref/Cleaner;->prev:Ljdk/internal/ref/Cleaner;

    sput-object v1, Ljdk/internal/ref/Cleaner;->first:Ljdk/internal/ref/Cleaner;

    .line 100
    :cond_1b
    :goto_1b
    iget-object v1, p0, Ljdk/internal/ref/Cleaner;->next:Ljdk/internal/ref/Cleaner;

    if-eqz v1, :cond_25

    .line 101
    iget-object v1, p0, Ljdk/internal/ref/Cleaner;->next:Ljdk/internal/ref/Cleaner;

    iget-object v2, p0, Ljdk/internal/ref/Cleaner;->prev:Ljdk/internal/ref/Cleaner;

    iput-object v2, v1, Ljdk/internal/ref/Cleaner;->prev:Ljdk/internal/ref/Cleaner;

    .line 102
    :cond_25
    iget-object v1, p0, Ljdk/internal/ref/Cleaner;->prev:Ljdk/internal/ref/Cleaner;

    if-eqz v1, :cond_2f

    .line 103
    iget-object v1, p0, Ljdk/internal/ref/Cleaner;->prev:Ljdk/internal/ref/Cleaner;

    iget-object v2, p0, Ljdk/internal/ref/Cleaner;->next:Ljdk/internal/ref/Cleaner;

    iput-object v2, v1, Ljdk/internal/ref/Cleaner;->next:Ljdk/internal/ref/Cleaner;

    .line 106
    :cond_2f
    iput-object p0, p0, Ljdk/internal/ref/Cleaner;->next:Ljdk/internal/ref/Cleaner;

    .line 107
    iput-object p0, p0, Ljdk/internal/ref/Cleaner;->prev:Ljdk/internal/ref/Cleaner;
    :try_end_33
    .catchall {:try_start_a .. :try_end_33} :catchall_36

    .line 108
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 89
    .end local p0    # "cl":Ljdk/internal/ref/Cleaner;
    :catchall_36
    move-exception p0

    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw p0
.end method


# virtual methods
.method public blacklist clean()V
    .registers 3

    .line 140
    invoke-static {p0}, Ljdk/internal/ref/Cleaner;->remove(Ljdk/internal/ref/Cleaner;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 141
    return-void

    .line 143
    :cond_7
    :try_start_7
    iget-object v0, p0, Ljdk/internal/ref/Cleaner;->thunk:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_d

    .line 153
    goto :goto_16

    .line 144
    :catchall_d
    move-exception v0

    .line 145
    .local v0, "x":Ljava/lang/Throwable;
    new-instance v1, Ljdk/internal/ref/Cleaner$1;

    invoke-direct {v1, p0, v0}, Ljdk/internal/ref/Cleaner$1;-><init>(Ljdk/internal/ref/Cleaner;Ljava/lang/Throwable;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 154
    .end local v0    # "x":Ljava/lang/Throwable;
    :goto_16
    return-void
.end method
