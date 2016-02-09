.class Landroid/widget/TabWidget$TabClickListener;
.super Ljava/lang/Object;
.source "TabWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TabWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabClickListener"
.end annotation


# instance fields
.field private final mTabIndex:I

.field final synthetic this$0:Landroid/widget/TabWidget;


# direct methods
.method private constructor <init>(Landroid/widget/TabWidget;I)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/TabWidget;
    .param p2, "tabIndex"    # I

    #@0
    .prologue
    .line 546
    iput-object p1, p0, Landroid/widget/TabWidget$TabClickListener;->this$0:Landroid/widget/TabWidget;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 547
    iput p2, p0, Landroid/widget/TabWidget$TabClickListener;->mTabIndex:I

    #@7
    .line 546
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TabWidget;ILandroid/widget/TabWidget$TabClickListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/TabWidget;
    .param p2, "tabIndex"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/TabWidget$TabClickListener;-><init>(Landroid/widget/TabWidget;I)V

    #@3
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 551
    iget-object v0, p0, Landroid/widget/TabWidget$TabClickListener;->this$0:Landroid/widget/TabWidget;

    #@2
    invoke-static {v0}, Landroid/widget/TabWidget;->-get0(Landroid/widget/TabWidget;)Landroid/widget/TabWidget$OnTabSelectionChanged;

    #@5
    move-result-object v0

    #@6
    iget v1, p0, Landroid/widget/TabWidget$TabClickListener;->mTabIndex:I

    #@8
    const/4 v2, 0x1

    #@9
    invoke-interface {v0, v1, v2}, Landroid/widget/TabWidget$OnTabSelectionChanged;->onTabSelectionChanged(IZ)V

    #@c
    .line 550
    return-void
.end method
