.class Ljava/io/ObjectStreamClass$EntryFuture;
.super Ljava/lang/Object;
.source "ObjectStreamClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/ObjectStreamClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EntryFuture"
.end annotation


# static fields
.field private static final unset:Ljava/lang/Object;


# instance fields
.field private entry:Ljava/lang/Object;

.field private final owner:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 387
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Ljava/io/ObjectStreamClass$EntryFuture;->unset:Ljava/lang/Object;

    #@7
    .line 385
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 388
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Ljava/io/ObjectStreamClass$EntryFuture;->owner:Ljava/lang/Thread;

    #@9
    .line 389
    sget-object v0, Ljava/io/ObjectStreamClass$EntryFuture;->unset:Ljava/lang/Object;

    #@b
    iput-object v0, p0, Ljava/io/ObjectStreamClass$EntryFuture;->entry:Ljava/lang/Object;

    #@d
    .line 385
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/ObjectStreamClass$EntryFuture;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Ljava/io/ObjectStreamClass$EntryFuture;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method declared-synchronized get()Ljava/lang/Object;
    .locals 4

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 412
    const/4 v1, 0x0

    #@2
    .line 413
    .local v1, "interrupted":Z
    :goto_0
    :try_start_0
    iget-object v2, p0, Ljava/io/ObjectStreamClass$EntryFuture;->entry:Ljava/lang/Object;

    #@4
    sget-object v3, Ljava/io/ObjectStreamClass$EntryFuture;->unset:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    if-ne v2, v3, :cond_0

    #@8
    .line 415
    :try_start_1
    invoke-virtual {p0}, Ljava/io/ObjectStreamClass$EntryFuture;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@b
    goto :goto_0

    #@c
    .line 416
    :catch_0
    move-exception v0

    #@d
    .line 417
    .local v0, "ex":Ljava/lang/InterruptedException;
    const/4 v1, 0x1

    #@e
    goto :goto_0

    #@f
    .line 420
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :cond_0
    if-eqz v1, :cond_1

    #@11
    .line 422
    :try_start_2
    new-instance v2, Ljava/io/ObjectStreamClass$EntryFuture$1;

    #@13
    invoke-direct {v2, p0}, Ljava/io/ObjectStreamClass$EntryFuture$1;-><init>(Ljava/io/ObjectStreamClass$EntryFuture;)V

    #@16
    .line 421
    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@19
    .line 430
    :cond_1
    iget-object v2, p0, Ljava/io/ObjectStreamClass$EntryFuture;->entry:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1b
    monitor-exit p0

    #@1c
    return-object v2

    #@1d
    :catchall_0
    move-exception v2

    #@1e
    monitor-exit p0

    #@1f
    throw v2
.end method

.method getOwner()Ljava/lang/Thread;
    .locals 1

    #@0
    .prologue
    .line 437
    iget-object v0, p0, Ljava/io/ObjectStreamClass$EntryFuture;->owner:Ljava/lang/Thread;

    #@2
    return-object v0
.end method

.method declared-synchronized set(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "entry"    # Ljava/lang/Object;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 399
    :try_start_0
    iget-object v0, p0, Ljava/io/ObjectStreamClass$EntryFuture;->entry:Ljava/lang/Object;

    #@3
    sget-object v1, Ljava/io/ObjectStreamClass$EntryFuture;->unset:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-eq v0, v1, :cond_0

    #@7
    .line 400
    const/4 v0, 0x0

    #@8
    monitor-exit p0

    #@9
    return v0

    #@a
    .line 402
    :cond_0
    :try_start_1
    iput-object p1, p0, Ljava/io/ObjectStreamClass$EntryFuture;->entry:Ljava/lang/Object;

    #@c
    .line 403
    invoke-virtual {p0}, Ljava/io/ObjectStreamClass$EntryFuture;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@f
    .line 404
    const/4 v0, 0x1

    #@10
    monitor-exit p0

    #@11
    return v0

    #@12
    :catchall_0
    move-exception v0

    #@13
    monitor-exit p0

    #@14
    throw v0
.end method
