.class Landroid/widget/Editor$TextRenderNode;
.super Ljava/lang/Object;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextRenderNode"
.end annotation


# instance fields
.field greylist-max-o isDirty:Z

.field greylist-max-o needsToBeShifted:Z

.field blacklist renderNode:Landroid/graphics/RenderNode;


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/graphics/RenderNode;->create(Ljava/lang/String;Landroid/graphics/RenderNode$AnimationHost;)Landroid/graphics/RenderNode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$TextRenderNode;->renderNode:Landroid/graphics/RenderNode;

    .line 318
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor$TextRenderNode;->isDirty:Z

    .line 319
    iput-boolean v0, p0, Landroid/widget/Editor$TextRenderNode;->needsToBeShifted:Z

    .line 320
    return-void
.end method


# virtual methods
.method greylist-max-o needsRecord()Z
    .registers 2

    .line 322
    iget-boolean v0, p0, Landroid/widget/Editor$TextRenderNode;->isDirty:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Landroid/widget/Editor$TextRenderNode;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->hasDisplayList()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method
