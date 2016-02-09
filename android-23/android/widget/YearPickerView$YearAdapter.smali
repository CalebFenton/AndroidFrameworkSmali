.class Landroid/widget/YearPickerView$YearAdapter;
.super Landroid/widget/BaseAdapter;
.source "YearPickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/YearPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "YearAdapter"
.end annotation


# static fields
.field private static final ITEM_LAYOUT:I = 0x1090101

.field private static final ITEM_TEXT_ACTIVATED_APPEARANCE:I = 0x103041d

.field private static final ITEM_TEXT_APPEARANCE:I = 0x103041c


# instance fields
.field private mActivatedYear:I

.field private mCount:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mMinYear:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 127
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    #@3
    .line 128
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/widget/YearPickerView$YearAdapter;->mInflater:Landroid/view/LayoutInflater;

    #@9
    .line 127
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 224
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public getCount()I
    .locals 1

    #@0
    .prologue
    .line 153
    iget v0, p0, Landroid/widget/YearPickerView$YearAdapter;->mCount:I

    #@2
    return v0
.end method

.method public getItem(I)Ljava/lang/Integer;
    .locals 1
    .param p1, "position"    # I

    #@0
    .prologue
    .line 158
    invoke-virtual {p0, p1}, Landroid/widget/YearPickerView$YearAdapter;->getYearForPosition(I)I

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    #@0
    .prologue
    .line 157
    invoke-virtual {p0, p1}, Landroid/widget/YearPickerView$YearAdapter;->getItem(I)Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    #@0
    .prologue
    .line 163
    invoke-virtual {p0, p1}, Landroid/widget/YearPickerView$YearAdapter;->getYearForPosition(I)I

    #@3
    move-result v0

    #@4
    int-to-long v0, v0

    #@5
    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    #@0
    .prologue
    .line 209
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getPositionForYear(I)I
    .locals 1
    .param p1, "year"    # I

    #@0
    .prologue
    .line 167
    iget v0, p0, Landroid/widget/YearPickerView$YearAdapter;->mMinYear:I

    #@2
    sub-int v0, p1, v0

    #@4
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 182
    if-nez p2, :cond_2

    #@2
    const/4 v1, 0x1

    #@3
    .line 183
    .local v1, "hasNewView":Z
    :goto_0
    if-eqz v1, :cond_3

    #@5
    .line 184
    iget-object v5, p0, Landroid/widget/YearPickerView$YearAdapter;->mInflater:Landroid/view/LayoutInflater;

    #@7
    const v6, 0x1090101

    #@a
    const/4 v7, 0x0

    #@b
    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@e
    move-result-object v3

    #@f
    check-cast v3, Landroid/widget/TextView;

    #@11
    .line 189
    .local v3, "v":Landroid/widget/TextView;
    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/YearPickerView$YearAdapter;->getYearForPosition(I)I

    #@14
    move-result v4

    #@15
    .line 190
    .local v4, "year":I
    iget v5, p0, Landroid/widget/YearPickerView$YearAdapter;->mActivatedYear:I

    #@17
    if-ne v5, v4, :cond_4

    #@19
    const/4 v0, 0x1

    #@1a
    .line 192
    .local v0, "activated":Z
    :goto_2
    if-nez v1, :cond_0

    #@1c
    invoke-virtual {v3}, Landroid/widget/TextView;->isActivated()Z

    #@1f
    move-result v5

    #@20
    if-eq v5, v0, :cond_1

    #@22
    .line 194
    :cond_0
    if-eqz v0, :cond_5

    #@24
    .line 195
    const v2, 0x103041d

    #@27
    .line 199
    .local v2, "textAppearanceResId":I
    :goto_3
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    #@2a
    .line 200
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setActivated(Z)V

    #@2d
    .line 203
    .end local v2    # "textAppearanceResId":I
    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@30
    move-result-object v5

    #@31
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@34
    .line 204
    return-object v3

    #@35
    .line 182
    .end local v0    # "activated":Z
    .end local v1    # "hasNewView":Z
    .end local v3    # "v":Landroid/widget/TextView;
    .end local v4    # "year":I
    :cond_2
    const/4 v1, 0x0

    #@36
    .restart local v1    # "hasNewView":Z
    goto :goto_0

    #@37
    :cond_3
    move-object v3, p2

    #@38
    .line 186
    check-cast v3, Landroid/widget/TextView;

    #@3a
    .restart local v3    # "v":Landroid/widget/TextView;
    goto :goto_1

    #@3b
    .line 190
    .restart local v4    # "year":I
    :cond_4
    const/4 v0, 0x0

    #@3c
    .restart local v0    # "activated":Z
    goto :goto_2

    #@3d
    .line 197
    :cond_5
    const v2, 0x103041c

    #@40
    .restart local v2    # "textAppearanceResId":I
    goto :goto_3
.end method

.method public getViewTypeCount()I
    .locals 1

    #@0
    .prologue
    .line 214
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public getYearForPosition(I)I
    .locals 1
    .param p1, "position"    # I

    #@0
    .prologue
    .line 171
    iget v0, p0, Landroid/widget/YearPickerView$YearAdapter;->mMinYear:I

    #@2
    add-int/2addr v0, p1

    #@3
    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    #@0
    .prologue
    .line 176
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    #@0
    .prologue
    .line 219
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    #@0
    .prologue
    .line 229
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public setRange(Ljava/util/Calendar;Ljava/util/Calendar;)V
    .locals 3
    .param p1, "minDate"    # Ljava/util/Calendar;
    .param p2, "maxDate"    # Ljava/util/Calendar;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 132
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    #@4
    move-result v1

    #@5
    .line 133
    .local v1, "minYear":I
    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    #@8
    move-result v2

    #@9
    sub-int/2addr v2, v1

    #@a
    add-int/lit8 v0, v2, 0x1

    #@c
    .line 135
    .local v0, "count":I
    iget v2, p0, Landroid/widget/YearPickerView$YearAdapter;->mMinYear:I

    #@e
    if-ne v2, v1, :cond_0

    #@10
    iget v2, p0, Landroid/widget/YearPickerView$YearAdapter;->mCount:I

    #@12
    if-eq v2, v0, :cond_1

    #@14
    .line 136
    :cond_0
    iput v1, p0, Landroid/widget/YearPickerView$YearAdapter;->mMinYear:I

    #@16
    .line 137
    iput v0, p0, Landroid/widget/YearPickerView$YearAdapter;->mCount:I

    #@18
    .line 138
    invoke-virtual {p0}, Landroid/widget/YearPickerView$YearAdapter;->notifyDataSetInvalidated()V

    #@1b
    .line 131
    :cond_1
    return-void
.end method

.method public setSelection(I)Z
    .locals 1
    .param p1, "year"    # I

    #@0
    .prologue
    .line 143
    iget v0, p0, Landroid/widget/YearPickerView$YearAdapter;->mActivatedYear:I

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 144
    iput p1, p0, Landroid/widget/YearPickerView$YearAdapter;->mActivatedYear:I

    #@6
    .line 145
    invoke-virtual {p0}, Landroid/widget/YearPickerView$YearAdapter;->notifyDataSetChanged()V

    #@9
    .line 146
    const/4 v0, 0x1

    #@a
    return v0

    #@b
    .line 148
    :cond_0
    const/4 v0, 0x0

    #@c
    return v0
.end method
