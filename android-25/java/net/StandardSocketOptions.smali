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
.field public static final IP_MULTICAST_IF:Ljava/net/SocketOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/net/SocketOption",
            "<",
            "Ljava/net/NetworkInterface;",
            ">;"
        }
    .end annotation
.end field

.field public static final IP_MULTICAST_LOOP:Ljava/net/SocketOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/net/SocketOption",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final IP_MULTICAST_TTL:Ljava/net/SocketOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/net/SocketOption",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final IP_TOS:Ljava/net/SocketOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/net/SocketOption",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SO_BROADCAST:Ljava/net/SocketOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/net/SocketOption",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final SO_KEEPALIVE:Ljava/net/SocketOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/net/SocketOption",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final SO_LINGER:Ljava/net/SocketOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/net/SocketOption",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SO_RCVBUF:Ljava/net/SocketOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/net/SocketOption",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SO_REUSEADDR:Ljava/net/SocketOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/net/SocketOption",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final SO_SNDBUF:Ljava/net/SocketOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/net/SocketOption",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final TCP_NODELAY:Ljava/net/SocketOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/net/SocketOption",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 65
    new-instance v0, Ljava/net/StandardSocketOptions$StdSocketOption;

    #@2
    const-string/jumbo v1, "SO_BROADCAST"

    #@5
    const-class v2, Ljava/lang/Boolean;

    #@7
    invoke-direct {v0, v1, v2}, Ljava/net/StandardSocketOptions$StdSocketOption;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@a
    .line 64
    sput-object v0, Ljava/net/StandardSocketOptions;->SO_BROADCAST:Ljava/net/SocketOption;

    #@c
    .line 85
    new-instance v0, Ljava/net/StandardSocketOptions$StdSocketOption;

    #@e
    const-string/jumbo v1, "SO_KEEPALIVE"

    #@11
    const-class v2, Ljava/lang/Boolean;

    #@13
    invoke-direct {v0, v1, v2}, Ljava/net/StandardSocketOptions$StdSocketOption;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@16
    .line 84
    sput-object v0, Ljava/net/StandardSocketOptions;->SO_KEEPALIVE:Ljava/net/SocketOption;

    #@18
    .line 116
    new-instance v0, Ljava/net/StandardSocketOptions$StdSocketOption;

    #@1a
    const-string/jumbo v1, "SO_SNDBUF"

    #@1d
    const-class v2, Ljava/lang/Integer;

    #@1f
    invoke-direct {v0, v1, v2}, Ljava/net/StandardSocketOptions$StdSocketOption;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@22
    .line 115
    sput-object v0, Ljava/net/StandardSocketOptions;->SO_SNDBUF:Ljava/net/SocketOption;

    #@24
    .line 156
    new-instance v0, Ljava/net/StandardSocketOptions$StdSocketOption;

    #@26
    const-string/jumbo v1, "SO_RCVBUF"

    #@29
    const-class v2, Ljava/lang/Integer;

    #@2b
    invoke-direct {v0, v1, v2}, Ljava/net/StandardSocketOptions$StdSocketOption;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@2e
    .line 155
    sput-object v0, Ljava/net/StandardSocketOptions;->SO_RCVBUF:Ljava/net/SocketOption;

    #@30
    .line 187
    new-instance v0, Ljava/net/StandardSocketOptions$StdSocketOption;

    #@32
    const-string/jumbo v1, "SO_REUSEADDR"

    #@35
    const-class v2, Ljava/lang/Boolean;

    #@37
    invoke-direct {v0, v1, v2}, Ljava/net/StandardSocketOptions$StdSocketOption;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@3a
    .line 186
    sput-object v0, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    #@3c
    .line 219
    new-instance v0, Ljava/net/StandardSocketOptions$StdSocketOption;

    #@3e
    const-string/jumbo v1, "SO_LINGER"

    #@41
    const-class v2, Ljava/lang/Integer;

    #@43
    invoke-direct {v0, v1, v2}, Ljava/net/StandardSocketOptions$StdSocketOption;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@46
    .line 218
    sput-object v0, Ljava/net/StandardSocketOptions;->SO_LINGER:Ljava/net/SocketOption;

    #@48
    .line 251
    new-instance v0, Ljava/net/StandardSocketOptions$StdSocketOption;

    #@4a
    const-string/jumbo v1, "IP_TOS"

    #@4d
    const-class v2, Ljava/lang/Integer;

    #@4f
    invoke-direct {v0, v1, v2}, Ljava/net/StandardSocketOptions$StdSocketOption;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@52
    .line 250
    sput-object v0, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    #@54
    .line 273
    new-instance v0, Ljava/net/StandardSocketOptions$StdSocketOption;

    #@56
    const-string/jumbo v1, "IP_MULTICAST_IF"

    #@59
    const-class v2, Ljava/net/NetworkInterface;

    #@5b
    invoke-direct {v0, v1, v2}, Ljava/net/StandardSocketOptions$StdSocketOption;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@5e
    .line 272
    sput-object v0, Ljava/net/StandardSocketOptions;->IP_MULTICAST_IF:Ljava/net/SocketOption;

    #@60
    .line 299
    new-instance v0, Ljava/net/StandardSocketOptions$StdSocketOption;

    #@62
    const-string/jumbo v1, "IP_MULTICAST_TTL"

    #@65
    const-class v2, Ljava/lang/Integer;

    #@67
    invoke-direct {v0, v1, v2}, Ljava/net/StandardSocketOptions$StdSocketOption;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@6a
    .line 298
    sput-object v0, Ljava/net/StandardSocketOptions;->IP_MULTICAST_TTL:Ljava/net/SocketOption;

    #@6c
    .line 323
    new-instance v0, Ljava/net/StandardSocketOptions$StdSocketOption;

    #@6e
    const-string/jumbo v1, "IP_MULTICAST_LOOP"

    #@71
    const-class v2, Ljava/lang/Boolean;

    #@73
    invoke-direct {v0, v1, v2}, Ljava/net/StandardSocketOptions$StdSocketOption;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@76
    .line 322
    sput-object v0, Ljava/net/StandardSocketOptions;->IP_MULTICAST_LOOP:Ljava/net/SocketOption;

    #@78
    .line 350
    new-instance v0, Ljava/net/StandardSocketOptions$StdSocketOption;

    #@7a
    const-string/jumbo v1, "TCP_NODELAY"

    #@7d
    const-class v2, Ljava/lang/Boolean;

    #@7f
    invoke-direct {v0, v1, v2}, Ljava/net/StandardSocketOptions$StdSocketOption;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@82
    .line 349
    sput-object v0, Ljava/net/StandardSocketOptions;->TCP_NODELAY:Ljava/net/SocketOption;

    #@84
    .line 41
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
