.class Lcom/android/internal/app/ResolverActivity$ViewHolder;
.super Ljava/lang/Object;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field public badge:Landroid/widget/ImageView;

.field public icon:Landroid/widget/ImageView;

.field public text:Landroid/widget/TextView;

.field public text2:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 1616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1617
    const v0, 0x1020014

    #@6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/widget/TextView;

    #@c
    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$ViewHolder;->text:Landroid/widget/TextView;

    #@e
    .line 1618
    const v0, 0x1020015

    #@11
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/widget/TextView;

    #@17
    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$ViewHolder;->text2:Landroid/widget/TextView;

    #@19
    .line 1619
    const v0, 0x1020006

    #@1c
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, Landroid/widget/ImageView;

    #@22
    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    #@24
    .line 1620
    const v0, 0x102039f

    #@27
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@2a
    move-result-object v0

    #@2b
    check-cast v0, Landroid/widget/ImageView;

    #@2d
    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$ViewHolder;->badge:Landroid/widget/ImageView;

    #@2f
    .line 1616
    return-void
.end method
