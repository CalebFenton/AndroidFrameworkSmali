.class public Landroid/renderscript/ProgramVertex;
.super Landroid/renderscript/Program;
.source "ProgramVertex.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/ProgramVertex$Builder;
    }
.end annotation


# direct methods
.method constructor <init>(JLandroid/renderscript/RenderScript;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/Program;-><init>(JLandroid/renderscript/RenderScript;)V

    #@3
    .line 52
    return-void
.end method


# virtual methods
.method public getInput(I)Landroid/renderscript/Element;
    .locals 2
    .param p1, "slot"    # I

    #@0
    .prologue
    .line 70
    if-ltz p1, :cond_0

    #@2
    iget-object v0, p0, Landroid/renderscript/ProgramVertex;->mInputs:[Landroid/renderscript/Element;

    #@4
    array-length v0, v0

    #@5
    if-lt p1, v0, :cond_1

    #@7
    .line 71
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v1, "Slot ID out of range."

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 73
    :cond_1
    iget-object v0, p0, Landroid/renderscript/ProgramVertex;->mInputs:[Landroid/renderscript/Element;

    #@12
    aget-object v0, v0, p1

    #@14
    return-object v0
.end method

.method public getInputCount()I
    .locals 1

    #@0
    .prologue
    .line 61
    iget-object v0, p0, Landroid/renderscript/ProgramVertex;->mInputs:[Landroid/renderscript/Element;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/renderscript/ProgramVertex;->mInputs:[Landroid/renderscript/Element;

    #@6
    array-length v0, v0

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method
