.class public Lsun/misc/Cleaner;
.super Ljava/lang/ref/PhantomReference;
.source "Cleaner.java"


# static fields
.field private static final dummyQueue:Ljava/lang/ref/ReferenceQueue;

.field private static first:Lsun/misc/Cleaner;


# instance fields
.field private next:Lsun/misc/Cleaner;

.field private prev:Lsun/misc/Cleaner;

.field private final thunk:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 67
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    #@2
    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    #@5
    sput-object v0, Lsun/misc/Cleaner;->dummyQueue:Ljava/lang/ref/ReferenceQueue;

    #@7
    .line 72
    const/4 v0, 0x0

    #@8
    sput-object v0, Lsun/misc/Cleaner;->first:Lsun/misc/Cleaner;

    #@a
    .line 59
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "referent"    # Ljava/lang/Object;
    .param p2, "thunk"    # Ljava/lang/Runnable;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 115
    sget-object v0, Lsun/misc/Cleaner;->dummyQueue:Ljava/lang/ref/ReferenceQueue;

    #@3
    invoke-direct {p0, p1, v0}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    #@6
    .line 75
    iput-object v1, p0, Lsun/misc/Cleaner;->next:Lsun/misc/Cleaner;

    #@8
    .line 76
    iput-object v1, p0, Lsun/misc/Cleaner;->prev:Lsun/misc/Cleaner;

    #@a
    .line 116
    iput-object p2, p0, Lsun/misc/Cleaner;->thunk:Ljava/lang/Runnable;

    #@c
    .line 114
    return-void
.end method

.method private static declared-synchronized add(Lsun/misc/Cleaner;)Lsun/misc/Cleaner;
    .locals 2
    .param p0, "cl"    # Lsun/misc/Cleaner;

    #@0
    .prologue
    const-class v1, Lsun/misc/Cleaner;

    #@2
    monitor-enter v1

    #@3
    .line 79
    :try_start_0
    sget-object v0, Lsun/misc/Cleaner;->first:Lsun/misc/Cleaner;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 80
    sget-object v0, Lsun/misc/Cleaner;->first:Lsun/misc/Cleaner;

    #@9
    iput-object v0, p0, Lsun/misc/Cleaner;->next:Lsun/misc/Cleaner;

    #@b
    .line 81
    sget-object v0, Lsun/misc/Cleaner;->first:Lsun/misc/Cleaner;

    #@d
    iput-object p0, v0, Lsun/misc/Cleaner;->prev:Lsun/misc/Cleaner;

    #@f
    .line 83
    :cond_0
    sput-object p0, Lsun/misc/Cleaner;->first:Lsun/misc/Cleaner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit v1

    #@12
    .line 84
    return-object p0

    #@13
    :catchall_0
    move-exception v0

    #@14
    monitor-exit v1

    #@15
    throw v0
.end method

