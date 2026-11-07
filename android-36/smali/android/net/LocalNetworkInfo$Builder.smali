.class public final Landroid/net/LocalNetworkInfo$Builder;
.super Ljava/lang/Object;
.source "LocalNetworkInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/LocalNetworkInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mUpstreamNetwork:Landroid/net/Network;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/net/LocalNetworkInfo;
    .registers 3

    .line 93
    new-instance v0, Landroid/net/LocalNetworkInfo;

    iget-object v1, p0, Landroid/net/LocalNetworkInfo$Builder;->mUpstreamNetwork:Landroid/net/Network;

    invoke-direct {v0, v1}, Landroid/net/LocalNetworkInfo;-><init>(Landroid/net/Network;)V

    return-object v0
.end method

.method public blacklist setUpstreamNetwork(Landroid/net/Network;)Landroid/net/LocalNetworkInfo$Builder;
    .registers 2
    .param p1, "network"    # Landroid/net/Network;

    .line 85
    iput-object p1, p0, Landroid/net/LocalNetworkInfo$Builder;->mUpstreamNetwork:Landroid/net/Network;

    .line 86
    return-object p0
.end method
