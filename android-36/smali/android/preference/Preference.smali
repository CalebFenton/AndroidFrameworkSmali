.class public Landroid/preference/Preference;
.super Ljava/lang/Object;
.source "Preference.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/Preference$OnPreferenceChangeListener;,
        Landroid/preference/Preference$OnPreferenceClickListener;,
        Landroid/preference/Preference$OnPreferenceChangeInternalListener;,
        Landroid/preference/Preference$BaseSavedState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroid/preference/Preference;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist DEFAULT_ORDER:I = 0x7fffffff


# instance fields
.field private greylist-max-o mBaseMethodCalled:Z

.field private greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mDefaultValue:Ljava/lang/Object;

.field private greylist-max-o mDependencyKey:Ljava/lang/String;

.field private greylist-max-o mDependencyMet:Z

.field private greylist-max-o mDependents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mEnabled:Z

.field private greylist-max-o mExtras:Landroid/os/Bundle;

.field private greylist-max-o mFragment:Ljava/lang/String;

.field private greylist-max-o mHasSingleLineTitleAttr:Z

.field private greylist-max-o mIcon:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mIconResId:I

.field private greylist-max-o mIconSpaceReserved:Z

.field private greylist-max-o mId:J

.field private greylist-max-o mIntent:Landroid/content/Intent;

.field private greylist-max-o mKey:Ljava/lang/String;

.field private greylist mLayoutResId:I

.field private greylist-max-o mListener:Landroid/preference/Preference$OnPreferenceChangeInternalListener;

.field private greylist-max-o mOnChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private greylist-max-o mOnClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field private greylist-max-o mOrder:I

.field private greylist-max-o mParentDependencyMet:Z

.field private greylist-max-o mParentGroup:Landroid/preference/PreferenceGroup;

.field private greylist-max-o mPersistent:Z

.field private greylist-max-o mPreferenceDataStore:Landroid/preference/PreferenceDataStore;

.field private greylist-max-o mPreferenceManager:Landroid/preference/PreferenceManager;

.field private greylist-max-o mRecycleEnabled:Z

.field private greylist-max-o mRequiresKey:Z

.field private greylist-max-o mSelectable:Z

.field private greylist-max-o mShouldDisableView:Z

.field private greylist-max-o mSingleLineTitle:Z

.field private greylist mSummary:Ljava/lang/CharSequence;

.field private greylist-max-o mTitle:Ljava/lang/CharSequence;

.field private greylist-max-o mTitleRes:I

.field private greylist mWidgetLayoutResId:I


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 392
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 393
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 383
    const v0, 0x101008e

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 384
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 365
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 366
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    const v0, 0x7fffffff

    iput v0, p0, Landroid/preference/Preference;->mOrder:I

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/preference/Preference;->mEnabled:Z

    .line 140
    iput-boolean v0, p0, Landroid/preference/Preference;->mSelectable:Z

    .line 142
    iput-boolean v0, p0, Landroid/preference/Preference;->mPersistent:Z

    .line 145
    iput-boolean v0, p0, Landroid/preference/Preference;->mDependencyMet:Z

    .line 146
    iput-boolean v0, p0, Landroid/preference/Preference;->mParentDependencyMet:Z

    .line 147
    iput-boolean v0, p0, Landroid/preference/Preference;->mRecycleEnabled:Z

    .line 149
    iput-boolean v0, p0, Landroid/preference/Preference;->mSingleLineTitle:Z

    .line 155
    iput-boolean v0, p0, Landroid/preference/Preference;->mShouldDisableView:Z

    .line 157
    const v1, 0x1090107

    iput v1, p0, Landroid/preference/Preference;->mLayoutResId:I

    .line 263
    iput-object p1, p0, Landroid/preference/Preference;->mContext:Landroid/content/Context;

    .line 265
    sget-object v1, Lcom/android/internal/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 267
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    sub-int/2addr v2, v0

    .local v2, "i":I
    :goto_2b
    if-ltz v2, :cond_ce

    .line 268
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 269
    .local v3, "attr":I
    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_d2

    goto/16 :goto_ca

    .line 337
    :pswitch_37
    iget-boolean v4, p0, Landroid/preference/Preference;->mIconSpaceReserved:Z

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroid/preference/Preference;->mIconSpaceReserved:Z

    goto/16 :goto_ca

    .line 332
    :pswitch_41
    iget-boolean v4, p0, Landroid/preference/Preference;->mSingleLineTitle:Z

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroid/preference/Preference;->mSingleLineTitle:Z

    .line 333
    iput-boolean v0, p0, Landroid/preference/Preference;->mHasSingleLineTitleAttr:Z

    .line 334
    goto/16 :goto_ca

    .line 328
    :pswitch_4d
    iget-boolean v4, p0, Landroid/preference/Preference;->mRecycleEnabled:Z

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroid/preference/Preference;->mRecycleEnabled:Z

    .line 329
    goto/16 :goto_ca

    .line 292
    :pswitch_57
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/preference/Preference;->mFragment:Ljava/lang/String;

    .line 293
    goto/16 :goto_ca

    .line 324
    :pswitch_5f
    iget-boolean v4, p0, Landroid/preference/Preference;->mShouldDisableView:Z

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroid/preference/Preference;->mShouldDisableView:Z

    .line 325
    goto :goto_ca

    .line 320
    :pswitch_68
    invoke-virtual {p0, v1, v3}, Landroid/preference/Preference;->onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Landroid/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    .line 321
    goto :goto_ca

    .line 316
    :pswitch_6f
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/preference/Preference;->mDependencyKey:Ljava/lang/String;

    .line 317
    goto :goto_ca

    .line 300
    :pswitch_76
    iget v4, p0, Landroid/preference/Preference;->mWidgetLayoutResId:I

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroid/preference/Preference;->mWidgetLayoutResId:I

    .line 301
    goto :goto_ca

    .line 288
    :pswitch_7f
    iget v4, p0, Landroid/preference/Preference;->mOrder:I

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/preference/Preference;->mOrder:I

    .line 289
    goto :goto_ca

    .line 284
    :pswitch_88
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Landroid/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    .line 285
    goto :goto_ca

    .line 275
    :pswitch_8f
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    .line 276
    goto :goto_ca

    .line 308
    :pswitch_96
    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroid/preference/Preference;->mSelectable:Z

    .line 309
    goto :goto_ca

    .line 279
    :pswitch_9d
    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroid/preference/Preference;->mTitleRes:I

    .line 280
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    .line 281
    goto :goto_ca

    .line 296
    :pswitch_aa
    iget v4, p0, Landroid/preference/Preference;->mLayoutResId:I

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroid/preference/Preference;->mLayoutResId:I

    .line 297
    goto :goto_ca

    .line 304
    :pswitch_b3
    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroid/preference/Preference;->mEnabled:Z

    .line 305
    goto :goto_ca

    .line 312
    :pswitch_ba
    iget-boolean v4, p0, Landroid/preference/Preference;->mPersistent:Z

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroid/preference/Preference;->mPersistent:Z

    .line 313
    goto :goto_ca

    .line 271
    :pswitch_c3
    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroid/preference/Preference;->mIconResId:I

    .line 272
    nop

    .line 267
    .end local v3    # "attr":I
    :goto_ca
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_2b

    .line 341
    .end local v2    # "i":I
    :cond_ce
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 342
    return-void

    :pswitch_data_d2
    .packed-switch 0x0
        :pswitch_c3
        :pswitch_ba
        :pswitch_b3
        :pswitch_aa
        :pswitch_9d
        :pswitch_96
        :pswitch_8f
        :pswitch_88
        :pswitch_7f
        :pswitch_76
        :pswitch_6f
        :pswitch_68
        :pswitch_5f
        :pswitch_57
        :pswitch_4d
        :pswitch_41
        :pswitch_37
    .end packed-switch
