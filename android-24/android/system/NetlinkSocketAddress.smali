.class public final Landroid/system/NetlinkSocketAddress;
.super Ljava/net/SocketAddress;
.source "NetlinkSocketAddress.java"


# instance fields
.field private final nlGroupsMask:I

.field private final nlPortId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 38
    invoke-direct {p0, v0, v0}, Landroid/system/NetlinkSocketAddress;-><init>(II)V

    #@4
    .line 37
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "nlPortId"    # I

    #@0
    .prologue
    .line 42
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/system/NetlinkSocketAddress;-><init>(II)V

    #@4
    .line 41
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "nlPortId"    # I
    .param p2, "nlGroupsMask"    # I

    #@0
    .prologue
    .line 45
    invoke-direct {p0}, Ljava/net/SocketAddress;-><init>()V

    #@3
    .line 46
    iput p1, p0, Landroid/system/NetlinkSocketAddress;->nlPortId:I

    #@5
    .line 47
    iput p2, p0, Landroid/system/NetlinkSocketAddress;->nlGroupsMask:I

    #@7
    .line 45
    return-void
.end method


# virtual methods
.method public getGroupsMask()I
    .locals 1

    #@0
    .prologue
    .line 55
    iget v0, p0, Landroid/system/NetlinkSocketAddress;->nlGroupsMask:I

    #@2
    return v0
.end method

.method public getPortId()I
    .locals 1

    #@0
    .prologue
    .line 51
    iget v0, p0, Landroid/system/NetlinkSocketAddress;->nlPortId:I

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 59
    invoke-static {p0}, Llibcore/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
