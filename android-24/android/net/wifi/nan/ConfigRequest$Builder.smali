.class public final Landroid/net/wifi/nan/ConfigRequest$Builder;
.super Ljava/lang/Object;
.source "ConfigRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nan/ConfigRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mClusterHigh:I

.field private mClusterLow:I

.field private mMasterPreference:I

.field private mSupport5gBand:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 161
    iput-boolean v0, p0, Landroid/net/wifi/nan/ConfigRequest$Builder;->mSupport5gBand:Z

    #@6
    .line 162
    iput v0, p0, Landroid/net/wifi/nan/ConfigRequest$Builder;->mMasterPreference:I

    #@8
    .line 163
    iput v0, p0, Landroid/net/wifi/nan/ConfigRequest$Builder;->mClusterLow:I

    #@a
    .line 164
    const v0, 0xffff

    #@d
    iput v0, p0, Landroid/net/wifi/nan/ConfigRequest$Builder;->mClusterHigh:I

    #@f
    .line 160
    return-void
.end method


# virtual methods
.method public build()Landroid/net/wifi/nan/ConfigRequest;
    .locals 6

    #@0
    .prologue
    .line 254
    iget v0, p0, Landroid/net/wifi/nan/ConfigRequest$Builder;->mClusterLow:I

    #@2
    iget v1, p0, Landroid/net/wifi/nan/ConfigRequest$Builder;->mClusterHigh:I

    #@4
    if-le v0, v1, :cond_0

    #@6
    .line 255
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    .line 256
    const-string/jumbo v1, "Invalid argument combination - must have Cluster Low <= Cluster High"

    #@b
    .line 255
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 259
    :cond_0
    new-instance v0, Landroid/net/wifi/nan/ConfigRequest;

    #@11
    iget-boolean v1, p0, Landroid/net/wifi/nan/ConfigRequest$Builder;->mSupport5gBand:Z

    #@13
    iget v2, p0, Landroid/net/wifi/nan/ConfigRequest$Builder;->mMasterPreference:I

    #@15
    iget v3, p0, Landroid/net/wifi/nan/ConfigRequest$Builder;->mClusterLow:I

    #@17
    iget v4, p0, Landroid/net/wifi/nan/ConfigRequest$Builder;->mClusterHigh:I

    #@19
    const/4 v5, 0x0

    #@1a
    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/nan/ConfigRequest;-><init>(ZIIILandroid/net/wifi/nan/ConfigRequest;)V

    #@1d
    return-object v0
.end method

.method public setClusterHigh(I)Landroid/net/wifi/nan/ConfigRequest$Builder;
    .locals 2
    .param p1, "clusterHigh"    # I

    #@0
    .prologue
    .line 238
    if-gez p1, :cond_0

    #@2
    .line 239
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Cluster specification must be non-negative"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 241
    :cond_0
    const v0, 0xffff

    #@e
    if-le p1, v0, :cond_1

    #@10
    .line 242
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@12
    const-string/jumbo v1, "Cluster specification must not exceed 0xFFFF"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 245
    :cond_1
    iput p1, p0, Landroid/net/wifi/nan/ConfigRequest$Builder;->mClusterHigh:I

    #@1b
    .line 246
    return-object p0
.end method

.method public setClusterLow(I)Landroid/net/wifi/nan/ConfigRequest$Builder;
    .locals 2
    .param p1, "clusterLow"    # I

    #@0
    .prologue
    .line 214
    if-gez p1, :cond_0

    #@2
    .line 215
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Cluster specification must be non-negative"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 217
    :cond_0
    const v0, 0xffff

    #@e
    if-le p1, v0, :cond_1

    #@10
    .line 218
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@12
    const-string/jumbo v1, "Cluster specification must not exceed 0xFFFF"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 221
    :cond_1
    iput p1, p0, Landroid/net/wifi/nan/ConfigRequest$Builder;->mClusterLow:I

    #@1b
    .line 222
    return-object p0
.end method

.method public setMasterPreference(I)Landroid/net/wifi/nan/ConfigRequest$Builder;
    .locals 2
    .param p1, "masterPreference"    # I

    #@0
    .prologue
    const/16 v1, 0xff

    #@2
    .line 188
    if-gez p1, :cond_0

    #@4
    .line 189
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    .line 190
    const-string/jumbo v1, "Master Preference specification must be non-negative"

    #@9
    .line 189
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 192
    :cond_0
    const/4 v0, 0x1

    #@e
    if-eq p1, v0, :cond_1

    #@10
    if-ne p1, v1, :cond_2

    #@12
    .line 193
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@14
    const-string/jumbo v1, "Master Preference specification must not exceed 255 or use 1 or 255 (reserved values)"

    #@17
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0

    #@1b
    .line 192
    :cond_2
    if-gt p1, v1, :cond_1

    #@1d
    .line 197
    iput p1, p0, Landroid/net/wifi/nan/ConfigRequest$Builder;->mMasterPreference:I

    #@1f
    .line 198
    return-object p0
.end method

.method public setSupport5gBand(Z)Landroid/net/wifi/nan/ConfigRequest$Builder;
    .locals 0
    .param p1, "support5gBand"    # Z

    #@0
    .prologue
    .line 175
    iput-boolean p1, p0, Landroid/net/wifi/nan/ConfigRequest$Builder;->mSupport5gBand:Z

    #@2
    .line 176
    return-object p0
.end method
