.class public final Landroid/net/DscpPolicy$Builder;
.super Ljava/lang/Object;
.source "DscpPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/DscpPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilderFieldsSet:J

.field private final blacklist mDscp:I

.field private blacklist mDstAddr:Ljava/net/InetAddress;

.field private blacklist mDstPortRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPolicyId:I

.field private blacklist mProtocol:I

.field private blacklist mSrcAddr:Ljava/net/InetAddress;

.field private blacklist mSrcPort:I


# direct methods
.method public constructor whitelist <init>(II)V
    .registers 5
    .param p1, "policyId"    # I
    .param p2, "dscpValue"    # I

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/DscpPolicy$Builder;->mSrcPort:I

    .line 280
    iput v0, p0, Landroid/net/DscpPolicy$Builder;->mProtocol:I

    .line 283
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/DscpPolicy$Builder;->mBuilderFieldsSet:J

    .line 295
    iput p1, p0, Landroid/net/DscpPolicy$Builder;->mPolicyId:I

    .line 296
    iput p2, p0, Landroid/net/DscpPolicy$Builder;->mDscp:I

    .line 297
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/net/DscpPolicy;
    .registers 9

    .line 343
    new-instance v0, Landroid/net/DscpPolicy;

    iget v1, p0, Landroid/net/DscpPolicy$Builder;->mPolicyId:I

    iget v2, p0, Landroid/net/DscpPolicy$Builder;->mDscp:I

    iget-object v3, p0, Landroid/net/DscpPolicy$Builder;->mSrcAddr:Ljava/net/InetAddress;

    iget-object v4, p0, Landroid/net/DscpPolicy$Builder;->mDstAddr:Ljava/net/InetAddress;

    iget v5, p0, Landroid/net/DscpPolicy$Builder;->mSrcPort:I

    iget v6, p0, Landroid/net/DscpPolicy$Builder;->mProtocol:I

    iget-object v7, p0, Landroid/net/DscpPolicy$Builder;->mDstPortRange:Landroid/util/Range;

    invoke-direct/range {v0 .. v7}, Landroid/net/DscpPolicy;-><init>(IILjava/net/InetAddress;Ljava/net/InetAddress;IILandroid/util/Range;)V

    return-object v0
.end method

.method public whitelist setDestinationAddress(Ljava/net/InetAddress;)Landroid/net/DscpPolicy$Builder;
    .registers 2
    .param p1, "value"    # Ljava/net/InetAddress;

    .line 311
    iput-object p1, p0, Landroid/net/DscpPolicy$Builder;->mDstAddr:Ljava/net/InetAddress;

    .line 312
    return-object p0
.end method

.method public whitelist setDestinationPortRange(Landroid/util/Range;)Landroid/net/DscpPolicy$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/net/DscpPolicy$Builder;"
        }
    .end annotation

    .line 335
    .local p1, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    iput-object p1, p0, Landroid/net/DscpPolicy$Builder;->mDstPortRange:Landroid/util/Range;

    .line 336
    return-object p0
.end method

.method public whitelist setProtocol(I)Landroid/net/DscpPolicy$Builder;
    .registers 2
    .param p1, "value"    # I

    .line 327
    iput p1, p0, Landroid/net/DscpPolicy$Builder;->mProtocol:I

    .line 328
    return-object p0
.end method

.method public whitelist setSourceAddress(Ljava/net/InetAddress;)Landroid/net/DscpPolicy$Builder;
    .registers 2
    .param p1, "value"    # Ljava/net/InetAddress;

    .line 303
    iput-object p1, p0, Landroid/net/DscpPolicy$Builder;->mSrcAddr:Ljava/net/InetAddress;

    .line 304
    return-object p0
.end method

.method public whitelist setSourcePort(I)Landroid/net/DscpPolicy$Builder;
    .registers 2
    .param p1, "value"    # I

    .line 319
    iput p1, p0, Landroid/net/DscpPolicy$Builder;->mSrcPort:I

    .line 320
    return-object p0
.end method
