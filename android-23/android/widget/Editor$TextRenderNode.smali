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
.field isDirty:Z

.field renderNode:Landroid/view/RenderNode;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 167
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Landroid/widget/Editor$TextRenderNode;->isDirty:Z

    #@6
    .line 168
    const/4 v0, 0x0

    #@7
    invoke-static {p1, v0}, Landroid/view/RenderNode;->create(Ljava/lang/String;Landroid/view/View;)Landroid/view/RenderNode;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Landroid/widget/Editor$TextRenderNode;->renderNode:Landroid/view/RenderNode;

    #@d
    .line 166
    return-void
.end method


# virtual methods
.method needsRecord()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 170
    iget-boolean v1, p0, Landroid/widget/Editor$TextRenderNode;->isDirty:Z

    #@3
    if-nez v1, :cond_0

    #@5
    iget-object v1, p0, Landroid/widget/Editor$TextRenderNode;->renderNode:Landroid/view/RenderNode;

    #@7
    invoke-virtual {v1}, Landroid/view/RenderNode;->isValid()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    const/4 v0, 0x0

    #@e
    :cond_0
    return v0
.end method
