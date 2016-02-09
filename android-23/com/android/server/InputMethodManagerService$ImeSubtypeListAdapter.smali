.class Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImeSubtypeListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
        ">;"
    }
.end annotation


# instance fields
.field public mCheckedItem:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mItemsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mTextViewResourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textViewResourceId"    # I
    .param p4, "checkedItem"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
            ">;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 3151
    .local p3, "itemsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    #@3
    .line 3153
    iput p2, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mTextViewResourceId:I

    #@5
    .line 3154
    iput-object p3, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mItemsList:Ljava/util/List;

    #@7
    .line 3155
    iput p4, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mCheckedItem:I

    #@9
    .line 3156
    const-string/jumbo v0, "layout_inflater"

    #@c
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/view/LayoutInflater;

    #@12
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mInflater:Landroid/view/LayoutInflater;

    #@14
    .line 3150
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    const/4 v7, 0x0

    #@2
    .line 3161
    if-eqz p2, :cond_1

    #@4
    move-object v6, p2

    #@5
    .line 3163
    .local v6, "view":Landroid/view/View;
    :goto_0
    if-ltz p1, :cond_0

    #@7
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mItemsList:Ljava/util/List;

    #@9
    invoke-interface {v8}, Ljava/util/List;->size()I

    #@c
    move-result v8

    #@d
    if-lt p1, v8, :cond_2

    #@f
    :cond_0
    return-object v6

    #@10
    .line 3162
    .end local v6    # "view":Landroid/view/View;
    :cond_1
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mInflater:Landroid/view/LayoutInflater;

    #@12
    iget v9, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mTextViewResourceId:I

    #@14
    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@17
    move-result-object v6

    #@18
    .restart local v6    # "view":Landroid/view/View;
    goto :goto_0

    #@19
    .line 3164
    :cond_2
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mItemsList:Ljava/util/List;

    #@1b
    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1e
    move-result-object v2

    #@1f
    check-cast v2, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    #@21
    .line 3165
    .local v2, "item":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    iget-object v1, v2, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImeName:Ljava/lang/CharSequence;

    #@23
    .line 3166
    .local v1, "imeName":Ljava/lang/CharSequence;
    iget-object v5, v2, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeName:Ljava/lang/CharSequence;

    #@25
    .line 3167
    .local v5, "subtypeName":Ljava/lang/CharSequence;
    const v8, 0x1020014

    #@28
    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@2b
    move-result-object v0

    #@2c
    check-cast v0, Landroid/widget/TextView;

    #@2e
    .line 3168
    .local v0, "firstTextView":Landroid/widget/TextView;
    const v8, 0x1020015

    #@31
    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@34
    move-result-object v4

    #@35
    check-cast v4, Landroid/widget/TextView;

    #@37
    .line 3169
    .local v4, "secondTextView":Landroid/widget/TextView;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3a
    move-result v8

    #@3b
    if-eqz v8, :cond_4

    #@3d
    .line 3170
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@40
    .line 3171
    const/16 v8, 0x8

    #@42
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    #@45
    .line 3178
    :goto_1
    const v8, 0x102034d

    #@48
    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@4b
    move-result-object v3

    #@4c
    check-cast v3, Landroid/widget/RadioButton;

    #@4e
    .line 3179
    .local v3, "radioButton":Landroid/widget/RadioButton;
    iget v8, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mCheckedItem:I

    #@50
    if-ne p1, v8, :cond_3

    #@52
    const/4 v7, 0x1

    #@53
    :cond_3
    invoke-virtual {v3, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    #@56
    .line 3180
    return-object v6

    #@57
    .line 3173
    .end local v3    # "radioButton":Landroid/widget/RadioButton;
    :cond_4
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@5a
    .line 3174
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@5d
    .line 3175
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    #@60
    goto :goto_1
.end method
