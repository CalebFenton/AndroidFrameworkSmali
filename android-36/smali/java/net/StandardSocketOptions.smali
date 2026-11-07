.class public final Ljava/net/StandardSocketOptions;
.super Ljava/lang/Object;
.source "StandardSocketOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/net/StandardSocketOptions$StdSocketOption;
    }
.end annotation


# static fields
.field public static final whitelist test-api IP_MULTICAST_IF:Ljava/net/SocketOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/net/SocketOption<",
            "Ljava/net/NetworkInterface;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist test-api IP_MULTICAST_LOOP:Ljava/net/SocketOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/net/SocketOption<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist test-api IP_MULTICAST_TTL:Ljava/net/SocketOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/net/SocketOption<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist test-api IP_TOS:Ljava/net/SocketOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/net/SocketOption<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist test-api SO_BROADCAST:Ljava/net/SocketOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/net/SocketOption<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist test-api SO_KEEPALIVE:Ljava/net/SocketOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/net/SocketOption<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist test-api SO_LINGER:Ljava/net/SocketOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/net/SocketOption<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist test-api SO_RCVBUF:Ljava/net/SocketOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/net/SocketOption<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist test-api SO_REUSEADDR:Ljava/net/SocketOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/net/SocketOption<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist test-api SO_REUSEPORT:Ljava/net/SocketOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/net/SocketOption<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist test-api SO_SNDBUF:Ljava/net/SocketOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/net/SocketOption<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist test-api TCP_NODELAY:Ljava/net/SocketOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/net/SocketOption<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 64
    new-instance v0, Ljava/net/StandardSocketOptions$StdSocketOption;

    const-string v1, "SO_BROADCAST"

    const-class v2, Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2}, Ljava/net/StandardSocketOptions$StdSocketOption;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Ljava/net/StandardSocketOptions;->SO_BROADCAST:Ljava/net/SocketOption;

    .line 84
    new-instance v0, Ljava/net/StandardSocketOptions$StdSocketOption;

    const-string v1, "SO_KEEPALIVE"

    const-class v2, Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2}, Ljava/net/StandardSocketOptions$StdSocketOption;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Ljava/net/StandardSocketOptions;->SO_KEEPALIVE:Ljava/net/SocketOption;

    .line 115
    new-instance v0, Ljava/net/StandardSocketOptions$StdSocketOption;

    const-string v1, "SO_SNDBUF"

    const-class v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Ljava/net/StandardSocketOptions$StdSocketOption;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Ljava/net/StandardSocketOptions;->SO_SNDBUF:Ljava/net/SocketOption;

    .line 155
    new-instance v0, Ljava/net/StandardSocketOptions$StdSocketOption;

    const-string v1, "SO_RCVBUF"

    const-class v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Ljava/net/StandardSocketOptions$StdSocketOption;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Ljava/net/StandardSocketOptions;->SO_RCVBUF:Ljava/net/SocketOption;

    .line 186
    new-instance v0, Ljava/net/StandardSocketOptions$StdSocketOption;

    const-string v1, "SO_REUSEADDR"

    const-class v2, Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2}, Ljava/net/StandardSocketOptions$StdSocketOption;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    .line 209
    new-instance v0, Ljava/net/StandardSocketOptions$StdSocketOption;

    const-string v1, "SO_REUSEPORT"

    const-class v2, Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2}, Ljava/net/StandardSocketOptions$StdSocketOption;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Ljava/net/StandardSocketOptions;->SO_REUSEPORT:Ljava/net/SocketOption;

    .line 241
    new-instance v0, Ljava/net/StandardSocketOptions$StdSocketOption;

    const-string v1, "SO_LINGER"

    const-class v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Ljava/net/StandardSocketOptions$StdSocketOption;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Ljava/net/StandardSocketOptions;->SO_LINGER:Ljava/net/SocketOption;

    .line 273
    new-instance v0, Ljava/net/StandardSocketOptions$StdSocketOption;

    const-string v1, "IP_TOS"

    const-class v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Ljava/net/StandardSocketOptions$StdSocketOption;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    .line 296
    new-instance v0, Ljava/net/StandardSocketOptions$StdSocketOption;

    const-string v1, "IP_MULTICAST_IF"

    const-class v2, Ljava/net/NetworkInterface;

    invoke-direct {v0, v1, v2}, Ljava/net/StandardSocketOptions$StdSocketOption;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Ljava/net/StandardSocketOptions;->IP_MULTICAST_IF:Ljava/net/SocketOption;

    .line 323
    new-instance v0, Ljava/net/StandardSocketOptions$StdSocketOption;

    const-string v1, "IP_MULTICAST_TTL"

    const-class v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Ljava/net/StandardSocketOptions$StdSocketOption;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Ljava/net/StandardSocketOptions;->IP_MULTICAST_TTL:Ljava/net/SocketOption;

    .line 348
    new-instance v0, Ljava/net/StandardSocketOptions$StdSocketOption;

    const-string v1, "IP_MULTICAST_LOOP"

    const-class v2, Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2}, Ljava/net/StandardSocketOptions$StdSocketOption;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Ljava/net/StandardSocketOptions;->IP_MULTICAST_LOOP:Ljava/net/SocketOption;

    .line 375
    new-instance v0, Ljava/net/StandardSocketOptions$StdSocketOption;

    const-string v1, "TCP_NODELAY"

    const-class v2, Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2}, Ljava/net/StandardSocketOptions$StdSocketOption;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Ljava/net/StandardSocketOptions;->TCP_NODELAY:Ljava/net/SocketOption;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
