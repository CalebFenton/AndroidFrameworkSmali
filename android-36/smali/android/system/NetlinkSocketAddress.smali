.class public final Landroid/system/NetlinkSocketAddress;
.super Ljava/net/SocketAddress;
.source "NetlinkSocketAddress.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# instance fields
.field private final greylist-max-o nlGroupsMask:I

.field private final greylist-max-o nlPortId:I


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/system/NetlinkSocketAddress;-><init>(II)V

    .line 76
    return-void
.end method

.method public constructor greylist-max-o <init>(I)V
    .registers 3
    .param p1, "nlPortId"    # I

    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/system/NetlinkSocketAddress;-><init>(II)V

    .line 83
    return-void
.end method

.method public constructor greylist test-api <init>(II)V
    .registers 3
    .param p1, "nlPortId"    # I
    .param p2, "nlGroupsMask"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 95
    invoke-direct {p0}, Ljava/net/SocketAddress;-><init>()V

    .line 96
    iput p1, p0, Landroid/system/NetlinkSocketAddress;->nlPortId:I

    .line 97
    iput p2, p0, Landroid/system/NetlinkSocketAddress;->nlGroupsMask:I

    .line 98
    return-void
.end method


# virtual methods
.method public greylist-max-o test-api getGroupsMask()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 121
    iget v0, p0, Landroid/system/NetlinkSocketAddress;->nlGroupsMask:I

    return v0
.end method

.method public greylist-max-o test-api getPortId()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 109
    iget v0, p0, Landroid/system/NetlinkSocketAddress;->nlPortId:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 128
    invoke-static {p0}, Llibcore/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
