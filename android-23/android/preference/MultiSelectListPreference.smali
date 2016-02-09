.class public Landroid/preference/MultiSelectListPreference;
.super Landroid/preference/DialogPreference;
.source "MultiSelectListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/MultiSelectListPreference$SavedState;
    }
.end annotation


# instance fields
.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mNewValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferenceChanged:Z

.field private mValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/preference/MultiSelectListPreference;)[Ljava/lang/CharSequence;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/preference/MultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/preference/MultiSelectListPreference;)Ljava/util/Set;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/preference/MultiSelectListPreference;->mNewValues:Ljava/util/Set;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/preference/MultiSelectListPreference;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/preference/MultiSelectListPreference;->mPreferenceChanged:Z

    #@2
    return v0
.end method

.method static synthetic -set0(Landroid/preference/MultiSelectListPreference;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/preference/MultiSelectListPreference;->mPreferenceChanged:Z

    #@2
    return p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 70
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/preference/MultiSelectListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 66
    const v0, 0x1010091

    #@3
    invoke-direct {p0, p1, p2, v0}, Landroid/preference/MultiSelectListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@6
    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 62
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/preference/MultiSelectListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@3
    .line 45
    new-instance v1, Ljava/util/HashSet;

    #@5
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    #@8
    iput-object v1, p0, Landroid/preference/MultiSelectListPreference;->mValues:Ljava/util/Set;

    #@a
    .line 46
    new-instance v1, Ljava/util/HashSet;

    #@c
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    #@f
    iput-object v1, p0, Landroid/preference/MultiSelectListPreference;->mNewValues:Ljava/util/Set;

    #@11
    .line 54
    sget-object v1, Lcom/android/internal/R$styleable;->MultiSelectListPreference:[I

    #@13
    .line 53
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@16
    move-result-object v0

    #@17
    .line 56
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    #@18
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    #@1b
    move-result-object v1

    #@1c
    iput-object v1, p0, Landroid/preference/MultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    #@1e
    .line 57
    const/4 v1, 0x1

    #@1f
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    #@22
    move-result-object v1

    #@23
    iput-object v1, p0, Landroid/preference/MultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    #@25
    .line 58
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@28
    .line 50
    return-void
.end method

.method private getSelectedItems()[Z
    .locals 6

    #@0
    .prologue
    .line 195
    iget-object v0, p0, Landroid/preference/MultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    #@2
    .line 196
    .local v0, "entries":[Ljava/lang/CharSequence;
    array-length v1, v0

    #@3
    .line 197
    .local v1, "entryCount":I
    iget-object v4, p0, Landroid/preference/MultiSelectListPreference;->mValues:Ljava/util/Set;

    #@5
    .line 198
    .local v4, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-array v3, v1, [Z

    #@7
    .line 200
    .local v3, "result":[Z
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    #@a
    .line 201
    aget-object v5, v0, v2

    #@c
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@f
    move-result-object v5

    #@10
    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@13
    move-result v5

    #@14
    aput-boolean v5, v3, v2

    #@16
    .line 200
    add-int/lit8 v2, v2, 0x1

    #@18
    goto :goto_0

    #@19
    .line 204
    :cond_0
    return-object v3
.end method


# virtual methods
.method public findIndexOfValue(Ljava/lang/String;)I
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 159
    if-eqz p1, :cond_1

    #@2
    iget-object v1, p0, Landroid/preference/MultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    #@4
    if-eqz v1, :cond_1

    #@6
    .line 160
    iget-object v1, p0, Landroid/preference/MultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    #@8
    array-length v1, v1

    #@9
    add-int/lit8 v0, v1, -0x1

    #@b
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@d
    .line 161
    iget-object v1, p0, Landroid/preference/MultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    #@f
    aget-object v1, v1, v0

    #@11
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_0

    #@17
    .line 162
    return v0

    #@18
    .line 160
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@1a
    goto :goto_0

    #@1b
    .line 166
    .end local v0    # "i":I
    :cond_1
    const/4 v1, -0x1

    #@1c
    return v1
.end method

.method public getEntries()[Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 101
    iget-object v0, p0, Landroid/preference/MultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getEntryValues()[Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 129
    iget-object v0, p0, Landroid/preference/MultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getValues()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 149
    iget-object v0, p0, Landroid/preference/MultiSelectListPreference;->mValues:Ljava/util/Set;

    #@2
    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 2
    .param p1, "positiveResult"    # Z

    #@0
    .prologue
    .line 209
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    #@3
    .line 211
    if-eqz p1, :cond_0

    #@5
    iget-boolean v1, p0, Landroid/preference/MultiSelectListPreference;->mPreferenceChanged:Z

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 212
    iget-object v0, p0, Landroid/preference/MultiSelectListPreference;->mNewValues:Ljava/util/Set;

    #@b
    .line 213
    .local v0, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0, v0}, Landroid/preference/MultiSelectListPreference;->callChangeListener(Ljava/lang/Object;)Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 214
    invoke-virtual {p0, v0}, Landroid/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    #@14
    .line 217
    .end local v0    # "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    const/4 v1, 0x0

    #@15
    iput-boolean v1, p0, Landroid/preference/MultiSelectListPreference;->mPreferenceChanged:Z

    #@17
    .line 208
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 5
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    #@0
    .prologue
    .line 222
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    .line 223
    .local v0, "defaultValues":[Ljava/lang/CharSequence;
    array-length v3, v0

    #@5
    .line 224
    .local v3, "valueCount":I
    new-instance v2, Ljava/util/HashSet;

    #@7
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    #@a
    .line 226
    .local v2, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    #@b
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    #@d
    .line 227
    aget-object v4, v0, v1

    #@f
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@12
    move-result-object v4

    #@13
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@16
    .line 226
    add-int/lit8 v1, v1, 0x1

    #@18
    goto :goto_0

    #@19
    .line 230
    :cond_0
    return-object v2
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 3
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    #@0
    .prologue
    .line 171
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    #@3
    .line 173
    iget-object v1, p0, Landroid/preference/MultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    #@5
    if-eqz v1, :cond_0

    #@7
    iget-object v1, p0, Landroid/preference/MultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    #@9
    if-nez v1, :cond_1

    #@b
    .line 174
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    #@d
    .line 175
    const-string/jumbo v2, "MultiSelectListPreference requires an entries array and an entryValues array."

    #@10
    .line 174
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@13
    throw v1

    #@14
    .line 179
    :cond_1
    invoke-direct {p0}, Landroid/preference/MultiSelectListPreference;->getSelectedItems()[Z

    #@17
    move-result-object v0

    #@18
    .line 180
    .local v0, "checkedItems":[Z
    iget-object v1, p0, Landroid/preference/MultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    #@1a
    .line 181
    new-instance v2, Landroid/preference/MultiSelectListPreference$1;

    #@1c
    invoke-direct {v2, p0}, Landroid/preference/MultiSelectListPreference$1;-><init>(Landroid/preference/MultiSelectListPreference;)V

    #@1f
    .line 180
    invoke-virtual {p1, v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    #@22
    .line 190
    iget-object v1, p0, Landroid/preference/MultiSelectListPreference;->mNewValues:Ljava/util/Set;

    #@24
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    #@27
    .line 191
    iget-object v1, p0, Landroid/preference/MultiSelectListPreference;->mNewValues:Ljava/util/Set;

    #@29
    iget-object v2, p0, Landroid/preference/MultiSelectListPreference;->mValues:Ljava/util/Set;

    #@2b
    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@2e
    .line 170
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    #@0
    .prologue
    .line 240
    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    #@3
    move-result-object v1

    #@4
    .line 241
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Landroid/preference/MultiSelectListPreference;->isPersistent()Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 243
    return-object v1

    #@b
    .line 246
    :cond_0
    new-instance v0, Landroid/preference/MultiSelectListPreference$SavedState;

    #@d
    invoke-direct {v0, v1}, Landroid/preference/MultiSelectListPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    #@10
    .line 247
    .local v0, "myState":Landroid/preference/MultiSelectListPreference$SavedState;
    invoke-virtual {p0}, Landroid/preference/MultiSelectListPreference;->getValues()Ljava/util/Set;

    #@13
    move-result-object v2

    #@14
    iput-object v2, v0, Landroid/preference/MultiSelectListPreference$SavedState;->values:Ljava/util/Set;

    #@16
    .line 248
    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 235
    if-eqz p1, :cond_0

    #@2
    iget-object v0, p0, Landroid/preference/MultiSelectListPreference;->mValues:Ljava/util/Set;

    #@4
    invoke-virtual {p0, v0}, Landroid/preference/MultiSelectListPreference;->getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;

    #@7
    move-result-object p2

    #@8
    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0, p2}, Landroid/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    #@b
    .line 234
    return-void

    #@c
    .line 235
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/util/Set;

    #@e
    goto :goto_0
.end method

.method public setEntries(I)V
    .locals 1
    .param p1, "entriesResId"    # I

    #@0
    .prologue
    .line 92
    invoke-virtual {p0}, Landroid/preference/MultiSelectListPreference;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p0, v0}, Landroid/preference/MultiSelectListPreference;->setEntries([Ljava/lang/CharSequence;)V

    #@f
    .line 91
    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "entries"    # [Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 84
    iput-object p1, p0, Landroid/preference/MultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    #@2
    .line 83
    return-void
.end method

.method public setEntryValues(I)V
    .locals 1
    .param p1, "entryValuesResId"    # I

    #@0
    .prologue
    .line 120
    invoke-virtual {p0}, Landroid/preference/MultiSelectListPreference;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p0, v0}, Landroid/preference/MultiSelectListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    #@f
    .line 119
    return-void
.end method

.method public setEntryValues([Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "entryValues"    # [Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 112
    iput-object p1, p0, Landroid/preference/MultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    #@2
    .line 111
    return-void
.end method

.method public setValues(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 139
    .local p1, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/preference/MultiSelectListPreference;->mValues:Ljava/util/Set;

    #@2
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    #@5
    .line 140
    iget-object v0, p0, Landroid/preference/MultiSelectListPreference;->mValues:Ljava/util/Set;

    #@7
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@a
    .line 142
    invoke-virtual {p0, p1}, Landroid/preference/MultiSelectListPreference;->persistStringSet(Ljava/util/Set;)Z

    #@d
    .line 138
    return-void
.end method
