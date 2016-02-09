.class Landroid/widget/PopupWindow$PopupBackgroundView;
.super Landroid/widget/FrameLayout;
.source "PopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/PopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupBackgroundView"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Landroid/widget/PopupWindow;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/PopupWindow;
    .param p2, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 2091
    iput-object p1, p0, Landroid/widget/PopupWindow$PopupBackgroundView;->this$0:Landroid/widget/PopupWindow;

    #@2
    .line 2092
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    #@5
    .line 2091
    return-void
.end method


# virtual methods
.method protected onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    #@0
    .prologue
    .line 2097
    iget-object v1, p0, Landroid/widget/PopupWindow$PopupBackgroundView;->this$0:Landroid/widget/PopupWindow;

    #@2
    invoke-static {v1}, Landroid/widget/PopupWindow;->-get1(Landroid/widget/PopupWindow;)Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 2098
    add-int/lit8 v1, p1, 0x1

    #@a
    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    #@d
    move-result-object v0

    #@e
    .line 2099
    .local v0, "drawableState":[I
    invoke-static {}, Landroid/widget/PopupWindow;->-get0()[I

    #@11
    move-result-object v1

    #@12
    invoke-static {v0, v1}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    #@15
    .line 2100
    return-object v0

    #@16
    .line 2102
    .end local v0    # "drawableState":[I
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    #@19
    move-result-object v1

    #@1a
    return-object v1
.end method
