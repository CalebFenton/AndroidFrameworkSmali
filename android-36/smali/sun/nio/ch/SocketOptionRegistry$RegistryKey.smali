.class Lsun/nio/ch/SocketOptionRegistry$RegistryKey;
.super Ljava/lang/Object;
.source "SocketOptionRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/ch/SocketOptionRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RegistryKey"
.end annotation


# instance fields
.field private final blacklist family:Ljava/net/ProtocolFamily;

.field private final blacklist name:Ljava/net/SocketOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/net/SocketOption<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/net/SocketOption;Ljava/net/ProtocolFamily;)V
    .registers 3
    .param p2, "family"    # Ljava/net/ProtocolFamily;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketOption<",
            "*>;",
            "Ljava/net/ProtocolFamily;",
            ")V"
        }
    .end annotation

    .line 40
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;->name:Ljava/net/SocketOption;

    .line 42
    iput-object p2, p0, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;->family:Ljava/net/ProtocolFamily;

    .line 43
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "ob"    # Ljava/lang/Object;

    .line 48
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 49
    :cond_4
    instance-of v1, p1, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;

    if-nez v1, :cond_9

    return v0

    .line 50
    :cond_9
    move-object v1, p1

    check-cast v1, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;

    .line 51
    .local v1, "other":Lsun/nio/ch/SocketOptionRegistry$RegistryKey;
    iget-object v2, p0, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;->name:Ljava/net/SocketOption;

    iget-object v3, v1, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;->name:Ljava/net/SocketOption;

    if-eq v2, v3, :cond_13

    return v0

    .line 52
    :cond_13
    iget-object v2, p0, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;->family:Ljava/net/ProtocolFamily;

    iget-object v3, v1, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;->family:Ljava/net/ProtocolFamily;

    if-eq v2, v3, :cond_1a

    return v0

    .line 53
    :cond_1a
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 45
    iget-object v0, p0, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;->name:Ljava/net/SocketOption;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;->family:Ljava/net/ProtocolFamily;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
