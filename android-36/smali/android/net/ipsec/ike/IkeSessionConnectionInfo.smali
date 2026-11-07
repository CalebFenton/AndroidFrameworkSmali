.class public final Landroid/net/ipsec/ike/IkeSessionConnectionInfo;
.super Ljava/lang/Object;
.source "IkeSessionConnectionInfo.java"


# instance fields
.field private final blacklist mLocalAddress:Ljava/net/InetAddress;

.field private final blacklist mNetwork:Landroid/net/Network;

.field private final blacklist mRemoteAddress:Ljava/net/InetAddress;


# direct methods
.method public constructor whitelist <init>(Ljava/net/InetAddress;Ljava/net/InetAddress;Landroid/net/Network;)V
    .registers 5
    .param p1, "localAddress"    # Ljava/net/InetAddress;
    .param p2, "remoteAddress"    # Ljava/net/InetAddress;
    .param p3, "network"    # Landroid/net/Network;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string v0, "localAddress not provided"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    const-string v0, "remoteAddress not provided"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    const-string v0, "network not provided"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    iput-object p1, p0, Landroid/net/ipsec/ike/IkeSessionConnectionInfo;->mLocalAddress:Ljava/net/InetAddress;

    .line 52
    iput-object p2, p0, Landroid/net/ipsec/ike/IkeSessionConnectionInfo;->mRemoteAddress:Ljava/net/InetAddress;

    .line 53
    iput-object p3, p0, Landroid/net/ipsec/ike/IkeSessionConnectionInfo;->mNetwork:Landroid/net/Network;

    .line 54
    return-void
.end method


# virtual methods
.method public whitelist getLocalAddress()Ljava/net/InetAddress;
    .registers 2

    .line 63
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeSessionConnectionInfo;->mLocalAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public whitelist getNetwork()Landroid/net/Network;
    .registers 2

    .line 83
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeSessionConnectionInfo;->mNetwork:Landroid/net/Network;

    return-object v0
.end method

.method public whitelist getRemoteAddress()Ljava/net/InetAddress;
    .registers 2

    .line 73
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeSessionConnectionInfo;->mRemoteAddress:Ljava/net/InetAddress;

    return-object v0
.end method
