.class final Landroid/view/View$6;
.super Landroid/util/FloatProperty;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "$anonymous0"    # Ljava/lang/String;

    #@0
    .prologue
    .line 20849
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    #@3
    return-void
.end method


# virtual methods
.method public get(Landroid/view/View;)Ljava/lang/Float;
    .locals 1
    .param p1, "object"    # Landroid/view/View;

    #@0
    .prologue
    .line 20857
    invoke-virtual {p1}, Landroid/view/View;->getY()F

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
    .line 20856
    check-cast p1, Landroid/view/View;

    #@2
    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/view/View$6;->get(Landroid/view/View;)Ljava/lang/Float;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public setValue(Landroid/view/View;F)V
    .locals 0
    .param p1, "object"    # Landroid/view/View;
    .param p2, "value"    # F

    #@0
    .prologue
    .line 20852
    invoke-virtual {p1, p2}, Landroid/view/View;->setY(F)V

    #@3
    .line 20851
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "value"    # F

    #@0
    .prologue
    .line 20851
    check-cast p1, Landroid/view/View;

    #@2
    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/view/View$6;->setValue(Landroid/view/View;F)V

    #@5
    return-void
.end method
