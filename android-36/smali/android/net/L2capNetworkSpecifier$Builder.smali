.class public final Landroid/net/L2capNetworkSpecifier$Builder;
.super Ljava/lang/Object;
.source "L2capNetworkSpecifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/L2capNetworkSpecifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mHeaderCompression:I

.field private blacklist mPsm:I

.field private blacklist mRemoteAddress:Landroid/net/MacAddress;

.field private blacklist mRole:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/L2capNetworkSpecifier$Builder;->mRole:I

    .line 222
    iput v0, p0, Landroid/net/L2capNetworkSpecifier$Builder;->mHeaderCompression:I

    .line 226
    iput v0, p0, Landroid/net/L2capNetworkSpecifier$Builder;->mPsm:I

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/net/L2capNetworkSpecifier;
    .registers 6

    .line 288
    iget v0, p0, Landroid/net/L2capNetworkSpecifier$Builder;->mRole:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Landroid/net/L2capNetworkSpecifier$Builder;->mRemoteAddress:Landroid/net/MacAddress;

    if-nez v0, :cond_a

    goto :goto_12

    .line 289
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Specifying a remote address is not valid for server role."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_12
    :goto_12
    new-instance v0, Landroid/net/L2capNetworkSpecifier;

    iget v1, p0, Landroid/net/L2capNetworkSpecifier$Builder;->mRole:I

    iget v2, p0, Landroid/net/L2capNetworkSpecifier$Builder;->mHeaderCompression:I

    iget-object v3, p0, Landroid/net/L2capNetworkSpecifier$Builder;->mRemoteAddress:Landroid/net/MacAddress;

    iget v4, p0, Landroid/net/L2capNetworkSpecifier$Builder;->mPsm:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/net/L2capNetworkSpecifier;-><init>(IILandroid/net/MacAddress;I)V

    return-object v0
.end method

.method public whitelist setHeaderCompression(I)Landroid/net/L2capNetworkSpecifier$Builder;
    .registers 2
    .param p1, "headerCompression"    # I

    .line 252
    iput p1, p0, Landroid/net/L2capNetworkSpecifier$Builder;->mHeaderCompression:I

    .line 253
    return-object p0
.end method

.method public whitelist setPsm(I)Landroid/net/L2capNetworkSpecifier$Builder;
    .registers 4
    .param p1, "psm"    # I

    .line 278
    if-ltz p1, :cond_9

    const/16 v0, 0xff

    if-gt p1, v0, :cond_9

    .line 281
    iput p1, p0, Landroid/net/L2capNetworkSpecifier$Builder;->mPsm:I

    .line 282
    return-object p0

    .line 279
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PSM must be PSM_ANY or within range [1, 255]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setRemoteAddress(Landroid/net/MacAddress;)Landroid/net/L2capNetworkSpecifier$Builder;
    .registers 2
    .param p1, "remoteAddress"    # Landroid/net/MacAddress;

    .line 265
    iput-object p1, p0, Landroid/net/L2capNetworkSpecifier$Builder;->mRemoteAddress:Landroid/net/MacAddress;

    .line 266
    return-object p0
.end method

.method public whitelist setRole(I)Landroid/net/L2capNetworkSpecifier$Builder;
    .registers 2
    .param p1, "role"    # I

    .line 237
    iput p1, p0, Landroid/net/L2capNetworkSpecifier$Builder;->mRole:I

    .line 238
    return-object p0
.end method
