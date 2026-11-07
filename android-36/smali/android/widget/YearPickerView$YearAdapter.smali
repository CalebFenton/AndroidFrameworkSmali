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
.field private static final blacklist ITEM_LAYOUT:I = 0x1090183

.field private static final blacklist ITEM_TEXT_ACTIVATED_APPEARANCE:I = 0x10303cb

.field private static final blacklist ITEM_TEXT_APPEARANCE:I = 0x10303ca


# instance fields
.field private blacklist mActivatedYear:I

.field private blacklist mCount:I

.field private final blacklist mInflater:Landroid/view/LayoutInflater;

.field private blacklist mMinYear:I


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 120
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 121
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/YearPickerView$YearAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 122
    return-void
.end method


# virtual methods
.method public whitelist areAllItemsEnabled()Z
    .registers 2

    .line 217
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getCount()I
    .registers 2

    .line 146
    iget v0, p0, Landroid/widget/YearPickerView$YearAdapter;->mCount:I

    return v0
.end method

.method public blacklist getItem(I)Ljava/lang/Integer;
    .registers 3
    .param p1, "position"    # I

    .line 151
    invoke-virtual {p0, p1}, Landroid/widget/YearPickerView$YearAdapter;->getYearForPosition(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist getItem(I)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 107
    invoke-virtual {p0, p1}, Landroid/widget/YearPickerView$YearAdapter;->getItem(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .line 156
    invoke-virtual {p0, p1}, Landroid/widget/YearPickerView$YearAdapter;->getYearForPosition(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public whitelist getItemViewType(I)I
    .registers 3
    .param p1, "position"    # I

    .line 202
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPositionForYear(I)I
    .registers 3
    .param p1, "year"    # I

    .line 160
    iget v0, p0, Landroid/widget/YearPickerView$YearAdapter;->mMinYear:I

    sub-int v0, p1, v0

    return v0
.end method

.method public whitelist getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 175
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    .line 176
    .local v2, "hasNewView":Z
    :goto_7
    if-eqz v2, :cond_15

    .line 177
    iget-object v3, p0, Landroid/widget/YearPickerView$YearAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x1090183

    invoke-virtual {v3, v4, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .local v3, "v":Landroid/widget/TextView;
    goto :goto_18

    .line 179
    .end local v3    # "v":Landroid/widget/TextView;
    :cond_15
    move-object v3, p2

    check-cast v3, Landroid/widget/TextView;

    .line 182
    .restart local v3    # "v":Landroid/widget/TextView;
    :goto_18
    invoke-virtual {p0, p1}, Landroid/widget/YearPickerView$YearAdapter;->getYearForPosition(I)I

    move-result v4

    .line 183
    .local v4, "year":I
    iget v5, p0, Landroid/widget/YearPickerView$YearAdapter;->mActivatedYear:I

    if-ne v5, v4, :cond_21

    goto :goto_22

    :cond_21
    move v0, v1

    .line 185
    .local v0, "activated":Z
    :goto_22
    if-nez v2, :cond_2a

    invoke-virtual {v3}, Landroid/widget/TextView;->isActivated()Z

    move-result v1

    if-eq v1, v0, :cond_39

    .line 187
    :cond_2a
    if-eqz v0, :cond_30

    .line 188
    const v1, 0x10303cb

    .local v1, "textAppearanceResId":I
    goto :goto_33

    .line 190
    .end local v1    # "textAppearanceResId":I
    :cond_30
    const v1, 0x10303ca

    .line 192
    .restart local v1    # "textAppearanceResId":I
    :goto_33
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 193
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setActivated(Z)V

    .line 196
    .end local v1    # "textAppearanceResId":I
    :cond_39
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    return-object v3
.end method

.method public whitelist getViewTypeCount()I
    .registers 2

    .line 207
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getYearForPosition(I)I
    .registers 3
    .param p1, "position"    # I

    .line 164
    iget v0, p0, Landroid/widget/YearPickerView$YearAdapter;->mMinYear:I

    add-int/2addr v0, p1

    return v0
.end method

.method public whitelist hasStableIds()Z
    .registers 2

    .line 169
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist isEmpty()Z
    .registers 2

    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isEnabled(I)Z
    .registers 3
    .param p1, "position"    # I

    .line 222
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setRange(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)V
    .registers 6
    .param p1, "minDate"    # Landroid/icu/util/Calendar;
    .param p2, "maxDate"    # Landroid/icu/util/Calendar;

    .line 125
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    .line 126
    .local v1, "minYear":I
    invoke-virtual {p2, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    sub-int/2addr v2, v1

    add-int/2addr v2, v0

    .line 128
    .local v2, "count":I
    iget v0, p0, Landroid/widget/YearPickerView$YearAdapter;->mMinYear:I

    if-ne v0, v1, :cond_13

    iget v0, p0, Landroid/widget/YearPickerView$YearAdapter;->mCount:I

    if-eq v0, v2, :cond_1a

    .line 129
    :cond_13
    iput v1, p0, Landroid/widget/YearPickerView$YearAdapter;->mMinYear:I

    .line 130
    iput v2, p0, Landroid/widget/YearPickerView$YearAdapter;->mCount:I

    .line 131
    invoke-virtual {p0}, Landroid/widget/YearPickerView$YearAdapter;->notifyDataSetInvalidated()V

    .line 133
    :cond_1a
    return-void
.end method

.method public blacklist setSelection(I)Z
    .registers 3
    .param p1, "year"    # I

    .line 136
    iget v0, p0, Landroid/widget/YearPickerView$YearAdapter;->mActivatedYear:I

    if-eq v0, p1, :cond_b

    .line 137
    iput p1, p0, Landroid/widget/YearPickerView$YearAdapter;->mActivatedYear:I

    .line 138
    invoke-virtual {p0}, Landroid/widget/YearPickerView$YearAdapter;->notifyDataSetChanged()V

    .line 139
    const/4 v0, 0x1

    return v0

    .line 141
    :cond_b
    const/4 v0, 0x0

    return v0
.end method
