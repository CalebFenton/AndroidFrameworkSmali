.class Ljava/lang/Daemons$ReferenceQueueDaemon;
.super Ljava/lang/Daemons$Daemon;
.source "Daemons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/Daemons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReferenceQueueDaemon"
.end annotation


# static fields
.field private static final INSTANCE:Ljava/lang/Daemons$ReferenceQueueDaemon;


# direct methods
.method static synthetic -get0()Ljava/lang/Daemons$ReferenceQueueDaemon;
    .locals 1

    #@0
    sget-object v0, Ljava/lang/Daemons$ReferenceQueueDaemon;->INSTANCE:Ljava/lang/Daemons$ReferenceQueueDaemon;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 135
    new-instance v0, Ljava/lang/Daemons$ReferenceQueueDaemon;

    #@2
    invoke-direct {v0}, Ljava/lang/Daemons$ReferenceQueueDaemon;-><init>()V

    #@5
    sput-object v0, Ljava/lang/Daemons$ReferenceQueueDaemon;->INSTANCE:Ljava/lang/Daemons$ReferenceQueueDaemon;

    #@7
    .line 134
    return-void
.end method

.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 138
    const-string/jumbo v0, "ReferenceQueueDaemon"

    #@3
    invoke-direct {p0, v0}, Ljava/lang/Daemons$Daemon;-><init>(Ljava/lang/String;)V

    #@6
    .line 137
    return-void
.end method

.method private enqueue(Ljava/lang/ref/Reference;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/Reference",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 160
    .local p1, "list":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    move-object v1, p1

    #@1
    .line 163
    .local v1, "start":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    :cond_0
    iget-object v0, p1, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;

    #@3
    .line 164
    .local v0, "next":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    const/4 v2, 0x0

    #@4
    iput-object v2, p1, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;

    #@6
    .line 165
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->enqueueInternal()Z

    #@9
    .line 166
    move-object p1, v0

    #@a
    .line 167
    if-ne p1, v1, :cond_0

    #@c
    .line 159
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    #@0
    .prologue
    .line 142
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Daemons$ReferenceQueueDaemon;->isRunning()Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_1

    #@6
    .line 145
    :try_start_0
    const-class v3, Ljava/lang/ref/ReferenceQueue;

    #@8
    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 146
    :goto_1
    :try_start_1
    sget-object v2, Ljava/lang/ref/ReferenceQueue;->unenqueued:Ljava/lang/ref/Reference;

    #@b
    if-nez v2, :cond_0

    #@d
    .line 147
    const-class v2, Ljava/lang/ref/ReferenceQueue;

    #@f
    invoke-virtual {v2}, Ljava/lang/Class;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@12
    goto :goto_1

    #@13
    .line 145
    :catchall_0
    move-exception v2

    #@14
    :try_start_2
    monitor-exit v3

    #@15
    throw v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    #@16
    .line 152
    :catch_0
    move-exception v0

    #@17
    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    #@18
    .line 149
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :try_start_3
    sget-object v1, Ljava/lang/ref/ReferenceQueue;->unenqueued:Ljava/lang/ref/Reference;

    #@1a
    .line 150
    .local v1, "list":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    const/4 v2, 0x0

    #@1b
    sput-object v2, Ljava/lang/ref/ReferenceQueue;->unenqueued:Ljava/lang/ref/Reference;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@1d
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    #@1e
    .line 155
    invoke-direct {p0, v1}, Ljava/lang/Daemons$ReferenceQueueDaemon;->enqueue(Ljava/lang/ref/Reference;)V

    #@21
    goto :goto_0

    #@22
    .line 141
    .end local v1    # "list":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    :cond_1
    return-void
.end method
