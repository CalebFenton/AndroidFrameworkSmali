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
.field public whitelist rect:Landroid/graphics/Rect;

.field public whitelist weight:I


# direct methods
.method public constructor whitelist <init>(Landroid/graphics/Rect;I)V
    .registers 3
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "weight"    # I

    .line 2194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2195
    iput-object p1, p0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    .line 2196
    iput p2, p0, Landroid/hardware/Camera$Area;->weight:I

    .line 2197
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 2207
    instance-of v0, p1, Landroid/hardware/Camera$Area;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 2208
    return v1

    .line 2210
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/hardware/Camera$Area;

    .line 2211
    .local v0, "a":Landroid/hardware/Camera$Area;
    iget-object v2, p0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    if-nez v2, :cond_12

    .line 2212
    iget-object v2, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    if-eqz v2, :cond_1d

    return v1

    .line 2214
    :cond_12
    iget-object v2, p0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iget-object v3, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    return v1

    .line 2216
    :cond_1d
    iget v2, p0, Landroid/hardware/Camera$Area;->weight:I

    iget v3, v0, Landroid/hardware/Camera$Area;->weight:I

    if-ne v2, v3, :cond_24

    const/4 v1, 0x1

    :cond_24
    return v1
.end method
