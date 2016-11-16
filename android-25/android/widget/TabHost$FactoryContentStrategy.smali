.class Landroid/widget/TabHost$FactoryContentStrategy;
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
    name = "FactoryContentStrategy"
.end annotation


# instance fields
.field private mFactory:Landroid/widget/TabHost$TabContentFactory;

.field private mTabContent:Landroid/view/View;

.field private final mTag:Ljava/lang/CharSequence;

.field final synthetic this$0:Landroid/widget/TabHost;


# direct methods
.method public constructor <init>(Landroid/widget/TabHost;Ljava/lang/CharSequence;Landroid/widget/TabHost$TabContentFactory;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/TabHost;
    .param p2, "tag"    # Ljava/lang/CharSequence;
    .param p3, "factory"    # Landroid/widget/TabHost$TabContentFactory;

    #@0
    .prologue
    .line 686
    iput-object p1, p0, Landroid/widget/TabHost$FactoryContentStrategy;->this$0:Landroid/widget/TabHost;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 687
    iput-object p2, p0, Landroid/widget/TabHost$FactoryContentStrategy;->mTag:Ljava/lang/CharSequence;

    #@7
    .line 688
    iput-object p3, p0, Landroid/widget/TabHost$FactoryContentStrategy;->mFactory:Landroid/widget/TabHost$TabContentFactory;

    #@9
    .line 686
    return-void
.end method


# virtual methods
.method public getContentView()Landroid/view/View;
    .locals 2

    #@0
    .prologue
    .line 692
    iget-object v0, p0, Landroid/widget/TabHost$FactoryContentStrategy;->mTabContent:Landroid/view/View;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 693
    iget-object v0, p0, Landroid/widget/TabHost$FactoryContentStrategy;->mFactory:Landroid/widget/TabHost$TabContentFactory;

    #@6
    iget-object v1, p0, Landroid/widget/TabHost$FactoryContentStrategy;->mTag:Ljava/lang/CharSequence;

    #@8
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    invoke-interface {v0, v1}, Landroid/widget/TabHost$TabContentFactory;->createTabContent(Ljava/lang/String;)Landroid/view/View;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Landroid/widget/TabHost$FactoryContentStrategy;->mTabContent:Landroid/view/View;

    #@12
    .line 695
    :cond_0
    iget-object v0, p0, Landroid/widget/TabHost$FactoryContentStrategy;->mTabContent:Landroid/view/View;

    #@14
    const/4 v1, 0x0

    #@15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    #@18
    .line 696
    iget-object v0, p0, Landroid/widget/TabHost$FactoryContentStrategy;->mTabContent:Landroid/view/View;

    #@1a
    return-object v0
.end method

.method public tabClosed()V
    .locals 2

    #@0
    .prologue
    .line 700
    iget-object v0, p0, Landroid/widget/TabHost$FactoryContentStrategy;->mTabContent:Landroid/view/View;

    #@2
    const/16 v1, 0x8

    #@4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    #@7
    .line 699
    return-void
.end method
