.class interface abstract Lcom/android/internal/widget/ChildHelper$Callback;
.super Ljava/lang/Object;
.source "ChildHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ChildHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Callback"
.end annotation


# virtual methods
.method public abstract blacklist addView(Landroid/view/View;I)V
.end method

.method public abstract blacklist attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
.end method

.method public abstract blacklist detachViewFromParent(I)V
.end method

.method public abstract blacklist getChildAt(I)Landroid/view/View;
.end method

.method public abstract blacklist getChildCount()I
.end method

.method public abstract blacklist getChildViewHolder(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;
.end method

.method public abstract blacklist indexOfChild(Landroid/view/View;)I
.end method

.method public abstract blacklist onEnteredHiddenState(Landroid/view/View;)V
.end method

.method public abstract blacklist onLeftHiddenState(Landroid/view/View;)V
.end method

.method public abstract blacklist removeAllViews()V
.end method

.method public abstract blacklist removeViewAt(I)V
.end method
