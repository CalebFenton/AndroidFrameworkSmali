.class public final Landroid/net/ipsec/ike/exceptions/IkeNetworkLostException;
.super Landroid/net/ipsec/ike/exceptions/IkeNonProtocolException;
.source "IkeNetworkLostException.java"


# instance fields
.field private final blacklist mNetwork:Landroid/net/Network;


# direct methods
.method public constructor whitelist <init>(Landroid/net/Network;)V
    .registers 3
    .param p1, "network"    # Landroid/net/Network;

    .line 56
    invoke-direct {p0}, Landroid/net/ipsec/ike/exceptions/IkeNonProtocolException;-><init>()V

    .line 57
    const-string v0, "network is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 59
    iput-object p1, p0, Landroid/net/ipsec/ike/exceptions/IkeNetworkLostException;->mNetwork:Landroid/net/Network;

    .line 60
    return-void
.end method


# virtual methods
.method public blacklist getMetricsErrorCode()I
    .registers 2

    .line 75
    const/high16 v0, 0x20000

    return v0
.end method

.method public whitelist getNetwork()Landroid/net/Network;
    .registers 2

    .line 65
    iget-object v0, p0, Landroid/net/ipsec/ike/exceptions/IkeNetworkLostException;->mNetwork:Landroid/net/Network;

    return-object v0
.end method
