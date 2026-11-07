.class public Landroid/net/wifi/aware/PeerHandle;
.super Ljava/lang/Object;
.source "PeerHandle.java"


# instance fields
.field public greylist-max-o peerId:I


# direct methods
.method public constructor greylist-max-o <init>(I)V
    .registers 2
    .param p1, "peerId"    # I

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Landroid/net/wifi/aware/PeerHandle;->peerId:I

    .line 41
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 48
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 49
    return v0

    .line 52
    :cond_4
    instance-of v1, p1, Landroid/net/wifi/aware/PeerHandle;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 53
    return v2

    .line 56
    :cond_a
    iget v1, p0, Landroid/net/wifi/aware/PeerHandle;->peerId:I

    move-object v3, p1

    check-cast v3, Landroid/net/wifi/aware/PeerHandle;

    iget v3, v3, Landroid/net/wifi/aware/PeerHandle;->peerId:I

    if-ne v1, v3, :cond_14

    goto :goto_15

    :cond_14
    move v0, v2

    :goto_15
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 61
    iget v0, p0, Landroid/net/wifi/aware/PeerHandle;->peerId:I

    return v0
.end method
