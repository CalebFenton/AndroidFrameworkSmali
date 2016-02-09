.class public Llibcore/io/DeleteOnExit;
.super Ljava/lang/Thread;
.source "DeleteOnExit.java"


# static fields
.field private static instance:Llibcore/io/DeleteOnExit;


# instance fields
.field private final files:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    #@3
    .line 51
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Llibcore/io/DeleteOnExit;->files:Ljava/util/ArrayList;

    #@a
    .line 54
    return-void
.end method

.method public static declared-synchronized getInstance()Llibcore/io/DeleteOnExit;
    .locals 3

    #@0
    .prologue
    const-class v1, Llibcore/io/DeleteOnExit;

    #@2
    monitor-enter v1

    #@3
    .line 40
    :try_start_0
    sget-object v0, Llibcore/io/DeleteOnExit;->instance:Llibcore/io/DeleteOnExit;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 41
    new-instance v0, Llibcore/io/DeleteOnExit;

    #@9
    invoke-direct {v0}, Llibcore/io/DeleteOnExit;-><init>()V

    #@c
    sput-object v0, Llibcore/io/DeleteOnExit;->instance:Llibcore/io/DeleteOnExit;

    #@e
    .line 42
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@11
    move-result-object v0

    #@12
    sget-object v2, Llibcore/io/DeleteOnExit;->instance:Llibcore/io/DeleteOnExit;

    #@14
    invoke-virtual {v0, v2}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    #@17
    .line 45
    :cond_0
    sget-object v0, Llibcore/io/DeleteOnExit;->instance:Llibcore/io/DeleteOnExit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    monitor-exit v1

    #@1a
    return-object v0

    #@1b
    :catchall_0
    move-exception v0

    #@1c
    monitor-exit v1

    #@1d
    throw v0
.end method


# virtual methods
.method public addFile(Ljava/lang/String;)V
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;

    #@0
    .prologue
    .line 63
    iget-object v1, p0, Llibcore/io/DeleteOnExit;->files:Ljava/util/ArrayList;

    #@2
    monitor-enter v1

    #@3
    .line 64
    :try_start_0
    iget-object v0, p0, Llibcore/io/DeleteOnExit;->files:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 65
    iget-object v0, p0, Llibcore/io/DeleteOnExit;->files:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :cond_0
    monitor-exit v1

    #@11
    .line 62
    return-void

    #@12
    .line 63
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method public run()V
    .locals 3

    #@0
    .prologue
    .line 77
    iget-object v1, p0, Llibcore/io/DeleteOnExit;->files:Ljava/util/ArrayList;

    #@2
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    #@5
    .line 78
    iget-object v1, p0, Llibcore/io/DeleteOnExit;->files:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v1

    #@b
    add-int/lit8 v0, v1, -0x1

    #@d
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@f
    .line 79
    new-instance v2, Ljava/io/File;

    #@11
    iget-object v1, p0, Llibcore/io/DeleteOnExit;->files:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Ljava/lang/String;

    #@19
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@1c
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    #@1f
    .line 78
    add-int/lit8 v0, v0, -0x1

    #@21
    goto :goto_0

    #@22
    .line 76
    :cond_0
    return-void
.end method
