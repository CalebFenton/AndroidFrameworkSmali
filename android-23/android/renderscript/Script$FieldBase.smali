.class public Landroid/renderscript/Script$FieldBase;
.super Ljava/lang/Object;
.source "Script.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Script;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FieldBase"
.end annotation


# instance fields
.field protected mAllocation:Landroid/renderscript/Allocation;

.field protected mElement:Landroid/renderscript/Element;


# direct methods
.method protected constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getAllocation()Landroid/renderscript/Allocation;
    .locals 1

    #@0
    .prologue
    .line 466
    iget-object v0, p0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    #@2
    return-object v0
.end method

.method public getElement()Landroid/renderscript/Element;
    .locals 1

    #@0
    .prologue
    .line 458
    iget-object v0, p0, Landroid/renderscript/Script$FieldBase;->mElement:Landroid/renderscript/Element;

    #@2
    return-object v0
.end method

.method public getType()Landroid/renderscript/Type;
    .locals 1

    #@0
    .prologue
    .line 462
    iget-object v0, p0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    #@2
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected init(Landroid/renderscript/RenderScript;I)V
    .locals 2
    .param p1, "rs"    # Landroid/renderscript/RenderScript;
    .param p2, "dimx"    # I

    #@0
    .prologue
    .line 444
    iget-object v0, p0, Landroid/renderscript/Script$FieldBase;->mElement:Landroid/renderscript/Element;

    #@2
    .line 445
    const/4 v1, 0x1

    #@3
    .line 444
    invoke-static {p1, v0, p2, v1}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Allocation;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    #@9
    .line 443
    return-void
.end method

.method protected init(Landroid/renderscript/RenderScript;II)V
    .locals 2
    .param p1, "rs"    # Landroid/renderscript/RenderScript;
    .param p2, "dimx"    # I
    .param p3, "usages"    # I

    #@0
    .prologue
    .line 450
    iget-object v0, p0, Landroid/renderscript/Script$FieldBase;->mElement:Landroid/renderscript/Element;

    #@2
    .line 451
    or-int/lit8 v1, p3, 0x1

    #@4
    .line 450
    invoke-static {p1, v0, p2, v1}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Allocation;

    #@7
    move-result-object v0

    #@8
    .line 449
    iput-object v0, p0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    #@a
    .line 448
    return-void
.end method

.method public updateAllocation()V
    .locals 0

    #@0
    .prologue
    .line 470
    return-void
.end method