.end method

.method private greylist-max-o dispatchSetInitialValue()V
    .registers 5

    .line 1579
    invoke-virtual {p0}, Landroid/preference/Preference;->getPreferenceDataStore()Landroid/preference/PreferenceDataStore;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    .line 1580
    iget-object v0, p0, Landroid/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    invoke-virtual {p0, v1, v0}, Landroid/preference/Preference;->onSetInitialValue(ZLjava/lang/Object;)V

    .line 1581
    return-void

    .line 1585
    :cond_d
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v0

    .line 1586
    .local v0, "shouldPersist":Z
    if-eqz v0, :cond_25

    invoke-virtual {p0}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    iget-object v3, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_20

    goto :goto_25

    .line 1591
    :cond_20
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/preference/Preference;->onSetInitialValue(ZLjava/lang/Object;)V

    goto :goto_2f

    .line 1587
    :cond_25
    :goto_25
    iget-object v1, p0, Landroid/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    if-eqz v1, :cond_2f

    .line 1588
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Landroid/preference/Preference;->onSetInitialValue(ZLjava/lang/Object;)V

    .line 1593
    :cond_2f
    :goto_2f
    return-void
.end method

.method private greylist-max-o registerDependency()V
    .registers 5

    .line 1385
    iget-object v0, p0, Landroid/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 1387
    :cond_9
    iget-object v0, p0, Landroid/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    .line 1388
    .local v0, "preference":Landroid/preference/Preference;
    if-eqz v0, :cond_15

    .line 1389
    invoke-direct {v0, p0}, Landroid/preference/Preference;->registerDependent(Landroid/preference/Preference;)V

    .line 1394
    return-void

    .line 1391
    :cond_15
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dependency \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" not found for preference \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" (title: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist registerDependent(Landroid/preference/Preference;)V
    .registers 3
    .param p1, "dependent"    # Landroid/preference/Preference;

    .line 1434
    iget-object v0, p0, Landroid/preference/Preference;->mDependents:Ljava/util/List;

    if-nez v0, :cond_b

    .line 1435
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/preference/Preference;->mDependents:Ljava/util/List;

    .line 1438
    :cond_b
    iget-object v0, p0, Landroid/preference/Preference;->mDependents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1440
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p1, p0, v0}, Landroid/preference/Preference;->onDependencyChanged(Landroid/preference/Preference;Z)V

    .line 1441
    return-void
.end method

.method private greylist-max-o setEnabledStateOnViews(Landroid/view/View;Z)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "enabled"    # Z

    .line 695
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 697
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1c

    .line 698
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 699
    .local v0, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_10
    if-ltz v1, :cond_1c

    .line 700
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Landroid/preference/Preference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 699
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    .line 703
    .end local v0    # "vg":Landroid/view/ViewGroup;
    .end local v1    # "i":I
    :cond_1c
    return-void
.end method

.method private greylist-max-o tryCommit(Landroid/content/SharedPreferences$Editor;)V
    .registers 3
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;

    .line 1619
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->shouldCommit()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1621
    :try_start_8
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_b
    .catch Ljava/lang/AbstractMethodError; {:try_start_8 .. :try_end_b} :catch_c

    .line 1627
    goto :goto_10

    .line 1622
    :catch_c
    move-exception v0

    .line 1626
    .local v0, "unused":Ljava/lang/AbstractMethodError;
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1629
    .end local v0    # "unused":Ljava/lang/AbstractMethodError;
    :cond_10
    :goto_10
    return-void
.end method

.method private greylist-max-o unregisterDependency()V
    .registers 2

    .line 1397
    iget-object v0, p0, Landroid/preference/Preference;->mDependencyKey:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 1398
    iget-object v0, p0, Landroid/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    .line 1399
    .local v0, "oldDependency":Landroid/preference/Preference;
    if-eqz v0, :cond_f

    .line 1400
    invoke-direct {v0, p0}, Landroid/preference/Preference;->unregisterDependent(Landroid/preference/Preference;)V

    .line 1403
    .end local v0    # "oldDependency":Landroid/preference/Preference;
    :cond_f
    return-void
.end method

.method private greylist-max-o unregisterDependent(Landroid/preference/Preference;)V
    .registers 3
    .param p1, "dependent"    # Landroid/preference/Preference;

    .line 1452
    iget-object v0, p0, Landroid/preference/Preference;->mDependents:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 1453
    iget-object v0, p0, Landroid/preference/Preference;->mDependents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1455
    :cond_9
    return-void
.end method


# virtual methods
.method greylist-max-o assignParent(Landroid/preference/PreferenceGroup;)V
    .registers 2
    .param p1, "parentGroup"    # Landroid/preference/PreferenceGroup;

    .line 1380
    iput-object p1, p0, Landroid/preference/Preference;->mParentGroup:Landroid/preference/PreferenceGroup;

    .line 1381
    return-void
.end method

