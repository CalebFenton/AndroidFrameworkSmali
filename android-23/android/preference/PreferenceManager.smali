.class public Landroid/preference/PreferenceManager;
.super Ljava/lang/Object;
.source "PreferenceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;,
        Landroid/preference/PreferenceManager$OnActivityResultListener;,
        Landroid/preference/PreferenceManager$OnActivityStopListener;,
        Landroid/preference/PreferenceManager$OnActivityDestroyListener;
    }
.end annotation


# static fields
.field public static final KEY_HAS_SET_DEFAULT_VALUES:Ljava/lang/String; = "_has_set_default_values"

.field public static final METADATA_KEY_PREFERENCES:Ljava/lang/String; = "android.preference"

.field private static final TAG:Ljava/lang/String; = "PreferenceManager"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mActivityDestroyListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceManager$OnActivityDestroyListener;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityResultListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceManager$OnActivityResultListener;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityStopListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceManager$OnActivityStopListener;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mFragment:Landroid/preference/PreferenceFragment;

.field private mNextId:J

.field private mNextRequestCode:I

.field private mNoCommit:Z

.field private mOnPreferenceTreeClickListener:Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;

.field private mPreferenceScreen:Landroid/preference/PreferenceScreen;

.field private mPreferencesScreens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/DialogInterface;",
            ">;"
        }
    .end annotation
.end field

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSharedPreferencesMode:I

.field private mSharedPreferencesName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "firstRequestCode"    # I

    #@0
    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 78
    const-wide/16 v0, 0x0

    #@5
    iput-wide v0, p0, Landroid/preference/PreferenceManager;->mNextId:J

    #@7
    .line 146
    iput-object p1, p0, Landroid/preference/PreferenceManager;->mActivity:Landroid/app/Activity;

    #@9
    .line 147
    iput p2, p0, Landroid/preference/PreferenceManager;->mNextRequestCode:I

    #@b
    .line 149
    invoke-direct {p0, p1}, Landroid/preference/PreferenceManager;->init(Landroid/content/Context;)V

    #@e
    .line 145
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 78
    const-wide/16 v0, 0x0

    #@5
    iput-wide v0, p0, Landroid/preference/PreferenceManager;->mNextId:J

    #@7
    .line 161
    invoke-direct {p0, p1}, Landroid/preference/PreferenceManager;->init(Landroid/content/Context;)V

    #@a
    .line 160
    return-void
.end method

.method private dismissAllScreens()V
    .locals 3

    #@0
    .prologue
    .line 773
    monitor-enter p0

    #@1
    .line 775
    :try_start_0
    iget-object v2, p0, Landroid/preference/PreferenceManager;->mPreferencesScreens:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-nez v2, :cond_0

    #@5
    monitor-exit p0

    #@6
    .line 776
    return-void

    #@7
    .line 779
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    #@9
    iget-object v2, p0, Landroid/preference/PreferenceManager;->mPreferencesScreens:Ljava/util/List;

    #@b
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@e
    .line 780
    .local v1, "screensToDismiss":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/DialogInterface;>;"
    iget-object v2, p0, Landroid/preference/PreferenceManager;->mPreferencesScreens:Ljava/util/List;

    #@10
    invoke-interface {v2}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@13
    monitor-exit p0

    #@14
    .line 783
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@17
    move-result v2

    #@18
    add-int/lit8 v0, v2, -0x1

    #@1a
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@1c
    .line 784
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1f
    move-result-object v2

    #@20
    check-cast v2, Landroid/content/DialogInterface;

    #@22
    invoke-interface {v2}, Landroid/content/DialogInterface;->dismiss()V

    #@25
    .line 783
    add-int/lit8 v0, v0, -0x1

    #@27
    goto :goto_0

    #@28
    .line 773
    .end local v0    # "i":I
    .end local v1    # "screensToDismiss":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/DialogInterface;>;"
    :catchall_0
    move-exception v2

    #@29
    monitor-exit p0

    #@2a
    throw v2

    #@2b
    .line 769
    .restart local v0    # "i":I
    .restart local v1    # "screensToDismiss":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/DialogInterface;>;"
    :cond_1
    return-void
.end method

