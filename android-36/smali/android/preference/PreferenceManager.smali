.class public Landroid/preference/PreferenceManager;
.super Ljava/lang/Object;
.source "PreferenceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/PreferenceManager$OnActivityResultListener;,
        Landroid/preference/PreferenceManager$OnActivityStopListener;,
        Landroid/preference/PreferenceManager$OnActivityDestroyListener;,
        Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist KEY_HAS_SET_DEFAULT_VALUES:Ljava/lang/String; = "_has_set_default_values"

.field public static final whitelist METADATA_KEY_PREFERENCES:Ljava/lang/String; = "android.preference"

.field private static final greylist-max-o STORAGE_CREDENTIAL_PROTECTED:I = 0x2

.field private static final greylist-max-o STORAGE_DEFAULT:I = 0x0

.field private static final greylist-max-o STORAGE_DEVICE_PROTECTED:I = 0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "PreferenceManager"


# instance fields
.field private greylist-max-o mActivity:Landroid/app/Activity;

.field private greylist mActivityDestroyListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/preference/PreferenceManager$OnActivityDestroyListener;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mActivityResultListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/preference/PreferenceManager$OnActivityResultListener;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mActivityStopListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/preference/PreferenceManager$OnActivityStopListener;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mEditor:Landroid/content/SharedPreferences$Editor;

.field private greylist-max-p mFragment:Landroid/preference/PreferenceFragment;

.field private greylist-max-o mNextId:J

.field private greylist-max-o mNextRequestCode:I

.field private greylist-max-o mNoCommit:Z

.field private greylist mOnPreferenceTreeClickListener:Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;

.field private greylist-max-o mPreferenceDataStore:Landroid/preference/PreferenceDataStore;

.field private greylist-max-o mPreferenceScreen:Landroid/preference/PreferenceScreen;

.field private greylist-max-o mPreferencesScreens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/DialogInterface;",
            ">;"
        }
    .end annotation
.end field

.field private greylist mSharedPreferences:Landroid/content/SharedPreferences;

.field private greylist-max-o mSharedPreferencesMode:I

.field private greylist-max-o mSharedPreferencesName:Ljava/lang/String;

.field private greylist-max-o mStorage:I


# direct methods
.method public constructor greylist <init>(Landroid/app/Activity;I)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "firstRequestCode"    # I

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/preference/PreferenceManager;->mNextId:J

    .line 142
    const/4 v0, 0x0

    iput v0, p0, Landroid/preference/PreferenceManager;->mStorage:I

    .line 184
    iput-object p1, p0, Landroid/preference/PreferenceManager;->mActivity:Landroid/app/Activity;

    .line 185
    iput p2, p0, Landroid/preference/PreferenceManager;->mNextRequestCode:I

    .line 187
    invoke-direct {p0, p1}, Landroid/preference/PreferenceManager;->init(Landroid/content/Context;)V

    .line 188
    return-void
.end method

.method constructor greylist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/preference/PreferenceManager;->mNextId:J

    .line 142
    const/4 v0, 0x0

    iput v0, p0, Landroid/preference/PreferenceManager;->mStorage:I

    .line 200
    invoke-direct {p0, p1}, Landroid/preference/PreferenceManager;->init(Landroid/content/Context;)V

    .line 201
    return-void
.end method

.method private greylist-max-o dismissAllScreens()V
    .registers 4

    .line 978
    monitor-enter p0

    .line 980
    :try_start_1
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mPreferencesScreens:Ljava/util/List;

    if-nez v0, :cond_7

    .line 981
    monitor-exit p0

    return-void

    .line 984
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/preference/PreferenceManager;->mPreferencesScreens:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 985
    .local v0, "screensToDismiss":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/DialogInterface;>;"
    iget-object v1, p0, Landroid/preference/PreferenceManager;->mPreferencesScreens:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 986
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_29

    .line 988
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_1a
    if-ltz v1, :cond_28

    .line 989
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/DialogInterface;

    invoke-interface {v2}, Landroid/content/DialogInterface;->dismiss()V

    .line 988
    add-int/lit8 v1, v1, -0x1

    goto :goto_1a

    .line 991
    .end local v1    # "i":I
    :cond_28
    return-void

    .line 986
    .end local v0    # "screensToDismiss":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/DialogInterface;>;"
    :catchall_29
    move-exception v0

    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v0
.end method

