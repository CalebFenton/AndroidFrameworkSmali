.class public final Landroid/system/VmSocketAddress;
.super Ljava/net/SocketAddress;
.source "VmSocketAddress.java"


# instance fields
.field private blacklist svmCid:I

.field private blacklist svmPort:I


# direct methods
.method public constructor whitelist test-api <init>(II)V
    .registers 3
    .param p1, "svmPort"    # I
    .param p2, "svmCid"    # I

    .line 59
    invoke-direct {p0}, Ljava/net/SocketAddress;-><init>()V

    .line 60
    iput p1, p0, Landroid/system/VmSocketAddress;->svmPort:I

    .line 61
    iput p2, p0, Landroid/system/VmSocketAddress;->svmCid:I

    .line 62
    return-void
.end method


# virtual methods
.method public whitelist test-api getSvmCid()I
    .registers 2

    .line 75
    iget v0, p0, Landroid/system/VmSocketAddress;->svmCid:I

    return v0
.end method

.method public whitelist test-api getSvmPort()I
    .registers 2

    .line 68
    iget v0, p0, Landroid/system/VmSocketAddress;->svmPort:I

    return v0
.end method
