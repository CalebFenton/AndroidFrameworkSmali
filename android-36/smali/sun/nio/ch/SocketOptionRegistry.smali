.class Lsun/nio/ch/SocketOptionRegistry;
.super Ljava/lang/Object;
.source "SocketOptionRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/ch/SocketOptionRegistry$RegistryKey;,
        Lsun/nio/ch/SocketOptionRegistry$LazyInitialization;
    }
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist findOption(Ljava/net/SocketOption;Ljava/net/ProtocolFamily;)Lsun/nio/ch/OptionKey;
    .registers 4
    .param p1, "family"    # Ljava/net/ProtocolFamily;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketOption<",
            "*>;",
            "Ljava/net/ProtocolFamily;",
            ")",
            "Lsun/nio/ch/OptionKey;"
        }
    .end annotation

    .line 81
    .local p0, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<*>;"
    new-instance v0, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;

    invoke-direct {v0, p0, p1}, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;-><init>(Ljava/net/SocketOption;Ljava/net/ProtocolFamily;)V

    .line 82
    .local v0, "key":Lsun/nio/ch/SocketOptionRegistry$RegistryKey;
    sget-object v1, Lsun/nio/ch/SocketOptionRegistry$LazyInitialization;->options:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/nio/ch/OptionKey;

    return-object v1
.end method
