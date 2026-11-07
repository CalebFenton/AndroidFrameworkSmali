.class public Landroid/renderscript/ProgramFragment;
.super Landroid/renderscript/Program;
.source "ProgramFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/ProgramFragment$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method constructor greylist-max-o <init>(JLandroid/renderscript/RenderScript;)V
    .registers 4
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/Program;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 44
    return-void
.end method
