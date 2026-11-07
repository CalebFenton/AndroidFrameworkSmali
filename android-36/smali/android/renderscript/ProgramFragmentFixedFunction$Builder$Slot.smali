.class Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Slot;
.super Ljava/lang/Object;
.source "ProgramFragmentFixedFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ProgramFragmentFixedFunction$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Slot"
.end annotation


# instance fields
.field greylist-max-o env:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;

.field greylist-max-o format:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;


# direct methods
.method constructor blacklist <init>(Landroid/renderscript/ProgramFragmentFixedFunction$Builder;Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;)V
    .registers 4
    .param p2, "_env"    # Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;
    .param p3, "_fmt"    # Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Slot;->env:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;

    .line 164
    iput-object p3, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Slot;->format:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;

    .line 165
    return-void
.end method
