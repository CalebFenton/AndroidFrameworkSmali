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
.field final synthetic blacklist this$0:Landroid/widget/PopupWindow;


# direct methods
.method public constructor blacklist <init>(Landroid/widget/PopupWindow;Landroid/content/Context;)V
    .registers 3
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 2769
    iput-object p1, p0, Landroid/widget/PopupWindow$PopupBackgroundView;->this$0:Landroid/widget/PopupWindow;

    .line 2770
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2771
    return-void
.end method


# virtual methods
.method protected whitelist onCreateDrawableState(I)[I
    .registers 4
    .param p1, "extraSpace"    # I

    .line 2775
    iget-object v0, p0, Landroid/widget/PopupWindow$PopupBackgroundView;->this$0:Landroid/widget/PopupWindow;

    invoke-static {v0}, Landroid/widget/PopupWindow;->-$$Nest$fgetmAboveAnchor(Landroid/widget/PopupWindow;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2776
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 2777
    .local v0, "drawableState":[I
    invoke-static {}, Landroid/widget/PopupWindow;->-$$Nest$sfgetABOVE_ANCHOR_STATE_SET()[I

    move-result-object v1

    invoke-static {v0, v1}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    .line 2778
    return-object v0

    .line 2780
    .end local v0    # "drawableState":[I
    :cond_16
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    return-object v0
.end method