.method protected whitelist callChangeListener(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "newValue"    # Ljava/lang/Object;

    .line 1107
    iget-object v0, p0, Landroid/preference/Preference;->mOnChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/preference/Preference;->mOnChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-interface {v0, p0, p1}, Landroid/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public whitelist compareTo(Landroid/preference/Preference;)I
    .registers 4
    .param p1, "another"    # Landroid/preference/Preference;

    .line 1291
    iget v0, p0, Landroid/preference/Preference;->mOrder:I

    iget v1, p1, Landroid/preference/Preference;->mOrder:I

    if-eq v0, v1, :cond_c

    .line 1293
    iget v0, p0, Landroid/preference/Preference;->mOrder:I

    iget v1, p1, Landroid/preference/Preference;->mOrder:I

    sub-int/2addr v0, v1

    return v0

    .line 1294
    :cond_c
    iget-object v0, p0, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    iget-object v1, p1, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-ne v0, v1, :cond_14

    .line 1296
    const/4 v0, 0x0

    return v0

    .line 1297
    :cond_14
    iget-object v0, p0, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_1a

    .line 1298
    const/4 v0, 0x1

    return v0

    .line 1299
    :cond_1a
    iget-object v0, p1, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_20

    .line 1300
    const/4 v0, -0x1

    return v0

    .line 1303
    :cond_20
    iget-object v0, p0, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    iget-object v1, p1, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/android/internal/util/CharSequences;->compareToIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 96
    check-cast p1, Landroid/preference/Preference;

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->compareTo(Landroid/preference/Preference;)I

    move-result p1

    return p1
.end method

.method greylist-max-o dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "container"    # Landroid/os/Bundle;

    .line 2062
    invoke-virtual {p0}, Landroid/preference/Preference;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2063
    iget-object v0, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 2064
    .local v0, "state":Landroid/os/Parcelable;
    if-eqz v0, :cond_21

    .line 2065
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/preference/Preference;->mBaseMethodCalled:Z

    .line 2066
    invoke-virtual {p0, v0}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2067
    iget-boolean v1, p0, Landroid/preference/Preference;->mBaseMethodCalled:Z

    if-eqz v1, :cond_19

    goto :goto_21

    .line 2068
    :cond_19
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Derived class did not call super.onRestoreInstanceState()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2073
    .end local v0    # "state":Landroid/os/Parcelable;
    :cond_21
    :goto_21
    return-void
.end method

.method greylist-max-o dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "container"    # Landroid/os/Bundle;

    .line 2009
    invoke-virtual {p0}, Landroid/preference/Preference;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2010
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/preference/Preference;->mBaseMethodCalled:Z

    .line 2011
    invoke-virtual {p0}, Landroid/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2012
    .local v0, "state":Landroid/os/Parcelable;
    iget-boolean v1, p0, Landroid/preference/Preference;->mBaseMethodCalled:Z

    if-eqz v1, :cond_19

    .line 2016
    if-eqz v0, :cond_21

    .line 2017
    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_21

    .line 2013
    :cond_19
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Derived class did not call super.onSaveInstanceState()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2020
    .end local v0    # "state":Landroid/os/Parcelable;
    :cond_21
    :goto_21
    return-void
.end method

.method protected whitelist findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 1416
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-nez v0, :cond_b

    goto :goto_12

    .line 1420
    :cond_b
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    return-object v0

    .line 1417
    :cond_12
    :goto_12
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getContext()Landroid/content/Context;
    .registers 2

    .line 1206
    iget-object v0, p0, Landroid/preference/Preference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public whitelist getDependency()Ljava/lang/String;
    .registers 2

    .line 1543
    iget-object v0, p0, Landroid/preference/Preference;->mDependencyKey:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getEditor()Landroid/content/SharedPreferences$Editor;
    .registers 2

    .line 1257
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Landroid/preference/Preference;->getPreferenceDataStore()Landroid/preference/PreferenceDataStore;

    move-result-object v0

    if-eqz v0, :cond_b

    goto :goto_12

    .line 1261
    :cond_b
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0

    .line 1258
    :cond_12
    :goto_12
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .registers 2

    .line 493
    iget-object v0, p0, Landroid/preference/Preference;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 494
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/preference/Preference;->mExtras:Landroid/os/Bundle;

    .line 496
    :cond_b
    iget-object v0, p0, Landroid/preference/Preference;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method greylist-max-o getFilterableStringBuilder()Ljava/lang/StringBuilder;
    .registers 6

    .line 1970
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1971
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1972
    .local v1, "title":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x20

    if-nez v2, :cond_18

    .line 1973
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1975
    :cond_18
    invoke-virtual {p0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    .line 1976
    .local v2, "summary":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_29

    .line 1977
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1979
    :cond_29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_38

    .line 1981
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1983
    :cond_38
    return-object v0
.end method

.method public whitelist getFragment()Ljava/lang/String;
    .registers 2

    .line 446
    iget-object v0, p0, Landroid/preference/Preference;->mFragment:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getIcon()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 816
    iget-object v0, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_14

    iget v0, p0, Landroid/preference/Preference;->mIconResId:I

    if-eqz v0, :cond_14

    .line 817
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Landroid/preference/Preference;->mIconResId:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 819
    :cond_14
    iget-object v0, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method greylist getId()J
    .registers 3

    .line 1005
    iget-wide v0, p0, Landroid/preference/Preference;->mId:J

    return-wide v0
.end method

.method public whitelist getIntent()Landroid/content/Intent;
    .registers 2

    .line 428
    iget-object v0, p0, Landroid/preference/Preference;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public whitelist getKey()Ljava/lang/String;
    .registers 2

    .line 1038
    iget-object v0, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getLayoutResource()I
    .registers 2

    .line 537
    iget v0, p0, Landroid/preference/Preference;->mLayoutResId:I

    return v0
.end method

.method public whitelist getOnPreferenceChangeListener()Landroid/preference/Preference$OnPreferenceChangeListener;
    .registers 2

    .line 1127
    iget-object v0, p0, Landroid/preference/Preference;->mOnChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    return-object v0
.end method

.method public whitelist getOnPreferenceClickListener()Landroid/preference/Preference$OnPreferenceClickListener;
    .registers 2

    .line 1145
    iget-object v0, p0, Landroid/preference/Preference;->mOnClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    return-object v0
.end method

.method public whitelist getOrder()I
    .registers 2

    .line 732
    iget v0, p0, Landroid/preference/Preference;->mOrder:I

    return v0
.end method

.method public whitelist getParent()Landroid/preference/PreferenceGroup;
    .registers 2

    .line 1554
    iget-object v0, p0, Landroid/preference/Preference;->mParentGroup:Landroid/preference/PreferenceGroup;

    return-object v0
.end method

.method protected whitelist getPersistedBoolean(Z)Z
    .registers 5
    .param p1, "defaultReturnValue"    # Z

    .line 1941
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1942
    return p1

    .line 1945
    :cond_7
    invoke-virtual {p0}, Landroid/preference/Preference;->getPreferenceDataStore()Landroid/preference/PreferenceDataStore;

    move-result-object v0

    .line 1946
    .local v0, "dataStore":Landroid/preference/PreferenceDataStore;
    if-eqz v0, :cond_14

    .line 1947
    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/preference/PreferenceDataStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1

    .line 1950
    :cond_14
    iget-object v1, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v1}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method protected whitelist getPersistedFloat(F)F
    .registers 5
    .param p1, "defaultReturnValue"    # F

    .line 1833
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1834
    return p1

    .line 1837
    :cond_7
    invoke-virtual {p0}, Landroid/preference/Preference;->getPreferenceDataStore()Landroid/preference/PreferenceDataStore;

    move-result-object v0

    .line 1838
    .local v0, "dataStore":Landroid/preference/PreferenceDataStore;
    if-eqz v0, :cond_14

    .line 1839
    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/preference/PreferenceDataStore;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1

    .line 1842
    :cond_14
    iget-object v1, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v1}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method protected whitelist getPersistedInt(I)I
    .registers 5
    .param p1, "defaultReturnValue"    # I

    .line 1779
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1780
    return p1

    .line 1783
    :cond_7
    invoke-virtual {p0}, Landroid/preference/Preference;->getPreferenceDataStore()Landroid/preference/PreferenceDataStore;

    move-result-object v0

    .line 1784
    .local v0, "dataStore":Landroid/preference/PreferenceDataStore;
    if-eqz v0, :cond_14

    .line 1785
    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/preference/PreferenceDataStore;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1

    .line 1788
    :cond_14
    iget-object v1, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v1}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method protected whitelist getPersistedLong(J)J
    .registers 6
    .param p1, "defaultReturnValue"    # J

    .line 1887
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1888
    return-wide p1

    .line 1891
    :cond_7
    invoke-virtual {p0}, Landroid/preference/Preference;->getPreferenceDataStore()Landroid/preference/PreferenceDataStore;

    move-result-object v0

    .line 1892
    .local v0, "dataStore":Landroid/preference/PreferenceDataStore;
    if-eqz v0, :cond_14

    .line 1893
    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Landroid/preference/PreferenceDataStore;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1

    .line 1896
    :cond_14
    iget-object v1, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v1}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method protected whitelist getPersistedString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "defaultReturnValue"    # Ljava/lang/String;

    .line 1672
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1673
    return-object p1

    .line 1676
    :cond_7
    invoke-virtual {p0}, Landroid/preference/Preference;->getPreferenceDataStore()Landroid/preference/PreferenceDataStore;

    move-result-object v0

    .line 1677
    .local v0, "dataStore":Landroid/preference/PreferenceDataStore;
    if-eqz v0, :cond_14

    .line 1678
    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/preference/PreferenceDataStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1681
    :cond_14
    iget-object v1, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v1}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1725
    .local p1, "defaultReturnValue":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1726
    return-object p1

    .line 1729
    :cond_7
    invoke-virtual {p0}, Landroid/preference/Preference;->getPreferenceDataStore()Landroid/preference/PreferenceDataStore;

    move-result-object v0

    .line 1730
    .local v0, "dataStore":Landroid/preference/PreferenceDataStore;
    if-eqz v0, :cond_14

    .line 1731
    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/preference/PreferenceDataStore;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 1734
    :cond_14
    iget-object v1, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v1}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getPreferenceDataStore()Landroid/preference/PreferenceDataStore;
    .registers 2

    .line 478
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceDataStore:Landroid/preference/PreferenceDataStore;

    if-eqz v0, :cond_7

    .line 479
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceDataStore:Landroid/preference/PreferenceDataStore;

    return-object v0

    .line 480
    :cond_7
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_12

    .line 481
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getPreferenceDataStore()Landroid/preference/PreferenceDataStore;

    move-result-object v0

    return-object v0

    .line 484
    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getPreferenceManager()Landroid/preference/PreferenceManager;
    .registers 2

    .line 1344
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    return-object v0
.end method

