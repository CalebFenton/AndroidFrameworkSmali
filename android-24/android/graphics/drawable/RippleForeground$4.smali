.class final Landroid/graphics/drawable/RippleForeground$4;
.super Landroid/util/FloatProperty;
.source "RippleForeground.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/RippleForeground;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty",
        "<",
        "Landroid/graphics/drawable/RippleForeground;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "$anonymous0"    # Ljava/lang/String;

    #@0
    .prologue
    .line 422
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    #@3
    return-void
.end method


# virtual methods
.method public get(Landroid/graphics/drawable/RippleForeground;)Ljava/lang/Float;
    .locals 1
    .param p1, "object"    # Landroid/graphics/drawable/RippleForeground;

    #@0
    .prologue
    .line 431
    invoke-static {p1}, Landroid/graphics/drawable/RippleForeground;->-get0(Landroid/graphics/drawable/RippleForeground;)F

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 430
    check-cast p1, Landroid/graphics/drawable/RippleForeground;

    #@2
    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/RippleForeground$4;->get(Landroid/graphics/drawable/RippleForeground;)Ljava/lang/Float;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public setValue(Landroid/graphics/drawable/RippleForeground;F)V
    .locals 0
    .param p1, "object"    # Landroid/graphics/drawable/RippleForeground;
    .param p2, "value"    # F

    #@0
    .prologue
    .line 425
    invoke-static {p1, p2}, Landroid/graphics/drawable/RippleForeground;->-set1(Landroid/graphics/drawable/RippleForeground;F)F

    #@3
    .line 426
    invoke-virtual {p1}, Landroid/graphics/drawable/RippleForeground;->invalidateSelf()V

    #@6
    .line 424
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "value"    # F

    #@0
    .prologue
    .line 424
    check-cast p1, Landroid/graphics/drawable/RippleForeground;

    #@2
    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/RippleForeground$4;->setValue(Landroid/graphics/drawable/RippleForeground;F)V

    #@5
    return-void
.end method
