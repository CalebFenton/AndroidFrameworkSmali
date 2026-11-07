.class public Landroid/preference/MultiSelectListPreference;
.super Landroid/preference/DialogPreference;
.source "MultiSelectListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/MultiSelectListPreference$SavedState;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private greylist-max-o mEntries:[Ljava/lang/CharSequence;

.field private greylist-max-o mEntryValues:[Ljava/lang/CharSequence;

.field private greylist-max-o mNewValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mPreferenceChanged:Z

.field private greylist-max-o mValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmEntryValues(Landroid/preference/MultiSelectListPreference;)[Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/preference/MultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNewValues(Landroid/preference/MultiSelectListPreference;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Landroid/preference/MultiSelectListPreference;->mNewValues:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPreferenceChanged(Landroid/preference/MultiSelectListPreference;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/preference/MultiSelectListPreference;->mPreferenceChanged:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPreferenceChanged(Landroid/preference/MultiSelectListPreference;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/preference/MultiSelectListPreference;->mPreferenceChanged:Z

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/MultiSelectListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 73
    const v0, 0x1010091

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/MultiSelectListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/preference/MultiSelectListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 70
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/preference/MultiSelectListPreference;->mValues:Ljava/util/Set;

    .line 53
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/preference/MultiSelectListPreference;->mNewValues:Ljava/util/Set;

    .line 60
    sget-object v0, Lcom/android/internal/R$styleable;->MultiSelectListPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 63
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/MultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 64
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/MultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 65
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 66
    return-void
.end method

.method private greylist-max-o getSelectedItems()[Z
    .registers 7

    .line 202
    iget-object v0, p0, Landroid/preference/MultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 203
    .local v0, "entries":[Ljava/lang/CharSequence;
    array-length v1, v0

    .line 204
    .local v1, "entryCount":I
    iget-object v2, p0, Landroid/preference/MultiSelectListPreference;->mValues:Ljava/util/Set;

    .line 205
    .local v2, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-array v3, v1, [Z

    .line 207
    .local v3, "result":[Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_8
    if-ge v4, v1, :cond_19

    .line 208
    aget-object v5, v0, v4

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    aput-boolean v5, v3, v4

    .line 207
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 211
    .end local v4    # "i":I
    :cond_19
    return-object v3
.end method


# virtual methods
.method public whitelist findIndexOfValue(Ljava/lang/String;)I
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .line 166
    if-eqz p1, :cond_1b

    iget-object v0, p0, Landroid/preference/MultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1b

    .line 167
    iget-object v0, p0, Landroid/preference/MultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_b
    if-ltz v0, :cond_1b

    .line 168
    iget-object v1, p0, Landroid/preference/MultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Ljava/lang/CharSequence;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 169
    return v0

    .line 167
    :cond_18
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 173
    .end local v0    # "i":I
    :cond_1b
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getEntries()[Ljava/lang/CharSequence;
    .registers 2

    .line 108
    iget-object v0, p0, Landroid/preference/MultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getEntryValues()[Ljava/lang/CharSequence;
    .registers 2

    .line 136
    iget-object v0, p0, Landroid/preference/MultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getValues()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Landroid/preference/MultiSelectListPreference;->mValues:Ljava/util/Set;

    return-object v0
.end method

.method protected whitelist onDialogClosed(Z)V
    .registers 4
    .param p1, "positiveResult"    # Z

    .line 216
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 218
    if-eqz p1, :cond_14

    iget-boolean v0, p0, Landroid/preference/MultiSelectListPreference;->mPreferenceChanged:Z

    if-eqz v0, :cond_14

    .line 219
    iget-object v0, p0, Landroid/preference/MultiSelectListPreference;->mNewValues:Ljava/util/Set;

    .line 220
    .local v0, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0, v0}, Landroid/preference/MultiSelectListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 221
    invoke-virtual {p0, v0}, Landroid/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 224
    .end local v0    # "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_14
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/preference/MultiSelectListPreference;->mPreferenceChanged:Z

    .line 225
    return-void
.end method

.method protected whitelist onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .registers 8
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .line 229
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 230
    .local v0, "defaultValues":[Ljava/lang/CharSequence;
    array-length v1, v0

    .line 231
    .local v1, "valueCount":I
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 233
    .local v2, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    if-ge v3, v1, :cond_19

    .line 234
    aget-object v4, v0, v3

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 233
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 237
    .end local v3    # "i":I
    :cond_19
    return-object v2
.end method

.method protected whitelist onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .registers 5
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .line 178
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 180
    iget-object v0, p0, Landroid/preference/MultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_26

    iget-object v0, p0, Landroid/preference/MultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_26

    .line 186
    invoke-direct {p0}, Landroid/preference/MultiSelectListPreference;->getSelectedItems()[Z

    move-result-object v0

    .line 187
    .local v0, "checkedItems":[Z
    iget-object v1, p0, Landroid/preference/MultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    new-instance v2, Landroid/preference/MultiSelectListPreference$1;

    invoke-direct {v2, p0}, Landroid/preference/MultiSelectListPreference$1;-><init>(Landroid/preference/MultiSelectListPreference;)V

    invoke-virtual {p1, v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 197
    iget-object v1, p0, Landroid/preference/MultiSelectListPreference;->mNewValues:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 198
    iget-object v1, p0, Landroid/preference/MultiSelectListPreference;->mNewValues:Ljava/util/Set;

    iget-object v2, p0, Landroid/preference/MultiSelectListPreference;->mValues:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 199
    return-void

    .line 181
    .end local v0    # "checkedItems":[Z
    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MultiSelectListPreference requires an entries array and an entryValues array."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .line 247
    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 248
    .local v0, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Landroid/preference/MultiSelectListPreference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 250
    return-object v0

    .line 253
    :cond_b
    new-instance v1, Landroid/preference/MultiSelectListPreference$SavedState;

    invoke-direct {v1, v0}, Landroid/preference/MultiSelectListPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 254
    .local v1, "myState":Landroid/preference/MultiSelectListPreference$SavedState;
    invoke-virtual {p0}, Landroid/preference/MultiSelectListPreference;->getValues()Ljava/util/Set;

    move-result-object v2

    iput-object v2, v1, Landroid/preference/MultiSelectListPreference$SavedState;->values:Ljava/util/Set;

    .line 255
    return-object v1
.end method

.method protected whitelist onSetInitialValue(ZLjava/lang/Object;)V
    .registers 4
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .line 242
    if-eqz p1, :cond_9

    iget-object v0, p0, Landroid/preference/MultiSelectListPreference;->mValues:Ljava/util/Set;

    invoke-virtual {p0, v0}, Landroid/preference/MultiSelectListPreference;->getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    goto :goto_c

    :cond_9
    move-object v0, p2

    check-cast v0, Ljava/util/Set;

    :goto_c
    invoke-virtual {p0, v0}, Landroid/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 243
    return-void
.end method

.method public whitelist setEntries(I)V
    .registers 3
    .param p1, "entriesResId"    # I

    .line 99
    invoke-virtual {p0}, Landroid/preference/MultiSelectListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/MultiSelectListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 100
    return-void
.end method

.method public whitelist setEntries([Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "entries"    # [Ljava/lang/CharSequence;

    .line 91
    iput-object p1, p0, Landroid/preference/MultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 92
    return-void
.end method

.method public whitelist setEntryValues(I)V
    .registers 3
    .param p1, "entryValuesResId"    # I

    .line 127
    invoke-virtual {p0}, Landroid/preference/MultiSelectListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/MultiSelectListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 128
    return-void
.end method

.method public whitelist setEntryValues([Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "entryValues"    # [Ljava/lang/CharSequence;

    .line 119
    iput-object p1, p0, Landroid/preference/MultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 120
    return-void
.end method

.method public whitelist setValues(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 146
    .local p1, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/preference/MultiSelectListPreference;->mValues:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 147
    iget-object v0, p0, Landroid/preference/MultiSelectListPreference;->mValues:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 149
    invoke-virtual {p0, p1}, Landroid/preference/MultiSelectListPreference;->persistStringSet(Ljava/util/Set;)Z

    .line 150
    return-void
.end method