.method public static whitelist getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 545
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 546
    invoke-static {}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferencesMode()I

    move-result v1

    .line 545
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o getDefaultSharedPreferencesMode()I
    .registers 1

    .line 559
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o init(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 204
    iput-object p1, p0, Landroid/preference/PreferenceManager;->mContext:Landroid/content/Context;

    .line 206
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method private greylist-max-o queryIntentActivities(Landroid/content/Intent;)Ljava/util/List;
    .registers 4
    .param p1, "queryIntent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 261
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist setDefaultValues(Landroid/content/Context;IZ)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "readAgain"    # Z

    .line 629
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 630
    invoke-static {}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferencesMode()I

    move-result v1

    .line 629
    invoke-static {p0, v0, v1, p1, p2}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V

    .line 631
    return-void
.end method

.method public static whitelist setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sharedPreferencesName"    # Ljava/lang/String;
    .param p2, "sharedPreferencesMode"    # I
    .param p3, "resId"    # I
    .param p4, "readAgain"    # Z

    .line 663
    const-string v0, "_has_set_default_values"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 666
    .local v2, "defaultValueSp":Landroid/content/SharedPreferences;
    if-nez p4, :cond_f

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_30

    .line 667
    :cond_f
    new-instance v1, Landroid/preference/PreferenceManager;

    invoke-direct {v1, p0}, Landroid/preference/PreferenceManager;-><init>(Landroid/content/Context;)V

    .line 668
    .local v1, "pm":Landroid/preference/PreferenceManager;
    invoke-virtual {v1, p1}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 669
    invoke-virtual {v1, p2}, Landroid/preference/PreferenceManager;->setSharedPreferencesMode(I)V

    .line 670
    const/4 v3, 0x0

    invoke-virtual {v1, p0, p3, v3}, Landroid/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    .line 672
    nop

    .line 673
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 675
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    :try_start_28
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_2b
    .catch Ljava/lang/AbstractMethodError; {:try_start_28 .. :try_end_2b} :catch_2c

    .line 681
    goto :goto_30

    .line 676
    :catch_2c
    move-exception v3

    .line 680
    .local v3, "unused":Ljava/lang/AbstractMethodError;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 683
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "pm":Landroid/preference/PreferenceManager;
    .end local v3    # "unused":Ljava/lang/AbstractMethodError;
    :cond_30
    :goto_30
    return-void
.end method

.method private greylist setNoCommit(Z)V
    .registers 4
    .param p1, "noCommit"    # Z

    .line 727
    if-nez p1, :cond_12

    iget-object v0, p0, Landroid/preference/PreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_12

    .line 729
    :try_start_6
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_b
    .catch Ljava/lang/AbstractMethodError; {:try_start_6 .. :try_end_b} :catch_c

    .line 735
    goto :goto_12

    .line 730
    :catch_c
    move-exception v0

    .line 734
    .local v0, "unused":Ljava/lang/AbstractMethodError;
    iget-object v1, p0, Landroid/preference/PreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 737
    .end local v0    # "unused":Ljava/lang/AbstractMethodError;
    :cond_12
    :goto_12
    iput-boolean p1, p0, Landroid/preference/PreferenceManager;->mNoCommit:Z

    .line 738
    return-void
.end method


# virtual methods
.method greylist-max-o addPreferencesScreen(Landroid/content/DialogInterface;)V
    .registers 3
    .param p1, "screen"    # Landroid/content/DialogInterface;

    .line 944
    monitor-enter p0

    .line 946
    :try_start_1
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mPreferencesScreens:Ljava/util/List;

    if-nez v0, :cond_c

    .line 947
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/preference/PreferenceManager;->mPreferencesScreens:Ljava/util/List;

    .line 950
    :cond_c
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mPreferencesScreens:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 951
    monitor-exit p0

    .line 952
    return-void

    .line 951
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public whitelist createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 353
    new-instance v0, Landroid/preference/PreferenceScreen;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 354
    .local v0, "preferenceScreen":Landroid/preference/PreferenceScreen;
    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V

    .line 355
    return-object v0
.end method

.method greylist dispatchActivityDestroy()V
    .registers 5

    .line 910
    const/4 v0, 0x0

    .line 912
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceManager$OnActivityDestroyListener;>;"
    monitor-enter p0

    .line 913
    :try_start_2
    iget-object v1, p0, Landroid/preference/PreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    if-eqz v1, :cond_e

    .line 914
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/preference/PreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    .line 916
    :cond_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_28

    .line 918
    if-eqz v0, :cond_24

    .line 919
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 920
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_16
    if-ge v2, v1, :cond_24

    .line 921
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceManager$OnActivityDestroyListener;

    invoke-interface {v3}, Landroid/preference/PreferenceManager$OnActivityDestroyListener;->onActivityDestroy()V

    .line 920
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 926
    .end local v1    # "N":I
    .end local v2    # "i":I
    :cond_24
    invoke-direct {p0}, Landroid/preference/PreferenceManager;->dismissAllScreens()V

    .line 927
    return-void

    .line 916
    :catchall_28
    move-exception v1

    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method greylist dispatchActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 806
    monitor-enter p0

    .line 807
    :try_start_1
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mActivityResultListeners:Ljava/util/List;

    if-nez v0, :cond_7

    monitor-exit p0

    return-void

    .line 808
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/preference/PreferenceManager;->mActivityResultListeners:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 809
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceManager$OnActivityResultListener;>;"
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_27

    .line 811
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 812
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    if-ge v2, v1, :cond_26

    .line 813
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceManager$OnActivityResultListener;

    invoke-interface {v3, p1, p2, p3}, Landroid/preference/PreferenceManager$OnActivityResultListener;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 814
    goto :goto_26

    .line 812
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 817
    .end local v2    # "i":I
    :cond_26
    :goto_26
    return-void

    .line 809
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceManager$OnActivityResultListener;>;"
    .end local v1    # "N":I
    :catchall_27
    move-exception v0

    :try_start_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v0
.end method

.method greylist dispatchActivityStop()V
    .registers 5

    .line 861
    monitor-enter p0

    .line 862
    :try_start_1
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mActivityStopListeners:Ljava/util/List;

    if-nez v0, :cond_7

    monitor-exit p0

    return-void

    .line 863
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/preference/PreferenceManager;->mActivityStopListeners:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 864
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceManager$OnActivityStopListener;>;"
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_23

    .line 866
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 867
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    if-ge v2, v1, :cond_22

    .line 868
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceManager$OnActivityStopListener;

    invoke-interface {v3}, Landroid/preference/PreferenceManager$OnActivityStopListener;->onActivityStop()V

    .line 867
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 870
    .end local v2    # "i":I
    :cond_22
    return-void

    .line 864
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceManager$OnActivityStopListener;>;"
    .end local v1    # "N":I
    :catchall_23
    move-exception v0

    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v0
.end method

.method greylist-max-o dispatchNewIntent(Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 971
    invoke-direct {p0}, Landroid/preference/PreferenceManager;->dismissAllScreens()V

    .line 972
    return-void
.end method

.method public whitelist findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;
    .registers 3
    .param p1, "key"    # Ljava/lang/CharSequence;

    .line 598
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    if-nez v0, :cond_6

    .line 599
    const/4 v0, 0x0

    return-object v0

    .line 602
    :cond_6
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method greylist getActivity()Landroid/app/Activity;
    .registers 2

    .line 754
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method greylist-max-o getContext()Landroid/content/Context;
    .registers 2

    .line 764
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method greylist getEditor()Landroid/content/SharedPreferences$Editor;
    .registers 2

    .line 696
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mPreferenceDataStore:Landroid/preference/PreferenceDataStore;

    if-eqz v0, :cond_6

    .line 697
    const/4 v0, 0x0

    return-object v0

    .line 700
    :cond_6
    iget-boolean v0, p0, Landroid/preference/PreferenceManager;->mNoCommit:Z

    if-eqz v0, :cond_1b

    .line 701
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_18

    .line 702
    invoke-virtual {p0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/PreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 705
    :cond_18
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0

    .line 707
    :cond_1b
    invoke-virtual {p0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method greylist getFragment()Landroid/preference/PreferenceFragment;
    .registers 2

    .line 223
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mFragment:Landroid/preference/PreferenceFragment;

    return-object v0
.end method

.method greylist-max-o getNextId()J
    .registers 5

    .line 364
    monitor-enter p0

    .line 365
    :try_start_1
    iget-wide v0, p0, Landroid/preference/PreferenceManager;->mNextId:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroid/preference/PreferenceManager;->mNextId:J

    monitor-exit p0

    return-wide v0

    .line 366
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method

.method greylist getNextRequestCode()I
    .registers 3

    .line 938
    monitor-enter p0

    .line 939
    :try_start_1
    iget v0, p0, Landroid/preference/PreferenceManager;->mNextRequestCode:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/preference/PreferenceManager;->mNextRequestCode:I

    monitor-exit p0

    return v0

    .line 940
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method greylist-max-o getOnPreferenceTreeClickListener()Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;
    .registers 2

    .line 1005
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mOnPreferenceTreeClickListener:Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;

    return-object v0
.end method

.method public whitelist getPreferenceDataStore()Landroid/preference/PreferenceDataStore;
    .registers 2

    .line 249
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mPreferenceDataStore:Landroid/preference/PreferenceDataStore;

    return-object v0
.end method

.method greylist getPreferenceScreen()Landroid/preference/PreferenceScreen;
    .registers 2

    .line 570
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method public whitelist getSharedPreferences()Landroid/content/SharedPreferences;
    .registers 4

    .line 511
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mPreferenceDataStore:Landroid/preference/PreferenceDataStore;

    if-eqz v0, :cond_6

    .line 512
    const/4 v0, 0x0

    return-object v0

    .line 515
    :cond_6
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_2a

    .line 517
    iget v0, p0, Landroid/preference/PreferenceManager;->mStorage:I

    packed-switch v0, :pswitch_data_2e

    .line 525
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mContext:Landroid/content/Context;

    .local v0, "storageContext":Landroid/content/Context;
    goto :goto_20

    .line 522
    .end local v0    # "storageContext":Landroid/content/Context;
    :pswitch_12
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->createCredentialProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    .line 523
    .restart local v0    # "storageContext":Landroid/content/Context;
    goto :goto_20

    .line 519
    .end local v0    # "storageContext":Landroid/content/Context;
    :pswitch_19
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    .line 520
    .restart local v0    # "storageContext":Landroid/content/Context;
    nop

    .line 529
    :goto_20
    iget-object v1, p0, Landroid/preference/PreferenceManager;->mSharedPreferencesName:Ljava/lang/String;

    iget v2, p0, Landroid/preference/PreferenceManager;->mSharedPreferencesMode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 533
    .end local v0    # "storageContext":Landroid/content/Context;
    :cond_2a
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0

    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_19
        :pswitch_12
    .end packed-switch
.end method

.method public whitelist getSharedPreferencesMode()I
    .registers 2

    .line 403
    iget v0, p0, Landroid/preference/PreferenceManager;->mSharedPreferencesMode:I

    return v0
.end method

.method public whitelist getSharedPreferencesName()Ljava/lang/String;
    .registers 2

    .line 377
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mSharedPreferencesName:Ljava/lang/String;

    return-object v0
.end method

.method greylist inflateFromIntent(Landroid/content/Intent;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .registers 14
    .param p1, "queryIntent"    # Landroid/content/Intent;
    .param p2, "rootPreferences"    # Landroid/preference/PreferenceScreen;

    .line 282
    invoke-direct {p0, p1}, Landroid/preference/PreferenceManager;->queryIntentActivities(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    .line 283
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 285
    .local v1, "inflatedRes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_f
    if-ltz v2, :cond_a0

    .line 286
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 287
    .local v4, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 289
    .local v5, "metaData":Landroid/os/Bundle;
    if-eqz v5, :cond_9c

    const-string v6, "android.preference"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_26

    .line 290
    goto :goto_9c

    .line 295
    :cond_26
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 296
    invoke-virtual {v8, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 298
    .local v7, "uniqueResId":Ljava/lang/String;
    invoke-virtual {v1, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9c

    .line 299
    invoke-virtual {v1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 303
    :try_start_4e
    iget-object v8, p0, Landroid/preference/PreferenceManager;->mContext:Landroid/content/Context;

    iget-object v9, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v8
    :try_end_57
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4e .. :try_end_57} :catch_72

    .line 308
    .local v8, "context":Landroid/content/Context;
    nop

    .line 310
    new-instance v9, Landroid/preference/PreferenceInflater;

    invoke-direct {v9, v8, p0}, Landroid/preference/PreferenceInflater;-><init>(Landroid/content/Context;Landroid/preference/PreferenceManager;)V

    .line 311
    .local v9, "inflater":Landroid/preference/PreferenceInflater;
    nop

    .line 312
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 311
    invoke-virtual {v4, v10, v6}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    .line 313
    .local v6, "parser":Landroid/content/res/XmlResourceParser;
    nop

    .line 314
    invoke-virtual {v9, v6, p2, v3}, Landroid/preference/PreferenceInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/preference/GenericInflater$Parent;Z)Ljava/lang/Object;

    move-result-object v10

    move-object p2, v10

    check-cast p2, Landroid/preference/PreferenceScreen;

    .line 315
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_9c

    .line 304
    .end local v6    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v8    # "context":Landroid/content/Context;
    .end local v9    # "inflater":Landroid/preference/PreferenceInflater;
    :catch_72
    move-exception v6

    .line 305
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not create context for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 306
    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 305
    const-string v9, "PreferenceManager"

    invoke-static {v9, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    nop

    .line 285
    .end local v4    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v5    # "metaData":Landroid/os/Bundle;
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v7    # "uniqueResId":Ljava/lang/String;
    :cond_9c
    :goto_9c
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_f

    .line 319
    .end local v2    # "i":I
    :cond_a0
    invoke-virtual {p2, p0}, Landroid/preference/PreferenceScreen;->onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V

    .line 321
    return-object p2
.end method

.method public greylist inflateFromResource(Landroid/content/Context;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .param p3, "rootPreferences"    # Landroid/preference/PreferenceScreen;

    .line 340
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/preference/PreferenceManager;->setNoCommit(Z)V

    .line 342
    new-instance v1, Landroid/preference/PreferenceInflater;

    invoke-direct {v1, p1, p0}, Landroid/preference/PreferenceInflater;-><init>(Landroid/content/Context;Landroid/preference/PreferenceManager;)V

    .line 343
    .local v1, "inflater":Landroid/preference/PreferenceInflater;
    invoke-virtual {v1, p2, p3, v0}, Landroid/preference/PreferenceInflater;->inflate(ILandroid/preference/GenericInflater$Parent;Z)Ljava/lang/Object;

    move-result-object v0

    move-object p3, v0

    check-cast p3, Landroid/preference/PreferenceScreen;

    .line 344
    invoke-virtual {p3, p0}, Landroid/preference/PreferenceScreen;->onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V

    .line 347
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/preference/PreferenceManager;->setNoCommit(Z)V

    .line 349
    return-object p3
.end method

.method public whitelist isStorageCredentialProtected()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 500
    iget v0, p0, Landroid/preference/PreferenceManager;->mStorage:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public whitelist isStorageDefault()Z
    .registers 2

    .line 476
    iget v0, p0, Landroid/preference/PreferenceManager;->mStorage:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist isStorageDeviceProtected()Z
    .registers 3

    .line 487
    iget v0, p0, Landroid/preference/PreferenceManager;->mStorage:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method greylist registerOnActivityDestroyListener(Landroid/preference/PreferenceManager$OnActivityDestroyListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/preference/PreferenceManager$OnActivityDestroyListener;

    .line 879
    monitor-enter p0

    .line 880
    :try_start_1
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    if-nez v0, :cond_c

    .line 881
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/preference/PreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    .line 884
    :cond_c
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 885
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 887
    :cond_19
    monitor-exit p0

    .line 888
    return-void

    .line 887
    :catchall_1b
    move-exception v0

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method greylist registerOnActivityResultListener(Landroid/preference/PreferenceManager$OnActivityResultListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/preference/PreferenceManager$OnActivityResultListener;

    .line 774
    monitor-enter p0

    .line 775
    :try_start_1
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mActivityResultListeners:Ljava/util/List;

    if-nez v0, :cond_c

    .line 776
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/preference/PreferenceManager;->mActivityResultListeners:Ljava/util/List;

    .line 779
    :cond_c
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mActivityResultListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 780
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mActivityResultListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 782
    :cond_19
    monitor-exit p0

    .line 783
    return-void

    .line 782
    :catchall_1b
    move-exception v0

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public greylist registerOnActivityStopListener(Landroid/preference/PreferenceManager$OnActivityStopListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/preference/PreferenceManager$OnActivityStopListener;

    .line 827
    monitor-enter p0

    .line 828
    :try_start_1
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mActivityStopListeners:Ljava/util/List;

    if-nez v0, :cond_c

    .line 829
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/preference/PreferenceManager;->mActivityStopListeners:Ljava/util/List;

    .line 832
    :cond_c
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mActivityStopListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 833
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mActivityStopListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 835
    :cond_19
    monitor-exit p0

    .line 836
    return-void

    .line 835
    :catchall_1b
    move-exception v0

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method greylist-max-o removePreferencesScreen(Landroid/content/DialogInterface;)V
    .registers 3
    .param p1, "screen"    # Landroid/content/DialogInterface;

    .line 955
    monitor-enter p0

    .line 957
    :try_start_1
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mPreferencesScreens:Ljava/util/List;

    if-nez v0, :cond_7

    .line 958
    monitor-exit p0

    return-void

    .line 961
    :cond_7
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mPreferencesScreens:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 962
    monitor-exit p0

    .line 963
    return-void

    .line 962
    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw v0
.end method

.method greylist-max-p setFragment(Landroid/preference/PreferenceFragment;)V
    .registers 2
    .param p1, "fragment"    # Landroid/preference/PreferenceFragment;

    .line 214
    iput-object p1, p0, Landroid/preference/PreferenceManager;->mFragment:Landroid/preference/PreferenceFragment;

    .line 215
    return-void
.end method

.method greylist-max-o setOnPreferenceTreeClickListener(Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;

    .line 1000
    iput-object p1, p0, Landroid/preference/PreferenceManager;->mOnPreferenceTreeClickListener:Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;

    .line 1001
    return-void
.end method

.method public whitelist setPreferenceDataStore(Landroid/preference/PreferenceDataStore;)V
    .registers 2
    .param p1, "dataStore"    # Landroid/preference/PreferenceDataStore;

    .line 237
    iput-object p1, p0, Landroid/preference/PreferenceManager;->mPreferenceDataStore:Landroid/preference/PreferenceDataStore;

    .line 238
    return-void
.end method

.method greylist setPreferences(Landroid/preference/PreferenceScreen;)Z
    .registers 3
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;

    .line 581
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    if-eq p1, v0, :cond_8

    .line 582
    iput-object p1, p0, Landroid/preference/PreferenceManager;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    .line 583
    const/4 v0, 0x1

    return v0

    .line 586
    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setSharedPreferencesMode(I)V
    .registers 3
    .param p1, "sharedPreferencesMode"    # I

    .line 414
    iput p1, p0, Landroid/preference/PreferenceManager;->mSharedPreferencesMode:I

    .line 415
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 416
    return-void
.end method

.method public whitelist setSharedPreferencesName(Ljava/lang/String;)V
    .registers 3
    .param p1, "sharedPreferencesName"    # Ljava/lang/String;

    .line 391
    iput-object p1, p0, Landroid/preference/PreferenceManager;->mSharedPreferencesName:Ljava/lang/String;

    .line 392
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 393
    return-void
.end method

.method public whitelist setStorageCredentialProtected()V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 464
    const/4 v0, 0x2

    iput v0, p0, Landroid/preference/PreferenceManager;->mStorage:I

    .line 465
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 466
    return-void
.end method

.method public whitelist setStorageDefault()V
    .registers 2

    .line 423
    const/4 v0, 0x0

    iput v0, p0, Landroid/preference/PreferenceManager;->mStorage:I

    .line 424
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 425
    return-void
.end method

.method public whitelist setStorageDeviceProtected()V
    .registers 2

    .line 445
    const/4 v0, 0x1

    iput v0, p0, Landroid/preference/PreferenceManager;->mStorage:I

    .line 446
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 447
    return-void
.end method

.method greylist shouldCommit()Z
    .registers 2

    .line 722
    iget-boolean v0, p0, Landroid/preference/PreferenceManager;->mNoCommit:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method greylist unregisterOnActivityDestroyListener(Landroid/preference/PreferenceManager$OnActivityDestroyListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/preference/PreferenceManager$OnActivityDestroyListener;

    .line 897
    monitor-enter p0

    .line 898
    :try_start_1
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    if-eqz v0, :cond_a

    .line 899
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 901
    :cond_a
    monitor-exit p0

    .line 902
    return-void

    .line 901
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method greylist unregisterOnActivityResultListener(Landroid/preference/PreferenceManager$OnActivityResultListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/preference/PreferenceManager$OnActivityResultListener;

    .line 792
    monitor-enter p0

    .line 793
    :try_start_1
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mActivityResultListeners:Ljava/util/List;

    if-eqz v0, :cond_a

    .line 794
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mActivityResultListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 796
    :cond_a
    monitor-exit p0

    .line 797
    return-void

    .line 796
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public greylist unregisterOnActivityStopListener(Landroid/preference/PreferenceManager$OnActivityStopListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/preference/PreferenceManager$OnActivityStopListener;

    .line 846
    monitor-enter p0

    .line 847
    :try_start_1
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mActivityStopListeners:Ljava/util/List;

    if-eqz v0, :cond_a

    .line 848
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mActivityStopListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 850
    :cond_a
    monitor-exit p0

    .line 851
    return-void

    .line 850
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method
