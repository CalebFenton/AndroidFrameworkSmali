.class public abstract Lsun/net/ext/ExtendedSocketOptions;
.super Ljava/lang/Object;
.source "ExtendedSocketOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/net/ext/ExtendedSocketOptions$NoExtendedSocketOptions;
    }
.end annotation


# static fields
.field public static final blacklist SOCK_DGRAM:S = 0x2s

.field public static final blacklist SOCK_STREAM:S = 0x1s

.field private static volatile blacklist instance:Lsun/net/ext/ExtendedSocketOptions;


# instance fields
.field private final blacklist options:Ljava/util/Set;
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
    .registers 2

    .line 109
    :try_start_0
    const-string v0, "jdk.net.ExtendedSocketOptions"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_5} :catch_6

    .line 113
    goto :goto_e

    .line 110
    :catch_6
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Lsun/net/ext/ExtendedSocketOptions$NoExtendedSocketOptions;

    invoke-direct {v1}, Lsun/net/ext/ExtendedSocketOptions$NoExtendedSocketOptions;-><init>()V

    sput-object v1, Lsun/net/ext/ExtendedSocketOptions;->instance:Lsun/net/ext/ExtendedSocketOptions;

    .line 114
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :goto_e
    return-void
.end method

.method protected constructor blacklist <init>(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/net/SocketOption<",
            "*>;>;)V"
        }
    .end annotation

    .line 89
    .local p1, "options":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/SocketOption<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lsun/net/ext/ExtendedSocketOptions;->options:Ljava/util/Set;

    .line 91
    return-void
.end method

.method public static final blacklist getInstance()Lsun/net/ext/ExtendedSocketOptions;
    .registers 1

    .line 95
    sget-object v0, Lsun/net/ext/ExtendedSocketOptions;->instance:Lsun/net/ext/ExtendedSocketOptions;

    return-object v0
.end method

.method static synthetic blacklist lambda$options0$0(Ljava/net/SocketOption;)Z
    .registers 3
    .param p0, "option"    # Ljava/net/SocketOption;

    .line 66
    invoke-interface {p0}, Ljava/net/SocketOption;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TCP_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic blacklist lambda$options0$1(Ljava/net/SocketOption;)Z
    .registers 3
    .param p0, "option"    # Ljava/net/SocketOption;

    .line 71
    invoke-interface {p0}, Ljava/net/SocketOption;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UDP_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static final blacklist options(S)Ljava/util/Set;
    .registers 2
    .param p0, "type"    # S
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S)",
            "Ljava/util/Set<",
            "Ljava/net/SocketOption<",
            "*>;>;"
        }
    .end annotation

    .line 58
    invoke-static {}, Lsun/net/ext/ExtendedSocketOptions;->getInstance()Lsun/net/ext/ExtendedSocketOptions;

    move-result-object v0

    invoke-direct {v0, p0}, Lsun/net/ext/ExtendedSocketOptions;->options0(S)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private blacklist options0(S)Ljava/util/Set;
    .registers 5
    .param p1, "type"    # S
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S)",
            "Ljava/util/Set<",
            "Ljava/net/SocketOption<",
            "*>;>;"
        }
    .end annotation

    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, "extOptions":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/SocketOption<*>;>;"
    packed-switch p1, :pswitch_data_44

    .line 76
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid socket option type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 65
    :pswitch_c
    iget-object v1, p0, Lsun/net/ext/ExtendedSocketOptions;->options:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lsun/net/ext/ExtendedSocketOptions$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lsun/net/ext/ExtendedSocketOptions$$ExternalSyntheticLambda0;-><init>()V

    .line 66
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 67
    invoke-static {}, Ljava/util/stream/Collectors;->toUnmodifiableSet()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/Set;

    .line 68
    goto :goto_42

    .line 70
    :pswitch_27
    iget-object v1, p0, Lsun/net/ext/ExtendedSocketOptions;->options:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lsun/net/ext/ExtendedSocketOptions$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lsun/net/ext/ExtendedSocketOptions$$ExternalSyntheticLambda1;-><init>()V

    .line 71
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 72
    invoke-static {}, Ljava/util/stream/Collectors;->toUnmodifiableSet()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/Set;

    .line 73
    nop

    .line 78
    :goto_42
    return-object v0

    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_27
        :pswitch_c
    .end packed-switch
.end method

.method public static final blacklist register(Lsun/net/ext/ExtendedSocketOptions;)V
    .registers 3
    .param p0, "extOptions"    # Lsun/net/ext/ExtendedSocketOptions;

    .line 99
    sget-object v0, Lsun/net/ext/ExtendedSocketOptions;->instance:Lsun/net/ext/ExtendedSocketOptions;

    if-nez v0, :cond_7

    .line 102
    sput-object p0, Lsun/net/ext/ExtendedSocketOptions;->instance:Lsun/net/ext/ExtendedSocketOptions;

    .line 103
    return-void

    .line 100
    :cond_7
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "Attempting to reregister extended options"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract blacklist getOption(Ljava/io/FileDescriptor;Ljava/net/SocketOption;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileDescriptor;",
            "Ljava/net/SocketOption<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public final blacklist isOptionSupported(Ljava/net/SocketOption;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketOption<",
            "*>;)Z"
        }
    .end annotation

    .line 51
    .local p1, "option":Ljava/net/SocketOption;, "Ljava/net/SocketOption<*>;"
    invoke-virtual {p0}, Lsun/net/ext/ExtendedSocketOptions;->options()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final blacklist options()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/net/SocketOption<",
            "*>;>;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lsun/net/ext/ExtendedSocketOptions;->options:Ljava/util/Set;

    return-object v0
.end method

.method public abstract blacklist setOption(Ljava/io/FileDescriptor;Ljava/net/SocketOption;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileDescriptor;",
            "Ljava/net/SocketOption<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method
