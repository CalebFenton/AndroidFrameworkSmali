.class public Landroid/telephony/ims/feature/ImsFeature$Capabilities;
.super Ljava/lang/Object;
.source "ImsFeature.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/feature/ImsFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Capabilities"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected whitelist mCapabilities:I


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->mCapabilities:I

    .line 240
    return-void
.end method

.method protected constructor greylist-max-o <init>(I)V
    .registers 3
    .param p1, "capabilities"    # I

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->mCapabilities:I

    .line 246
    iput p1, p0, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->mCapabilities:I

    .line 247
    return-void
.end method


# virtual methods
.method public greylist-max-o addCapabilities(I)V
    .registers 3
    .param p1, "capabilities"    # I

    .line 255
    iget v0, p0, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->mCapabilities:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->mCapabilities:I

    .line 256
    return-void
.end method

.method public greylist-max-o copy()Landroid/telephony/ims/feature/ImsFeature$Capabilities;
    .registers 3

    .line 280
    new-instance v0, Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    iget v1, p0, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->mCapabilities:I

    invoke-direct {v0, v1}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;-><init>(I)V

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 296
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 297
    :cond_4
    instance-of v1, p1, Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 299
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    .line 301
    .local v1, "that":Landroid/telephony/ims/feature/ImsFeature$Capabilities;
    iget v3, p0, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->mCapabilities:I

    iget v4, v1, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->mCapabilities:I

    if-ne v3, v4, :cond_14

    goto :goto_15

    :cond_14
    move v0, v2

    :goto_15
    return v0
.end method

.method public greylist-max-o getMask()I
    .registers 2

    .line 288
    iget v0, p0, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->mCapabilities:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 309
    iget v0, p0, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->mCapabilities:I

    return v0
.end method

.method public greylist-max-o isCapable(I)Z
    .registers 3
    .param p1, "capabilities"    # I

    .line 272
    iget v0, p0, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->mCapabilities:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public greylist-max-o removeCapabilities(I)V
    .registers 4
    .param p1, "capabilities"    # I

    .line 264
    iget v0, p0, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->mCapabilities:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->mCapabilities:I

    .line 265
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Capabilities: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->mCapabilities:I

    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
