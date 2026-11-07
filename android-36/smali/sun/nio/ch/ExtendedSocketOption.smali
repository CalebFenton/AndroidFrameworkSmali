.class Lsun/nio/ch/ExtendedSocketOption;
.super Ljava/lang/Object;
.source "ExtendedSocketOption.java"


# static fields
.field static final blacklist SO_OOBINLINE:Ljava/net/SocketOption;
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
    .registers 1

    .line 38
    new-instance v0, Lsun/nio/ch/ExtendedSocketOption$1;

    invoke-direct {v0}, Lsun/nio/ch/ExtendedSocketOption$1;-><init>()V

    sput-object v0, Lsun/nio/ch/ExtendedSocketOption;->SO_OOBINLINE:Ljava/net/SocketOption;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