.method public whitelist getSharedPreferences()Landroid/content/SharedPreferences;
    .registers 2

    .line 1229
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Landroid/preference/Preference;->getPreferenceDataStore()Landroid/preference/PreferenceDataStore;

    move-result-object v0

    if-eqz v0, :cond_b

    goto :goto_12

    .line 1233
    :cond_b
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0

    .line 1230
    :cond_12
    :goto_12
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getShouldDisableView()Z
    .registers 2

    .line 923
    iget-boolean v0, p0, Landroid/preference/Preference;->mShouldDisableView:Z

    return v0
.end method

.method public whitelist getSummary()Ljava/lang/CharSequence;
    .registers 2

    .line 829
    iget-object v0, p0, Landroid/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 779
    iget-object v0, p0, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getTitleRes()I
    .registers 2

    .line 769
    iget v0, p0, Landroid/preference/Preference;->mTitleRes:I

    return v0
.end method

.method public whitelist getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 3
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .line 582
    if-nez p1, :cond_6

    .line 583
    invoke-virtual {p0, p2}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 585
    :cond_6
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 586
    return-object p1
.end method

.method public whitelist getWidgetLayoutResource()I
    .registers 2

    .line 565
    iget v0, p0, Landroid/preference/Preference;->mWidgetLayoutResId:I

    return v0
.end method

.method public whitelist hasKey()Z
    .registers 2

    .line 1061
    iget-object v0, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist isEnabled()Z
    .registers 2

    .line 877
    iget-boolean v0, p0, Landroid/preference/Preference;->mEnabled:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Landroid/preference/Preference;->mDependencyMet:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Landroid/preference/Preference;->mParentDependencyMet:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist isIconSpaceReserved()Z
    .registers 2

    .line 995
    iget-boolean v0, p0, Landroid/preference/Preference;->mIconSpaceReserved:Z

    return v0
.end method

.method public whitelist isPersistent()Z
    .registers 2

    .line 1072
    iget-boolean v0, p0, Landroid/preference/Preference;->mPersistent:Z

    return v0
.end method

.method public whitelist isRecycleEnabled()Z
    .registers 2

    .line 953
    iget-boolean v0, p0, Landroid/preference/Preference;->mRecycleEnabled:Z

    return v0
.end method

.method public whitelist isSelectable()Z
    .registers 2

    .line 898
    iget-boolean v0, p0, Landroid/preference/Preference;->mSelectable:Z

    return v0
.end method

.method public whitelist isSingleLineTitle()Z
    .registers 2

    .line 975
    iget-boolean v0, p0, Landroid/preference/Preference;->mSingleLineTitle:Z

    return v0
