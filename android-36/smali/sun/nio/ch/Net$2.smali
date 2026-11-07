.class Lsun/nio/ch/Net$2;
.super Ljava/lang/Object;
.source "Net.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/nio/ch/Net;->anyInet4Address(Ljava/net/NetworkInterface;)Ljava/net/Inet4Address;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/net/Inet4Address;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$interf:Ljava/net/NetworkInterface;


# direct methods
.method constructor blacklist <init>(Ljava/net/NetworkInterface;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 208
    iput-object p1, p0, Lsun/nio/ch/Net$2;->val$interf:Ljava/net/NetworkInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 208
    invoke-virtual {p0}, Lsun/nio/ch/Net$2;->run()Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljava/net/Inet4Address;
    .registers 4

    .line 210
    iget-object v0, p0, Lsun/nio/ch/Net$2;->val$interf:Ljava/net/NetworkInterface;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v0

    .line 211
    .local v0, "addrs":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :goto_6
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 212
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 213
    .local v1, "addr":Ljava/net/InetAddress;
    instance-of v2, v1, Ljava/net/Inet4Address;

    if-eqz v2, :cond_1a

    .line 214
    move-object v2, v1

    check-cast v2, Ljava/net/Inet4Address;

    return-object v2

    .line 216
    .end local v1    # "addr":Ljava/net/InetAddress;
    :cond_1a
    goto :goto_6

    .line 217
    :cond_1b
    const/4 v1, 0x0

    return-object v1
.end method
