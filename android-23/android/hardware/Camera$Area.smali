.class public Landroid/hardware/Camera$Area;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Area"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public rect:Landroid/graphics/Rect;

.field public weight:I


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;I)V
    .locals 0
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "weight"    # I

    #@0
    .prologue
    .line 2012
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 2013
    iput-object p1, p0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    #@5
    .line 2014
    iput p2, p0, Landroid/hardware/Camera$Area;->weight:I

    #@7
    .line 2012
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2025
    instance-of v2, p1, Landroid/hardware/Camera$Area;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 2026
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 2028
    check-cast v0, Landroid/hardware/Camera$Area;

    #@9
    .line 2029
    .local v0, "a":Landroid/hardware/Camera$Area;
    iget-object v2, p0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    #@b
    if-nez v2, :cond_1

    #@d
    .line 2030
    iget-object v2, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    #@f
    if-eqz v2, :cond_2

    #@11
    return v1

    #@12
    .line 2032
    :cond_1
    iget-object v2, p0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    #@14
    iget-object v3, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    #@16
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v2

    #@1a
    if-nez v2, :cond_2

    #@1c
    return v1

    #@1d
    .line 2034
    :cond_2
    iget v2, p0, Landroid/hardware/Camera$Area;->weight:I

    #@1f
    iget v3, v0, Landroid/hardware/Camera$Area;->weight:I

    #@21
    if-ne v2, v3, :cond_3

    #@23
    const/4 v1, 0x1

    #@24
    :cond_3
    return v1
.end method