.end method

.method protected whitelist notifyChanged()V
    .registers 2

    .line 1322
    iget-object v0, p0, Landroid/preference/Preference;->mListener:Landroid/preference/Preference$OnPreferenceChangeInternalListener;

    if-eqz v0, :cond_9

    .line 1323
    iget-object v0, p0, Landroid/preference/Preference;->mListener:Landroid/preference/Preference$OnPreferenceChangeInternalListener;

    invoke-interface {v0, p0}, Landroid/preference/Preference$OnPreferenceChangeInternalListener;->onPreferenceChange(Landroid/preference/Preference;)V

    .line 1325
    :cond_9
    return-void
.end method

.method public whitelist notifyDependencyChange(Z)V
    .registers 6
    .param p1, "disableDependents"    # Z

    .line 1465
    iget-object v0, p0, Landroid/preference/Preference;->mDependents:Ljava/util/List;

    .line 1467
    .local v0, "dependents":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    if-nez v0, :cond_5

    .line 1468
    return-void

    .line 1471
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1472
    .local v1, "dependentsCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_18

    .line 1473
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/Preference;

    invoke-virtual {v3, p0, p1}, Landroid/preference/Preference;->onDependencyChanged(Landroid/preference/Preference;Z)V

    .line 1472
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1475
    .end local v2    # "i":I
    :cond_18
    return-void
.end method

.method protected whitelist notifyHierarchyChanged()V
    .registers 2

    .line 1333
    iget-object v0, p0, Landroid/preference/Preference;->mListener:Landroid/preference/Preference$OnPreferenceChangeInternalListener;

    if-eqz v0, :cond_9

    .line 1334
    iget-object v0, p0, Landroid/preference/Preference;->mListener:Landroid/preference/Preference$OnPreferenceChangeInternalListener;

    invoke-interface {v0, p0}, Landroid/preference/Preference$OnPreferenceChangeInternalListener;->onPreferenceHierarchyChange(Landroid/preference/Preference;)V

    .line 1336
    :cond_9
    return-void
.end method

.method protected whitelist onAttachedToActivity()V
    .registers 1

    .line 1370
    invoke-direct {p0}, Landroid/preference/Preference;->registerDependency()V

    .line 1371
    return-void
.end method

.method protected whitelist onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V
    .registers 4
    .param p1, "preferenceManager"    # Landroid/preference/PreferenceManager;

    .line 1354
    iput-object p1, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    .line 1356
    invoke-virtual {p1}, Landroid/preference/PreferenceManager;->getNextId()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/preference/Preference;->mId:J

    .line 1358
    invoke-direct {p0}, Landroid/preference/Preference;->dispatchSetInitialValue()V

    .line 1359
    return-void
.end method

