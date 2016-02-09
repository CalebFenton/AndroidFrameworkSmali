.class public Lcom/android/server/ServiceWatcher;
.super Ljava/lang/Object;
.source "ServiceWatcher.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ServiceWatcher$1;
    }
.end annotation


# static fields
.field private static final D:Z = false

.field public static final EXTRA_SERVICE_IS_MULTIUSER:Ljava/lang/String; = "serviceIsMultiuser"

.field public static final EXTRA_SERVICE_VERSION:Ljava/lang/String; = "serviceVersion"


# instance fields
.field private final mAction:Ljava/lang/String;

.field private mBinder:Landroid/os/IBinder;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mIsMultiuser:Z

.field private mLock:Ljava/lang/Object;

.field private final mNewServiceWork:Ljava/lang/Runnable;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mPackageName:Ljava/lang/String;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mServicePackageName:Ljava/lang/String;

.field private final mSignatureSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/pm/Signature;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mTag:Ljava/lang/String;

.field private mVersion:I


# direct methods
.method static synthetic -get0(Lcom/android/server/ServiceWatcher;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/ServiceWatcher;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mPackageName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/ServiceWatcher;Ljava/lang/String;)Z
    .locals 1
    .param p1, "justCheckThisPackage"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ServiceWatcher;->bindBestPackageLocked(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/ServiceWatcher;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/ServiceWatcher;->unbindLocked()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Runnable;Landroid/os/Handler;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "logTag"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "overlaySwitchResId"    # I
    .param p5, "defaultServicePackageNameResId"    # I
    .param p6, "initialPackageNamesResId"    # I
    .param p7, "newServiceWork"    # Ljava/lang/Runnable;
    .param p8, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 67
    new-instance v5, Ljava/lang/Object;

    #@6
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    #@9
    iput-object v5, p0, Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;

    #@b
    .line 72
    const/high16 v5, -0x80000000

    #@d
    iput v5, p0, Lcom/android/server/ServiceWatcher;->mVersion:I

    #@f
    .line 77
    const/4 v5, 0x0

    #@10
    iput-boolean v5, p0, Lcom/android/server/ServiceWatcher;->mIsMultiuser:Z

    #@12
    .line 271
    new-instance v5, Lcom/android/server/ServiceWatcher$1;

    #@14
    invoke-direct {v5, p0}, Lcom/android/server/ServiceWatcher$1;-><init>(Lcom/android/server/ServiceWatcher;)V

    #@17
    iput-object v5, p0, Lcom/android/server/ServiceWatcher;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    #@19
    .line 101
    iput-object p1, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    #@1b
    .line 102
    iput-object p2, p0, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    #@1d
    .line 103
    iput-object p3, p0, Lcom/android/server/ServiceWatcher;->mAction:Ljava/lang/String;

    #@1f
    .line 104
    iget-object v5, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    #@21
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@24
    move-result-object v5

    #@25
    iput-object v5, p0, Lcom/android/server/ServiceWatcher;->mPm:Landroid/content/pm/PackageManager;

    #@27
    .line 105
    iput-object p7, p0, Lcom/android/server/ServiceWatcher;->mNewServiceWork:Ljava/lang/Runnable;

    #@29
    .line 106
    iput-object p8, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    #@2b
    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@2e
    move-result-object v3

    #@2f
    .line 110
    .local v3, "resources":Landroid/content/res/Resources;
    invoke-virtual {v3, p4}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@32
    move-result v0

    #@33
    .line 111
    .local v0, "enableOverlay":Z
    new-instance v1, Ljava/util/ArrayList;

    #@35
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@38
    .line 112
    .local v1, "initialPackageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    #@3a
    .line 114
    invoke-virtual {v3, p6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@3d
    move-result-object v2

    #@3e
    .line 115
    .local v2, "pkgs":[Ljava/lang/String;
    if-eqz v2, :cond_0

    #@40
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@43
    move-result-object v5

    #@44
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@47
    .line 116
    :cond_0
    iput-object v6, p0, Lcom/android/server/ServiceWatcher;->mServicePackageName:Ljava/lang/String;

    #@49
    .line 126
    .end local v2    # "pkgs":[Ljava/lang/String;
    :goto_0
    invoke-static {p1, v1}, Lcom/android/server/ServiceWatcher;->getSignatureSets(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;

    #@4c
    move-result-object v5

    #@4d
    iput-object v5, p0, Lcom/android/server/ServiceWatcher;->mSignatureSets:Ljava/util/List;

    #@4f
    .line 100
    return-void

    #@50
    .line 121
    :cond_1
    invoke-virtual {v3, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@53
    move-result-object v4

    #@54
    .line 122
    .local v4, "servicePackageName":Ljava/lang/String;
    if-eqz v4, :cond_2

    #@56
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@59
    .line 123
    :cond_2
    iput-object v4, p0, Lcom/android/server/ServiceWatcher;->mServicePackageName:Ljava/lang/String;

    #@5b
    goto :goto_0
.end method

.method private bindBestPackageLocked(Ljava/lang/String;)Z
    .locals 16
    .param p1, "justCheckThisPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 163
    new-instance v5, Landroid/content/Intent;

    #@2
    move-object/from16 v0, p0

    #@4
    iget-object v13, v0, Lcom/android/server/ServiceWatcher;->mAction:Ljava/lang/String;

    #@6
    invoke-direct {v5, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@9
    .line 164
    .local v5, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    #@b
    .line 165
    move-object/from16 v0, p1

    #@d
    invoke-virtual {v5, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@10
    .line 167
    :cond_0
    move-object/from16 v0, p0

    #@12
    iget-object v13, v0, Lcom/android/server/ServiceWatcher;->mPm:Landroid/content/pm/PackageManager;

    #@14
    .line 168
    const/16 v14, 0x80

    #@16
    const/4 v15, 0x0

    #@17
    .line 167
    invoke-virtual {v13, v5, v14, v15}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    #@1a
    move-result-object v11

    #@1b
    .line 169
    .local v11, "rInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/high16 v3, -0x80000000

    #@1d
    .line 170
    .local v3, "bestVersion":I
    const/4 v2, 0x0

    #@1e
    .line 171
    .local v2, "bestPackage":Ljava/lang/String;
    const/4 v1, 0x0

    #@1f
    .line 172
    .local v1, "bestIsMultiuser":Z
    if-eqz v11, :cond_4

    #@21
    .line 173
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@24
    move-result-object v10

    #@25
    .end local v1    # "bestIsMultiuser":Z
    .end local v2    # "bestPackage":Ljava/lang/String;
    .local v10, "rInfo$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@28
    move-result v13

    #@29
    if-eqz v13, :cond_4

    #@2b
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2e
    move-result-object v9

    #@2f
    check-cast v9, Landroid/content/pm/ResolveInfo;

    #@31
    .line 174
    .local v9, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v13, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@33
    iget-object v8, v13, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@35
    .line 179
    .local v8, "packageName":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    #@37
    iget-object v13, v0, Lcom/android/server/ServiceWatcher;->mPm:Landroid/content/pm/PackageManager;

    #@39
    const/16 v14, 0x40

    #@3b
    invoke-virtual {v13, v8, v14}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@3e
    move-result-object v7

    #@3f
    .line 180
    .local v7, "pInfo":Landroid/content/pm/PackageInfo;
    iget-object v13, v7, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    #@41
    move-object/from16 v0, p0

    #@43
    invoke-direct {v0, v13}, Lcom/android/server/ServiceWatcher;->isSignatureMatch([Landroid/content/pm/Signature;)Z

    #@46
    move-result v13

    #@47
    if-nez v13, :cond_2

    #@49
    .line 181
    move-object/from16 v0, p0

    #@4b
    iget-object v13, v0, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    #@4d
    new-instance v14, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v14

    #@56
    const-string/jumbo v15, " resolves service "

    #@59
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v14

    #@5d
    move-object/from16 v0, p0

    #@5f
    iget-object v15, v0, Lcom/android/server/ServiceWatcher;->mAction:Ljava/lang/String;

    #@61
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v14

    #@65
    .line 182
    const-string/jumbo v15, ", but has wrong signature, ignoring"

    #@68
    .line 181
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v14

    #@6c
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6f
    move-result-object v14

    #@70
    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@73
    goto :goto_0

    #@74
    .line 185
    .end local v7    # "pInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v4

    #@75
    .line 186
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object/from16 v0, p0

    #@77
    iget-object v13, v0, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    #@79
    invoke-static {v13, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    #@7c
    goto :goto_0

    #@7d
    .line 191
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v7    # "pInfo":Landroid/content/pm/PackageInfo;
    :cond_2
    const/high16 v12, -0x80000000

    #@7f
    .line 192
    .local v12, "version":I
    const/4 v6, 0x0

    #@80
    .line 193
    .local v6, "isMultiuser":Z
    iget-object v13, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@82
    iget-object v13, v13, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    #@84
    if-eqz v13, :cond_3

    #@86
    .line 194
    iget-object v13, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@88
    iget-object v13, v13, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    #@8a
    .line 195
    const-string/jumbo v14, "serviceVersion"

    #@8d
    const/high16 v15, -0x80000000

    #@8f
    .line 194
    invoke-virtual {v13, v14, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@92
    move-result v12

    #@93
    .line 196
    iget-object v13, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@95
    iget-object v13, v13, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    #@97
    const-string/jumbo v14, "serviceIsMultiuser"

    #@9a
    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@9d
    move-result v6

    #@9e
    .line 199
    .end local v6    # "isMultiuser":Z
    :cond_3
    move-object/from16 v0, p0

    #@a0
    iget v13, v0, Lcom/android/server/ServiceWatcher;->mVersion:I

    #@a2
    if-le v12, v13, :cond_1

    #@a4
    .line 200
    move v3, v12

    #@a5
    .line 201
    move-object v2, v8

    #@a6
    .line 202
    .local v2, "bestPackage":Ljava/lang/String;
    move v1, v6

    #@a7
    .local v1, "bestIsMultiuser":Z
    goto/16 :goto_0

    #@a9
    .line 216
    .end local v1    # "bestIsMultiuser":Z
    .end local v2    # "bestPackage":Ljava/lang/String;
    .end local v7    # "pInfo":Landroid/content/pm/PackageInfo;
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v10    # "rInfo$iterator":Ljava/util/Iterator;
    .end local v12    # "version":I
    :cond_4
    if-eqz v2, :cond_5

    #@ab
    .line 217
    move-object/from16 v0, p0

    #@ad
    invoke-direct {v0, v2, v3, v1}, Lcom/android/server/ServiceWatcher;->bindToPackageLocked(Ljava/lang/String;IZ)V

    #@b0
    .line 218
    const/4 v13, 0x1

    #@b1
    return v13

    #@b2
    .line 220
    :cond_5
    const/4 v13, 0x0

    #@b3
    return v13
.end method

.method private bindToPackageLocked(Ljava/lang/String;IZ)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "version"    # I
    .param p3, "isMultiuser"    # Z

    #@0
    .prologue
    .line 236
    invoke-direct {p0}, Lcom/android/server/ServiceWatcher;->unbindLocked()V

    #@3
    .line 237
    new-instance v0, Landroid/content/Intent;

    #@5
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mAction:Ljava/lang/String;

    #@7
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@a
    .line 238
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@d
    .line 239
    iput-object p1, p0, Lcom/android/server/ServiceWatcher;->mPackageName:Ljava/lang/String;

    #@f
    .line 240
    iput p2, p0, Lcom/android/server/ServiceWatcher;->mVersion:I

    #@11
    .line 241
    iput-boolean p3, p0, Lcom/android/server/ServiceWatcher;->mIsMultiuser:Z

    #@13
    .line 244
    iget-object v2, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    #@15
    .line 245
    iget-boolean v1, p0, Lcom/android/server/ServiceWatcher;->mIsMultiuser:Z

    #@17
    if-eqz v1, :cond_0

    #@19
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    #@1b
    .line 244
    :goto_0
    const v3, 0x40000005    # 2.0000012f

    #@1e
    invoke-virtual {v2, v0, p0, v3, v1}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    #@21
    .line 235
    return-void

    #@22
    .line 245
    :cond_0
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@24
    goto :goto_0
.end method

.method public static getSignatureSets(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/pm/Signature;",
            ">;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 81
    .local p1, "initialPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@3
    move-result-object v3

    #@4
    .line 82
    .local v3, "pm":Landroid/content/pm/PackageManager;
    new-instance v5, Ljava/util/ArrayList;

    #@6
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@9
    .line 83
    .local v5, "sigSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashSet<Landroid/content/pm/Signature;>;>;"
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@d
    move-result v7

    #@e
    .local v7, "size":I
    :goto_0
    if-ge v1, v7, :cond_0

    #@10
    .line 84
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v2

    #@14
    check-cast v2, Ljava/lang/String;

    #@16
    .line 86
    .local v2, "pkg":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/util/HashSet;

    #@18
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    #@1b
    .line 87
    .local v4, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    const/16 v8, 0x40

    #@1d
    invoke-virtual {v3, v2, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@20
    move-result-object v8

    #@21
    iget-object v6, v8, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    #@23
    .line 88
    .local v6, "sigs":[Landroid/content/pm/Signature;
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@26
    move-result-object v8

    #@27
    invoke-virtual {v4, v8}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    #@2a
    .line 89
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@2d
    .line 83
    .end local v4    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    .end local v6    # "sigs":[Landroid/content/pm/Signature;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 90
    :catch_0
    move-exception v0

    #@31
    .line 91
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v8, "ServiceWatcher"

    #@34
    new-instance v9, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v9

    #@3d
    const-string/jumbo v10, " not found"

    #@40
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v9

    #@44
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v9

    #@48
    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4b
    goto :goto_1

    #@4c
    .line 94
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_0
    return-object v5
.end method

.method private isSignatureMatch([Landroid/content/pm/Signature;)Z
    .locals 1
    .param p1, "signatures"    # [Landroid/content/pm/Signature;

    #@0
    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mSignatureSets:Ljava/util/List;

    #@2
    invoke-static {p1, v0}, Lcom/android/server/ServiceWatcher;->isSignatureMatch([Landroid/content/pm/Signature;Ljava/util/List;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static isSignatureMatch([Landroid/content/pm/Signature;Ljava/util/List;)Z
    .locals 7
    .param p0, "signatures"    # [Landroid/content/pm/Signature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/pm/Signature;",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/pm/Signature;",
            ">;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "sigSets":Ljava/util/List;, "Ljava/util/List<Ljava/util/HashSet<Landroid/content/pm/Signature;>;>;"
    const/4 v5, 0x0

    #@1
    .line 250
    if-nez p0, :cond_0

    #@3
    return v5

    #@4
    .line 253
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    #@6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@9
    .line 254
    .local v0, "inputSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    array-length v6, p0

    #@a
    move v4, v5

    #@b
    :goto_0
    if-ge v4, v6, :cond_1

    #@d
    aget-object v3, p0, v4

    #@f
    .line 255
    .local v3, "s":Landroid/content/pm/Signature;
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@12
    .line 254
    add-int/lit8 v4, v4, 0x1

    #@14
    goto :goto_0

    #@15
    .line 259
    .end local v3    # "s":Landroid/content/pm/Signature;
    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@18
    move-result-object v2

    #@19
    .local v2, "referenceSet$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@1c
    move-result v4

    #@1d
    if-eqz v4, :cond_3

    #@1f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22
    move-result-object v1

    #@23
    check-cast v1, Ljava/util/HashSet;

    #@25
    .line 260
    .local v1, "referenceSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v4

    #@29
    if-eqz v4, :cond_2

    #@2b
    .line 261
    const/4 v4, 0x1

    #@2c
    return v4

    #@2d
    .line 264
    .end local v1    # "referenceSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    :cond_3
    return v5
.end method

.method private unbindLocked()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 225
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mPackageName:Ljava/lang/String;

    #@3
    .line 226
    .local v0, "pkg":Ljava/lang/String;
    iput-object v1, p0, Lcom/android/server/ServiceWatcher;->mPackageName:Ljava/lang/String;

    #@5
    .line 227
    const/high16 v1, -0x80000000

    #@7
    iput v1, p0, Lcom/android/server/ServiceWatcher;->mVersion:I

    #@9
    .line 228
    const/4 v1, 0x0

    #@a
    iput-boolean v1, p0, Lcom/android/server/ServiceWatcher;->mIsMultiuser:Z

    #@c
    .line 229
    if-eqz v0, :cond_0

    #@e
    .line 231
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    #@10
    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@13
    .line 223
    :cond_0
    return-void
.end method


# virtual methods
.method public getBestPackageName()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 357
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mPackageName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-object v1

    #@7
    .line 356
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public getBestVersion()I
    .locals 2

    #@0
    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 363
    :try_start_0
    iget v1, p0, Lcom/android/server/ServiceWatcher;->mVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 362
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 2

    #@0
    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 369
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mBinder:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-object v1

    #@7
    .line 368
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 329
    iget-object v2, p0, Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 330
    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 331
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mPackageName:Ljava/lang/String;

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_1

    #@f
    .line 333
    iput-object p2, p0, Lcom/android/server/ServiceWatcher;->mBinder:Landroid/os/IBinder;

    #@11
    .line 334
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    #@13
    if-eqz v1, :cond_0

    #@15
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mNewServiceWork:Ljava/lang/Runnable;

    #@17
    if-eqz v1, :cond_0

    #@19
    .line 335
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    #@1b
    iget-object v3, p0, Lcom/android/server/ServiceWatcher;->mNewServiceWork:Ljava/lang/Runnable;

    #@1d
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    :cond_0
    :goto_0
    monitor-exit v2

    #@21
    .line 328
    return-void

    #@22
    .line 338
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    #@24
    new-instance v3, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v4, "unexpected onServiceConnected: "

    #@2c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v3

    #@34
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v3

    #@38
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3b
    goto :goto_0

    #@3c
    .line 329
    .end local v0    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception v1

    #@3d
    monitor-exit v2

    #@3e
    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 345
    iget-object v2, p0, Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 346
    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 349
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mPackageName:Ljava/lang/String;

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 350
    const/4 v1, 0x0

    #@10
    iput-object v1, p0, Lcom/android/server/ServiceWatcher;->mBinder:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :cond_0
    monitor-exit v2

    #@13
    .line 344
    return-void

    #@14
    .line 345
    .end local v0    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception v1

    #@15
    monitor-exit v2

    #@16
    throw v1
.end method

.method public start()Z
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 130
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;

    #@4
    monitor-enter v1

    #@5
    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mServicePackageName:Ljava/lang/String;

    #@7
    invoke-direct {p0, v0}, Lcom/android/server/ServiceWatcher;->bindBestPackageLocked(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_0

    #@d
    const/4 v0, 0x0

    #@e
    monitor-exit v1

    #@f
    return v0

    #@10
    :cond_0
    monitor-exit v1

    #@11
    .line 135
    new-instance v3, Landroid/content/IntentFilter;

    #@13
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    #@16
    .line 136
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.USER_SWITCHED"

    #@19
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@1c
    .line 137
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    #@1e
    new-instance v1, Lcom/android/server/ServiceWatcher$2;

    #@20
    invoke-direct {v1, p0}, Lcom/android/server/ServiceWatcher$2;-><init>(Lcom/android/server/ServiceWatcher;)V

    #@23
    .line 145
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@25
    iget-object v5, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    #@27
    .line 137
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@2a
    .line 148
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mServicePackageName:Ljava/lang/String;

    #@2c
    if-nez v0, :cond_1

    #@2e
    .line 149
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    #@30
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    #@32
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@34
    invoke-virtual {v0, v1, v4, v2, v6}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    #@37
    .line 152
    :cond_1
    return v6

    #@38
    .line 130
    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    :catchall_0
    move-exception v0

    #@39
    monitor-exit v1

    #@3a
    throw v0
.end method

.method public switchUser()V
    .locals 2

    #@0
    .prologue
    .line 374
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 375
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/ServiceWatcher;->mIsMultiuser:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 376
    invoke-direct {p0}, Lcom/android/server/ServiceWatcher;->unbindLocked()V

    #@a
    .line 377
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mServicePackageName:Ljava/lang/String;

    #@c
    invoke-direct {p0, v0}, Lcom/android/server/ServiceWatcher;->bindBestPackageLocked(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    :cond_0
    monitor-exit v1

    #@10
    .line 373
    return-void

    #@11
    .line 374
    :catchall_0
    move-exception v0

    #@12
    monitor-exit v1

    #@13
    throw v0
.end method
