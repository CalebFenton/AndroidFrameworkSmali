.class final Landroid/widget/SuggestionsAdapter$ChildViewCache;
.super Ljava/lang/Object;
.source "SuggestionsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SuggestionsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ChildViewCache"
.end annotation


# instance fields
.field public final mIcon1:Landroid/widget/ImageView;

.field public final mIcon2:Landroid/widget/ImageView;

.field public final mIconRefine:Landroid/widget/ImageView;

.field public final mText1:Landroid/widget/TextView;

.field public final mText2:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 307
    const v0, 0x1020014

    #@6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/widget/TextView;

    #@c
    iput-object v0, p0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    #@e
    .line 308
    const v0, 0x1020015

    #@11
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/widget/TextView;

    #@17
    iput-object v0, p0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText2:Landroid/widget/TextView;

    #@19
    .line 309
    const v0, 0x1020007

    #@1c
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, Landroid/widget/ImageView;

    #@22
    iput-object v0, p0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mIcon1:Landroid/widget/ImageView;

    #@24
    .line 310
    const v0, 0x1020008

    #@27
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@2a
    move-result-object v0

    #@2b
    check-cast v0, Landroid/widget/ImageView;

    #@2d
    iput-object v0, p0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mIcon2:Landroid/widget/ImageView;

    #@2f
    .line 311
    const v0, 0x10203b6

    #@32
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@35
    move-result-object v0

    #@36
    check-cast v0, Landroid/widget/ImageView;

    #@38
    iput-object v0, p0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mIconRefine:Landroid/widget/ImageView;

    #@3a
    .line 306
    return-void
.end method
