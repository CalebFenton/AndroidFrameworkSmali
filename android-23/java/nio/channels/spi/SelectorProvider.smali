.class public abstract Ljava/nio/channels/spi/SelectorProvider;
.super Ljava/lang/Object;
.source "SelectorProvider.java"


# static fields
.field private static provider:Ljava/nio/channels/spi/SelectorProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 41
    const/4 v0, 0x0

    #@1
    sput-object v0, Ljava/nio/channels/spi/SelectorProvider;->provider:Ljava/nio/channels/spi/SelectorProvider;

    #@3
    .line 39
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static loadProviderByJar()Ljava/nio/channels/spi/SelectorProvider;
    .locals 3

    #@0
    .prologue
    .line 79
    const-class v2, Ljava/nio/channels/spi/SelectorProvider;

    #@2
    invoke-static {v2}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    #@5
    move-result-object v2

    #@6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .local v1, "provider$iterator":Ljava/util/Iterator;
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Ljava/nio/channels/spi/SelectorProvider;

    #@16
    .line 80
    .local v0, "provider":Ljava/nio/channels/spi/SelectorProvider;
    return-object v0

    #@17
    .line 82
    .end local v0    # "provider":Ljava/nio/channels/spi/SelectorProvider;
    :cond_0
    const/4 v2, 0x0

    #@18
    return-object v2
.end method

.method public static declared-synchronized provider()Ljava/nio/channels/spi/SelectorProvider;
    .locals 2

    #@0
    .prologue
    const-class v1, Ljava/nio/channels/spi/SelectorProvider;

    #@2
    monitor-enter v1

    #@3
    .line 66
    :try_start_0
    sget-object v0, Ljava/nio/channels/spi/SelectorProvider;->provider:Ljava/nio/channels/spi/SelectorProvider;

    #@5
    if-nez v0, :cond_1

    #@7
    .line 67
    const-class v0, Ljava/nio/channels/spi/SelectorProvider;

    #@9
    invoke-static {v0}, Ljava/util/ServiceLoader;->loadFromSystemProperty(Ljava/lang/Class;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Ljava/nio/channels/spi/SelectorProvider;

    #@f
    sput-object v0, Ljava/nio/channels/spi/SelectorProvider;->provider:Ljava/nio/channels/spi/SelectorProvider;

    #@11
    .line 68
    sget-object v0, Ljava/nio/channels/spi/SelectorProvider;->provider:Ljava/nio/channels/spi/SelectorProvider;

    #@13
    if-nez v0, :cond_0

    #@15
    .line 69
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->loadProviderByJar()Ljava/nio/channels/spi/SelectorProvider;

    #@18
    move-result-object v0

    #@19
    sput-object v0, Ljava/nio/channels/spi/SelectorProvider;->provider:Ljava/nio/channels/spi/SelectorProvider;

    #@1b
    .line 71
    :cond_0
    sget-object v0, Ljava/nio/channels/spi/SelectorProvider;->provider:Ljava/nio/channels/spi/SelectorProvider;

    #@1d
    if-nez v0, :cond_1

    #@1f
    .line 72
    new-instance v0, Ljava/nio/SelectorProviderImpl;

    #@21
    invoke-direct {v0}, Ljava/nio/SelectorProviderImpl;-><init>()V

    #@24
    sput-object v0, Ljava/nio/channels/spi/SelectorProvider;->provider:Ljava/nio/channels/spi/SelectorProvider;

    #@26
    .line 75
    :cond_1
    sget-object v0, Ljava/nio/channels/spi/SelectorProvider;->provider:Ljava/nio/channels/spi/SelectorProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    monitor-exit v1

    #@29
    return-object v0

    #@2a
    :catchall_0
    move-exception v0

    #@2b
    monitor-exit v1

    #@2c
    throw v0
.end method


# virtual methods
.method public inheritedChannel()Ljava/nio/channels/Channel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 142
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public abstract openDatagramChannel()Ljava/nio/channels/DatagramChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract openPipe()Ljava/nio/channels/Pipe;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract openSelector()Ljava/nio/channels/spi/AbstractSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract openServerSocketChannel()Ljava/nio/channels/ServerSocketChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract openSocketChannel()Ljava/nio/channels/SocketChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
