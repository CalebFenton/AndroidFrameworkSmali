.class Lsun/nio/ch/DatagramChannelImpl$DefaultOptionsHolder;
.super Ljava/lang/Object;
.source "DatagramChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/ch/DatagramChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultOptionsHolder"
.end annotation


# static fields
.field static final blacklist defaultOptions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/net/SocketOption<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 330
    invoke-static {}, Lsun/nio/ch/DatagramChannelImpl$DefaultOptionsHolder;->defaultOptions()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lsun/nio/ch/DatagramChannelImpl$DefaultOptionsHolder;->defaultOptions:Ljava/util/Set;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist defaultOptions()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/net/SocketOption<",
            "*>;>;"
        }
    .end annotation

    .line 333
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 334
    .local v0, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/net/SocketOption<*>;>;"
    sget-object v1, Ljava/net/StandardSocketOptions;->SO_SNDBUF:Ljava/net/SocketOption;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 335
    sget-object v1, Ljava/net/StandardSocketOptions;->SO_RCVBUF:Ljava/net/SocketOption;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 336
    sget-object v1, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 337
    sget-object v1, Ljava/net/StandardSocketOptions;->SO_BROADCAST:Ljava/net/SocketOption;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 338
    sget-object v1, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 339
    sget-object v1, Ljava/net/StandardSocketOptions;->IP_MULTICAST_IF:Ljava/net/SocketOption;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 340
    sget-object v1, Ljava/net/StandardSocketOptions;->IP_MULTICAST_TTL:Ljava/net/SocketOption;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 341
    sget-object v1, Ljava/net/StandardSocketOptions;->IP_MULTICAST_LOOP:Ljava/net/SocketOption;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 342
    invoke-static {}, Lsun/net/ExtendedOptionsImpl;->flowSupported()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 343
    sget-object v1, Ljdk/net/ExtendedSocketOptions;->SO_FLOW_SLA:Ljava/net/SocketOption;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 345
    :cond_3a
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method
