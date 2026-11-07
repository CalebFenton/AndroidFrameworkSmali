.class Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Ipv6AddrInfo;
.super Ljava/lang/Object;
.source "IkeConnectionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Ipv6AddrInfo"
.end annotation


# instance fields
.field public final blacklist address:Ljava/net/Inet6Address;

.field public final blacklist isNat64Addr:Z


# direct methods
.method constructor blacklist <init>(Ljava/net/Inet6Address;Z)V
    .registers 3
    .param p1, "address"    # Ljava/net/Inet6Address;
    .param p2, "isNat64Addr"    # Z

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Ipv6AddrInfo;->address:Ljava/net/Inet6Address;

    .line 246
    iput-boolean p2, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Ipv6AddrInfo;->isNat64Addr:Z

    .line 247
    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 251
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Ipv6AddrInfo;->address:Ljava/net/Inet6Address;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, "result":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Ipv6AddrInfo;->isNat64Addr:Z

    if-eqz v1, :cond_1e

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(Nat64)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 255
    :cond_1e
    return-object v0
.end method
