.class Lsun/nio/ch/SocketChannelImpl$DefaultOptionsHolder;
.super Ljava/lang/Object;
.source "SocketChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/ch/SocketChannelImpl;
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

    .line 270
    invoke-static {}, Lsun/nio/ch/SocketChannelImpl$DefaultOptionsHolder;->defaultOptions()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lsun/nio/ch/SocketChannelImpl$DefaultOptionsHolder;->defaultOptions:Ljava/util/Set;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 269
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

    .line 273
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 274
    .local v0, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/net/SocketOption<*>;>;"
    sget-object v1, Ljava/net/StandardSocketOptions;->SO_SNDBUF:Ljava/net/SocketOption;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 275
    sget-object v1, Ljava/net/StandardSocketOptions;->SO_RCVBUF:Ljava/net/SocketOption;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 276
    sget-object v1, Ljava/net/StandardSocketOptions;->SO_KEEPALIVE:Ljava/net/SocketOption;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 277
    sget-object v1, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 278
    sget-object v1, Ljava/net/StandardSocketOptions;->SO_LINGER:Ljava/net/SocketOption;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 279
    sget-object v1, Ljava/net/StandardSocketOptions;->TCP_NODELAY:Ljava/net/SocketOption;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 281
    sget-object v1, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 282
    sget-object v1, Lsun/nio/ch/ExtendedSocketOption;->SO_OOBINLINE:Ljava/net/SocketOption;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 283
    invoke-static {}, Lsun/net/ExtendedOptionsImpl;->flowSupported()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 284
    sget-object v1, Ljdk/net/ExtendedSocketOptions;->SO_FLOW_SLA:Ljava/net/SocketOption;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 286
    :cond_3a
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method
