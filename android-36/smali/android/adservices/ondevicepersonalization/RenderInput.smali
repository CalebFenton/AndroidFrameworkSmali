.class public final Landroid/adservices/ondevicepersonalization/RenderInput;
.super Ljava/lang/Object;
.source "RenderInput.java"


# instance fields
.field private blacklist mHeight:I

.field blacklist mRenderingConfig:Landroid/adservices/ondevicepersonalization/RenderingConfig;

.field private blacklist mWidth:I


# direct methods
.method public constructor whitelist <init>(IILandroid/adservices/ondevicepersonalization/RenderingConfig;)V
    .registers 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "renderingConfig"    # Landroid/adservices/ondevicepersonalization/RenderingConfig;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Landroid/adservices/ondevicepersonalization/RenderInput;->mWidth:I

    .line 35
    iput v0, p0, Landroid/adservices/ondevicepersonalization/RenderInput;->mHeight:I

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/RenderInput;->mRenderingConfig:Landroid/adservices/ondevicepersonalization/RenderingConfig;

    .line 64
    iput p1, p0, Landroid/adservices/ondevicepersonalization/RenderInput;->mWidth:I

    .line 65
    iput p2, p0, Landroid/adservices/ondevicepersonalization/RenderInput;->mHeight:I

    .line 66
    iput-object p3, p0, Landroid/adservices/ondevicepersonalization/RenderInput;->mRenderingConfig:Landroid/adservices/ondevicepersonalization/RenderingConfig;

    .line 69
    return-void
.end method

.method public constructor blacklist <init>(Landroid/adservices/ondevicepersonalization/RenderInputParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/adservices/ondevicepersonalization/RenderInputParcel;

    .line 45
    invoke-virtual {p1}, Landroid/adservices/ondevicepersonalization/RenderInputParcel;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/adservices/ondevicepersonalization/RenderInputParcel;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/adservices/ondevicepersonalization/RenderInputParcel;->getRenderingConfig()Landroid/adservices/ondevicepersonalization/RenderingConfig;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Landroid/adservices/ondevicepersonalization/RenderInput;-><init>(IILandroid/adservices/ondevicepersonalization/RenderingConfig;)V

    .line 46
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 99
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 100
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2e

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2e

    .line 102
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/adservices/ondevicepersonalization/RenderInput;

    .line 104
    .local v2, "that":Landroid/adservices/ondevicepersonalization/RenderInput;
    iget v3, p0, Landroid/adservices/ondevicepersonalization/RenderInput;->mWidth:I

    iget v4, v2, Landroid/adservices/ondevicepersonalization/RenderInput;->mWidth:I

    if-ne v3, v4, :cond_2c

    iget v3, p0, Landroid/adservices/ondevicepersonalization/RenderInput;->mHeight:I

    iget v4, v2, Landroid/adservices/ondevicepersonalization/RenderInput;->mHeight:I

    if-ne v3, v4, :cond_2c

    iget-object v3, p0, Landroid/adservices/ondevicepersonalization/RenderInput;->mRenderingConfig:Landroid/adservices/ondevicepersonalization/RenderingConfig;

    iget-object v4, v2, Landroid/adservices/ondevicepersonalization/RenderInput;->mRenderingConfig:Landroid/adservices/ondevicepersonalization/RenderingConfig;

    .line 107
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    goto :goto_2d

    :cond_2c
    move v0, v1

    .line 104
    :goto_2d
    return v0

    .line 100
    .end local v2    # "that":Landroid/adservices/ondevicepersonalization/RenderInput;
    :cond_2e
    :goto_2e
    return v1
.end method

.method public whitelist getHeight()I
    .registers 2

    .line 82
    iget v0, p0, Landroid/adservices/ondevicepersonalization/RenderInput;->mHeight:I

    return v0
.end method

.method public whitelist getRenderingConfig()Landroid/adservices/ondevicepersonalization/RenderingConfig;
    .registers 2

    .line 90
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/RenderInput;->mRenderingConfig:Landroid/adservices/ondevicepersonalization/RenderingConfig;

    return-object v0
.end method

.method public whitelist getWidth()I
    .registers 2

    .line 75
    iget v0, p0, Landroid/adservices/ondevicepersonalization/RenderInput;->mWidth:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 115
    const/4 v0, 0x1

    .line 116
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/adservices/ondevicepersonalization/RenderInput;->mWidth:I

    add-int/2addr v1, v2

    .line 117
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/adservices/ondevicepersonalization/RenderInput;->mHeight:I

    add-int/2addr v0, v2

    .line 118
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/RenderInput;->mRenderingConfig:Landroid/adservices/ondevicepersonalization/RenderingConfig;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 119
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    return v1
.end method
