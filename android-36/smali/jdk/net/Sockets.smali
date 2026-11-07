.class public Ljdk/net/Sockets;
.super Ljava/lang/Object;
.source "Sockets.java"


# static fields
.field private static blacklist dsiGetOption:Ljava/lang/reflect/Method;

.field private static blacklist dsiSetOption:Ljava/lang/reflect/Method;

.field private static final blacklist options:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Set<",
            "Ljava/net/SocketOption<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private static blacklist siGetOption:Ljava/lang/reflect/Method;

.field private static blacklist siSetOption:Ljava/lang/reflect/Method;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sminitMethods()V
    .registers 0

    invoke-static {}, Ljdk/net/Sockets;->initMethods()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljdk/net/Sockets;->options:Ljava/util/HashMap;

    .line 66
    invoke-static {}, Ljdk/net/Sockets;->initOptionSets()V

    .line 67
    new-instance v0, Ljdk/net/Sockets$1;

    invoke-direct {v0}, Ljdk/net/Sockets$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 75
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getOption(Ljava/net/DatagramSocket;Ljava/net/SocketOption;)Ljava/lang/Object;
    .registers 4
    .param p0, "s"    # Ljava/net/DatagramSocket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/DatagramSocket;",
            "Ljava/net/SocketOption<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 322
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Ljdk/net/Sockets;->isSupported(Ljava/lang/Class;Ljava/net/SocketOption;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 325
    sget-object v0, Ljdk/net/Sockets;->dsiGetOption:Ljava/lang/reflect/Method;

    invoke-static {v0, p0, p1}, Ljdk/net/Sockets;->invokeGet(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/net/SocketOption;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 323
    :cond_11
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-interface {p1}, Ljava/net/SocketOption;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getOption(Ljava/net/ServerSocket;Ljava/net/SocketOption;)Ljava/lang/Object;
    .registers 4
    .param p0, "s"    # Ljava/net/ServerSocket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/ServerSocket;",
            "Ljava/net/SocketOption<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    const-class v0, Ljava/net/ServerSocket;

    invoke-static {v0, p1}, Ljdk/net/Sockets;->isSupported(Ljava/lang/Class;Ljava/net/SocketOption;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 265
    sget-object v0, Ljdk/net/Sockets;->siGetOption:Ljava/lang/reflect/Method;

    invoke-static {v0, p0, p1}, Ljdk/net/Sockets;->invokeGet(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/net/SocketOption;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 263
    :cond_f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-interface {p1}, Ljava/net/SocketOption;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getOption(Ljava/net/Socket;Ljava/net/SocketOption;)Ljava/lang/Object;
    .registers 4
    .param p0, "s"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/Socket;",
            "Ljava/net/SocketOption<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    const-class v0, Ljava/net/Socket;

    invoke-static {v0, p1}, Ljdk/net/Sockets;->isSupported(Ljava/lang/Class;Ljava/net/SocketOption;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 207
    sget-object v0, Ljdk/net/Sockets;->siGetOption:Ljava/lang/reflect/Method;

    invoke-static {v0, p0, p1}, Ljdk/net/Sockets;->invokeGet(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/net/SocketOption;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 205
    :cond_f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-interface {p1}, Ljava/net/SocketOption;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist initMethods()V
    .registers 9

    .line 84
    const-string v0, "getOption"

    const-string v1, "setOption"

    :try_start_4
    const-string v2, "java.net.SocketSecrets"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 86
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/net/SocketOption;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-class v5, Ljava/lang/Object;

    const/4 v8, 0x2

    aput-object v5, v4, v8

    invoke-virtual {v2, v1, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Ljdk/net/Sockets;->siSetOption:Ljava/lang/reflect/Method;

    .line 90
    sget-object v4, Ljdk/net/Sockets;->siSetOption:Ljava/lang/reflect/Method;

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 92
    new-array v4, v8, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Object;

    aput-object v5, v4, v6

    const-class v5, Ljava/net/SocketOption;

    aput-object v5, v4, v7

    invoke-virtual {v2, v0, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Ljdk/net/Sockets;->siGetOption:Ljava/lang/reflect/Method;

    .line 95
    sget-object v4, Ljdk/net/Sockets;->siGetOption:Ljava/lang/reflect/Method;

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 97
    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/net/DatagramSocket;

    aput-object v4, v3, v6

    const-class v4, Ljava/net/SocketOption;

    aput-object v4, v3, v7

    const-class v4, Ljava/lang/Object;

    aput-object v4, v3, v8

    invoke-virtual {v2, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Ljdk/net/Sockets;->dsiSetOption:Ljava/lang/reflect/Method;

    .line 101
    sget-object v1, Ljdk/net/Sockets;->dsiSetOption:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 103
    new-array v1, v8, [Ljava/lang/Class;

    const-class v3, Ljava/net/DatagramSocket;

    aput-object v3, v1, v6

    const-class v3, Ljava/net/SocketOption;

    aput-object v3, v1, v7

    invoke-virtual {v2, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Ljdk/net/Sockets;->dsiGetOption:Ljava/lang/reflect/Method;

    .line 106
    sget-object v0, Ljdk/net/Sockets;->dsiGetOption:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_6a
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_4 .. :try_end_6a} :catch_6c

    .line 109
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 110
    return-void

    .line 107
    :catch_6c
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static blacklist initOptionSets()V
    .registers 4

    .line 352
    invoke-static {}, Lsun/net/ExtendedOptionsImpl;->flowSupported()Z

    move-result v0

    .line 356
    .local v0, "flowsupported":Z
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 357
    .local v1, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/SocketOption<*>;>;"
    sget-object v2, Ljava/net/StandardSocketOptions;->SO_KEEPALIVE:Ljava/net/SocketOption;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 358
    sget-object v2, Ljava/net/StandardSocketOptions;->SO_SNDBUF:Ljava/net/SocketOption;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 359
    sget-object v2, Ljava/net/StandardSocketOptions;->SO_RCVBUF:Ljava/net/SocketOption;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 360
    sget-object v2, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 361
    sget-object v2, Ljava/net/StandardSocketOptions;->SO_LINGER:Ljava/net/SocketOption;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 362
    sget-object v2, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 363
    sget-object v2, Ljava/net/StandardSocketOptions;->TCP_NODELAY:Ljava/net/SocketOption;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 364
    if-eqz v0, :cond_33

    .line 365
    sget-object v2, Ljdk/net/ExtendedSocketOptions;->SO_FLOW_SLA:Ljava/net/SocketOption;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 367
    :cond_33
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 368
    sget-object v2, Ljdk/net/Sockets;->options:Ljava/util/HashMap;

    const-class v3, Ljava/net/Socket;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 373
    .end local v1    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/SocketOption<*>;>;"
    .local v2, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/SocketOption<*>;>;"
    sget-object v1, Ljava/net/StandardSocketOptions;->SO_RCVBUF:Ljava/net/SocketOption;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 374
    sget-object v1, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 375
    sget-object v1, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 376
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 377
    .end local v2    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/SocketOption<*>;>;"
    .restart local v1    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/SocketOption<*>;>;"
    sget-object v2, Ljdk/net/Sockets;->options:Ljava/util/HashMap;

    const-class v3, Ljava/net/ServerSocket;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 382
    .end local v1    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/SocketOption<*>;>;"
    .restart local v2    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/SocketOption<*>;>;"
    sget-object v1, Ljava/net/StandardSocketOptions;->SO_SNDBUF:Ljava/net/SocketOption;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 383
    sget-object v1, Ljava/net/StandardSocketOptions;->SO_RCVBUF:Ljava/net/SocketOption;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 384
    sget-object v1, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 385
    sget-object v1, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 386
    if-eqz v0, :cond_7d

    .line 387
    sget-object v1, Ljdk/net/ExtendedSocketOptions;->SO_FLOW_SLA:Ljava/net/SocketOption;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 389
    :cond_7d
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 390
    .end local v2    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/SocketOption<*>;>;"
    .restart local v1    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/SocketOption<*>;>;"
    sget-object v2, Ljdk/net/Sockets;->options:Ljava/util/HashMap;

    const-class v3, Ljava/net/DatagramSocket;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 395
    .end local v1    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/SocketOption<*>;>;"
    .restart local v2    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/SocketOption<*>;>;"
    sget-object v1, Ljava/net/StandardSocketOptions;->SO_SNDBUF:Ljava/net/SocketOption;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 396
    sget-object v1, Ljava/net/StandardSocketOptions;->SO_RCVBUF:Ljava/net/SocketOption;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 397
    sget-object v1, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 398
    sget-object v1, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 399
    sget-object v1, Ljava/net/StandardSocketOptions;->IP_MULTICAST_IF:Ljava/net/SocketOption;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 400
    sget-object v1, Ljava/net/StandardSocketOptions;->IP_MULTICAST_TTL:Ljava/net/SocketOption;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 401
    sget-object v1, Ljava/net/StandardSocketOptions;->IP_MULTICAST_LOOP:Ljava/net/SocketOption;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 402
    if-eqz v0, :cond_b7

    .line 403
    sget-object v1, Ljdk/net/ExtendedSocketOptions;->SO_FLOW_SLA:Ljava/net/SocketOption;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 405
    :cond_b7
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 406
    .end local v2    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/SocketOption<*>;>;"
    .restart local v1    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/SocketOption<*>;>;"
    sget-object v2, Ljdk/net/Sockets;->options:Ljava/util/HashMap;

    const-class v3, Ljava/net/MulticastSocket;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    return-void
.end method

.method private static blacklist invokeGet(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/net/SocketOption;)Ljava/lang/Object;
    .registers 6
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .param p1, "socket"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Object;",
            "Ljava/net/SocketOption<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    .local p2, "option":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    :try_start_0
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    return-object v0

    .line 136
    :catch_a
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/Exception;
    instance-of v1, v0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v1, :cond_26

    .line 138
    move-object v1, v0

    check-cast v1, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    .line 139
    .local v1, "t":Ljava/lang/Throwable;
    instance-of v2, v1, Ljava/io/IOException;

    if-nez v2, :cond_22

    .line 141
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_26

    .line 142
    move-object v2, v1

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    .line 140
    :cond_22
    move-object v2, v1

    check-cast v2, Ljava/io/IOException;

    throw v2

    .line 145
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_26
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static blacklist invokeSet(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/net/SocketOption;Ljava/lang/Object;)V
    .registers 7
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .param p1, "socket"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Object;",
            "Ljava/net/SocketOption<",
            "TT;>;TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    .local p2, "option":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    .local p3, "value":Ljava/lang/Object;, "TT;"
    :try_start_0
    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_a

    .line 128
    nop

    .line 129
    return-void

    .line 118
    :catch_a
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/Exception;
    instance-of v1, v0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v1, :cond_26

    .line 120
    move-object v1, v0

    check-cast v1, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    .line 121
    .local v1, "t":Ljava/lang/Throwable;
    instance-of v2, v1, Ljava/io/IOException;

    if-nez v2, :cond_22

    .line 123
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_26

    .line 124
    move-object v2, v1

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    .line 122
    :cond_22
    move-object v2, v1

    check-cast v2, Ljava/io/IOException;

    throw v2

    .line 127
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_26
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static blacklist isSupported(Ljava/lang/Class;Ljava/net/SocketOption;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/net/SocketOption<",
            "*>;)Z"
        }
    .end annotation

    .line 347
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "option":Ljava/net/SocketOption;, "Ljava/net/SocketOption<*>;"
    invoke-static {p0}, Ljdk/net/Sockets;->supportedOptions(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    .line 348
    .local v0, "options":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/SocketOption<*>;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static blacklist setOption(Ljava/net/DatagramSocket;Ljava/net/SocketOption;Ljava/lang/Object;)V
    .registers 5
    .param p0, "s"    # Ljava/net/DatagramSocket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/DatagramSocket;",
            "Ljava/net/SocketOption<",
            "TT;>;TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 293
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Ljdk/net/Sockets;->isSupported(Ljava/lang/Class;Ljava/net/SocketOption;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 296
    sget-object v0, Ljdk/net/Sockets;->dsiSetOption:Ljava/lang/reflect/Method;

    invoke-static {v0, p0, p1, p2}, Ljdk/net/Sockets;->invokeSet(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/net/SocketOption;Ljava/lang/Object;)V

    .line 297
    return-void

    .line 294
    :cond_10
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-interface {p1}, Ljava/net/SocketOption;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist setOption(Ljava/net/ServerSocket;Ljava/net/SocketOption;Ljava/lang/Object;)V
    .registers 5
    .param p0, "s"    # Ljava/net/ServerSocket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/ServerSocket;",
            "Ljava/net/SocketOption<",
            "TT;>;TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    const-class v0, Ljava/net/ServerSocket;

    invoke-static {v0, p1}, Ljdk/net/Sockets;->isSupported(Ljava/lang/Class;Ljava/net/SocketOption;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 237
    sget-object v0, Ljdk/net/Sockets;->siSetOption:Ljava/lang/reflect/Method;

    invoke-static {v0, p0, p1, p2}, Ljdk/net/Sockets;->invokeSet(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/net/SocketOption;Ljava/lang/Object;)V

    .line 238
    return-void

    .line 235
    :cond_e
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-interface {p1}, Ljava/net/SocketOption;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist setOption(Ljava/net/Socket;Ljava/net/SocketOption;Ljava/lang/Object;)V
    .registers 5
    .param p0, "s"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/Socket;",
            "Ljava/net/SocketOption<",
            "TT;>;TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    const-class v0, Ljava/net/Socket;

    invoke-static {v0, p1}, Ljdk/net/Sockets;->isSupported(Ljava/lang/Class;Ljava/net/SocketOption;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 179
    sget-object v0, Ljdk/net/Sockets;->siSetOption:Ljava/lang/reflect/Method;

    invoke-static {v0, p0, p1, p2}, Ljdk/net/Sockets;->invokeSet(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/net/SocketOption;Ljava/lang/Object;)V

    .line 180
    return-void

    .line 177
    :cond_e
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-interface {p1}, Ljava/net/SocketOption;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist supportedOptions(Ljava/lang/Class;)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Set<",
            "Ljava/net/SocketOption<",
            "*>;>;"
        }
    .end annotation

    .line 339
    .local p0, "socketType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljdk/net/Sockets;->options:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 340
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/SocketOption<*>;>;"
    if-eqz v0, :cond_b

    .line 343
    return-object v0

    .line 341
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "unknown socket type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
