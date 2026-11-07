.class Landroid/renderscript/Mesh$Builder$Entry;
.super Ljava/lang/Object;
.source "Mesh.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Mesh$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Entry"
.end annotation


# instance fields
.field greylist-max-o e:Landroid/renderscript/Element;

.field greylist-max-o prim:Landroid/renderscript/Mesh$Primitive;

.field greylist-max-o size:I

.field greylist-max-o t:Landroid/renderscript/Type;

.field greylist-max-o usage:I


# direct methods
.method constructor blacklist <init>(Landroid/renderscript/Mesh$Builder;)V
    .registers 2
    .param p1, "this$0"    # Landroid/renderscript/Mesh$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
