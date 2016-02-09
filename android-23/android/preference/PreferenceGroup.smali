.class public abstract Landroid/preference/PreferenceGroup;
.super Landroid/preference/Preference;
.source "PreferenceGroup.java"

# interfaces
.implements Landroid/preference/GenericInflater$Parent;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/preference/Preference;",
        "Landroid/preference/GenericInflater$Parent",
        "<",
        "Landroid/preference/Preference;",
        ">;"
    }
.end annotation


# instance fields
.field private mAttachedToActivity:Z

.field private mCurrentPreferenceOrder:I

.field private mOrderingAsAdded:Z

.field private mPreferenceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 73
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 69
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 50
    const/4 v1, 0x1

    #@5
    iput-boolean v1, p0, Landroid/preference/PreferenceGroup;->mOrderingAsAdded:Z

    #@7
    .line 52
    iput v2, p0, Landroid/preference/PreferenceGroup;->mCurrentPreferenceOrder:I

    #@9
    .line 54
    iput-boolean v2, p0, Landroid/preference/PreferenceGroup;->mAttachedToActivity:Z

    #@b
    .line 59
    new-instance v1, Ljava/util/ArrayList;

    #@d
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@10
    iput-object v1, p0, Landroid/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    #@12
    .line 62
    sget-object v1, Lcom/android/internal/R$styleable;->PreferenceGroup:[I

    #@14
    .line 61
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@17
    move-result-object v0

    #@18
    .line 64
    .local v0, "a":Landroid/content/res/TypedArray;
    iget-boolean v1, p0, Landroid/preference/PreferenceGroup;->mOrderingAsAdded:Z

    #@1a
    .line 63
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@1d
    move-result v1

    #@1e
    iput-boolean v1, p0, Landroid/preference/PreferenceGroup;->mOrderingAsAdded:Z

    #@20
    .line 65
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@23
    .line 56
    return-void
.end method

.method private removePreferenceInt(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    #@0
    .prologue
    .line 188
    monitor-enter p0

    #@1
    .line 189
    :try_start_0
    invoke-virtual {p1}, Landroid/preference/Preference;->onPrepareForRemoval()V

    #@4
    .line 190
    iget-object v0, p0, Landroid/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    #@6
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    move-result v0

    #@a
    monitor-exit p0

    #@b
    return v0

    #@c
    .line 188
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method


# virtual methods
.method public addItemFromInflater(Landroid/preference/Preference;)V
    .locals 0
    .param p1, "preference"    # Landroid/preference/Preference;

    #@0
    .prologue
    .line 105
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    #@3
    .line 104
    return-void
.end method

.method public bridge synthetic addItemFromInflater(Ljava/lang/Object;)V
    .locals 0
    .param p1, "preference"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 104
    check-cast p1, Landroid/preference/Preference;

    #@2
    .end local p1    # "preference":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceGroup;->addItemFromInflater(Landroid/preference/Preference;)V

    #@5
    return-void
.end method

.method public addPreference(Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 134
    iget-object v1, p0, Landroid/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    #@4
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 136
    return v4

    #@b
    .line 139
    :cond_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getOrder()I

    #@e
    move-result v1

    #@f
    const v2, 0x7fffffff

    #@12
    if-ne v1, v2, :cond_2

    #@14
    .line 140
    iget-boolean v1, p0, Landroid/preference/PreferenceGroup;->mOrderingAsAdded:Z

    #@16
    if-eqz v1, :cond_1

    #@18
    .line 141
    iget v1, p0, Landroid/preference/PreferenceGroup;->mCurrentPreferenceOrder:I

    #@1a
    add-int/lit8 v2, v1, 0x1

    #@1c
    iput v2, p0, Landroid/preference/PreferenceGroup;->mCurrentPreferenceOrder:I

    #@1e
    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setOrder(I)V

    #@21
    .line 144
    :cond_1
    instance-of v1, p1, Landroid/preference/PreferenceGroup;

    #@23
    if-eqz v1, :cond_2

    #@25
    move-object v1, p1

    #@26
    .line 147
    check-cast v1, Landroid/preference/PreferenceGroup;

    #@28
    iget-boolean v2, p0, Landroid/preference/PreferenceGroup;->mOrderingAsAdded:Z

    #@2a
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    #@2d
    .line 151
    :cond_2
    iget-object v1, p0, Landroid/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    #@2f
    invoke-static {v1, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    #@32
    move-result v0

    #@33
    .line 152
    .local v0, "insertionIndex":I
    if-gez v0, :cond_3

    #@35
    .line 153
    mul-int/lit8 v1, v0, -0x1

    #@37
    add-int/lit8 v0, v1, -0x1

    #@39
    .line 156
    :cond_3
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceGroup;->onPrepareAddPreference(Landroid/preference/Preference;)Z

    #@3c
    move-result v1

    #@3d
    if-nez v1, :cond_4

    #@3f
    .line 157
    return v3

    #@40
    .line 160
    :cond_4
    monitor-enter p0

    #@41
    .line 161
    :try_start_0
    iget-object v1, p0, Landroid/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    #@43
    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@46
    monitor-exit p0

    #@47
    .line 164
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceManager()Landroid/preference/PreferenceManager;

    #@4a
    move-result-object v1

    #@4b
    invoke-virtual {p1, v1}, Landroid/preference/Preference;->onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V

    #@4e
    .line 166
    iget-boolean v1, p0, Landroid/preference/PreferenceGroup;->mAttachedToActivity:Z

    #@50
    if-eqz v1, :cond_5

    #@52
    .line 167
    invoke-virtual {p1}, Landroid/preference/Preference;->onAttachedToActivity()V

    #@55
    .line 170
    :cond_5
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->notifyHierarchyChanged()V

    #@58
    .line 172
    return v4

    #@59
    .line 160
    :catchall_0
    move-exception v1

    #@5a
    monitor-exit p0

    #@5b
    throw v1
.end method

.method protected dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "container"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 321
    invoke-super {p0, p1}, Landroid/preference/Preference;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    #@3
    .line 324
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    #@6
    move-result v1

    #@7
    .line 325
    .local v1, "preferenceCount":I
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@a
    .line 326
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v2, p1}, Landroid/preference/Preference;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    #@11
    .line 325
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_0

    #@14
    .line 320
    :cond_0
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "container"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 310
    invoke-super {p0, p1}, Landroid/preference/Preference;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    #@3
    .line 313
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    #@6
    move-result v1

    #@7
    .line 314
    .local v1, "preferenceCount":I
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@a
    .line 315
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v2, p1}, Landroid/preference/Preference;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    #@11
    .line 314
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_0

    #@14
    .line 309
    :cond_0
    return-void
.end method

.method public findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;
    .locals 7
    .param p1, "key"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 232
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getKey()Ljava/lang/String;

    #@4
    move-result-object v5

    #@5
    invoke-static {v5, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@8
    move-result v5

    #@9
    if-eqz v5, :cond_0

    #@b
    .line 233
    return-object p0

    #@c
    .line 235
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    #@f
    move-result v3

    #@10
    .line 236
    .local v3, "preferenceCount":I
    const/4 v1, 0x0

    #@11
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_3

    #@13
    .line 237
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    #@16
    move-result-object v2

    #@17
    .line 238
    .local v2, "preference":Landroid/preference/Preference;
    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    .line 240
    .local v0, "curKey":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@1d
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v5

    #@21
    if-eqz v5, :cond_1

    #@23
    .line 241
    return-object v2

    #@24
    .line 244
    :cond_1
    instance-of v5, v2, Landroid/preference/PreferenceGroup;

    #@26
    if-eqz v5, :cond_2

    #@28
    .line 245
    check-cast v2, Landroid/preference/PreferenceGroup;

    #@2a
    .end local v2    # "preference":Landroid/preference/Preference;
    invoke-virtual {v2, p1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    #@2d
    move-result-object v4

    #@2e
    .line 247
    .local v4, "returnedPreference":Landroid/preference/Preference;
    if-eqz v4, :cond_2

    #@30
    .line 248
    return-object v4

    #@31
    .line 236
    .end local v4    # "returnedPreference":Landroid/preference/Preference;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@33
    goto :goto_0

    #@34
    .line 253
    .end local v0    # "curKey":Ljava/lang/String;
    :cond_3
    return-object v6
.end method

.method public getPreference(I)Landroid/preference/Preference;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 123
    iget-object v0, p0, Landroid/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/preference/Preference;

    #@8
    return-object v0
.end method

.method public getPreferenceCount()I
    .locals 1

    #@0
    .prologue
    .line 113
    iget-object v0, p0, Landroid/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected isOnSameScreenAsChildren()Z
    .locals 1

    #@0
    .prologue
    .line 264
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public isOrderingAsAdded()Z
    .locals 1

    #@0
    .prologue
    .line 98
    iget-boolean v0, p0, Landroid/preference/PreferenceGroup;->mOrderingAsAdded:Z

    #@2
    return v0
.end method

.method public notifyDependencyChange(Z)V
    .locals 3
    .param p1, "disableDependents"    # Z

    #@0
    .prologue
    .line 292
    invoke-super {p0, p1}, Landroid/preference/Preference;->notifyDependencyChange(Z)V

    #@3
    .line 296
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    #@6
    move-result v1

    #@7
    .line 297
    .local v1, "preferenceCount":I
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@a
    .line 298
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v2, p0, p1}, Landroid/preference/Preference;->onParentChanged(Landroid/preference/Preference;Z)V

    #@11
    .line 297
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_0

    #@14
    .line 291
    :cond_0
    return-void
.end method

.method protected onAttachedToActivity()V
    .locals 3

    #@0
    .prologue
    .line 269
    invoke-super {p0}, Landroid/preference/Preference;->onAttachedToActivity()V

    #@3
    .line 273
    const/4 v2, 0x1

    #@4
    iput-boolean v2, p0, Landroid/preference/PreferenceGroup;->mAttachedToActivity:Z

    #@6
    .line 276
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    #@9
    move-result v1

    #@a
    .line 277
    .local v1, "preferenceCount":I
    const/4 v0, 0x0

    #@b
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@d
    .line 278
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v2}, Landroid/preference/Preference;->onAttachedToActivity()V

    #@14
    .line 277
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 268
    :cond_0
    return-void
.end method

.method protected onPrepareAddPreference(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    #@0
    .prologue
    .line 214
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->shouldDisableDependents()Z

    #@3
    move-result v0

    #@4
    invoke-virtual {p1, p0, v0}, Landroid/preference/Preference;->onParentChanged(Landroid/preference/Preference;Z)V

    #@7
    .line 215
    const/4 v0, 0x1

    #@8
    return v0
.end method

.method protected onPrepareForRemoval()V
    .locals 1

    #@0
    .prologue
    .line 284
    invoke-super {p0}, Landroid/preference/Preference;->onPrepareForRemoval()V

    #@3
    .line 287
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/preference/PreferenceGroup;->mAttachedToActivity:Z

    #@6
    .line 283
    return-void
.end method

.method public removeAll()V
    .locals 3

    #@0
    .prologue
    .line 198
    monitor-enter p0

    #@1
    .line 199
    :try_start_0
    iget-object v1, p0, Landroid/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    #@3
    .line 200
    .local v1, "preferenceList":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@6
    move-result v2

    #@7
    add-int/lit8 v0, v2, -0x1

    #@9
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@b
    .line 201
    const/4 v2, 0x0

    #@c
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Landroid/preference/Preference;

    #@12
    invoke-direct {p0, v2}, Landroid/preference/PreferenceGroup;->removePreferenceInt(Landroid/preference/Preference;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    .line 200
    add-int/lit8 v0, v0, -0x1

    #@17
    goto :goto_0

    #@18
    :cond_0
    monitor-exit p0

    #@19
    .line 204
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->notifyHierarchyChanged()V

    #@1c
    .line 197
    return-void

    #@1d
    .line 198
    .end local v0    # "i":I
    .end local v1    # "preferenceList":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    :catchall_0
    move-exception v2

    #@1e
    monitor-exit p0

    #@1f
    throw v2
.end method

.method public removePreference(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    #@0
    .prologue
    .line 182
    invoke-direct {p0, p1}, Landroid/preference/PreferenceGroup;->removePreferenceInt(Landroid/preference/Preference;)Z

    #@3
    move-result v0

    #@4
    .line 183
    .local v0, "returnValue":Z
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->notifyHierarchyChanged()V

    #@7
    .line 184
    return v0
.end method

.method public setOrderingAsAdded(Z)V
    .locals 0
    .param p1, "orderingAsAdded"    # Z

    #@0
    .prologue
    .line 88
    iput-boolean p1, p0, Landroid/preference/PreferenceGroup;->mOrderingAsAdded:Z

    #@2
    .line 87
    return-void
.end method

.method sortPreferences()V
    .locals 1

    #@0
    .prologue
    .line 303
    monitor-enter p0

    #@1
    .line 304
    :try_start_0
    iget-object v0, p0, Landroid/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    #@3
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    .line 302
    return-void

    #@8
    .line 303
    :catchall_0
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method
