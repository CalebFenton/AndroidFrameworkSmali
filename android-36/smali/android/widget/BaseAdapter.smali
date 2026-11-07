.class public abstract Landroid/widget/BaseAdapter;
.super Ljava/lang/Object;
.source "BaseAdapter.java"

# interfaces
.implements Landroid/widget/ListAdapter;
.implements Landroid/widget/SpinnerAdapter;


# instance fields
.field private greylist-max-o mAutofillOptions:[Ljava/lang/CharSequence;

.field private final greylist mDataSetObservable:Landroid/database/DataSetObservable;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Landroid/widget/BaseAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    return-void
.end method


# virtual methods
.method public whitelist areAllItemsEnabled()Z
    .registers 2

    .line 67
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getAutofillOptions()[Ljava/lang/CharSequence;
    .registers 2

    .line 92
    iget-object v0, p0, Landroid/widget/BaseAdapter;->mAutofillOptions:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 75
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getItemViewType(I)I
    .registers 3
    .param p1, "position"    # I

    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getViewTypeCount()I
    .registers 2

    .line 83
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist hasStableIds()Z
    .registers 2

    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isEmpty()Z
    .registers 2

    .line 87
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist isEnabled(I)Z
    .registers 3
    .param p1, "position"    # I

    .line 71
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist notifyDataSetChanged()V
    .registers 2

    .line 54
    iget-object v0, p0, Landroid/widget/BaseAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 55
    return-void
.end method

.method public whitelist notifyDataSetInvalidated()V
    .registers 2

    .line 63
    iget-object v0, p0, Landroid/widget/BaseAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyInvalidated()V

    .line 64
    return-void
.end method

.method public whitelist registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .line 42
    iget-object v0, p0, Landroid/widget/BaseAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 43
    return-void
.end method

.method public varargs whitelist setAutofillOptions([Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "options"    # [Ljava/lang/CharSequence;

    .line 99
    iput-object p1, p0, Landroid/widget/BaseAdapter;->mAutofillOptions:[Ljava/lang/CharSequence;

    .line 100
    return-void
.end method

.method public whitelist unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .line 46
    iget-object v0, p0, Landroid/widget/BaseAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 47
    return-void
.end method