.method protected whitelist onBindView(Landroid/view/View;)V
    .registers 10
    .param p1, "view"    # Landroid/view/View;

    .line 634
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 635
    .local v0, "titleView":Landroid/widget/TextView;
    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_2b

    .line 636
    invoke-virtual {p0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    .line 637
    .local v3, "title":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_28

    .line 638
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 639
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 640
    iget-boolean v4, p0, Landroid/preference/Preference;->mHasSingleLineTitleAttr:Z

    if-eqz v4, :cond_2b

    .line 641
    iget-boolean v4, p0, Landroid/preference/Preference;->mSingleLineTitle:Z

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto :goto_2b

    .line 644
    :cond_28
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 648
    .end local v3    # "title":Ljava/lang/CharSequence;
    :cond_2b
    :goto_2b
    const v3, 0x1020010

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 650
    .local v3, "summaryView":Landroid/widget/TextView;
    if-eqz v3, :cond_4a

    .line 651
    invoke-virtual {p0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v4

    .line 652
    .local v4, "summary":Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_47

    .line 653
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 654
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4a

    .line 656
    :cond_47
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 660
    .end local v4    # "summary":Ljava/lang/CharSequence;
    :cond_4a
    :goto_4a
    const v4, 0x1020006

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 661
    .local v4, "imageView":Landroid/widget/ImageView;
    const/4 v5, 0x4

    if-eqz v4, :cond_89

    .line 662
    iget v6, p0, Landroid/preference/Preference;->mIconResId:I

    if-nez v6, :cond_5e

    iget-object v6, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_77

    .line 663
    :cond_5e
    iget-object v6, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_6e

    .line 664
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v6

    iget v7, p0, Landroid/preference/Preference;->mIconResId:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 666
    :cond_6e
    iget-object v6, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_77

    .line 667
    iget-object v6, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 670
    :cond_77
    iget-object v6, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_7f

    .line 671
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_89

    .line 673
    :cond_7f
    iget-boolean v6, p0, Landroid/preference/Preference;->mIconSpaceReserved:Z

    if-eqz v6, :cond_85

    move v6, v5

    goto :goto_86

    :cond_85
    move v6, v2

    :goto_86
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 677
    :cond_89
    :goto_89
    const v6, 0x102003e

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 678
    .local v6, "imageFrame":Landroid/view/View;
    if-eqz v6, :cond_a2

    .line 679
    iget-object v7, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_9a

    .line 680
    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a2

    .line 682
    :cond_9a
    iget-boolean v1, p0, Landroid/preference/Preference;->mIconSpaceReserved:Z

    if-eqz v1, :cond_9f

    move v2, v5

    :cond_9f
    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 686
    :cond_a2
    :goto_a2
    iget-boolean v1, p0, Landroid/preference/Preference;->mShouldDisableView:Z

    if-eqz v1, :cond_ad

    .line 687
    invoke-virtual {p0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v1

    invoke-direct {p0, p1, v1}, Landroid/preference/Preference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 689
    :cond_ad
    return-void
.end method

.method protected whitelist onClick()V
    .registers 1

    .line 1015
    return-void
.end method

.method protected whitelist onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 604
    iget-object v0, p0, Landroid/preference/Preference;->mContext:Landroid/content/Context;

    .line 605
    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 607
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    iget v1, p0, Landroid/preference/Preference;->mLayoutResId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 609
    .local v1, "layout":Landroid/view/View;
    nop

    .line 610
    const v2, 0x1020018

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 611
    .local v2, "widgetFrame":Landroid/view/ViewGroup;
    if-eqz v2, :cond_2d

    .line 612
    iget v3, p0, Landroid/preference/Preference;->mWidgetLayoutResId:I

    if-eqz v3, :cond_28

    .line 613
    iget v3, p0, Landroid/preference/Preference;->mWidgetLayoutResId:I

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_2d

    .line 615
    :cond_28
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 618
    :cond_2d
    :goto_2d
    return-object v1
.end method

.method public whitelist onDependencyChanged(Landroid/preference/Preference;Z)V
    .registers 4
    .param p1, "dependency"    # Landroid/preference/Preference;
    .param p2, "disableDependent"    # Z

    .line 1484
    iget-boolean v0, p0, Landroid/preference/Preference;->mDependencyMet:Z

    if-ne v0, p2, :cond_12

    .line 1485
    xor-int/lit8 v0, p2, 0x1

    iput-boolean v0, p0, Landroid/preference/Preference;->mDependencyMet:Z

    .line 1488
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->notifyDependencyChange(Z)V

    .line 1490
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 1492
    :cond_12
    return-void
.end method

.method protected whitelist onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .registers 4
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .line 409
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-p onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 1194
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onParentChanged(Landroid/preference/Preference;Z)V
    .registers 4
    .param p1, "parent"    # Landroid/preference/Preference;
    .param p2, "disableChild"    # Z

    .line 1501
    iget-boolean v0, p0, Landroid/preference/Preference;->mParentDependencyMet:Z

    if-ne v0, p2, :cond_12

    .line 1502
    xor-int/lit8 v0, p2, 0x1

    iput-boolean v0, p0, Landroid/preference/Preference;->mParentDependencyMet:Z

    .line 1505
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->notifyDependencyChange(Z)V

    .line 1507
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 1509
    :cond_12
    return-void
.end method

.method protected whitelist onPrepareForRemoval()V
    .registers 1

    .line 1564
    invoke-direct {p0}, Landroid/preference/Preference;->unregisterDependency()V

    .line 1565
    return-void
.end method

.method protected whitelist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 2086
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/preference/Preference;->mBaseMethodCalled:Z

    .line 2087
    sget-object v0, Landroid/preference/Preference$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    if-eq p1, v0, :cond_12

    if-nez p1, :cond_a

    goto :goto_12

    .line 2088
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong state class -- expecting Preference State"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2090
    :cond_12
    :goto_12
    return-void
.end method

.method protected whitelist onSaveInstanceState()Landroid/os/Parcelable;
    .registers 2

    .line 2035
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/preference/Preference;->mBaseMethodCalled:Z

    .line 2036
    sget-object v0, Landroid/preference/Preference$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    return-object v0
.end method

.method protected whitelist onSetInitialValue(ZLjava/lang/Object;)V
    .registers 3
    .param p1, "restorePersistedValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .line 1616
    return-void
.end method

.method public whitelist peekExtras()Landroid/os/Bundle;
    .registers 2

    .line 504
    iget-object v0, p0, Landroid/preference/Preference;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public greylist performClick(Landroid/preference/PreferenceScreen;)V
    .registers 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;

    .line 1159
    invoke-virtual {p0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1160
    return-void

    .line 1163
    :cond_7
    invoke-virtual {p0}, Landroid/preference/Preference;->onClick()V

    .line 1165
    iget-object v0, p0, Landroid/preference/Preference;->mOnClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/preference/Preference;->mOnClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-interface {v0, p0}, Landroid/preference/Preference$OnPreferenceClickListener;->onPreferenceClick(Landroid/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1166
    return-void

    .line 1169
    :cond_17
    invoke-virtual {p0}, Landroid/preference/Preference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    .line 1170
    .local v0, "preferenceManager":Landroid/preference/PreferenceManager;
    if-eqz v0, :cond_2d

    .line 1171
    nop

    .line 1172
    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getOnPreferenceTreeClickListener()Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;

    move-result-object v1

    .line 1173
    .local v1, "listener":Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;
    if-eqz p1, :cond_2d

    if-eqz v1, :cond_2d

    .line 1174
    invoke-interface {v1, p1, p0}, Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 1175
    return-void

    .line 1179
    .end local v1    # "listener":Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;
    :cond_2d
    iget-object v1, p0, Landroid/preference/Preference;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_3a

    .line 1180
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1181
    .local v1, "context":Landroid/content/Context;
    iget-object v2, p0, Landroid/preference/Preference;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1183
    .end local v1    # "context":Landroid/content/Context;
    :cond_3a
    return-void
.end method

.method protected whitelist persistBoolean(Z)Z
    .registers 6
    .param p1, "value"    # Z

    .line 1910
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1911
    const/4 v0, 0x0

    return v0

    .line 1914
    :cond_8
    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->getPersistedBoolean(Z)Z

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_12

    .line 1916
    return v1

    .line 1919
    :cond_12
    invoke-virtual {p0}, Landroid/preference/Preference;->getPreferenceDataStore()Landroid/preference/PreferenceDataStore;

    move-result-object v0

    .line 1920
    .local v0, "dataStore":Landroid/preference/PreferenceDataStore;
    if-eqz v0, :cond_1e

    .line 1921
    iget-object v2, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/preference/PreferenceDataStore;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_2c

    .line 1923
    :cond_1e
    iget-object v2, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v2}, Landroid/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1924
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v3, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1925
    invoke-direct {p0, v2}, Landroid/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    .line 1927
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_2c
    return v1
.end method

.method protected whitelist persistFloat(F)Z
    .registers 6
    .param p1, "value"    # F

    .line 1802
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1803
    const/4 v0, 0x0

    return v0

    .line 1806
    :cond_8
    const/high16 v0, 0x7fc00000    # Float.NaN

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->getPersistedFloat(F)F

    move-result v0

    cmpl-float v0, p1, v0

    const/4 v1, 0x1

    if-nez v0, :cond_14

    .line 1808
    return v1

    .line 1811
    :cond_14
    invoke-virtual {p0}, Landroid/preference/Preference;->getPreferenceDataStore()Landroid/preference/PreferenceDataStore;

    move-result-object v0

    .line 1812
    .local v0, "dataStore":Landroid/preference/PreferenceDataStore;
    if-eqz v0, :cond_20

    .line 1813
    iget-object v2, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/preference/PreferenceDataStore;->putFloat(Ljava/lang/String;F)V

    goto :goto_2e

    .line 1815
    :cond_20
    iget-object v2, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v2}, Landroid/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1816
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v3, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1817
    invoke-direct {p0, v2}, Landroid/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    .line 1819
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_2e
    return v1
.end method

.method protected whitelist persistInt(I)Z
    .registers 6
    .param p1, "value"    # I

    .line 1748
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1749
    const/4 v0, 0x0

    return v0

    .line 1752
    :cond_8
    not-int v0, p1

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->getPersistedInt(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_11

    .line 1754
    return v1

    .line 1757
    :cond_11
    invoke-virtual {p0}, Landroid/preference/Preference;->getPreferenceDataStore()Landroid/preference/PreferenceDataStore;

    move-result-object v0

    .line 1758
    .local v0, "dataStore":Landroid/preference/PreferenceDataStore;
    if-eqz v0, :cond_1d

    .line 1759
    iget-object v2, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/preference/PreferenceDataStore;->putInt(Ljava/lang/String;I)V

    goto :goto_2b

    .line 1761
    :cond_1d
    iget-object v2, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v2}, Landroid/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1762
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v3, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1763
    invoke-direct {p0, v2}, Landroid/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    .line 1765
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_2b
    return v1
.end method

.method protected whitelist persistLong(J)Z
    .registers 7
    .param p1, "value"    # J

    .line 1856
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1857
    const/4 v0, 0x0

    return v0

    .line 1860
    :cond_8
    not-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/preference/Preference;->getPersistedLong(J)J

    move-result-wide v0

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    if-nez v0, :cond_13

    .line 1862
    return v1

    .line 1865
    :cond_13
    invoke-virtual {p0}, Landroid/preference/Preference;->getPreferenceDataStore()Landroid/preference/PreferenceDataStore;

    move-result-object v0

    .line 1866
    .local v0, "dataStore":Landroid/preference/PreferenceDataStore;
    if-eqz v0, :cond_1f

    .line 1867
    iget-object v2, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1, p2}, Landroid/preference/PreferenceDataStore;->putLong(Ljava/lang/String;J)V

    goto :goto_2d

    .line 1869
    :cond_1f
    iget-object v2, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v2}, Landroid/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1870
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v3, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v2, v3, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1871
    invoke-direct {p0, v2}, Landroid/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    .line 1873
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_2d
    return v1
.end method

.method protected whitelist persistString(Ljava/lang/String;)Z
    .registers 6
    .param p1, "value"    # Ljava/lang/String;

    .line 1641
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1642
    const/4 v0, 0x0

    return v0

    .line 1646
    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_15

    .line 1648
    return v1

    .line 1651
    :cond_15
    invoke-virtual {p0}, Landroid/preference/Preference;->getPreferenceDataStore()Landroid/preference/PreferenceDataStore;

    move-result-object v0

    .line 1652
    .local v0, "dataStore":Landroid/preference/PreferenceDataStore;
    if-eqz v0, :cond_21

    .line 1653
    iget-object v2, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/preference/PreferenceDataStore;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2f

    .line 1655
    :cond_21
    iget-object v2, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v2}, Landroid/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1656
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v3, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1657
    invoke-direct {p0, v2}, Landroid/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    .line 1659
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_2f
    return v1
