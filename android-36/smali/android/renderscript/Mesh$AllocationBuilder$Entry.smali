.class Landroid/renderscript/Mesh$AllocationBuilder$Entry;
.super Ljava/lang/Object;
.source "Mesh.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Mesh$AllocationBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Entry"
.end annotation


# instance fields
.field greylist-max-o a:Landroid/renderscript/Allocation;

.field greylist-max-o prim:Landroid/renderscript/Mesh$Primitive;


# direct methods
.method constructor blacklist <init>(Landroid/renderscript/Mesh$AllocationBuilder;)V
    .registers 2
    .param p1, "this$0"    # Landroid/renderscript/Mesh$AllocationBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
