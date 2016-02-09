.class Landroid/widget/TabHost$ViewIdContentStrategy;
.super Ljava/lang/Object;
.source "TabHost.java"

# interfaces
.implements Landroid/widget/TabHost$ContentStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewIdContentStrategy"
.end annotation


# instance fields
.field private final mView:Landroid/view/View;

.field final synthetic this$0:Landroid/widget/TabHost;


# direct methods
.method private constructor <init>(Landroid/widget/TabHost;I)V
    .locals 3
    .param p1, "this$0"    # Landroid/widget/TabHost;
    .param p2, "viewId"    # I

    #@0
    .prologue
    .line 658
    iput-object p1, p0, Landroid/widget/TabHost$ViewIdContentStrategy;->this$0:Landroid/widget/TabHost;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 659
    invoke-static {p1}, Landroid/widget/TabHost;->-get0(Landroid/widget/TabHost;)Landroid/widget/FrameLayout;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/widget/TabHost$ViewIdContentStrategy;->mView:Landroid/view/View;

    #@f
    .line 660
    iget-object v0, p0, Landroid/widget/TabHost$ViewIdContentStrategy;->mView:Landroid/view/View;

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 661
    iget-object v0, p0, Landroid/widget/TabHost$ViewIdContentStrategy;->mView:Landroid/view/View;

    #@15
    const/16 v1, 0x8

    #@17
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    #@1a
    .line 658
    return-void

    #@1b
    .line 663
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    #@1d
    new-instance v1, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v2, "Could not create tab content because could not find view with id "

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@34
    throw v0
.end method

.method synthetic constructor <init>(Landroid/widget/TabHost;ILandroid/widget/TabHost$ViewIdContentStrategy;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/TabHost;
    .param p2, "viewId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/TabHost$ViewIdContentStrategy;-><init>(Landroid/widget/TabHost;I)V

    #@3
    return-void
.end method


# virtual methods
.method public getContentView()Landroid/view/View;
    .locals 2

    #@0
    .prologue
    .line 669
    iget-object v0, p0, Landroid/widget/TabHost$ViewIdContentStrategy;->mView:Landroid/view/View;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    #@6
    .line 670
    iget-object v0, p0, Landroid/widget/TabHost$ViewIdContentStrategy;->mView:Landroid/view/View;

    #@8
    return-object v0
.end method

.method public tabClosed()V
    .locals 2

    #@0
    .prologue
    .line 674
    iget-object v0, p0, Landroid/widget/TabHost$ViewIdContentStrategy;->mView:Landroid/view/View;

    #@2
    const/16 v1, 0x8

    #@4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    #@7
    .line 673
    return-void
.end method
