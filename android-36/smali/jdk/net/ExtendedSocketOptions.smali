.class public final Ljdk/net/ExtendedSocketOptions;
.super Ljava/lang/Object;
.source "ExtendedSocketOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljdk/net/ExtendedSocketOptions$PlatformSocketOptions;,
        Ljdk/net/ExtendedSocketOptions$ExtSocketOption;
    }
.end annotation


# static fields
.field public static final blacklist SO_FLOW_SLA:Ljava/net/SocketOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/net/SocketOption<",
            "Ljdk/net/SocketFlow;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist TCP_KEEPCOUNT:Ljava/net/SocketOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/net/SocketOption<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist TCP_KEEPIDLE:Ljava/net/SocketOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/net/SocketOption<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist TCP_KEEPINTERVAL:Ljava/net/SocketOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/net/SocketOption<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist TCP_QUICKACK:Ljava/net/SocketOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/net/SocketOption<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist extendedOptions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/net/SocketOption<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final blacklist fdAccess:Ljdk/internal/access/JavaIOFileDescriptorAccess;

.field private static final blacklist flowSupported:Z

.field private static final blacklist keepAliveOptSupported:Z

.field private static final blacklist platformSocketOptions:Ljdk/net/ExtendedSocketOptions$PlatformSocketOptions;

