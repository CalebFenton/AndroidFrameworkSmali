.class Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;
.super Ljava/lang/Object;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabClickListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/widget/ScrollingTabContainerView;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/widget/ScrollingTabContainerView;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 543
    iput-object p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/widget/ScrollingTabContainerView;Lcom/android/internal/widget/ScrollingTabContainerView-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;-><init>(Lcom/android/internal/widget/ScrollingTabContainerView;)V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;

    .line 545
    move-object v0, p1

    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    .line 546
    .local v0, "tabView":Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    invoke-virtual {v0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar$Tab;->select()V

    .line 547
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-static {v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->-$$Nest$fgetmTabLayout(Lcom/android/internal/widget/ScrollingTabContainerView;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 548
    .local v1, "tabCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    if-ge v2, v1, :cond_2c

    .line 549
    iget-object v3, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-static {v3}, Lcom/android/internal/widget/ScrollingTabContainerView;->-$$Nest$fgetmTabLayout(Lcom/android/internal/widget/ScrollingTabContainerView;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 550
    .local v3, "child":Landroid/view/View;
    if-ne v3, p1, :cond_25

    const/4 v4, 0x1

    goto :goto_26

    :cond_25
    const/4 v4, 0x0

    :goto_26
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    .line 548
    .end local v3    # "child":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 552
    .end local v2    # "i":I
    :cond_2c
    return-void
.end method
