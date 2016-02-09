.class final Landroid/graphics/drawable/RippleBackground$1;
.super Landroid/graphics/drawable/RippleBackground$BackgroundProperty;
.source "RippleBackground.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/RippleBackground;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "$anonymous0"    # Ljava/lang/String;

    #@0
    .prologue
    .line 166
    invoke-direct {p0, p1}, Landroid/graphics/drawable/RippleBackground$BackgroundProperty;-><init>(Ljava/lang/String;)V

    #@3
    return-void
.end method


# virtual methods
.method public get(Landroid/graphics/drawable/RippleBackground;)Ljava/lang/Float;
    .locals 1
    .param p1, "object"    # Landroid/graphics/drawable/RippleBackground;

    #@0
    .prologue
    .line 175
    invoke-static {p1}, Landroid/graphics/drawable/RippleBackground;->-get0(Landroid/graphics/drawable/RippleBackground;)F

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
    .line 174
    check-cast p1, Landroid/graphics/drawable/RippleBackground;

    #@2
    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/RippleBackground$1;->get(Landroid/graphics/drawable/RippleBackground;)Ljava/lang/Float;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public setValue(Landroid/graphics/drawable/RippleBackground;F)V
    .locals 0
    .param p1, "object"    # Landroid/graphics/drawable/RippleBackground;
    .param p2, "value"    # F

    #@0
    .prologue
    .line 169
    invoke-static {p1, p2}, Landroid/graphics/drawable/RippleBackground;->-set0(Landroid/graphics/drawable/RippleBackground;F)F

    #@3
    .line 170
    invoke-virtual {p1}, Landroid/graphics/drawable/RippleBackground;->invalidateSelf()V

    #@6
    .line 168
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "value"    # F

    #@0
    .prologue
    .line 168
    check-cast p1, Landroid/graphics/drawable/RippleBackground;

    #@2
    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/RippleBackground$1;->setValue(Landroid/graphics/drawable/RippleBackground;F)V

    #@5
    return-void
.end method