.field private static final blacklist quickAckSupported:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetflowSupported()Z
    .registers 1

    sget-boolean v0, Ljdk/net/ExtendedSocketOptions;->flowSupported:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smcheckValueType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Ljdk/net/ExtendedSocketOptions;->checkValueType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetFlowOption(Ljava/io/FileDescriptor;Ljdk/net/SocketFlow;)V
    .registers 2

    invoke-static {p0, p1}, Ljdk/net/ExtendedSocketOptions;->getFlowOption(Ljava/io/FileDescriptor;Ljdk/net/SocketFlow;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smgetQuickAckOption(Ljava/io/FileDescriptor;)Ljava/lang/Object;
    .registers 1

    invoke-static {p0}, Ljdk/net/ExtendedSocketOptions;->getQuickAckOption(Ljava/io/FileDescriptor;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetTcpKeepAliveIntvl(Ljava/io/FileDescriptor;)I
    .registers 1

    invoke-static {p0}, Ljdk/net/ExtendedSocketOptions;->getTcpKeepAliveIntvl(Ljava/io/FileDescriptor;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetTcpKeepAliveTime(Ljava/io/FileDescriptor;)I
    .registers 1

    invoke-static {p0}, Ljdk/net/ExtendedSocketOptions;->getTcpKeepAliveTime(Ljava/io/FileDescriptor;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetTcpkeepAliveProbes(Ljava/io/FileDescriptor;)I
    .registers 1

    invoke-static {p0}, Ljdk/net/ExtendedSocketOptions;->getTcpkeepAliveProbes(Ljava/io/FileDescriptor;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smsetFlowOption(Ljava/io/FileDescriptor;Ljdk/net/SocketFlow;)V
    .registers 2

    invoke-static {p0, p1}, Ljdk/net/ExtendedSocketOptions;->setFlowOption(Ljava/io/FileDescriptor;Ljdk/net/SocketFlow;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smsetQuickAckOption(Ljava/io/FileDescriptor;Z)V
    .registers 2

    invoke-static {p0, p1}, Ljdk/net/ExtendedSocketOptions;->setQuickAckOption(Ljava/io/FileDescriptor;Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smsetTcpKeepAliveIntvl(Ljava/io/FileDescriptor;I)V
    .registers 2

    invoke-static {p0, p1}, Ljdk/net/ExtendedSocketOptions;->setTcpKeepAliveIntvl(Ljava/io/FileDescriptor;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smsetTcpKeepAliveTime(Ljava/io/FileDescriptor;I)V
    .registers 2

    invoke-static {p0, p1}, Ljdk/net/ExtendedSocketOptions;->setTcpKeepAliveTime(Ljava/io/FileDescriptor;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smsetTcpkeepAliveProbes(Ljava/io/FileDescriptor;I)V
    .registers 2

    invoke-static {p0, p1}, Ljdk/net/ExtendedSocketOptions;->setTcpkeepAliveProbes(Ljava/io/FileDescriptor;I)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 70
    new-instance v0, Ljdk/net/ExtendedSocketOptions$ExtSocketOption;

    const-string v1, "SO_FLOW_SLA"

    const-class v2, Ljdk/net/SocketFlow;

    invoke-direct {v0, v1, v2}, Ljdk/net/ExtendedSocketOptions$ExtSocketOption;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Ljdk/net/ExtendedSocketOptions;->SO_FLOW_SLA:Ljava/net/SocketOption;

    .line 95
    new-instance v0, Ljdk/net/ExtendedSocketOptions$ExtSocketOption;

    const-string v1, "TCP_QUICKACK"

    const-class v2, Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2}, Ljdk/net/ExtendedSocketOptions$ExtSocketOption;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Ljdk/net/ExtendedSocketOptions;->TCP_QUICKACK:Ljava/net/SocketOption;

    .line 116
    new-instance v0, Ljdk/net/ExtendedSocketOptions$ExtSocketOption;

    const-string v1, "TCP_KEEPIDLE"

    const-class v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Ljdk/net/ExtendedSocketOptions$ExtSocketOption;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Ljdk/net/ExtendedSocketOptions;->TCP_KEEPIDLE:Ljava/net/SocketOption;

    .line 139
    new-instance v0, Ljdk/net/ExtendedSocketOptions$ExtSocketOption;

    const-string v1, "TCP_KEEPINTERVAL"

    const-class v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Ljdk/net/ExtendedSocketOptions$ExtSocketOption;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Ljdk/net/ExtendedSocketOptions;->TCP_KEEPINTERVAL:Ljava/net/SocketOption;

    .line 163
    new-instance v0, Ljdk/net/ExtendedSocketOptions$ExtSocketOption;

    const-string v1, "TCP_KEEPCOUNT"

    const-class v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Ljdk/net/ExtendedSocketOptions$ExtSocketOption;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Ljdk/net/ExtendedSocketOptions;->TCP_KEEPCOUNT:Ljava/net/SocketOption;

    .line 167
    invoke-static {}, Ljdk/net/ExtendedSocketOptions$PlatformSocketOptions;->get()Ljdk/net/ExtendedSocketOptions$PlatformSocketOptions;

    move-result-object v0

    sput-object v0, Ljdk/net/ExtendedSocketOptions;->platformSocketOptions:Ljdk/net/ExtendedSocketOptions$PlatformSocketOptions;

    .line 169
    sget-object v0, Ljdk/net/ExtendedSocketOptions;->platformSocketOptions:Ljdk/net/ExtendedSocketOptions$PlatformSocketOptions;

    .line 170
    invoke-virtual {v0}, Ljdk/net/ExtendedSocketOptions$PlatformSocketOptions;->flowSupported()Z

    move-result v0

    sput-boolean v0, Ljdk/net/ExtendedSocketOptions;->flowSupported:Z

    .line 171
    sget-object v0, Ljdk/net/ExtendedSocketOptions;->platformSocketOptions:Ljdk/net/ExtendedSocketOptions$PlatformSocketOptions;

    .line 172
    invoke-virtual {v0}, Ljdk/net/ExtendedSocketOptions$PlatformSocketOptions;->quickAckSupported()Z

    move-result v0

    sput-boolean v0, Ljdk/net/ExtendedSocketOptions;->quickAckSupported:Z

    .line 173
    sget-object v0, Ljdk/net/ExtendedSocketOptions;->platformSocketOptions:Ljdk/net/ExtendedSocketOptions$PlatformSocketOptions;

    .line 174
    invoke-virtual {v0}, Ljdk/net/ExtendedSocketOptions$PlatformSocketOptions;->keepAliveOptionsSupported()Z

    move-result v0

    sput-boolean v0, Ljdk/net/ExtendedSocketOptions;->keepAliveOptSupported:Z

    .line 175
    invoke-static {}, Ljdk/net/ExtendedSocketOptions;->options()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ljdk/net/ExtendedSocketOptions;->extendedOptions:Ljava/util/Set;

    .line 193
    new-instance v0, Ljdk/net/ExtendedSocketOptions$1;

    sget-object v1, Ljdk/net/ExtendedSocketOptions;->extendedOptions:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljdk/net/ExtendedSocketOptions$1;-><init>(Ljava/util/Set;)V

    invoke-static {v0}, Lsun/net/ext/ExtendedSocketOptions;->register(Lsun/net/ext/ExtendedSocketOptions;)V

    .line 268
    invoke-static {}, Ljdk/internal/access/SharedSecrets;->getJavaIOFileDescriptorAccess()Ljdk/internal/access/JavaIOFileDescriptorAccess;

    move-result-object v0

    sput-object v0, Ljdk/net/ExtendedSocketOptions;->fdAccess:Ljdk/internal/access/JavaIOFileDescriptorAccess;

    .line 267
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist checkValueType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .param p0, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    .line 260
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 264
    return-object p0

    .line 261
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Expected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "s":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist getFlowOption(Ljava/io/FileDescriptor;Ljdk/net/SocketFlow;)V
    .registers 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "f"    # Ljdk/net/SocketFlow;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 281
    sget-object v0, Ljdk/net/ExtendedSocketOptions;->platformSocketOptions:Ljdk/net/ExtendedSocketOptions$PlatformSocketOptions;

    sget-object v1, Ljdk/net/ExtendedSocketOptions;->fdAccess:Ljdk/internal/access/JavaIOFileDescriptorAccess;

    invoke-interface {v1, p0}, Ljdk/internal/access/JavaIOFileDescriptorAccess;->get(Ljava/io/FileDescriptor;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Ljdk/net/ExtendedSocketOptions$PlatformSocketOptions;->getFlowOption(ILjdk/net/SocketFlow;)I

    move-result v0

    .line 282
    .local v0, "status":I
    invoke-virtual {p1, v0}, Ljdk/net/SocketFlow;->status(I)V

    .line 283
    return-void
.end method

.method private static blacklist getQuickAckOption(Ljava/io/FileDescriptor;)Ljava/lang/Object;
    .registers 3
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 292
    sget-object v0, Ljdk/net/ExtendedSocketOptions;->platformSocketOptions:Ljdk/net/ExtendedSocketOptions$PlatformSocketOptions;

    sget-object v1, Ljdk/net/ExtendedSocketOptions;->fdAccess:Ljdk/internal/access/JavaIOFileDescriptorAccess;

    invoke-interface {v1, p0}, Ljdk/internal/access/JavaIOFileDescriptorAccess;->get(Ljava/io/FileDescriptor;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljdk/net/ExtendedSocketOptions$PlatformSocketOptions;->getQuickAck(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getTcpKeepAliveIntvl(Ljava/io/FileDescriptor;)I
    .registers 3
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 319
    sget-object v0, Ljdk/net/ExtendedSocketOptions;->platformSocketOptions:Ljdk/net/ExtendedSocketOptions$PlatformSocketOptions;

    sget-object v1, Ljdk/net/ExtendedSocketOptions;->fdAccess:Ljdk/internal/access/JavaIOFileDescriptorAccess;

    invoke-interface {v1, p0}, Ljdk/internal/access/JavaIOFileDescriptorAccess;->get(Ljava/io/FileDescriptor;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljdk/net/ExtendedSocketOptions$PlatformSocketOptions;->getTcpKeepAliveIntvl(I)I

    move-result v0

    return v0
.end method

.method private static blacklist getTcpKeepAliveTime(Ljava/io/FileDescriptor;)I
    .registers 3
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 315
    sget-object v0, Ljdk/net/ExtendedSocketOptions;->platformSocketOptions:Ljdk/net/ExtendedSocketOptions$PlatformSocketOptions;

    sget-object v1, Ljdk/net/ExtendedSocketOptions;->fdAccess:Ljdk/internal/access/JavaIOFileDescriptorAccess;

    invoke-interface {v1, p0}, Ljdk/internal/access/JavaIOFileDescriptorAccess;->get(Ljava/io/FileDescriptor;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljdk/net/ExtendedSocketOptions$PlatformSocketOptions;->getTcpKeepAliveTime(I)I

    move-result v0

    return v0
.end method

.method private static blacklist getTcpkeepAliveProbes(Ljava/io/FileDescriptor;)I
    .registers 3
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 311
    sget-object v0, Ljdk/net/ExtendedSocketOptions;->platformSocketOptions:Ljdk/net/ExtendedSocketOptions$PlatformSocketOptions;

    sget-object v1, Ljdk/net/ExtendedSocketOptions;->fdAccess:Ljdk/internal/access/JavaIOFileDescriptorAccess;

    invoke-interface {v1, p0}, Ljdk/internal/access/JavaIOFileDescriptorAccess;->get(Ljava/io/FileDescriptor;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljdk/net/ExtendedSocketOptions$PlatformSocketOptions;->getTcpkeepAliveProbes(I)I

    move-result v0

    return v0
.end method

.method static blacklist options()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/net/SocketOption<",
            "*>;>;"
        }
    .end annotation

    .line 178
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 179
    .local v0, "options":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/SocketOption<*>;>;"
    sget-boolean v1, Ljdk/net/ExtendedSocketOptions;->flowSupported:Z

    if-eqz v1, :cond_e

    .line 180
    sget-object v1, Ljdk/net/ExtendedSocketOptions;->SO_FLOW_SLA:Ljava/net/SocketOption;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_e
    sget-boolean v1, Ljdk/net/ExtendedSocketOptions;->quickAckSupported:Z

    if-eqz v1, :cond_17

    .line 183
    sget-object v1, Ljdk/net/ExtendedSocketOptions;->TCP_QUICKACK:Ljava/net/SocketOption;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_17
    sget-boolean v1, Ljdk/net/ExtendedSocketOptions;->keepAliveOptSupported:Z

    if-eqz v1, :cond_28

    .line 186
    sget-object v1, Ljdk/net/ExtendedSocketOptions;->TCP_KEEPCOUNT:Ljava/net/SocketOption;

    sget-object v2, Ljdk/net/ExtendedSocketOptions;->TCP_KEEPIDLE:Ljava/net/SocketOption;

    sget-object v3, Ljdk/net/ExtendedSocketOptions;->TCP_KEEPINTERVAL:Ljava/net/SocketOption;

    invoke-static {v1, v2, v3}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 188
    :cond_28
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist setFlowOption(Ljava/io/FileDescriptor;Ljdk/net/SocketFlow;)V
    .registers 7
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "f"    # Ljdk/net/SocketFlow;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 273
    sget-object v0, Ljdk/net/ExtendedSocketOptions;->platformSocketOptions:Ljdk/net/ExtendedSocketOptions$PlatformSocketOptions;

    sget-object v1, Ljdk/net/ExtendedSocketOptions;->fdAccess:Ljdk/internal/access/JavaIOFileDescriptorAccess;

    invoke-interface {v1, p0}, Ljdk/internal/access/JavaIOFileDescriptorAccess;->get(Ljava/io/FileDescriptor;)I

    move-result v1

    .line 274
    invoke-virtual {p1}, Ljdk/net/SocketFlow;->priority()I

    move-result v2

    .line 275
    invoke-virtual {p1}, Ljdk/net/SocketFlow;->bandwidth()J

    move-result-wide v3

    .line 273
    invoke-virtual {v0, v1, v2, v3, v4}, Ljdk/net/ExtendedSocketOptions$PlatformSocketOptions;->setFlowOption(IIJ)I

    move-result v0

    .line 276
    .local v0, "status":I
    invoke-virtual {p1, v0}, Ljdk/net/SocketFlow;->status(I)V

    .line 277
    return-void
.end method

.method private static blacklist setQuickAckOption(Ljava/io/FileDescriptor;Z)V
    .registers 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 287
    sget-object v0, Ljdk/net/ExtendedSocketOptions;->platformSocketOptions:Ljdk/net/ExtendedSocketOptions$PlatformSocketOptions;

    sget-object v1, Ljdk/net/ExtendedSocketOptions;->fdAccess:Ljdk/internal/access/JavaIOFileDescriptorAccess;

    invoke-interface {v1, p0}, Ljdk/internal/access/JavaIOFileDescriptorAccess;->get(Ljava/io/FileDescriptor;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Ljdk/net/ExtendedSocketOptions$PlatformSocketOptions;->setQuickAck(IZ)V

    .line 288
    return-void
.end method

.method private static blacklist setTcpKeepAliveIntvl(Ljava/io/FileDescriptor;I)V
    .registers 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 307
    sget-object v0, Ljdk/net/ExtendedSocketOptions;->platformSocketOptions:Ljdk/net/ExtendedSocketOptions$PlatformSocketOptions;

    sget-object v1, Ljdk/net/ExtendedSocketOptions;->fdAccess:Ljdk/internal/access/JavaIOFileDescriptorAccess;

    invoke-interface {v1, p0}, Ljdk/internal/access/JavaIOFileDescriptorAccess;->get(Ljava/io/FileDescriptor;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Ljdk/net/ExtendedSocketOptions$PlatformSocketOptions;->setTcpKeepAliveIntvl(II)V

    .line 308
    return-void
.end method

.method private static blacklist setTcpKeepAliveTime(Ljava/io/FileDescriptor;I)V
    .registers 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 302
    sget-object v0, Ljdk/net/ExtendedSocketOptions;->platformSocketOptions:Ljdk/net/ExtendedSocketOptions$PlatformSocketOptions;

    sget-object v1, Ljdk/net/ExtendedSocketOptions;->fdAccess:Ljdk/internal/access/JavaIOFileDescriptorAccess;

    invoke-interface {v1, p0}, Ljdk/internal/access/JavaIOFileDescriptorAccess;->get(Ljava/io/FileDescriptor;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Ljdk/net/ExtendedSocketOptions$PlatformSocketOptions;->setTcpKeepAliveTime(II)V

    .line 303
    return-void
.end method

.method private static blacklist setTcpkeepAliveProbes(Ljava/io/FileDescriptor;I)V
    .registers 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 297
    sget-object v0, Ljdk/net/ExtendedSocketOptions;->platformSocketOptions:Ljdk/net/ExtendedSocketOptions$PlatformSocketOptions;

    sget-object v1, Ljdk/net/ExtendedSocketOptions;->fdAccess:Ljdk/internal/access/JavaIOFileDescriptorAccess;

    invoke-interface {v1, p0}, Ljdk/internal/access/JavaIOFileDescriptorAccess;->get(Ljava/io/FileDescriptor;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Ljdk/net/ExtendedSocketOptions$PlatformSocketOptions;->setTcpkeepAliveProbes(II)V

    .line 298
    return-void
.end method