.end method

.method public whitelist persistStringSet(Ljava/util/Set;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1694
    .local p1, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1695
    const/4 v0, 0x0

    return v0

    .line 1699
    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_15

    .line 1701
    return v1

    .line 1704
    :cond_15
    invoke-virtual {p0}, Landroid/preference/Preference;->getPreferenceDataStore()Landroid/preference/PreferenceDataStore;

    move-result-object v0

    .line 1705
    .local v0, "dataStore":Landroid/preference/PreferenceDataStore;
    if-eqz v0, :cond_21

    .line 1706
    iget-object v2, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/preference/PreferenceDataStore;->putStringSet(Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_2f

    .line 1708
    :cond_21
    iget-object v2, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v2}, Landroid/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1709
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v3, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 1710
    invoke-direct {p0, v2}, Landroid/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    .line 1712
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_2f
    return v1
.end method

.method greylist-max-o requireKey()V
    .registers 3

    .line 1048
    iget-object v0, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 1052
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/preference/Preference;->mRequiresKey:Z

    .line 1053
    return-void

    .line 1049
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Preference does not have a key assigned."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist restoreHierarchyState(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "container"    # Landroid/os/Bundle;

    .line 2048
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 2049
    return-void
.end method

.method public whitelist saveHierarchyState(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "container"    # Landroid/os/Bundle;

    .line 1995
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 1996
    return-void
.end method

.method public whitelist setDefaultValue(Ljava/lang/Object;)V
    .registers 2
    .param p1, "defaultValue"    # Ljava/lang/Object;

    .line 1575
    iput-object p1, p0, Landroid/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    .line 1576
    return-void
.end method

.method public whitelist setDependency(Ljava/lang/String;)V
    .registers 2
    .param p1, "dependencyKey"    # Ljava/lang/String;

    .line 1529
    invoke-direct {p0}, Landroid/preference/Preference;->unregisterDependency()V

    .line 1532
    iput-object p1, p0, Landroid/preference/Preference;->mDependencyKey:Ljava/lang/String;

    .line 1533
    invoke-direct {p0}, Landroid/preference/Preference;->registerDependency()V

    .line 1534
    return-void
.end method

.method public whitelist setEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 861
    iget-boolean v0, p0, Landroid/preference/Preference;->mEnabled:Z

    if-eq v0, p1, :cond_10

    .line 862
    iput-boolean p1, p0, Landroid/preference/Preference;->mEnabled:Z

    .line 865
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->notifyDependencyChange(Z)V

    .line 867
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 869
    :cond_10
    return-void
.end method

.method public whitelist setFragment(Ljava/lang/String;)V
    .registers 2
    .param p1, "fragment"    # Ljava/lang/String;

    .line 437
    iput-object p1, p0, Landroid/preference/Preference;->mFragment:Ljava/lang/String;

    .line 438
    return-void
.end method

.method public whitelist setIcon(I)V
    .registers 3
    .param p1, "iconResId"    # I

    .line 803
    iget v0, p0, Landroid/preference/Preference;->mIconResId:I

    if-eq v0, p1, :cond_f

    .line 804
    iput p1, p0, Landroid/preference/Preference;->mIconResId:I

    .line 805
    iget-object v0, p0, Landroid/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 807
    :cond_f
    return-void
.end method

.method public whitelist setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 789
    if-nez p1, :cond_6

    iget-object v0, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_c

    :cond_6
    if-eqz p1, :cond_11

    iget-object v0, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_11

    .line 790
    :cond_c
    iput-object p1, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 792
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 794
    :cond_11
    return-void
.end method

.method public whitelist setIconSpaceReserved(Z)V
    .registers 2
    .param p1, "iconSpaceReserved"    # Z

    .line 984
    iput-boolean p1, p0, Landroid/preference/Preference;->mIconSpaceReserved:Z

    .line 985
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 986
    return-void
.end method

.method public whitelist setIntent(Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 419
    iput-object p1, p0, Landroid/preference/Preference;->mIntent:Landroid/content/Intent;

    .line 420
    return-void
.end method

.method public whitelist setKey(Ljava/lang/String;)V
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 1024
    iput-object p1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    .line 1026
    iget-boolean v0, p0, Landroid/preference/Preference;->mRequiresKey:Z

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroid/preference/Preference;->hasKey()Z

    move-result v0

    if-nez v0, :cond_f

    .line 1027
    invoke-virtual {p0}, Landroid/preference/Preference;->requireKey()V

    .line 1029
    :cond_f
    return-void
.end method

.method public whitelist setLayoutResource(I)V
    .registers 3
    .param p1, "layoutResId"    # I

    .line 522
    iget v0, p0, Landroid/preference/Preference;->mLayoutResId:I

    if-eq p1, v0, :cond_7

    .line 524
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/preference/Preference;->mRecycleEnabled:Z

    .line 527
    :cond_7
    iput p1, p0, Landroid/preference/Preference;->mLayoutResId:I

    .line 528
    return-void
.end method

.method final greylist setOnPreferenceChangeInternalListener(Landroid/preference/Preference$OnPreferenceChangeInternalListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/preference/Preference$OnPreferenceChangeInternalListener;

    .line 1315
    iput-object p1, p0, Landroid/preference/Preference;->mListener:Landroid/preference/Preference$OnPreferenceChangeInternalListener;

    .line 1316
    return-void
.end method

.method public whitelist setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V
    .registers 2
    .param p1, "onPreferenceChangeListener"    # Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 1117
    iput-object p1, p0, Landroid/preference/Preference;->mOnChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 1118
    return-void
.end method

.method public whitelist setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V
    .registers 2
    .param p1, "onPreferenceClickListener"    # Landroid/preference/Preference$OnPreferenceClickListener;

    .line 1136
    iput-object p1, p0, Landroid/preference/Preference;->mOnClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 1137
    return-void
.end method

.method public whitelist setOrder(I)V
    .registers 3
    .param p1, "order"    # I

    .line 717
    iget v0, p0, Landroid/preference/Preference;->mOrder:I

    if-eq p1, v0, :cond_9

    .line 718
    iput p1, p0, Landroid/preference/Preference;->mOrder:I

    .line 721
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyHierarchyChanged()V

    .line 723
    :cond_9
    return-void
.end method

.method public whitelist setPersistent(Z)V
    .registers 2
    .param p1, "persistent"    # Z

    .line 1095
    iput-boolean p1, p0, Landroid/preference/Preference;->mPersistent:Z

    .line 1096
    return-void
.end method

.method public whitelist setPreferenceDataStore(Landroid/preference/PreferenceDataStore;)V
    .registers 2
    .param p1, "dataStore"    # Landroid/preference/PreferenceDataStore;

    .line 461
    iput-object p1, p0, Landroid/preference/Preference;->mPreferenceDataStore:Landroid/preference/PreferenceDataStore;

    .line 462
    return-void
.end method

.method public whitelist setRecycleEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 941
    iput-boolean p1, p0, Landroid/preference/Preference;->mRecycleEnabled:Z

    .line 942
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 943
    return-void
.end method

.method public whitelist setSelectable(Z)V
    .registers 3
    .param p1, "selectable"    # Z

    .line 886
    iget-boolean v0, p0, Landroid/preference/Preference;->mSelectable:Z

    if-eq v0, p1, :cond_9

    .line 887
    iput-boolean p1, p0, Landroid/preference/Preference;->mSelectable:Z

    .line 888
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 890
    :cond_9
    return-void
.end method

.method public whitelist setShouldDisableView(Z)V
    .registers 2
    .param p1, "shouldDisableView"    # Z

    .line 912
    iput-boolean p1, p0, Landroid/preference/Preference;->mShouldDisableView:Z

    .line 913
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 914
    return-void
.end method

.method public whitelist setSingleLineTitle(Z)V
    .registers 3
    .param p1, "singleLineTitle"    # Z

    .line 963
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/preference/Preference;->mHasSingleLineTitleAttr:Z

    .line 964
    iput-boolean p1, p0, Landroid/preference/Preference;->mSingleLineTitle:Z

    .line 965
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 966
    return-void
.end method

.method public whitelist setSummary(I)V
    .registers 3
    .param p1, "summaryResId"    # I

    .line 851
    iget-object v0, p0, Landroid/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 852
    return-void
.end method

.method public whitelist setSummary(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .line 838
    if-nez p1, :cond_6

    iget-object v0, p0, Landroid/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    if-nez v0, :cond_10

    :cond_6
    if-eqz p1, :cond_15

    iget-object v0, p0, Landroid/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 839
    :cond_10
    iput-object p1, p0, Landroid/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    .line 840
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 842
    :cond_15
    return-void
.end method

.method public whitelist setTitle(I)V
    .registers 3
    .param p1, "titleResId"    # I

    .line 756
    iget-object v0, p0, Landroid/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 757
    iput p1, p0, Landroid/preference/Preference;->mTitleRes:I

    .line 758
    return-void
.end method

.method public whitelist setTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 742
    if-nez p1, :cond_6

    iget-object v0, p0, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_10

    :cond_6
    if-eqz p1, :cond_18

    iget-object v0, p0, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 743
    :cond_10
    const/4 v0, 0x0

    iput v0, p0, Landroid/preference/Preference;->mTitleRes:I

    .line 744
    iput-object p1, p0, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    .line 745
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 747
    :cond_18
    return-void
.end method

.method public whitelist setWidgetLayoutResource(I)V
    .registers 3
    .param p1, "widgetLayoutResId"    # I

    .line 551
    iget v0, p0, Landroid/preference/Preference;->mWidgetLayoutResId:I

    if-eq p1, v0, :cond_7

    .line 553
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/preference/Preference;->mRecycleEnabled:Z

    .line 555
    :cond_7
    iput p1, p0, Landroid/preference/Preference;->mWidgetLayoutResId:I

    .line 556
    return-void
.end method

.method public whitelist shouldCommit()Z
    .registers 2

    .line 1275
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-nez v0, :cond_6

    .line 1276
    const/4 v0, 0x0

    return v0

    .line 1279
    :cond_6
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->shouldCommit()Z

    move-result v0

    return v0
.end method

.method public whitelist shouldDisableDependents()Z
    .registers 2

    .line 1518
    invoke-virtual {p0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected whitelist shouldPersist()Z
    .registers 2

    .line 1084
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Landroid/preference/Preference;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Landroid/preference/Preference;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 1955
    invoke-virtual {p0}, Landroid/preference/Preference;->getFilterableStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
