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
        "Ljava/lang/Comparable",
        "<",
        "Landroid/preference/Preference;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_ORDER:I = 0x7fffffff


# instance fields
.field private mBaseMethodCalled:Z

.field private mCanRecycleLayout:Z

.field private mContext:Landroid/content/Context;

.field private mDefaultValue:Ljava/lang/Object;

.field private mDependencyKey:Ljava/lang/String;

.field private mDependencyMet:Z

.field private mDependents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mEnabled:Z

.field private mExtras:Landroid/os/Bundle;

.field private mFragment:Ljava/lang/String;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconResId:I

.field private mId:J

.field private mIntent:Landroid/content/Intent;

.field private mKey:Ljava/lang/String;

.field private mLayoutResId:I

.field private mListener:Landroid/preference/Preference$OnPreferenceChangeInternalListener;

.field private mOnChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mOnClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field private mOrder:I

.field private mParentDependencyMet:Z

.field private mPersistent:Z

.field private mPreferenceManager:Landroid/preference/PreferenceManager;

.field private mRequiresKey:Z

.field private mSelectable:Z

.field private mShouldDisableView:Z

.field private mSummary:Ljava/lang/CharSequence;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleRes:I

.field private mWidgetLayoutResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 340
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 339
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 331
    const v0, 0x101008e

    #@3
    invoke-direct {p0, p1, p2, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@6
    .line 330
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 313
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 312
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x1

    #@2
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 102
    const v3, 0x7fffffff

    #@8
    iput v3, p0, Landroid/preference/Preference;->mOrder:I

    #@a
    .line 115
    iput-boolean v4, p0, Landroid/preference/Preference;->mEnabled:Z

    #@c
    .line 116
    iput-boolean v4, p0, Landroid/preference/Preference;->mSelectable:Z

    #@e
    .line 118
    iput-boolean v4, p0, Landroid/preference/Preference;->mPersistent:Z

    #@10
    .line 121
    iput-boolean v4, p0, Landroid/preference/Preference;->mDependencyMet:Z

    #@12
    .line 122
    iput-boolean v4, p0, Landroid/preference/Preference;->mParentDependencyMet:Z

    #@14
    .line 127
    iput-boolean v4, p0, Landroid/preference/Preference;->mShouldDisableView:Z

    #@16
    .line 129
    const v3, 0x109009c

    #@19
    iput v3, p0, Landroid/preference/Preference;->mLayoutResId:I

    #@1b
    .line 131
    iput-boolean v4, p0, Landroid/preference/Preference;->mCanRecycleLayout:Z

    #@1d
    .line 218
    iput-object p1, p0, Landroid/preference/Preference;->mContext:Landroid/content/Context;

    #@1f
    .line 221
    sget-object v3, Lcom/android/internal/R$styleable;->Preference:[I

    #@21
    .line 220
    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@24
    move-result-object v0

    #@25
    .line 222
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    #@28
    move-result v3

    #@29
    add-int/lit8 v2, v3, -0x1

    #@2b
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    #@2d
    .line 223
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    #@30
    move-result v1

    #@31
    .line 224
    .local v1, "attr":I
    packed-switch v1, :pswitch_data_0

    #@34
    .line 222
    :goto_1
    add-int/lit8 v2, v2, -0x1

    #@36
    goto :goto_0

    #@37
    .line 226
    :pswitch_0
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@3a
    move-result v3

    #@3b
    iput v3, p0, Landroid/preference/Preference;->mIconResId:I

    #@3d
    goto :goto_1

    #@3e
    .line 230
    :pswitch_1
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@41
    move-result-object v3

    #@42
    iput-object v3, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    #@44
    goto :goto_1

    #@45
    .line 234
    :pswitch_2
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@48
    move-result v3

    #@49
    iput v3, p0, Landroid/preference/Preference;->mTitleRes:I

    #@4b
    .line 235
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@4e
    move-result-object v3

    #@4f
    iput-object v3, p0, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    #@51
    goto :goto_1

    #@52
    .line 239
    :pswitch_3
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@55
    move-result-object v3

    #@56
    iput-object v3, p0, Landroid/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    #@58
    goto :goto_1

    #@59
    .line 243
    :pswitch_4
    iget v3, p0, Landroid/preference/Preference;->mOrder:I

    #@5b
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    #@5e
    move-result v3

    #@5f
    iput v3, p0, Landroid/preference/Preference;->mOrder:I

    #@61
    goto :goto_1

    #@62
    .line 247
    :pswitch_5
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@65
    move-result-object v3

    #@66
    iput-object v3, p0, Landroid/preference/Preference;->mFragment:Ljava/lang/String;

    #@68
    goto :goto_1

    #@69
    .line 251
    :pswitch_6
    iget v3, p0, Landroid/preference/Preference;->mLayoutResId:I

    #@6b
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@6e
    move-result v3

    #@6f
    iput v3, p0, Landroid/preference/Preference;->mLayoutResId:I

    #@71
    goto :goto_1

    #@72
    .line 255
    :pswitch_7
    iget v3, p0, Landroid/preference/Preference;->mWidgetLayoutResId:I

    #@74
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@77
    move-result v3

    #@78
    iput v3, p0, Landroid/preference/Preference;->mWidgetLayoutResId:I

    #@7a
    goto :goto_1

    #@7b
    .line 259
    :pswitch_8
    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@7e
    move-result v3

    #@7f
    iput-boolean v3, p0, Landroid/preference/Preference;->mEnabled:Z

    #@81
    goto :goto_1

    #@82
    .line 263
    :pswitch_9
    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@85
    move-result v3

    #@86
    iput-boolean v3, p0, Landroid/preference/Preference;->mSelectable:Z

    #@88
    goto :goto_1

    #@89
    .line 267
    :pswitch_a
    iget-boolean v3, p0, Landroid/preference/Preference;->mPersistent:Z

    #@8b
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@8e
    move-result v3

    #@8f
    iput-boolean v3, p0, Landroid/preference/Preference;->mPersistent:Z

    #@91
    goto :goto_1

    #@92
    .line 271
    :pswitch_b
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@95
    move-result-object v3

    #@96
    iput-object v3, p0, Landroid/preference/Preference;->mDependencyKey:Ljava/lang/String;

    #@98
    goto :goto_1

    #@99
    .line 275
    :pswitch_c
    invoke-virtual {p0, v0, v1}, Landroid/preference/Preference;->onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    #@9c
    move-result-object v3

    #@9d
    iput-object v3, p0, Landroid/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    #@9f
    goto :goto_1

    #@a0
    .line 279
    :pswitch_d
    iget-boolean v3, p0, Landroid/preference/Preference;->mShouldDisableView:Z

    #@a2
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@a5
    move-result v3

    #@a6
    iput-boolean v3, p0, Landroid/preference/Preference;->mShouldDisableView:Z

    #@a8
    goto :goto_1

    #@a9
    .line 283
    .end local v1    # "attr":I
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@ac
    .line 285
    invoke-virtual {p0}, Landroid/preference/Preference;->getClass()Ljava/lang/Class;

    #@af
    move-result-object v3

    #@b0
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@b3
    move-result-object v3

    #@b4
    const-string/jumbo v4, "android.preference"

    #@b7
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@ba
    move-result v3

    #@bb
    if-nez v3, :cond_1

    #@bd
    .line 286
    invoke-virtual {p0}, Landroid/preference/Preference;->getClass()Ljava/lang/Class;

    #@c0
    move-result-object v3

    #@c1
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@c4
    move-result-object v3

    #@c5
    const-string/jumbo v4, "com.android"

    #@c8
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@cb
    move-result v3

    #@cc
    if-eqz v3, :cond_2

    #@ce
    .line 217
    :cond_1
    :goto_2
    return-void

    #@cf
    .line 288
    :cond_2
    iput-boolean v5, p0, Landroid/preference/Preference;->mCanRecycleLayout:Z

    #@d1
    goto :goto_2

    #@d2
    .line 224
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_a
        :pswitch_8
        :pswitch_6
        :pswitch_2
        :pswitch_9
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_5
    .end packed-switch
.end method

.method private dispatchSetInitialValue()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1382
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    #@4
    move-result v0

    #@5
    .line 1383
    .local v0, "shouldPersist":Z
    if-eqz v0, :cond_1

    #@7
    invoke-virtual {p0}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    #@a
    move-result-object v1

    #@b
    iget-object v2, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    #@d
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_1

    #@13
    .line 1388
    const/4 v1, 0x1

    #@14
    invoke-virtual {p0, v1, v3}, Landroid/preference/Preference;->onSetInitialValue(ZLjava/lang/Object;)V

    #@17
    .line 1380
    :cond_0
    :goto_0
    return-void

    #@18
    .line 1384
    :cond_1
    iget-object v1, p0, Landroid/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    #@1a
    if-eqz v1, :cond_0

    #@1c
    .line 1385
    iget-object v1, p0, Landroid/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    #@1e
    const/4 v2, 0x0

    #@1f
    invoke-virtual {p0, v2, v1}, Landroid/preference/Preference;->onSetInitialValue(ZLjava/lang/Object;)V

    #@22
    goto :goto_0
.end method

.method private registerDependency()V
    .locals 4

    #@0
    .prologue
    .line 1199
    iget-object v1, p0, Landroid/preference/Preference;->mDependencyKey:Ljava/lang/String;

    #@2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    return-void

    #@9
    .line 1201
    :cond_0
    iget-object v1, p0, Landroid/preference/Preference;->mDependencyKey:Ljava/lang/String;

    #@b
    invoke-virtual {p0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    #@e
    move-result-object v0

    #@f
    .line 1202
    .local v0, "preference":Landroid/preference/Preference;
    if-eqz v0, :cond_1

    #@11
    .line 1203
    invoke-direct {v0, p0}, Landroid/preference/Preference;->registerDependent(Landroid/preference/Preference;)V

    #@14
    .line 1197
    return-void

    #@15
    .line 1205
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    #@17
    new-instance v2, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v3, "Dependency \""

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    iget-object v3, p0, Landroid/preference/Preference;->mDependencyKey:Ljava/lang/String;

    #@25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    .line 1206
    const-string/jumbo v3, "\" not found for preference \""

    #@2c
    .line 1205
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v2

    #@30
    .line 1206
    iget-object v3, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    #@32
    .line 1205
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v2

    #@36
    .line 1206
    const-string/jumbo v3, "\" (title: \""

    #@39
    .line 1205
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v2

    #@3d
    .line 1206
    iget-object v3, p0, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    #@3f
    .line 1205
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v2

    #@43
    .line 1206
    const-string/jumbo v3, "\""

    #@46
    .line 1205
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v2

    #@4a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v2

    #@4e
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@51
    throw v1
.end method

.method private registerDependent(Landroid/preference/Preference;)V
    .locals 1
    .param p1, "dependent"    # Landroid/preference/Preference;

    #@0
    .prologue
    .line 1247
    iget-object v0, p0, Landroid/preference/Preference;->mDependents:Ljava/util/List;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1248
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Landroid/preference/Preference;->mDependents:Ljava/util/List;

    #@b
    .line 1251
    :cond_0
    iget-object v0, p0, Landroid/preference/Preference;->mDependents:Ljava/util/List;

    #@d
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@10
    .line 1253
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldDisableDependents()Z

    #@13
    move-result v0

    #@14
    invoke-virtual {p1, p0, v0}, Landroid/preference/Preference;->onDependencyChanged(Landroid/preference/Preference;Z)V

    #@17
    .line 1246
    return-void
.end method

.method private setEnabledStateOnViews(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "enabled"    # Z

    #@0
    .prologue
    .line 594
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    #@3
    .line 596
    instance-of v2, p1, Landroid/view/ViewGroup;

    #@5
    if-eqz v2, :cond_0

    #@7
    move-object v1, p1

    #@8
    .line 597
    check-cast v1, Landroid/view/ViewGroup;

    #@a
    .line 598
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    #@d
    move-result v2

    #@e
    add-int/lit8 v0, v2, -0x1

    #@10
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@12
    .line 599
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@15
    move-result-object v2

    #@16
    invoke-direct {p0, v2, p2}, Landroid/preference/Preference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    #@19
    .line 598
    add-int/lit8 v0, v0, -0x1

    #@1b
    goto :goto_0

    #@1c
    .line 593
    .end local v0    # "i":I
    .end local v1    # "vg":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private tryCommit(Landroid/content/SharedPreferences$Editor;)V
    .locals 2
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;

    #@0
    .prologue
    .line 1413
    iget-object v1, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    #@2
    invoke-virtual {v1}, Landroid/preference/PreferenceManager;->shouldCommit()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 1415
    :try_start_0
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 1412
    :cond_0
    :goto_0
    return-void

    #@c
    .line 1416
    :catch_0
    move-exception v0

    #@d
    .line 1420
    .local v0, "unused":Ljava/lang/AbstractMethodError;
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    #@10
    goto :goto_0
.end method

.method private unregisterDependency()V
    .locals 2

    #@0
    .prologue
    .line 1211
    iget-object v1, p0, Landroid/preference/Preference;->mDependencyKey:Ljava/lang/String;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1212
    iget-object v1, p0, Landroid/preference/Preference;->mDependencyKey:Ljava/lang/String;

    #@6
    invoke-virtual {p0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    #@9
    move-result-object v0

    #@a
    .line 1213
    .local v0, "oldDependency":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    #@c
    .line 1214
    invoke-direct {v0, p0}, Landroid/preference/Preference;->unregisterDependent(Landroid/preference/Preference;)V

    #@f
    .line 1210
    .end local v0    # "oldDependency":Landroid/preference/Preference;
    :cond_0
    return-void
.end method

.method private unregisterDependent(Landroid/preference/Preference;)V
    .locals 1
    .param p1, "dependent"    # Landroid/preference/Preference;

    #@0
    .prologue
    .line 1265
    iget-object v0, p0, Landroid/preference/Preference;->mDependents:Ljava/util/List;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1266
    iget-object v0, p0, Landroid/preference/Preference;->mDependents:Ljava/util/List;

    #@6
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@9
    .line 1264
    :cond_0
    return-void
.end method


# virtual methods
.method protected callChangeListener(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "newValue"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 939
    iget-object v0, p0, Landroid/preference/Preference;->mOnChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    iget-object v0, p0, Landroid/preference/Preference;->mOnChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    #@8
    invoke-interface {v0, p0, p1}, Landroid/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    goto :goto_0
.end method

.method canRecycleLayout()Z
    .locals 1

    #@0
    .prologue
    .line 1707
    iget-boolean v0, p0, Landroid/preference/Preference;->mCanRecycleLayout:Z

    #@2
    return v0
.end method

.method public compareTo(Landroid/preference/Preference;)I
    .locals 2
    .param p1, "another"    # Landroid/preference/Preference;

    #@0
    .prologue
    .line 1116
    iget v0, p0, Landroid/preference/Preference;->mOrder:I

    #@2
    iget v1, p1, Landroid/preference/Preference;->mOrder:I

    #@4
    if-eq v0, v1, :cond_0

    #@6
    .line 1118
    iget v0, p0, Landroid/preference/Preference;->mOrder:I

    #@8
    iget v1, p1, Landroid/preference/Preference;->mOrder:I

    #@a
    sub-int/2addr v0, v1

    #@b
    return v0

    #@c
    .line 1119
    :cond_0
    iget-object v0, p0, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    #@e
    iget-object v1, p1, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    #@10
    if-ne v0, v1, :cond_1

    #@12
    .line 1121
    const/4 v0, 0x0

    #@13
    return v0

    #@14
    .line 1122
    :cond_1
    iget-object v0, p0, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    #@16
    if-nez v0, :cond_2

    #@18
    .line 1123
    const/4 v0, 0x1

    #@19
    return v0

    #@1a
    .line 1124
    :cond_2
    iget-object v0, p1, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    #@1c
    if-nez v0, :cond_3

    #@1e
    .line 1125
    const/4 v0, -0x1

    #@1f
    return v0

    #@20
    .line 1128
    :cond_3
    iget-object v0, p0, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    #@22
    iget-object v1, p1, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    #@24
    invoke-static {v0, v1}, Lcom/android/internal/util/CharSequences;->compareToIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    #@27
    move-result v0

    #@28
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "another"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1115
    check-cast p1, Landroid/preference/Preference;

    #@2
    .end local p1    # "another":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->compareTo(Landroid/preference/Preference;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "container"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1819
    invoke-virtual {p0}, Landroid/preference/Preference;->hasKey()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 1820
    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    #@8
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@b
    move-result-object v0

    #@c
    .line 1821
    .local v0, "state":Landroid/os/Parcelable;
    if-eqz v0, :cond_0

    #@e
    .line 1822
    const/4 v1, 0x0

    #@f
    iput-boolean v1, p0, Landroid/preference/Preference;->mBaseMethodCalled:Z

    #@11
    .line 1823
    invoke-virtual {p0, v0}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@14
    .line 1824
    iget-boolean v1, p0, Landroid/preference/Preference;->mBaseMethodCalled:Z

    #@16
    if-nez v1, :cond_0

    #@18
    .line 1825
    new-instance v1, Ljava/lang/IllegalStateException;

    #@1a
    .line 1826
    const-string/jumbo v2, "Derived class did not call super.onRestoreInstanceState()"

    #@1d
    .line 1825
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@20
    throw v1

    #@21
    .line 1818
    .end local v0    # "state":Landroid/os/Parcelable;
    :cond_0
    return-void
.end method

.method dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "container"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1766
    invoke-virtual {p0}, Landroid/preference/Preference;->hasKey()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_1

    #@6
    .line 1767
    const/4 v1, 0x0

    #@7
    iput-boolean v1, p0, Landroid/preference/Preference;->mBaseMethodCalled:Z

    #@9
    .line 1768
    invoke-virtual {p0}, Landroid/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    #@c
    move-result-object v0

    #@d
    .line 1769
    .local v0, "state":Landroid/os/Parcelable;
    iget-boolean v1, p0, Landroid/preference/Preference;->mBaseMethodCalled:Z

    #@f
    if-nez v1, :cond_0

    #@11
    .line 1770
    new-instance v1, Ljava/lang/IllegalStateException;

    #@13
    .line 1771
    const-string/jumbo v2, "Derived class did not call super.onSaveInstanceState()"

    #@16
    .line 1770
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@19
    throw v1

    #@1a
    .line 1773
    :cond_0
    if-eqz v0, :cond_1

    #@1c
    .line 1774
    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    #@1e
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@21
    .line 1765
    .end local v0    # "state":Landroid/os/Parcelable;
    :cond_1
    return-void
.end method

.method protected findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1230
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    #@9
    if-nez v0, :cond_1

    #@b
    .line 1231
    :cond_0
    return-object v1

    #@c
    .line 1234
    :cond_1
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    #@e
    invoke-virtual {v0, p1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    #@11
    move-result-object v0

    #@12
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    #@0
    .prologue
    .line 1036
    iget-object v0, p0, Landroid/preference/Preference;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method public getDependency()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1356
    iget-object v0, p0, Landroid/preference/Preference;->mDependencyKey:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getEditor()Landroid/content/SharedPreferences$Editor;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1084
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1085
    return-object v1

    #@6
    .line 1088
    :cond_0
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    #@8
    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    #@0
    .prologue
    .line 403
    iget-object v0, p0, Landroid/preference/Preference;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 404
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    iput-object v0, p0, Landroid/preference/Preference;->mExtras:Landroid/os/Bundle;

    #@b
    .line 406
    :cond_0
    iget-object v0, p0, Landroid/preference/Preference;->mExtras:Landroid/os/Bundle;

    #@d
    return-object v0
.end method

.method getFilterableStringBuilder()Ljava/lang/StringBuilder;
    .locals 5

    #@0
    .prologue
    const/16 v4, 0x20

    #@2
    .line 1727
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    .line 1728
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    #@a
    move-result-object v2

    #@b
    .line 1729
    .local v2, "title":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@e
    move-result v3

    #@f
    if-nez v3, :cond_0

    #@11
    .line 1730
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@18
    .line 1732
    :cond_0
    invoke-virtual {p0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    #@1b
    move-result-object v1

    #@1c
    .line 1733
    .local v1, "summary":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@1f
    move-result v3

    #@20
    if-nez v3, :cond_1

    #@22
    .line 1734
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@29
    .line 1736
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@2c
    move-result v3

    #@2d
    if-lez v3, :cond_2

    #@2f
    .line 1738
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@32
    move-result v3

    #@33
    add-int/lit8 v3, v3, -0x1

    #@35
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    #@38
    .line 1740
    :cond_2
    return-object v0
.end method

.method public getFragment()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 394
    iget-object v0, p0, Landroid/preference/Preference;->mFragment:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    #@0
    .prologue
    .line 722
    iget-object v0, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    #@2
    return-object v0
.end method

.method getId()J
    .locals 2

    #@0
    .prologue
    .line 836
    iget-wide v0, p0, Landroid/preference/Preference;->mId:J

    #@2
    return-wide v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    #@0
    .prologue
    .line 376
    iget-object v0, p0, Landroid/preference/Preference;->mIntent:Landroid/content/Intent;

    #@2
    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 869
    iget-object v0, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getLayoutResource()I
    .locals 1

    #@0
    .prologue
    .line 447
    iget v0, p0, Landroid/preference/Preference;->mLayoutResId:I

    #@2
    return v0
.end method

.method public getOnPreferenceChangeListener()Landroid/preference/Preference$OnPreferenceChangeListener;
    .locals 1

    #@0
    .prologue
    .line 959
    iget-object v0, p0, Landroid/preference/Preference;->mOnChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    #@2
    return-object v0
.end method

.method public getOnPreferenceClickListener()Landroid/preference/Preference$OnPreferenceClickListener;
    .locals 1

    #@0
    .prologue
    .line 977
    iget-object v0, p0, Landroid/preference/Preference;->mOnClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    #@2
    return-object v0
.end method

.method public getOrder()I
    .locals 1

    #@0
    .prologue
    .line 634
    iget v0, p0, Landroid/preference/Preference;->mOrder:I

    #@2
    return v0
.end method

.method protected getPersistedBoolean(Z)Z
    .locals 2
    .param p1, "defaultReturnValue"    # Z

    #@0
    .prologue
    .line 1699
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1700
    return p1

    #@7
    .line 1703
    :cond_0
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    #@9
    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    #@c
    move-result-object v0

    #@d
    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    #@f
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    #@12
    move-result v0

    #@13
    return v0
.end method

.method protected getPersistedFloat(F)F
    .locals 2
    .param p1, "defaultReturnValue"    # F

    #@0
    .prologue
    .line 1611
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1612
    return p1

    #@7
    .line 1615
    :cond_0
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    #@9
    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    #@c
    move-result-object v0

    #@d
    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    #@f
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    #@12
    move-result v0

    #@13
    return v0
.end method

.method protected getPersistedInt(I)I
    .locals 2
    .param p1, "defaultReturnValue"    # I

    #@0
    .prologue
    .line 1567
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1568
    return p1

    #@7
    .line 1571
    :cond_0
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    #@9
    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    #@c
    move-result-object v0

    #@d
    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    #@f
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    #@12
    move-result v0

    #@13
    return v0
.end method

.method protected getPersistedLong(J)J
    .locals 3
    .param p1, "defaultReturnValue"    # J

    #@0
    .prologue
    .line 1655
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1656
    return-wide p1

    #@7
    .line 1659
    :cond_0
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    #@9
    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    #@c
    move-result-object v0

    #@d
    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    #@f
    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    #@12
    move-result-wide v0

    #@13
    return-wide v0
.end method

.method protected getPersistedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "defaultReturnValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1468
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1469
    return-object p1

    #@7
    .line 1472
    :cond_0
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    #@9
    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    #@c
    move-result-object v0

    #@d
    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    #@f
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method protected getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1523
    .local p1, "defaultReturnValue":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1524
    return-object p1

    #@7
    .line 1527
    :cond_0
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    #@9
    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    #@c
    move-result-object v0

    #@d
    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    #@f
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method public getPreferenceManager()Landroid/preference/PreferenceManager;
    .locals 1

    #@0
    .prologue
    .line 1168
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    #@2
    return-object v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1057
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1058
    return-object v1

    #@6
    .line 1061
    :cond_0
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    #@8
    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getShouldDisableView()Z
    .locals 1

    #@0
    .prologue
    .line 826
    iget-boolean v0, p0, Landroid/preference/Preference;->mShouldDisableView:Z

    #@2
    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 732
    iget-object v0, p0, Landroid/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 683
    iget-object v0, p0, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getTitleRes()I
    .locals 1

    #@0
    .prologue
    .line 673
    iget v0, p0, Landroid/preference/Preference;->mTitleRes:I

    #@2
    return v0
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 492
    if-nez p1, :cond_0

    #@2
    .line 493
    invoke-virtual {p0, p2}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    #@5
    move-result-object p1

    #@6
    .line 495
    :cond_0
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    #@9
    .line 496
    return-object p1
.end method

.method public getWidgetLayoutResource()I
    .locals 1

    #@0
    .prologue
    .line 475
    iget v0, p0, Landroid/preference/Preference;->mWidgetLayoutResId:I

    #@2
    return v0
.end method

.method public hasKey()Z
    .locals 1

    #@0
    .prologue
    .line 893
    iget-object v0, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    #@2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x1

    #@b
    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 780
    iget-boolean v0, p0, Landroid/preference/Preference;->mEnabled:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-boolean v0, p0, Landroid/preference/Preference;->mDependencyMet:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-boolean v0, p0, Landroid/preference/Preference;->mParentDependencyMet:Z

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public isPersistent()Z
    .locals 1

    #@0
    .prologue
    .line 903
    iget-boolean v0, p0, Landroid/preference/Preference;->mPersistent:Z

    #@2
    return v0
.end method

.method public isSelectable()Z
    .locals 1

    #@0
    .prologue
    .line 801
    iget-boolean v0, p0, Landroid/preference/Preference;->mSelectable:Z

    #@2
    return v0
.end method

.method protected notifyChanged()V
    .locals 1

    #@0
    .prologue
    .line 1146
    iget-object v0, p0, Landroid/preference/Preference;->mListener:Landroid/preference/Preference$OnPreferenceChangeInternalListener;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1147
    iget-object v0, p0, Landroid/preference/Preference;->mListener:Landroid/preference/Preference$OnPreferenceChangeInternalListener;

    #@6
    invoke-interface {v0, p0}, Landroid/preference/Preference$OnPreferenceChangeInternalListener;->onPreferenceChange(Landroid/preference/Preference;)V

    #@9
    .line 1145
    :cond_0
    return-void
.end method

.method public notifyDependencyChange(Z)V
    .locals 4
    .param p1, "disableDependents"    # Z

    #@0
    .prologue
    .line 1278
    iget-object v0, p0, Landroid/preference/Preference;->mDependents:Ljava/util/List;

    #@2
    .line 1280
    .local v0, "dependents":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    if-nez v0, :cond_0

    #@4
    .line 1281
    return-void

    #@5
    .line 1284
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@8
    move-result v1

    #@9
    .line 1285
    .local v1, "dependentsCount":I
    const/4 v2, 0x0

    #@a
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    #@c
    .line 1286
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v3

    #@10
    check-cast v3, Landroid/preference/Preference;

    #@12
    invoke-virtual {v3, p0, p1}, Landroid/preference/Preference;->onDependencyChanged(Landroid/preference/Preference;Z)V

    #@15
    .line 1285
    add-int/lit8 v2, v2, 0x1

    #@17
    goto :goto_0

    #@18
    .line 1277
    :cond_1
    return-void
.end method

.method protected notifyHierarchyChanged()V
    .locals 1

    #@0
    .prologue
    .line 1157
    iget-object v0, p0, Landroid/preference/Preference;->mListener:Landroid/preference/Preference$OnPreferenceChangeInternalListener;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1158
    iget-object v0, p0, Landroid/preference/Preference;->mListener:Landroid/preference/Preference$OnPreferenceChangeInternalListener;

    #@6
    invoke-interface {v0, p0}, Landroid/preference/Preference$OnPreferenceChangeInternalListener;->onPreferenceHierarchyChange(Landroid/preference/Preference;)V

    #@9
    .line 1156
    :cond_0
    return-void
.end method

.method protected onAttachedToActivity()V
    .locals 0

    #@0
    .prologue
    .line 1194
    invoke-direct {p0}, Landroid/preference/Preference;->registerDependency()V

    #@3
    .line 1191
    return-void
.end method

.method protected onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V
    .locals 2
    .param p1, "preferenceManager"    # Landroid/preference/PreferenceManager;

    #@0
    .prologue
    .line 1178
    iput-object p1, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    #@2
    .line 1180
    invoke-virtual {p1}, Landroid/preference/PreferenceManager;->getNextId()J

    #@5
    move-result-wide v0

    #@6
    iput-wide v0, p0, Landroid/preference/Preference;->mId:J

    #@8
    .line 1182
    invoke-direct {p0}, Landroid/preference/Preference;->dispatchSetInitialValue()V

    #@b
    .line 1177
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    const/16 v8, 0x8

    #@2
    const/4 v7, 0x0

    #@3
    .line 544
    const v6, 0x1020016

    #@6
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@9
    move-result-object v5

    #@a
    check-cast v5, Landroid/widget/TextView;

    #@c
    .line 545
    .local v5, "titleView":Landroid/widget/TextView;
    if-eqz v5, :cond_0

    #@e
    .line 546
    invoke-virtual {p0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    #@11
    move-result-object v4

    #@12
    .line 547
    .local v4, "title":Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@15
    move-result v6

    #@16
    if-nez v6, :cond_8

    #@18
    .line 548
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@1b
    .line 549
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    #@1e
    .line 556
    .end local v4    # "title":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    const v6, 0x1020010

    #@21
    .line 555
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@24
    move-result-object v3

    #@25
    check-cast v3, Landroid/widget/TextView;

    #@27
    .line 557
    .local v3, "summaryView":Landroid/widget/TextView;
    if-eqz v3, :cond_1

    #@29
    .line 558
    invoke-virtual {p0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    #@2c
    move-result-object v2

    #@2d
    .line 559
    .local v2, "summary":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@30
    move-result v6

    #@31
    if-nez v6, :cond_9

    #@33
    .line 560
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@36
    .line 561
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    #@39
    .line 567
    .end local v2    # "summary":Ljava/lang/CharSequence;
    :cond_1
    :goto_1
    const v6, 0x1020006

    #@3c
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@3f
    move-result-object v1

    #@40
    check-cast v1, Landroid/widget/ImageView;

    #@42
    .line 568
    .local v1, "imageView":Landroid/widget/ImageView;
    if-eqz v1, :cond_5

    #@44
    .line 569
    iget v6, p0, Landroid/preference/Preference;->mIconResId:I

    #@46
    if-nez v6, :cond_2

    #@48
    iget-object v6, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    #@4a
    if-eqz v6, :cond_4

    #@4c
    .line 570
    :cond_2
    iget-object v6, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    #@4e
    if-nez v6, :cond_3

    #@50
    .line 571
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    #@53
    move-result-object v6

    #@54
    iget v9, p0, Landroid/preference/Preference;->mIconResId:I

    #@56
    invoke-virtual {v6, v9}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@59
    move-result-object v6

    #@5a
    iput-object v6, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    #@5c
    .line 573
    :cond_3
    iget-object v6, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    #@5e
    if-eqz v6, :cond_4

    #@60
    .line 574
    iget-object v6, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    #@62
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@65
    .line 577
    :cond_4
    iget-object v6, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    #@67
    if-eqz v6, :cond_a

    #@69
    move v6, v7

    #@6a
    :goto_2
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    #@6d
    .line 580
    :cond_5
    const v6, 0x102038b

    #@70
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@73
    move-result-object v0

    #@74
    .line 581
    .local v0, "imageFrame":Landroid/view/View;
    if-eqz v0, :cond_6

    #@76
    .line 582
    iget-object v6, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    #@78
    if-eqz v6, :cond_b

    #@7a
    :goto_3
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    #@7d
    .line 585
    :cond_6
    iget-boolean v6, p0, Landroid/preference/Preference;->mShouldDisableView:Z

    #@7f
    if-eqz v6, :cond_7

    #@81
    .line 586
    invoke-virtual {p0}, Landroid/preference/Preference;->isEnabled()Z

    #@84
    move-result v6

    #@85
    invoke-direct {p0, p1, v6}, Landroid/preference/Preference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    #@88
    .line 543
    :cond_7
    return-void

    #@89
    .line 551
    .end local v0    # "imageFrame":Landroid/view/View;
    .end local v1    # "imageView":Landroid/widget/ImageView;
    .end local v3    # "summaryView":Landroid/widget/TextView;
    .restart local v4    # "title":Ljava/lang/CharSequence;
    :cond_8
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    #@8c
    goto :goto_0

    #@8d
    .line 563
    .end local v4    # "title":Ljava/lang/CharSequence;
    .restart local v2    # "summary":Ljava/lang/CharSequence;
    .restart local v3    # "summaryView":Landroid/widget/TextView;
    :cond_9
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    #@90
    goto :goto_1

    #@91
    .end local v2    # "summary":Ljava/lang/CharSequence;
    .restart local v1    # "imageView":Landroid/widget/ImageView;
    :cond_a
    move v6, v8

    #@92
    .line 577
    goto :goto_2

    #@93
    .restart local v0    # "imageFrame":Landroid/view/View;
    :cond_b
    move v7, v8

    #@94
    .line 582
    goto :goto_3
.end method

.method protected onClick()V
    .locals 0

    #@0
    .prologue
    .line 845
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "parent"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 515
    iget-object v3, p0, Landroid/preference/Preference;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v4, "layout_inflater"

    #@6
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    check-cast v1, Landroid/view/LayoutInflater;

    #@c
    .line 517
    .local v1, "layoutInflater":Landroid/view/LayoutInflater;
    iget v3, p0, Landroid/preference/Preference;->mLayoutResId:I

    #@e
    invoke-virtual {v1, v3, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@11
    move-result-object v0

    #@12
    .line 520
    .local v0, "layout":Landroid/view/View;
    const v3, 0x1020018

    #@15
    .line 519
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@18
    move-result-object v2

    #@19
    check-cast v2, Landroid/view/ViewGroup;

    #@1b
    .line 521
    .local v2, "widgetFrame":Landroid/view/ViewGroup;
    if-eqz v2, :cond_0

    #@1d
    .line 522
    iget v3, p0, Landroid/preference/Preference;->mWidgetLayoutResId:I

    #@1f
    if-eqz v3, :cond_1

    #@21
    .line 523
    iget v3, p0, Landroid/preference/Preference;->mWidgetLayoutResId:I

    #@23
    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@26
    .line 528
    :cond_0
    :goto_0
    return-object v0

    #@27
    .line 525
    :cond_1
    const/16 v3, 0x8

    #@29
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    #@2c
    goto :goto_0
.end method

.method public onDependencyChanged(Landroid/preference/Preference;Z)V
    .locals 1
    .param p1, "dependency"    # Landroid/preference/Preference;
    .param p2, "disableDependent"    # Z

    #@0
    .prologue
    .line 1297
    iget-boolean v0, p0, Landroid/preference/Preference;->mDependencyMet:Z

    #@2
    if-ne v0, p2, :cond_0

    #@4
    .line 1298
    if-eqz p2, :cond_1

    #@6
    const/4 v0, 0x0

    #@7
    :goto_0
    iput-boolean v0, p0, Landroid/preference/Preference;->mDependencyMet:Z

    #@9
    .line 1301
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldDisableDependents()Z

    #@c
    move-result v0

    #@d
    invoke-virtual {p0, v0}, Landroid/preference/Preference;->notifyDependencyChange(Z)V

    #@10
    .line 1303
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    #@13
    .line 1296
    :cond_0
    return-void

    #@14
    .line 1298
    :cond_1
    const/4 v0, 0x1

    #@15
    goto :goto_0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    #@0
    .prologue
    .line 357
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 1024
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onParentChanged(Landroid/preference/Preference;Z)V
    .locals 1
    .param p1, "parent"    # Landroid/preference/Preference;
    .param p2, "disableChild"    # Z

    #@0
    .prologue
    .line 1314
    iget-boolean v0, p0, Landroid/preference/Preference;->mParentDependencyMet:Z

    #@2
    if-ne v0, p2, :cond_0

    #@4
    .line 1315
    if-eqz p2, :cond_1

    #@6
    const/4 v0, 0x0

    #@7
    :goto_0
    iput-boolean v0, p0, Landroid/preference/Preference;->mParentDependencyMet:Z

    #@9
    .line 1318
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldDisableDependents()Z

    #@c
    move-result v0

    #@d
    invoke-virtual {p0, v0}, Landroid/preference/Preference;->notifyDependencyChange(Z)V

    #@10
    .line 1320
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    #@13
    .line 1313
    :cond_0
    return-void

    #@14
    .line 1315
    :cond_1
    const/4 v0, 0x1

    #@15
    goto :goto_0
.end method

.method protected onPrepareForRemoval()V
    .locals 0

    #@0
    .prologue
    .line 1366
    invoke-direct {p0}, Landroid/preference/Preference;->unregisterDependency()V

    #@3
    .line 1365
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    #@0
    .prologue
    .line 1843
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/preference/Preference;->mBaseMethodCalled:Z

    #@3
    .line 1844
    sget-object v0, Landroid/preference/Preference$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    #@5
    if-eq p1, v0, :cond_0

    #@7
    if-eqz p1, :cond_0

    #@9
    .line 1845
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    const-string/jumbo v1, "Wrong state class -- expecting Preference State"

    #@e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 1842
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    #@0
    .prologue
    .line 1792
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/preference/Preference;->mBaseMethodCalled:Z

    #@3
    .line 1793
    sget-object v0, Landroid/preference/Preference$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    #@5
    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0
    .param p1, "restorePersistedValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1409
    return-void
.end method

.method public peekExtras()Landroid/os/Bundle;
    .locals 1

    #@0
    .prologue
    .line 414
    iget-object v0, p0, Landroid/preference/Preference;->mExtras:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method public performClick(Landroid/preference/PreferenceScreen;)V
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;

    #@0
    .prologue
    .line 990
    invoke-virtual {p0}, Landroid/preference/Preference;->isEnabled()Z

    #@3
    move-result v3

    #@4
    if-nez v3, :cond_0

    #@6
    .line 991
    return-void

    #@7
    .line 994
    :cond_0
    invoke-virtual {p0}, Landroid/preference/Preference;->onClick()V

    #@a
    .line 996
    iget-object v3, p0, Landroid/preference/Preference;->mOnClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    #@c
    if-eqz v3, :cond_1

    #@e
    iget-object v3, p0, Landroid/preference/Preference;->mOnClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    #@10
    invoke-interface {v3, p0}, Landroid/preference/Preference$OnPreferenceClickListener;->onPreferenceClick(Landroid/preference/Preference;)Z

    #@13
    move-result v3

    #@14
    if-eqz v3, :cond_1

    #@16
    .line 997
    return-void

    #@17
    .line 1000
    :cond_1
    invoke-virtual {p0}, Landroid/preference/Preference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    #@1a
    move-result-object v2

    #@1b
    .line 1001
    .local v2, "preferenceManager":Landroid/preference/PreferenceManager;
    if-eqz v2, :cond_2

    #@1d
    .line 1002
    invoke-virtual {v2}, Landroid/preference/PreferenceManager;->getOnPreferenceTreeClickListener()Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;

    #@20
    move-result-object v1

    #@21
    .line 1004
    .local v1, "listener":Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;
    if-eqz p1, :cond_2

    #@23
    if-eqz v1, :cond_2

    #@25
    .line 1005
    invoke-interface {v1, p1, p0}, Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    #@28
    move-result v3

    #@29
    .line 1004
    if-eqz v3, :cond_2

    #@2b
    .line 1006
    return-void

    #@2c
    .line 1010
    .end local v1    # "listener":Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;
    :cond_2
    iget-object v3, p0, Landroid/preference/Preference;->mIntent:Landroid/content/Intent;

    #@2e
    if-eqz v3, :cond_3

    #@30
    .line 1011
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    #@33
    move-result-object v0

    #@34
    .line 1012
    .local v0, "context":Landroid/content/Context;
    iget-object v3, p0, Landroid/preference/Preference;->mIntent:Landroid/content/Intent;

    #@36
    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    #@39
    .line 988
    .end local v0    # "context":Landroid/content/Context;
    :cond_3
    return-void
.end method

.method protected persistBoolean(Z)Z
    .locals 4
    .param p1, "value"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    .line 1673
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    #@5
    move-result v3

    #@6
    if-eqz v3, :cond_2

    #@8
    .line 1674
    if-eqz p1, :cond_0

    #@a
    :goto_0
    invoke-virtual {p0, v1}, Landroid/preference/Preference;->getPersistedBoolean(Z)Z

    #@d
    move-result v1

    #@e
    if-ne p1, v1, :cond_1

    #@10
    .line 1676
    return v2

    #@11
    :cond_0
    move v1, v2

    #@12
    .line 1674
    goto :goto_0

    #@13
    .line 1679
    :cond_1
    iget-object v1, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    #@15
    invoke-virtual {v1}, Landroid/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    #@18
    move-result-object v0

    #@19
    .line 1680
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    #@1b
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    #@1e
    .line 1681
    invoke-direct {p0, v0}, Landroid/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    #@21
    .line 1682
    return v2

    #@22
    .line 1684
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_2
    return v1
.end method

.method protected persistFloat(F)Z
    .locals 3
    .param p1, "value"    # F

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 1585
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_1

    #@7
    .line 1586
    const/high16 v1, 0x7fc00000    # NaNf

    #@9
    invoke-virtual {p0, v1}, Landroid/preference/Preference;->getPersistedFloat(F)F

    #@c
    move-result v1

    #@d
    cmpl-float v1, p1, v1

    #@f
    if-nez v1, :cond_0

    #@11
    .line 1588
    return v2

    #@12
    .line 1591
    :cond_0
    iget-object v1, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    #@14
    invoke-virtual {v1}, Landroid/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    #@17
    move-result-object v0

    #@18
    .line 1592
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    #@1a
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    #@1d
    .line 1593
    invoke-direct {p0, v0}, Landroid/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    #@20
    .line 1594
    return v2

    #@21
    .line 1596
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v1, 0x0

    #@22
    return v1
.end method

.method protected persistInt(I)Z
    .locals 3
    .param p1, "value"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 1541
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_1

    #@7
    .line 1542
    not-int v1, p1

    #@8
    invoke-virtual {p0, v1}, Landroid/preference/Preference;->getPersistedInt(I)I

    #@b
    move-result v1

    #@c
    if-ne p1, v1, :cond_0

    #@e
    .line 1544
    return v2

    #@f
    .line 1547
    :cond_0
    iget-object v1, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    #@11
    invoke-virtual {v1}, Landroid/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    #@14
    move-result-object v0

    #@15
    .line 1548
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    #@17
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    #@1a
    .line 1549
    invoke-direct {p0, v0}, Landroid/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    #@1d
    .line 1550
    return v2

    #@1e
    .line 1552
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v1, 0x0

    #@1f
    return v1
.end method

.method protected persistLong(J)Z
    .locals 5
    .param p1, "value"    # J

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 1629
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_1

    #@7
    .line 1630
    not-long v2, p1

    #@8
    invoke-virtual {p0, v2, v3}, Landroid/preference/Preference;->getPersistedLong(J)J

    #@b
    move-result-wide v2

    #@c
    cmp-long v1, p1, v2

    #@e
    if-nez v1, :cond_0

    #@10
    .line 1632
    return v4

    #@11
    .line 1635
    :cond_0
    iget-object v1, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    #@13
    invoke-virtual {v1}, Landroid/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    #@16
    move-result-object v0

    #@17
    .line 1636
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    #@19
    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    #@1c
    .line 1637
    invoke-direct {p0, v0}, Landroid/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    #@1f
    .line 1638
    return v4

    #@20
    .line 1640
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v1, 0x0

    #@21
    return v1
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 1439
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_1

    #@7
    .line 1441
    const/4 v1, 0x0

    #@8
    invoke-virtual {p0, v1}, Landroid/preference/Preference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 1443
    return v2

    #@13
    .line 1446
    :cond_0
    iget-object v1, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    #@15
    invoke-virtual {v1}, Landroid/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    #@18
    move-result-object v0

    #@19
    .line 1447
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    #@1b
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    #@1e
    .line 1448
    invoke-direct {p0, v0}, Landroid/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    #@21
    .line 1449
    return v2

    #@22
    .line 1451
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v1, 0x0

    #@23
    return v1
.end method

.method protected persistStringSet(Ljava/util/Set;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x1

    #@1
    .line 1491
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_1

    #@7
    .line 1493
    const/4 v1, 0x0

    #@8
    invoke-virtual {p0, v1}, Landroid/preference/Preference;->getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;

    #@b
    move-result-object v1

    #@c
    invoke-interface {p1, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 1495
    return v2

    #@13
    .line 1498
    :cond_0
    iget-object v1, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    #@15
    invoke-virtual {v1}, Landroid/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    #@18
    move-result-object v0

    #@19
    .line 1499
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    #@1b
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    #@1e
    .line 1500
    invoke-direct {p0, v0}, Landroid/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    #@21
    .line 1501
    return v2

    #@22
    .line 1503
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v1, 0x0

    #@23
    return v1
.end method

.method requireKey()V
    .locals 2

    #@0
    .prologue
    .line 880
    iget-object v0, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 881
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Preference does not have a key assigned."

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 884
    :cond_0
    const/4 v0, 0x1

    #@e
    iput-boolean v0, p0, Landroid/preference/Preference;->mRequiresKey:Z

    #@10
    .line 879
    return-void
.end method

.method public restoreHierarchyState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "container"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1805
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    #@3
    .line 1804
    return-void
.end method

.method public saveHierarchyState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "container"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1752
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    #@3
    .line 1751
    return-void
.end method

.method public setDefaultValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "defaultValue"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1377
    iput-object p1, p0, Landroid/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    #@2
    .line 1376
    return-void
.end method

.method public setDependency(Ljava/lang/String;)V
    .locals 0
    .param p1, "dependencyKey"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1342
    invoke-direct {p0}, Landroid/preference/Preference;->unregisterDependency()V

    #@3
    .line 1345
    iput-object p1, p0, Landroid/preference/Preference;->mDependencyKey:Ljava/lang/String;

    #@5
    .line 1346
    invoke-direct {p0}, Landroid/preference/Preference;->registerDependency()V

    #@8
    .line 1340
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 764
    iget-boolean v0, p0, Landroid/preference/Preference;->mEnabled:Z

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 765
    iput-boolean p1, p0, Landroid/preference/Preference;->mEnabled:Z

    #@6
    .line 768
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldDisableDependents()Z

    #@9
    move-result v0

    #@a
    invoke-virtual {p0, v0}, Landroid/preference/Preference;->notifyDependencyChange(Z)V

    #@d
    .line 770
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    #@10
    .line 763
    :cond_0
    return-void
.end method

.method public setFragment(Ljava/lang/String;)V
    .locals 0
    .param p1, "fragment"    # Ljava/lang/String;

    #@0
    .prologue
    .line 385
    iput-object p1, p0, Landroid/preference/Preference;->mFragment:Ljava/lang/String;

    #@2
    .line 384
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "iconResId"    # I

    #@0
    .prologue
    .line 709
    iget v0, p0, Landroid/preference/Preference;->mIconResId:I

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 710
    iput p1, p0, Landroid/preference/Preference;->mIconResId:I

    #@6
    .line 711
    iget-object v0, p0, Landroid/preference/Preference;->mContext:Landroid/content/Context;

    #@8
    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    #@f
    .line 708
    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 695
    if-nez p1, :cond_1

    #@2
    iget-object v0, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    #@4
    if-eqz v0, :cond_1

    #@6
    .line 696
    :goto_0
    iput-object p1, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    #@8
    .line 698
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    #@b
    .line 694
    :cond_0
    return-void

    #@c
    .line 695
    :cond_1
    if-eqz p1, :cond_0

    #@e
    iget-object v0, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    #@10
    if-eq v0, p1, :cond_0

    #@12
    goto :goto_0
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 367
    iput-object p1, p0, Landroid/preference/Preference;->mIntent:Landroid/content/Intent;

    #@2
    .line 366
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 855
    iput-object p1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    #@2
    .line 857
    iget-boolean v0, p0, Landroid/preference/Preference;->mRequiresKey:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    invoke-virtual {p0}, Landroid/preference/Preference;->hasKey()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 854
    :cond_0
    :goto_0
    return-void

    #@d
    .line 858
    :cond_1
    invoke-virtual {p0}, Landroid/preference/Preference;->requireKey()V

    #@10
    goto :goto_0
.end method

.method public setLayoutResource(I)V
    .locals 1
    .param p1, "layoutResId"    # I

    #@0
    .prologue
    .line 432
    iget v0, p0, Landroid/preference/Preference;->mLayoutResId:I

    #@2
    if-eq p1, v0, :cond_0

    #@4
    .line 434
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Landroid/preference/Preference;->mCanRecycleLayout:Z

    #@7
    .line 437
    :cond_0
    iput p1, p0, Landroid/preference/Preference;->mLayoutResId:I

    #@9
    .line 431
    return-void
.end method

.method final setOnPreferenceChangeInternalListener(Landroid/preference/Preference$OnPreferenceChangeInternalListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/preference/Preference$OnPreferenceChangeInternalListener;

    #@0
    .prologue
    .line 1139
    iput-object p1, p0, Landroid/preference/Preference;->mListener:Landroid/preference/Preference$OnPreferenceChangeInternalListener;

    #@2
    .line 1138
    return-void
.end method

.method public setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V
    .locals 0
    .param p1, "onPreferenceChangeListener"    # Landroid/preference/Preference$OnPreferenceChangeListener;

    #@0
    .prologue
    .line 949
    iput-object p1, p0, Landroid/preference/Preference;->mOnChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    #@2
    .line 948
    return-void
.end method

.method public setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V
    .locals 0
    .param p1, "onPreferenceClickListener"    # Landroid/preference/Preference$OnPreferenceClickListener;

    #@0
    .prologue
    .line 968
    iput-object p1, p0, Landroid/preference/Preference;->mOnClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    #@2
    .line 967
    return-void
.end method

.method public setOrder(I)V
    .locals 1
    .param p1, "order"    # I

    #@0
    .prologue
    .line 618
    iget v0, p0, Landroid/preference/Preference;->mOrder:I

    #@2
    if-eq p1, v0, :cond_0

    #@4
    .line 619
    iput p1, p0, Landroid/preference/Preference;->mOrder:I

    #@6
    .line 622
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyHierarchyChanged()V

    #@9
    .line 617
    :cond_0
    return-void
.end method

.method public setPersistent(Z)V
    .locals 0
    .param p1, "persistent"    # Z

    #@0
    .prologue
    .line 927
    iput-boolean p1, p0, Landroid/preference/Preference;->mPersistent:Z

    #@2
    .line 926
    return-void
.end method

.method public setSelectable(Z)V
    .locals 1
    .param p1, "selectable"    # Z

    #@0
    .prologue
    .line 789
    iget-boolean v0, p0, Landroid/preference/Preference;->mSelectable:Z

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 790
    iput-boolean p1, p0, Landroid/preference/Preference;->mSelectable:Z

    #@6
    .line 791
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    #@9
    .line 788
    :cond_0
    return-void
.end method

.method public setShouldDisableView(Z)V
    .locals 0
    .param p1, "shouldDisableView"    # Z

    #@0
    .prologue
    .line 816
    iput-boolean p1, p0, Landroid/preference/Preference;->mShouldDisableView:Z

    #@2
    .line 817
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    #@5
    .line 815
    return-void
.end method

.method public setSummary(I)V
    .locals 1
    .param p1, "summaryResId"    # I

    #@0
    .prologue
    .line 754
    iget-object v0, p0, Landroid/preference/Preference;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    #@9
    .line 753
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "summary"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 741
    if-nez p1, :cond_2

    #@2
    iget-object v0, p0, Landroid/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    #@4
    if-eqz v0, :cond_2

    #@6
    .line 742
    :cond_0
    iput-object p1, p0, Landroid/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    #@8
    .line 743
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    #@b
    .line 740
    :cond_1
    :goto_0
    return-void

    #@c
    .line 741
    :cond_2
    if-eqz p1, :cond_1

    #@e
    iget-object v0, p0, Landroid/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    #@10
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_0

    #@16
    goto :goto_0
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "titleResId"    # I

    #@0
    .prologue
    .line 660
    iget-object v0, p0, Landroid/preference/Preference;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    #@9
    .line 661
    iput p1, p0, Landroid/preference/Preference;->mTitleRes:I

    #@b
    .line 659
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 646
    if-nez p1, :cond_2

    #@2
    iget-object v0, p0, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    #@4
    if-eqz v0, :cond_2

    #@6
    .line 647
    :cond_0
    const/4 v0, 0x0

    #@7
    iput v0, p0, Landroid/preference/Preference;->mTitleRes:I

    #@9
    .line 648
    iput-object p1, p0, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    #@b
    .line 649
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    #@e
    .line 645
    :cond_1
    :goto_0
    return-void

    #@f
    .line 646
    :cond_2
    if-eqz p1, :cond_1

    #@11
    iget-object v0, p0, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    #@13
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_0

    #@19
    goto :goto_0
.end method

.method public setWidgetLayoutResource(I)V
    .locals 1
    .param p1, "widgetLayoutResId"    # I

    #@0
    .prologue
    .line 461
    iget v0, p0, Landroid/preference/Preference;->mWidgetLayoutResId:I

    #@2
    if-eq p1, v0, :cond_0

    #@4
    .line 463
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Landroid/preference/Preference;->mCanRecycleLayout:Z

    #@7
    .line 465
    :cond_0
    iput p1, p0, Landroid/preference/Preference;->mWidgetLayoutResId:I

    #@9
    .line 460
    return-void
.end method

.method public shouldCommit()Z
    .locals 1

    #@0
    .prologue
    .line 1100
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1101
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 1104
    :cond_0
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    #@8
    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->shouldCommit()Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public shouldDisableDependents()Z
    .locals 1

    #@0
    .prologue
    .line 1331
    invoke-virtual {p0}, Landroid/preference/Preference;->isEnabled()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/4 v0, 0x0

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x1

    #@9
    goto :goto_0
.end method

.method protected shouldPersist()Z
    .locals 1

    #@0
    .prologue
    .line 916
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    #@2
    if-eqz v0, :cond_0

    #@4
    invoke-virtual {p0}, Landroid/preference/Preference;->isPersistent()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    invoke-virtual {p0}, Landroid/preference/Preference;->hasKey()Z

    #@d
    move-result v0

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    const/4 v0, 0x0

    #@10
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1712
    invoke-virtual {p0}, Landroid/preference/Preference;->getFilterableStringBuilder()Ljava/lang/StringBuilder;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method
