.class final Landroid/view/ViewOutlineProvider$2;
.super Landroid/view/ViewOutlineProvider;
.source "ViewOutlineProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewOutlineProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 52
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outline"    # Landroid/graphics/Outline;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    #@4
    move-result v0

    #@5
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    #@8
    move-result v1

    #@9
    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/Outline;->setRect(IIII)V

    #@c
    .line 54
    return-void
.end method