.method public static create(Ljava/lang/Object;Ljava/lang/Runnable;)Lsun/misc/Cleaner;
    .locals 1
    .param p0, "ob"    # Ljava/lang/Object;
    .param p1, "thunk"    # Ljava/lang/Runnable;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 130
    if-nez p1, :cond_0

    #@3
    .line 131
    return-object v0

    #@4
    .line 132
    :cond_0
    new-instance v0, Lsun/misc/Cleaner;

    #@6
    invoke-direct {v0, p0, p1}, Lsun/misc/Cleaner;-><init>(Ljava/lang/Object;Ljava/lang/Runnable;)V

    #@9
    invoke-static {v0}, Lsun/misc/Cleaner;->add(Lsun/misc/Cleaner;)Lsun/misc/Cleaner;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method private static declared-synchronized remove(Lsun/misc/Cleaner;)Z
    .locals 3
    .param p0, "cl"    # Lsun/misc/Cleaner;

    #@0
    .prologue
    const-class v1, Lsun/misc/Cleaner;

    #@2
    monitor-enter v1

    #@3
    .line 90
    :try_start_0
    iget-object v0, p0, Lsun/misc/Cleaner;->next:Lsun/misc/Cleaner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-ne v0, p0, :cond_0

    #@7
    .line 91
    const/4 v0, 0x0

    #@8
    monitor-exit v1

    #@9
    return v0

    #@a
    .line 94
    :cond_0
    :try_start_1
    sget-object v0, Lsun/misc/Cleaner;->first:Lsun/misc/Cleaner;

    #@c
    if-ne v0, p0, :cond_1

    #@e
    .line 95
    iget-object v0, p0, Lsun/misc/Cleaner;->next:Lsun/misc/Cleaner;

    #@10
    if-eqz v0, :cond_4

    #@12
    .line 96
    iget-object v0, p0, Lsun/misc/Cleaner;->next:Lsun/misc/Cleaner;

    #@14
    sput-object v0, Lsun/misc/Cleaner;->first:Lsun/misc/Cleaner;

    #@16
    .line 100
    :cond_1
    :goto_0
    iget-object v0, p0, Lsun/misc/Cleaner;->next:Lsun/misc/Cleaner;

    #@18
    if-eqz v0, :cond_2

    #@1a
    .line 101
    iget-object v0, p0, Lsun/misc/Cleaner;->next:Lsun/misc/Cleaner;

    #@1c
    iget-object v2, p0, Lsun/misc/Cleaner;->prev:Lsun/misc/Cleaner;

    #@1e
    iput-object v2, v0, Lsun/misc/Cleaner;->prev:Lsun/misc/Cleaner;

    #@20
    .line 102
    :cond_2
    iget-object v0, p0, Lsun/misc/Cleaner;->prev:Lsun/misc/Cleaner;

    #@22
    if-eqz v0, :cond_3

    #@24
    .line 103
    iget-object v0, p0, Lsun/misc/Cleaner;->prev:Lsun/misc/Cleaner;

    #@26
    iget-object v2, p0, Lsun/misc/Cleaner;->next:Lsun/misc/Cleaner;

    #@28
    iput-object v2, v0, Lsun/misc/Cleaner;->next:Lsun/misc/Cleaner;

    #@2a
    .line 106
    :cond_3
    iput-object p0, p0, Lsun/misc/Cleaner;->next:Lsun/misc/Cleaner;

    #@2c
    .line 107
    iput-object p0, p0, Lsun/misc/Cleaner;->prev:Lsun/misc/Cleaner;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e
    .line 108
    const/4 v0, 0x1

    #@2f
    monitor-exit v1

    #@30
    return v0

    #@31
    .line 98
    :cond_4
    :try_start_2
    iget-object v0, p0, Lsun/misc/Cleaner;->prev:Lsun/misc/Cleaner;

    #@33
    sput-object v0, Lsun/misc/Cleaner;->first:Lsun/misc/Cleaner;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@35
    goto :goto_0

    #@36
    :catchall_0
    move-exception v0

    #@37
    monitor-exit v1

    #@38
    throw v0
.end method


# virtual methods
.method public clean()V
    .locals 2

    #@0
    .prologue
    .line 139
    invoke-static {p0}, Lsun/misc/Cleaner;->remove(Lsun/misc/Cleaner;)Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 140
    return-void

    #@7
    .line 142
    :cond_0
    :try_start_0
    iget-object v1, p0, Lsun/misc/Cleaner;->thunk:Ljava/lang/Runnable;

    #@9
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 138
    :goto_0
    return-void

    #@d
    .line 143
    :catch_0
    move-exception v0

    #@e
    .line 144
    .local v0, "x":Ljava/lang/Throwable;
    new-instance v1, Lsun/misc/Cleaner$1;

    #@10
    invoke-direct {v1, p0, v0}, Lsun/misc/Cleaner$1;-><init>(Lsun/misc/Cleaner;Ljava/lang/Throwable;)V

    #@13
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@16
    goto :goto_0
.end method
