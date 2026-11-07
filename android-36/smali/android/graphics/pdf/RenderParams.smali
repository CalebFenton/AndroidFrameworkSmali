.class public final Landroid/graphics/pdf/RenderParams;
.super Ljava/lang/Object;
.source "RenderParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/pdf/RenderParams$Builder;,
        Landroid/graphics/pdf/RenderParams$RenderFlags;,
        Landroid/graphics/pdf/RenderParams$RenderMode;
    }
.end annotation


# static fields
.field public static final blacklist FLAG_RENDER_FREETEXT_ANNOTATIONS:I = 0x10

.field public static final whitelist FLAG_RENDER_HIGHLIGHT_ANNOTATIONS:I = 0x4

.field public static final blacklist FLAG_RENDER_STAMP_ANNOTATIONS:I = 0x8

.field public static final whitelist FLAG_RENDER_TEXT_ANNOTATIONS:I = 0x2

.field public static final whitelist RENDER_MODE_FOR_DISPLAY:I = 0x1

.field public static final whitelist RENDER_MODE_FOR_PRINT:I = 0x2


# instance fields
.field private final blacklist mRenderFlags:I

.field private final blacklist mRenderMode:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smgetRenderMask()I
    .registers 1

    invoke-static {}, Landroid/graphics/pdf/RenderParams;->getRenderMask()I

    move-result v0

    return v0
.end method

.method private constructor blacklist <init>(II)V
    .registers 3
    .param p1, "renderMode"    # I
    .param p2, "renderFlags"    # I

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput p1, p0, Landroid/graphics/pdf/RenderParams;->mRenderMode:I

    .line 82
    iput p2, p0, Landroid/graphics/pdf/RenderParams;->mRenderFlags:I

    .line 83
    return-void
.end method

.method synthetic constructor blacklist <init>(IILandroid/graphics/pdf/RenderParams-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/graphics/pdf/RenderParams;-><init>(II)V

    return-void
.end method

.method private static blacklist getRenderMask()I
    .registers 2

    .line 87
    const/4 v0, 0x6

    .line 88
    .local v0, "renderMask":I
    invoke-static {}, Landroid/graphics/pdf/flags/readonly/Flags;->enableEditPdfTextAnnotations()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 89
    or-int/lit8 v0, v0, 0x10

    .line 91
    :cond_9
    invoke-static {}, Landroid/graphics/pdf/flags/readonly/Flags;->enableEditPdfStampAnnotations()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 92
    or-int/lit8 v0, v0, 0x8

    .line 94
    :cond_11
    return v0
.end method


# virtual methods
.method public blacklist getRenderAnnotations()I
    .registers 3

    .line 115
    iget v0, p0, Landroid/graphics/pdf/RenderParams;->mRenderFlags:I

    invoke-static {}, Landroid/graphics/pdf/RenderParams;->getRenderMask()I

    move-result v1

    and-int/2addr v0, v1

    return v0
.end method

.method public whitelist getRenderFlags()I
    .registers 2

    .line 110
    iget v0, p0, Landroid/graphics/pdf/RenderParams;->mRenderFlags:I

    return v0
.end method

.method public whitelist getRenderMode()I
    .registers 2

    .line 102
    iget v0, p0, Landroid/graphics/pdf/RenderParams;->mRenderMode:I

    return v0
.end method