.method public static getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 370
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 371
    invoke-static {}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferencesMode()I

    #@7
    move-result v1

    #@8
    .line 370
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method private static getDefaultSharedPreferencesMode()I
    .locals 1

    #@0
    .prologue
    .line 379
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method private static getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string/jumbo v1, "_preferences"

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 165
    iput-object p1, p0, Landroid/preference/PreferenceManager;->mContext:Landroid/content/Context;

    #@2
    .line 167
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    #@9
    .line 164
    return-void
.end method

.method private queryIntentActivities(Landroid/content/Intent;)Ljava/util/List;
    .locals 2
    .param p1, "queryIntent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 193
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@5
    move-result-object v0

    #@6
    .line 194
    const/16 v1, 0x80

    #@8
    .line 193
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public static setDefaultValues(Landroid/content/Context;IZ)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "readAgain"    # Z

    #@0
    .prologue
    .line 445
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 446
    invoke-static {}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferencesMode()I

    #@7
    move-result v1

    #@8
    .line 445
    invoke-static {p0, v0, v1, p1, p2}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V

    #@b
    .line 442
    return-void
.end method

.method public static setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sharedPreferencesName"    # Ljava/lang/String;
    .param p2, "sharedPreferencesMode"    # I
    .param p3, "resId"    # I
    .param p4, "readAgain"    # Z

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 480
    const-string/jumbo v4, "_has_set_default_values"

    #@4
    .line 479
    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    #@7
    move-result-object v0

    #@8
    .line 482
    .local v0, "defaultValueSp":Landroid/content/SharedPreferences;
    if-nez p4, :cond_0

    #@a
    const-string/jumbo v4, "_has_set_default_values"

    #@d
    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    #@10
    move-result v4

    #@11
    if-eqz v4, :cond_0

    #@13
    .line 478
    :goto_0
    return-void

    #@14
    .line 483
    :cond_0
    new-instance v2, Landroid/preference/PreferenceManager;

    #@16
    invoke-direct {v2, p0}, Landroid/preference/PreferenceManager;-><init>(Landroid/content/Context;)V

    #@19
    .line 484
    .local v2, "pm":Landroid/preference/PreferenceManager;
    invoke-virtual {v2, p1}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    #@1c
    .line 485
    invoke-virtual {v2, p2}, Landroid/preference/PreferenceManager;->setSharedPreferencesMode(I)V

    #@1f
    .line 486
    const/4 v4, 0x0

    #@20
    invoke-virtual {v2, p0, p3, v4}, Landroid/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    #@23
    .line 489
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    #@26
    move-result-object v4

    #@27
    const-string/jumbo v5, "_has_set_default_values"

    #@2a
    const/4 v6, 0x1

    #@2b
    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    #@2e
    move-result-object v1

    #@2f
    .line 491
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    :try_start_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    #@32
    goto :goto_0

    #@33
    .line 492
    :catch_0
    move-exception v3

    #@34
    .line 496
    .local v3, "unused":Ljava/lang/AbstractMethodError;
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    #@37
    goto :goto_0
.end method

.method private setNoCommit(Z)V
    .locals 2
    .param p1, "noCommit"    # Z

    #@0
    .prologue
    .line 534
    if-nez p1, :cond_0

    #@2
    iget-object v1, p0, Landroid/preference/PreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 536
    :try_start_0
    iget-object v1, p0, Landroid/preference/PreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    #@8
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 544
    :cond_0
    :goto_0
    iput-boolean p1, p0, Landroid/preference/PreferenceManager;->mNoCommit:Z

    #@d
    .line 533
    return-void

    #@e
    .line 537
    :catch_0
    move-exception v0

    #@f
    .line 541
    .local v0, "unused":Ljava/lang/AbstractMethodError;
    iget-object v1, p0, Landroid/preference/PreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    #@11
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    #@14
    goto :goto_0
.end method


# virtual methods
.method addPreferencesScreen(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "screen"    # Landroid/content/DialogInterface;

    #@0
    .prologue
    .line 739
    monitor-enter p0

    #@1
    .line 741
    :try_start_0
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mPreferencesScreens:Ljava/util/List;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 742
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@a
    iput-object v0, p0, Landroid/preference/PreferenceManager;->mPreferencesScreens:Ljava/util/List;

    #@c
    .line 745
    :cond_0
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mPreferencesScreens:Ljava/util/List;

    #@e
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit p0

    #@12
    .line 738
    return-void

    #@13
    .line 739
    :catchall_0
    move-exception v0

    #@14
    monitor-exit p0

    #@15
    throw v0
.end method

.method public createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 283
    new-instance v0, Landroid/preference/PreferenceScreen;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p1, v1}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@6
    .line 284
    .local v0, "preferenceScreen":Landroid/preference/PreferenceScreen;
    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V

    #@9
    .line 285
    return-object v0
