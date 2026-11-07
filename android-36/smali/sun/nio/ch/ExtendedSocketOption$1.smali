.class Lsun/nio/ch/ExtendedSocketOption$1;
.super Ljava/lang/Object;
.source "ExtendedSocketOption.java"

# interfaces
.implements Ljava/net/SocketOption;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/ch/ExtendedSocketOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/net/SocketOption<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api name()Ljava/lang/String;
    .registers 2

    .line 40
    const-string v0, "SO_OOBINLINE"

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 42
    invoke-virtual {p0}, Lsun/nio/ch/ExtendedSocketOption$1;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api type()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 41
    const-class v0, Ljava/lang/Boolean;

    return-object v0
.end method
