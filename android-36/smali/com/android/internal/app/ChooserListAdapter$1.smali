.class Lcom/android/internal/app/ChooserListAdapter$1;
.super Ljava/lang/Object;
.source "ChooserListAdapter.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserListAdapter;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserListAdapter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onLayoutChange$0(Landroid/widget/TextView;)V
    .registers 1
    .param p0, "textView"    # Landroid/widget/TextView;

    .line 142
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    return-void
.end method


# virtual methods
.method public whitelist onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 16
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .line 127
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    .line 128
    .local v0, "textView":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 129
    .local v1, "layout":Landroid/text/Layout;
    if-eqz v1, :cond_46

    .line 130
    const/4 v2, 0x0

    .line 131
    .local v2, "textWidth":I
    const/4 v3, 0x0

    .local v3, "line":I
    :goto_b
    invoke-virtual {v1}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    if-ge v3, v4, :cond_22

    .line 132
    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineMax(I)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 131
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 135
    .end local v3    # "line":I
    :cond_22
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v3, v2

    .line 136
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    .line 137
    .local v3, "desiredWidth":I
    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v4

    if-le v4, v3, :cond_43

    .line 138
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 139
    .local v4, "params":Landroid/view/ViewGroup$LayoutParams;
    iput v3, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 140
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    new-instance v5, Lcom/android/internal/app/ChooserListAdapter$1$$ExternalSyntheticLambda0;

    invoke-direct {v5, v0}, Lcom/android/internal/app/ChooserListAdapter$1$$ExternalSyntheticLambda0;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 144
    .end local v4    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_43
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 146
    .end local v2    # "textWidth":I
    .end local v3    # "desiredWidth":I
    :cond_46
    return-void
.end method
