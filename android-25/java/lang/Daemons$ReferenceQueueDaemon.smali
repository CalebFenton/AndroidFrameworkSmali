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
    .line 138
    new-instance v0, Ljava/lang/Daemons$ReferenceQueueDaemon;

    #@2
    invoke-direct {v0}, Ljava/lang/Daemons$ReferenceQueueDaemon;-><init>()V

    #@5
    sput-object v0, Ljava/lang/Daemons$ReferenceQueueDaemon;->INSTANCE:Ljava/lang/Daemons$ReferenceQueueDaemon;

    #@7
    .line 137
    return-void
.end method

.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 141
    const-string/jumbo v0, "ReferenceQueueDaemon"

    #@3
    invoke-direct {p0, v0}, Ljava/lang/Daemons$Daemon;-><init>(Ljava/lang/String;)V

    #@6
    .line 140
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    #@0
    .prologue
    .line 145
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Daemons$ReferenceQueueDaemon;->isRunning()Z

    #@3
    move-result v3

    #@4
    if-eqz v3, :cond_1

    #@6
    .line 148
    :try_start_0
    const-class v4, Ljava/lang/ref/ReferenceQueue;

    #@8
    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    #@9
    .line 149
    :goto_1
    :try_start_1
    sget-object v3, Ljava/lang/ref/ReferenceQueue;->unenqueued:Ljava/lang/ref/Reference;

    #@b
    if-nez v3, :cond_0

    #@d
    .line 150
    const-class v3, Ljava/lang/ref/ReferenceQueue;

    #@f
    invoke-virtual {v3}, Ljava/lang/Class;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@12
    goto :goto_1

    #@13
    .line 148
    :catchall_0
    move-exception v3

    #@14
    :try_start_2
    monitor-exit v4

    #@15
    throw v3
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    #@16
    .line 155
    :catch_0
    move-exception v0

    #@17
    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    #@18
    .line 152
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :try_start_3
    sget-object v2, Ljava/lang/ref/ReferenceQueue;->unenqueued:Ljava/lang/ref/Reference;

    #@1a
    .line 153
    .local v2, "list":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    const/4 v3, 0x0

    #@1b
    sput-object v3, Ljava/lang/ref/ReferenceQueue;->unenqueued:Ljava/lang/ref/Reference;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@1d
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1

    #@1e
    .line 160
    invoke-static {v2}, Ljava/lang/ref/ReferenceQueue;->enqueuePending(Ljava/lang/ref/Reference;)V

    #@21
    goto :goto_0

    #@22
    .line 144
    .end local v2    # "list":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    :cond_1
    return-void

    #@23
    .line 157
    :catch_1
    move-exception v1

    #@24
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    goto :goto_0
.end method
