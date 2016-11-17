.class Lsun/nio/ch/SocketOptionRegistry;
.super Ljava/lang/Object;
.source "SocketOptionRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/ch/SocketOptionRegistry$LazyInitialization;,
        Lsun/nio/ch/SocketOptionRegistry$RegistryKey;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static findOption(Ljava/net/SocketOption;Ljava/net/ProtocolFamily;)Lsun/nio/ch/OptionKey;
    .locals 2
    .param p1, "family"    # Ljava/net/ProtocolFamily;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketOption",
            "<*>;",
            "Ljava/net/ProtocolFamily;",
            ")",
            "Lsun/nio/ch/OptionKey;"
        }
    .end annotation

    #@0
    .prologue
    .line 80
    .local p0, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<*>;"
    new-instance v0, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;

    #@2
    invoke-direct {v0, p0, p1}, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;-><init>(Ljava/net/SocketOption;Ljava/net/ProtocolFamily;)V

    #@5
    .line 81
    .local v0, "key":Lsun/nio/ch/SocketOptionRegistry$RegistryKey;
    sget-object v1, Lsun/nio/ch/SocketOptionRegistry$LazyInitialization;->options:Ljava/util/Map;

    #@7
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    check-cast v1, Lsun/nio/ch/OptionKey;

    #@d
    return-object v1
.end method