.end method

.method dispatchActivityDestroy()V
    .locals 4

    #@0
    .prologue
    .line 706
    const/4 v2, 0x0

    #@1
    .line 708
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceManager$OnActivityDestroyListener;>;"
    monitor-enter p0

    #@2
    .line 709
    :try_start_0
    iget-object v3, p0, Landroid/preference/PreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 710
    new-instance v2, Ljava/util/ArrayList;

    #@8
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceManager$OnActivityDestroyListener;>;"
    iget-object v3, p0, Landroid/preference/PreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    #@a
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    :cond_0
    monitor-exit p0

    #@e
    .line 714
    if-eqz v2, :cond_1

    #@10
    .line 715
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@13
    move-result v0

    #@14
    .line 716
    .local v0, "N":I
    const/4 v1, 0x0

    #@15
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@17
    .line 717
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v3

    #@1b
    check-cast v3, Landroid/preference/PreferenceManager$OnActivityDestroyListener;

    #@1d
    invoke-interface {v3}, Landroid/preference/PreferenceManager$OnActivityDestroyListener;->onActivityDestroy()V

    #@20
    .line 716
    add-int/lit8 v1, v1, 0x1

    #@22
    goto :goto_0

    #@23
    .line 708
    .end local v0    # "N":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    #@24
    monitor-exit p0

    #@25
    throw v3

    #@26
    .line 722
    :cond_1
    invoke-direct {p0}, Landroid/preference/PreferenceManager;->dismissAllScreens()V

    #@29
    .line 705
    return-void
.end method

.method dispatchActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 608
    monitor-enter p0

    #@1
    .line 609
    :try_start_0
    iget-object v3, p0, Landroid/preference/PreferenceManager;->mActivityResultListeners:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-nez v3, :cond_0

    #@5
    monitor-exit p0

    #@6
    return-void

    #@7
    .line 610
    :cond_0
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    #@9
    iget-object v3, p0, Landroid/preference/PreferenceManager;->mActivityResultListeners:Ljava/util/List;

    #@b
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@e
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceManager$OnActivityResultListener;>;"
    monitor-exit p0

    #@f
    .line 613
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@12
    move-result v0

    #@13
    .line 614
    .local v0, "N":I
    const/4 v1, 0x0

    #@14
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@16
    .line 615
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@19
    move-result-object v3

    #@1a
    check-cast v3, Landroid/preference/PreferenceManager$OnActivityResultListener;

    #@1c
    invoke-interface {v3, p1, p2, p3}, Landroid/preference/PreferenceManager$OnActivityResultListener;->onActivityResult(IILandroid/content/Intent;)Z

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_2

    #@22
    .line 605
    :cond_1
    return-void

    #@23
    .line 608
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceManager$OnActivityResultListener;>;"
    :catchall_0
    move-exception v3

    #@24
    monitor-exit p0

    #@25
    throw v3

    #@26
    .line 614
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceManager$OnActivityResultListener;>;"
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@28
    goto :goto_0
.end method

.method dispatchActivityStop()V
    .locals 4

    #@0
    .prologue
    .line 660
    monitor-enter p0

    #@1
    .line 661
    :try_start_0
    iget-object v3, p0, Landroid/preference/PreferenceManager;->mActivityStopListeners:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-nez v3, :cond_0

    #@5
    monitor-exit p0

    #@6
    return-void

    #@7
    .line 662
    :cond_0
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    #@9
    iget-object v3, p0, Landroid/preference/PreferenceManager;->mActivityStopListeners:Ljava/util/List;

    #@b
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@e
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceManager$OnActivityStopListener;>;"
    monitor-exit p0

    #@f
    .line 665
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@12
    move-result v0

    #@13
    .line 666
    .local v0, "N":I
    const/4 v1, 0x0

    #@14
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@16
    .line 667
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@19
    move-result-object v3

    #@1a
    check-cast v3, Landroid/preference/PreferenceManager$OnActivityStopListener;

    #@1c
    invoke-interface {v3}, Landroid/preference/PreferenceManager$OnActivityStopListener;->onActivityStop()V

    #@1f
    .line 666
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_0

    #@22
    .line 660
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceManager$OnActivityStopListener;>;"
    :catchall_0
    move-exception v3

    #@23
    monitor-exit p0

    #@24
    throw v3

    #@25
    .line 657
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceManager$OnActivityStopListener;>;"
    :cond_1
    return-void
