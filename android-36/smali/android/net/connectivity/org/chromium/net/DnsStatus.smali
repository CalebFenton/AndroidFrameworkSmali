.class public Landroid/net/connectivity/org/chromium/net/DnsStatus;
.super Ljava/lang/Object;
.source "DnsStatus.java"


# annotations
.annotation runtime Landroid/net/connectivity/org/jni_zero/JNINamespace;
    value = "net::android"
.end annotation


# instance fields
.field private final blacklist mDnsServers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPrivateDnsActive:Z

.field private final blacklist mPrivateDnsServerName:Ljava/lang/String;

.field private final blacklist mSearchDomains:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p2, "privateDnsActive"    # Z
    .param p3, "privateDnsServerName"    # Ljava/lang/String;
    .param p4, "searchDomains"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 28
    .local p1, "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/DnsStatus;->mDnsServers:Ljava/util/List;

    .line 30
    iput-boolean p2, p0, Landroid/net/connectivity/org/chromium/net/DnsStatus;->mPrivateDnsActive:Z

    .line 31
    const-string v0, ""

    if-eqz p3, :cond_d

    move-object v1, p3

    goto :goto_e

    :cond_d
    move-object v1, v0

    :goto_e
    iput-object v1, p0, Landroid/net/connectivity/org/chromium/net/DnsStatus;->mPrivateDnsServerName:Ljava/lang/String;

    .line 32
    if-eqz p4, :cond_13

    move-object v0, p4

    :cond_13
    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/DnsStatus;->mSearchDomains:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public blacklist getDnsServers()[[B
    .registers 4

    .line 37
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/DnsStatus;->mDnsServers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [[B

    .line 38
    .local v0, "dnsServers":[[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/DnsStatus;->mDnsServers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 39
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/DnsStatus;->mDnsServers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 38
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 41
    .end local v1    # "i":I
    :cond_22
    return-object v0
.end method

.method public blacklist getPrivateDnsActive()Z
    .registers 2

    .line 46
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/DnsStatus;->mPrivateDnsActive:Z

    return v0
.end method

.method public blacklist getPrivateDnsServerName()Ljava/lang/String;
    .registers 2

    .line 51
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/DnsStatus;->mPrivateDnsServerName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSearchDomains()Ljava/lang/String;
    .registers 2

    .line 56
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/DnsStatus;->mSearchDomains:Ljava/lang/String;

    return-object v0
.end method
