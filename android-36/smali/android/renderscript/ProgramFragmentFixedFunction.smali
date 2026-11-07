.class public Landroid/renderscript/ProgramFragmentFixedFunction;
.super Landroid/renderscript/ProgramFragment;
.source "ProgramFragmentFixedFunction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/ProgramFragmentFixedFunction$Builder;,
        Landroid/renderscript/ProgramFragmentFixedFunction$InternalBuilder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method constructor greylist-max-o <init>(JLandroid/renderscript/RenderScript;)V
    .registers 4
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/ProgramFragment;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 36
    return-void
.end method
