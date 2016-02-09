.class final Landroid/widget/FastScroller$5;
.super Landroid/util/IntProperty;
.source "FastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/IntProperty",
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
    .line 1634
    invoke-direct {p0, p1}, Landroid/util/IntProperty;-><init>(Ljava/lang/String;)V

    #@3
    return-void
.end method


# virtual methods
.method public get(Landroid/view/View;)Ljava/lang/Integer;
    .locals 1
    .param p1, "object"    # Landroid/view/View;

    #@0
    .prologue
    .line 1642
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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
    .line 1641
    check-cast p1, Landroid/view/View;

    #@2
    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/widget/FastScroller$5;->get(Landroid/view/View;)Ljava/lang/Integer;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public setValue(Landroid/view/View;I)V
    .locals 0
    .param p1, "object"    # Landroid/view/View;
    .param p2, "value"    # I

    #@0
    .prologue
    .line 1637
    invoke-virtual {p1, p2}, Landroid/view/View;->setRight(I)V

    #@3
    .line 1636
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "value"    # I

    #@0
    .prologue
    .line 1636
    check-cast p1, Landroid/view/View;

    #@2
    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/widget/FastScroller$5;->setValue(Landroid/view/View;I)V

    #@5
    return-void
.end method
