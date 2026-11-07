.class public final Landroid/graphics/pdf/RenderParams$Builder;
.super Ljava/lang/Object;
.source "RenderParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/pdf/RenderParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mRenderFlags:I

.field private final blacklist mRenderMode:I


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 2
    .param p1, "renderMode"    # I

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput p1, p0, Landroid/graphics/pdf/RenderParams$Builder;->mRenderMode:I

    .line 155
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/graphics/pdf/RenderParams;
    .registers 5

    .line 218
    new-instance v0, Landroid/graphics/pdf/RenderParams;

    iget v1, p0, Landroid/graphics/pdf/RenderParams$Builder;->mRenderMode:I

    iget v2, p0, Landroid/graphics/pdf/RenderParams$Builder;->mRenderFlags:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/pdf/RenderParams;-><init>(IILandroid/graphics/pdf/RenderParams-IA;)V

    return-object v0
.end method

.method public whitelist setRenderFlags(I)Landroid/graphics/pdf/RenderParams$Builder;
    .registers 3
    .param p1, "renderFlags"    # I

    .line 168
    invoke-static {}, Landroid/graphics/pdf/RenderParams;->-$$Nest$smgetRenderMask()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/graphics/pdf/RenderParams$Builder;->setRenderFlags(II)Landroid/graphics/pdf/RenderParams$Builder;

    .line 169
    return-object p0
.end method

.method public whitelist setRenderFlags(II)Landroid/graphics/pdf/RenderParams$Builder;
    .registers 5
    .param p1, "renderFlags"    # I
    .param p2, "mask"    # I

    .line 201
    invoke-static {}, Landroid/graphics/pdf/RenderParams;->-$$Nest$smgetRenderMask()I

    move-result v0

    and-int/2addr p2, v0

    .line 204
    and-int/2addr p1, p2

    .line 207
    iget v0, p0, Landroid/graphics/pdf/RenderParams$Builder;->mRenderFlags:I

    not-int v1, p2

    and-int/2addr v0, v1

    or-int/2addr v0, p1

    iput v0, p0, Landroid/graphics/pdf/RenderParams$Builder;->mRenderFlags:I

    .line 208
    return-object p0
.end method