.end method

.method dispatchNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 766
    invoke-direct {p0}, Landroid/preference/PreferenceManager;->dismissAllScreens()V

    #@3
    .line 765
    return-void
.end method

.method public findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;
    .locals 2
    .param p1, "key"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 414
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 415
    return-object v1

    #@6
    .line 418
    :cond_0
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    #@8
    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method getActivity()Landroid/app/Activity;
    .locals 1

    #@0
    .prologue
    .line 559
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mActivity:Landroid/app/Activity;

    #@2
    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    #@0
    .prologue
    .line 569
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method getEditor()Landroid/content/SharedPreferences$Editor;
    .locals 1

    #@0
    .prologue
    .line 511
    iget-boolean v0, p0, Landroid/preference/PreferenceManager;->mNoCommit:Z

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 512
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    #@6
    if-nez v0, :cond_0

    #@8
    .line 513
    invoke-virtual {p0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    #@b
    move-result-object v0

    #@c
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Landroid/preference/PreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    #@12
    .line 516
    :cond_0
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    #@14
    return-object v0

    #@15
    .line 518
    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    #@18
    move-result-object v0

    #@19
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    #@1c
    move-result-object v0

    #@1d
    return-object v0
.end method

.method getFragment()Landroid/preference/PreferenceFragment;
    .locals 1

    #@0
    .prologue
    .line 181
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mFragment:Landroid/preference/PreferenceFragment;

    #@2
    return-object v0
.end method

.method getNextId()J
    .locals 4

    #@0
    .prologue
    .line 294
    monitor-enter p0

    #@1
    .line 295
    :try_start_0
    iget-wide v0, p0, Landroid/preference/PreferenceManager;->mNextId:J

    #@3
    const-wide/16 v2, 0x1

    #@5
    add-long/2addr v2, v0

    #@6
    iput-wide v2, p0, Landroid/preference/PreferenceManager;->mNextId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit p0

    #@9
    return-wide v0

    #@a
    .line 294
    :catchall_0
    move-exception v0

    #@b
    monitor-exit p0

    #@c
    throw v0
.end method

.method getNextRequestCode()I
    .locals 2

    #@0
    .prologue
    .line 733
    monitor-enter p0

    #@1
    .line 734
    :try_start_0
    iget v0, p0, Landroid/preference/PreferenceManager;->mNextRequestCode:I

    #@3
    add-int/lit8 v1, v0, 0x1

    #@5
    iput v1, p0, Landroid/preference/PreferenceManager;->mNextRequestCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit p0

    #@8
    return v0

    #@9
    .line 733
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method getOnPreferenceTreeClickListener()Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;
    .locals 1

    #@0
    .prologue
    .line 799
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mOnPreferenceTreeClickListener:Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;

    #@2
    return-object v0
.end method

.method getPreferenceScreen()Landroid/preference/PreferenceScreen;
    .locals 1

    #@0
    .prologue
    .line 388
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    #@2
    return-object v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    #@0
    .prologue
    .line 353
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 354
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mContext:Landroid/content/Context;

    #@6
    iget-object v1, p0, Landroid/preference/PreferenceManager;->mSharedPreferencesName:Ljava/lang/String;

    #@8
    .line 355
    iget v2, p0, Landroid/preference/PreferenceManager;->mSharedPreferencesMode:I

    #@a
    .line 354
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Landroid/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    #@10
    .line 358
    :cond_0
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    #@12
    return-object v0
.end method

.method public getSharedPreferencesMode()I
    .locals 1

    #@0
    .prologue
    .line 330
    iget v0, p0, Landroid/preference/PreferenceManager;->mSharedPreferencesMode:I

    #@2
    return v0
.end method

.method public getSharedPreferencesName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 307
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mSharedPreferencesName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method inflateFromIntent(Landroid/content/Intent;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .locals 13
    .param p1, "queryIntent"    # Landroid/content/Intent;
    .param p2, "rootPreferences"    # Landroid/preference/PreferenceScreen;

    #@0
    .prologue
    .line 213
    invoke-direct {p0, p1}, Landroid/preference/PreferenceManager;->queryIntentActivities(Landroid/content/Intent;)Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    .line 214
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v5, Ljava/util/HashSet;

    #@6
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    #@9
    .line 216
    .local v5, "inflatedRes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@c
    move-result v10

    #@d
    add-int/lit8 v4, v10, -0x1

    #@f
    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_1

    #@11
    .line 217
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v10

    #@15
    check-cast v10, Landroid/content/pm/ResolveInfo;

    #@17
    iget-object v1, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@19
    .line 218
    .local v1, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v7, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    #@1b
    .line 220
    .local v7, "metaData":Landroid/os/Bundle;
    if-eqz v7, :cond_0

    #@1d
    const-string/jumbo v10, "android.preference"

    #@20
    invoke-virtual {v7, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@23
    move-result v10

    #@24
    if-eqz v10, :cond_0

    #@26
    .line 226
    new-instance v10, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    iget-object v11, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@2d
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v10

    #@31
    const-string/jumbo v11, ":"

    #@34
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v10

    #@38
    .line 227
    iget-object v11, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    #@3a
    const-string/jumbo v12, "android.preference"

    #@3d
    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@40
    move-result v11

    #@41
    .line 226
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@44
    move-result-object v10

    #@45
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v9

    #@49
    .line 229
    .local v9, "uniqueResId":Ljava/lang/String;
    invoke-virtual {v5, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@4c
    move-result v10

    #@4d
    if-nez v10, :cond_0

    #@4f
    .line 230
    invoke-virtual {v5, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@52
    .line 234
    :try_start_0
    iget-object v10, p0, Landroid/preference/PreferenceManager;->mContext:Landroid/content/Context;

    #@54
    iget-object v11, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@56
    const/4 v12, 0x0

    #@57
    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@5a
    move-result-object v2

    #@5b
    .line 241
    .local v2, "context":Landroid/content/Context;
    new-instance v6, Landroid/preference/PreferenceInflater;

    #@5d
    invoke-direct {v6, v2, p0}, Landroid/preference/PreferenceInflater;-><init>(Landroid/content/Context;Landroid/preference/PreferenceManager;)V

    #@60
    .line 242
    .local v6, "inflater":Landroid/preference/PreferenceInflater;
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@63
    move-result-object v10

    #@64
    .line 243
    const-string/jumbo v11, "android.preference"

    #@67
    .line 242
    invoke-virtual {v1, v10, v11}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    #@6a
    move-result-object v8

    #@6b
    .line 245
    .local v8, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v10, 0x1

    #@6c
    .line 244
    invoke-virtual {v6, v8, p2, v10}, Landroid/preference/PreferenceInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/preference/GenericInflater$Parent;Z)Ljava/lang/Object;

    #@6f
    move-result-object p2

    #@70
    .end local p2    # "rootPreferences":Landroid/preference/PreferenceScreen;
    check-cast p2, Landroid/preference/PreferenceScreen;

    #@72
    .line 246
    .restart local p2    # "rootPreferences":Landroid/preference/PreferenceScreen;
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    #@75
    .line 216
    .end local v2    # "context":Landroid/content/Context;
    .end local v6    # "inflater":Landroid/preference/PreferenceInflater;
    .end local v8    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v9    # "uniqueResId":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, -0x1

    #@77
    goto :goto_0

    #@78
    .line 235
    .restart local v9    # "uniqueResId":Ljava/lang/String;
    :catch_0
    move-exception v3

    #@79
    .line 236
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v10, "PreferenceManager"

    #@7c
    new-instance v11, Ljava/lang/StringBuilder;

    #@7e
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@81
    const-string/jumbo v12, "Could not create context for "

    #@84
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v11

    #@88
    iget-object v12, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@8a
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v11

    #@8e
    const-string/jumbo v12, ": "

    #@91
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v11

    #@95
    .line 237
    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    #@98
    move-result-object v12

    #@99
    .line 236
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v11

    #@9d
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a0
    move-result-object v11

    #@a1
    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@a4
    goto :goto_1

    #@a5
    .line 250
    .end local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v7    # "metaData":Landroid/os/Bundle;
    .end local v9    # "uniqueResId":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2, p0}, Landroid/preference/PreferenceScreen;->onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V

    #@a8
    .line 252
    return-object p2
.end method

.method public inflateFromResource(Landroid/content/Context;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .param p3, "rootPreferences"    # Landroid/preference/PreferenceScreen;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 270
    invoke-direct {p0, v1}, Landroid/preference/PreferenceManager;->setNoCommit(Z)V

    #@4
    .line 272
    new-instance v0, Landroid/preference/PreferenceInflater;

    #@6
    invoke-direct {v0, p1, p0}, Landroid/preference/PreferenceInflater;-><init>(Landroid/content/Context;Landroid/preference/PreferenceManager;)V

    #@9
    .line 273
    .local v0, "inflater":Landroid/preference/PreferenceInflater;
    invoke-virtual {v0, p2, p3, v1}, Landroid/preference/PreferenceInflater;->inflate(ILandroid/preference/GenericInflater$Parent;Z)Ljava/lang/Object;

    #@c
    move-result-object p3

    #@d
    .end local p3    # "rootPreferences":Landroid/preference/PreferenceScreen;
    check-cast p3, Landroid/preference/PreferenceScreen;

    #@f
    .line 274
    .restart local p3    # "rootPreferences":Landroid/preference/PreferenceScreen;
    invoke-virtual {p3, p0}, Landroid/preference/PreferenceScreen;->onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V

    #@12
    .line 277
    const/4 v1, 0x0

    #@13
    invoke-direct {p0, v1}, Landroid/preference/PreferenceManager;->setNoCommit(Z)V

    #@16
    .line 279
    return-object p3
.end method

.method registerOnActivityDestroyListener(Landroid/preference/PreferenceManager$OnActivityDestroyListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/preference/PreferenceManager$OnActivityDestroyListener;

    #@0
    .prologue
    .line 677
    monitor-enter p0

    #@1
    .line 678
    :try_start_0
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 679
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@a
    iput-object v0, p0, Landroid/preference/PreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    #@c
    .line 682
    :cond_0
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    #@e
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    if-nez v0, :cond_1

    #@14
    .line 683
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    #@16
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    :cond_1
    monitor-exit p0

    #@1a
    .line 676
    return-void

    #@1b
    .line 677
    :catchall_0
    move-exception v0

    #@1c
    monitor-exit p0

    #@1d
    throw v0
.end method

.method registerOnActivityResultListener(Landroid/preference/PreferenceManager$OnActivityResultListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/preference/PreferenceManager$OnActivityResultListener;

    #@0
    .prologue
    .line 578
    monitor-enter p0

    #@1
    .line 579
    :try_start_0
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mActivityResultListeners:Ljava/util/List;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 580
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@a
    iput-object v0, p0, Landroid/preference/PreferenceManager;->mActivityResultListeners:Ljava/util/List;

    #@c
    .line 583
    :cond_0
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mActivityResultListeners:Ljava/util/List;

    #@e
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    if-nez v0, :cond_1

    #@14
    .line 584
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mActivityResultListeners:Ljava/util/List;

    #@16
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    :cond_1
    monitor-exit p0

    #@1a
    .line 577
    return-void

    #@1b
    .line 578
    :catchall_0
    move-exception v0

    #@1c
    monitor-exit p0

    #@1d
    throw v0
.end method

.method public registerOnActivityStopListener(Landroid/preference/PreferenceManager$OnActivityStopListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/preference/PreferenceManager$OnActivityStopListener;

    #@0
    .prologue
    .line 628
    monitor-enter p0

    #@1
    .line 629
    :try_start_0
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mActivityStopListeners:Ljava/util/List;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 630
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@a
    iput-object v0, p0, Landroid/preference/PreferenceManager;->mActivityStopListeners:Ljava/util/List;

    #@c
    .line 633
    :cond_0
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mActivityStopListeners:Ljava/util/List;

    #@e
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    if-nez v0, :cond_1

    #@14
    .line 634
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mActivityStopListeners:Ljava/util/List;

    #@16
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    :cond_1
    monitor-exit p0

    #@1a
    .line 627
    return-void

    #@1b
    .line 628
    :catchall_0
    move-exception v0

    #@1c
    monitor-exit p0

    #@1d
    throw v0
.end method

.method removePreferencesScreen(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "screen"    # Landroid/content/DialogInterface;

    #@0
    .prologue
    .line 750
    monitor-enter p0

    #@1
    .line 752
    :try_start_0
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mPreferencesScreens:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-nez v0, :cond_0

    #@5
    monitor-exit p0

    #@6
    .line 753
    return-void

    #@7
    .line 756
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mPreferencesScreens:Ljava/util/List;

    #@9
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@c
    monitor-exit p0

    #@d
    .line 749
    return-void

    #@e
    .line 750
    :catchall_0
    move-exception v0

    #@f
    monitor-exit p0

    #@10
    throw v0
.end method

.method setFragment(Landroid/preference/PreferenceFragment;)V
    .locals 0
    .param p1, "fragment"    # Landroid/preference/PreferenceFragment;

    #@0
    .prologue
    .line 174
    iput-object p1, p0, Landroid/preference/PreferenceManager;->mFragment:Landroid/preference/PreferenceFragment;

    #@2
    .line 173
    return-void
.end method

.method setOnPreferenceTreeClickListener(Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;

    #@0
    .prologue
    .line 795
    iput-object p1, p0, Landroid/preference/PreferenceManager;->mOnPreferenceTreeClickListener:Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;

    #@2
    .line 794
    return-void
.end method

.method setPreferences(Landroid/preference/PreferenceScreen;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;

    #@0
    .prologue
    .line 398
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    #@2
    if-eq p1, v0, :cond_0

    #@4
    .line 399
    iput-object p1, p0, Landroid/preference/PreferenceManager;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    #@6
    .line 400
    const/4 v0, 0x1

    #@7
    return v0

    #@8
    .line 403
    :cond_0
    const/4 v0, 0x0

    #@9
    return v0
.end method

.method public setSharedPreferencesMode(I)V
    .locals 1
    .param p1, "sharedPreferencesMode"    # I

    #@0
    .prologue
    .line 341
    iput p1, p0, Landroid/preference/PreferenceManager;->mSharedPreferencesMode:I

    #@2
    .line 342
    const/4 v0, 0x0

    #@3
    iput-object v0, p0, Landroid/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    #@5
    .line 340
    return-void
.end method

.method public setSharedPreferencesName(Ljava/lang/String;)V
    .locals 1
    .param p1, "sharedPreferencesName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 318
    iput-object p1, p0, Landroid/preference/PreferenceManager;->mSharedPreferencesName:Ljava/lang/String;

    #@2
    .line 319
    const/4 v0, 0x0

    #@3
    iput-object v0, p0, Landroid/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    #@5
    .line 317
    return-void
.end method

.method shouldCommit()Z
    .locals 1

    #@0
    .prologue
    .line 530
    iget-boolean v0, p0, Landroid/preference/PreferenceManager;->mNoCommit:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x1

    #@7
    goto :goto_0
.end method

.method unregisterOnActivityDestroyListener(Landroid/preference/PreferenceManager$OnActivityDestroyListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/preference/PreferenceManager$OnActivityDestroyListener;

    #@0
    .prologue
    .line 694
    monitor-enter p0

    #@1
    .line 695
    :try_start_0
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 696
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    #@7
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    :cond_0
    monitor-exit p0

    #@b
    .line 693
    return-void

    #@c
    .line 694
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method unregisterOnActivityResultListener(Landroid/preference/PreferenceManager$OnActivityResultListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/preference/PreferenceManager$OnActivityResultListener;

    #@0
    .prologue
    .line 595
    monitor-enter p0

    #@1
    .line 596
    :try_start_0
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mActivityResultListeners:Ljava/util/List;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 597
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mActivityResultListeners:Ljava/util/List;

    #@7
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    :cond_0
    monitor-exit p0

    #@b
    .line 594
    return-void

    #@c
    .line 595
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method public unregisterOnActivityStopListener(Landroid/preference/PreferenceManager$OnActivityStopListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/preference/PreferenceManager$OnActivityStopListener;

    #@0
    .prologue
    .line 646
    monitor-enter p0

    #@1
    .line 647
    :try_start_0
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mActivityStopListeners:Ljava/util/List;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 648
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mActivityStopListeners:Ljava/util/List;

    #@7
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    :cond_0
    monitor-exit p0

    #@b
    .line 645
    return-void

    #@c
    .line 646
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method
