.class public final Landroid/app/Vr2dDisplayProperties$Builder;
.super Ljava/lang/Object;
.source "Vr2dDisplayProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Vr2dDisplayProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o mAddedFlags:I

.field private greylist-max-o mDpi:I

.field private greylist-max-o mHeight:I

.field private greylist-max-o mRemovedFlags:I

.field private greylist-max-o mWidth:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mAddedFlags:I

    .line 196
    iput v0, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mRemovedFlags:I

    .line 199
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mWidth:I

    .line 200
    iput v0, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mHeight:I

    .line 201
    iput v0, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mDpi:I

    .line 204
    return-void
.end method


# virtual methods
.method public whitelist addFlags(I)Landroid/app/Vr2dDisplayProperties$Builder;
    .registers 4
    .param p1, "flags"    # I

    .line 235
    iget v0, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mAddedFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mAddedFlags:I

    .line 236
    iget v0, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mRemovedFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mRemovedFlags:I

    .line 237
    return-object p0
.end method

.method public whitelist build()Landroid/app/Vr2dDisplayProperties;
    .registers 8

    .line 255
    new-instance v0, Landroid/app/Vr2dDisplayProperties;

    iget v1, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mWidth:I

    iget v2, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mHeight:I

    iget v3, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mDpi:I

    iget v4, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mAddedFlags:I

    iget v5, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mRemovedFlags:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/app/Vr2dDisplayProperties;-><init>(IIIIILandroid/app/Vr2dDisplayProperties-IA;)V

    return-object v0
.end method

.method public whitelist removeFlags(I)Landroid/app/Vr2dDisplayProperties$Builder;
    .registers 4
    .param p1, "flags"    # I

    .line 245
    iget v0, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mRemovedFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mRemovedFlags:I

    .line 246
    iget v0, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mAddedFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mAddedFlags:I

    .line 247
    return-object p0
.end method

.method public whitelist setDimensions(III)Landroid/app/Vr2dDisplayProperties$Builder;
    .registers 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "dpi"    # I

    .line 211
    iput p1, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mWidth:I

    .line 212
    iput p2, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mHeight:I

    .line 213
    iput p3, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mDpi:I

    .line 214
    return-object p0
.end method

.method public whitelist setEnabled(Z)Landroid/app/Vr2dDisplayProperties$Builder;
    .registers 3
    .param p1, "enabled"    # Z

    .line 222
    const/4 v0, 0x1

    if-eqz p1, :cond_7

    .line 223
    invoke-virtual {p0, v0}, Landroid/app/Vr2dDisplayProperties$Builder;->addFlags(I)Landroid/app/Vr2dDisplayProperties$Builder;

    goto :goto_a

    .line 225
    :cond_7
    invoke-virtual {p0, v0}, Landroid/app/Vr2dDisplayProperties$Builder;->removeFlags(I)Landroid/app/Vr2dDisplayProperties$Builder;

    .line 227
    :goto_a
    return-object p0
.end method
