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
.field private final family:Ljava/net/ProtocolFamily;

.field private final name:Ljava/net/SocketOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/net/SocketOption",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/net/SocketOption;Ljava/net/ProtocolFamily;)V
    .locals 0
    .param p2, "family"    # Ljava/net/ProtocolFamily;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketOption",
            "<*>;",
            "Ljava/net/ProtocolFamily;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 40
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 41
    iput-object p1, p0, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;->name:Ljava/net/SocketOption;

    #@5
    .line 42
    iput-object p2, p0, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;->family:Ljava/net/ProtocolFamily;

    #@7
    .line 40
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "ob"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 48
    if-nez p1, :cond_0

    #@3
    return v3

    #@4
    .line 49
    :cond_0
    instance-of v1, p1, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;

    #@6
    if-nez v1, :cond_1

    #@8
    return v3

    #@9
    :cond_1
    move-object v0, p1

    #@a
    .line 50
    nop

    #@b
    nop

    #@c
    .line 51
    .local v0, "other":Lsun/nio/ch/SocketOptionRegistry$RegistryKey;
    iget-object v1, p0, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;->name:Ljava/net/SocketOption;

    #@e
    iget-object v2, v0, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;->name:Ljava/net/SocketOption;

    #@10
    if-eq v1, v2, :cond_2

    #@12
    return v3

    #@13
    .line 52
    :cond_2
    iget-object v1, p0, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;->family:Ljava/net/ProtocolFamily;

    #@15
    iget-object v2, v0, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;->family:Ljava/net/ProtocolFamily;

    #@17
    if-eq v1, v2, :cond_3

    #@19
    return v3

    #@1a
    .line 53
    :cond_3
    const/4 v1, 0x1

    #@1b
    return v1
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 45
    iget-object v0, p0, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;->name:Ljava/net/SocketOption;

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    #@5
    move-result v0

    #@6
    iget-object v1, p0, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;->family:Ljava/net/ProtocolFamily;

    #@8
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    #@b
    move-result v1

    #@c
    add-int/2addr v0, v1

    #@d
    return v0
.end method
