.class public interface abstract Landroid/widget/Adapter;
.super Ljava/lang/Object;
.source "Adapter.java"


# static fields
.field public static final whitelist IGNORE_ITEM_VIEW_TYPE:I = -0x1

.field public static final whitelist NO_SELECTION:I = -0x80000000


# virtual methods
.method public whitelist getAutofillOptions()[Ljava/lang/CharSequence;
    .registers 2

    .line 166
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract whitelist getCount()I
.end method

.method public abstract whitelist getItem(I)Ljava/lang/Object;
.end method

.method public abstract whitelist getItemId(I)J
.end method

.method public abstract whitelist getItemViewType(I)I
.end method

.method public abstract whitelist getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract whitelist getViewTypeCount()I
.end method

.method public abstract whitelist hasStableIds()Z
.end method

.method public abstract whitelist isEmpty()Z
.end method

.method public abstract whitelist registerDataSetObserver(Landroid/database/DataSetObserver;)V
.end method

.method public abstract whitelist unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
.end method
