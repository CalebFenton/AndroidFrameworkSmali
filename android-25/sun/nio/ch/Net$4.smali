.class final Lsun/nio/ch/Net$4;
.super Ljava/lang/Object;
.source "Net.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/nio/ch/Net;->anyInet4Address(Ljava/net/NetworkInterface;)Ljava/net/Inet4Address;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/net/Inet4Address;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$interf:Ljava/net/NetworkInterface;


# direct methods
.method constructor <init>(Ljava/net/NetworkInterface;)V
    .locals 0
    .param p1, "val$interf"    # Ljava/net/NetworkInterface;

    #@0
    .prologue
    .line 259
    iput-object p1, p0, Lsun/nio/ch/Net$4;->val$interf:Ljava/net/NetworkInterface;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 260
    invoke-virtual {p0}, Lsun/nio/ch/Net$4;->run()Ljava/net/Inet4Address;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public run()Ljava/net/Inet4Address;
    .locals 3

    #@0
    .prologue
    .line 261
    iget-object v2, p0, Lsun/nio/ch/Net$4;->val$interf:Ljava/net/NetworkInterface;

    #@2
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    #@5
    move-result-object v1

    #@6
    .line 262
    .local v1, "addrs":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_1

    #@c
    .line 263
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Ljava/net/InetAddress;

    #@12
    .line 264
    .local v0, "addr":Ljava/net/InetAddress;
    instance-of v2, v0, Ljava/net/Inet4Address;

    #@14
    if-eqz v2, :cond_0

    #@16
    .line 265
    nop

    #@17
    nop

    #@18
    .end local v0    # "addr":Ljava/net/InetAddress;
    return-object v0

    #@19
    .line 268
    :cond_1
    const/4 v2, 0x0

    #@1a
    return-object v2
.end method
