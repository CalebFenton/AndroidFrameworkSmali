.class public Lcom/android/server/pm/PackageInstallerSession;
.super Landroid/content/pm/IPackageInstallerSession$Stub;
.source "PackageInstallerSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageInstallerSession$1;,
        Lcom/android/server/pm/PackageInstallerSession$2;,
        Lcom/android/server/pm/PackageInstallerSession$3;
    }
.end annotation


# static fields
.field private static final LOGD:Z = true

.field private static final MSG_COMMIT:I = 0x0

.field private static final REMOVE_SPLIT_MARKER_EXTENSION:Ljava/lang/String; = ".removed"

.field private static final TAG:Ljava/lang/String; = "PackageInstaller"

.field private static final sAddedFilter:Ljava/io/FileFilter;

.field private static final sRemovedFilter:Ljava/io/FileFilter;


# instance fields
.field final createdMillis:J

.field final installerPackageName:Ljava/lang/String;

.field final installerUid:I

.field private final mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mBridges:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/FileBridge;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

.field private mCertificates:[[Ljava/security/cert/Certificate;

.field private mClientProgress:F
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDestroyed:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mFinalMessage:Ljava/lang/String;

.field private mFinalStatus:I

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerCallback:Landroid/os/Handler$Callback;

.field private mInheritedFilesBase:Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mInternalProgress:F
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mIsInstallerDeviceOwner:Z

.field private final mLock:Ljava/lang/Object;

.field private mPackageName:Ljava/lang/String;

.field private mPermissionsAccepted:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mPm:Lcom/android/server/pm/PackageManagerService;

.field private mPrepared:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mProgress:F
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mRelinquished:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mRemoteObserver:Landroid/content/pm/IPackageInstallObserver2;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mReportedProgress:F
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mResolvedBaseFile:Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mResolvedInheritedFiles:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final mResolvedInstructionSets:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mResolvedStageDir:Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mResolvedStagedFiles:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mSealed:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mSignatures:[Landroid/content/pm/Signature;

.field private mVersionCode:I

.field final params:Landroid/content/pm/PackageInstaller$SessionParams;

.field final sessionId:I

.field final stageCid:Ljava/lang/String;

.field final stageDir:Ljava/io/File;

.field final userId:I


# direct methods
.method static synthetic -get0(Lcom/android/server/pm/PackageInstallerSession;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/pm/PackageInstallerSession;Landroid/content/pm/IPackageInstallObserver2;)Landroid/content/pm/IPackageInstallObserver2;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mRemoteObserver:Landroid/content/pm/IPackageInstallObserver2;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->commitLocked()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->destroyInternal()V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/pm/PackageInstallerSession;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "returnCode"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 180
    new-instance v0, Lcom/android/server/pm/PackageInstallerSession$1;

    #@2
    invoke-direct {v0}, Lcom/android/server/pm/PackageInstallerSession$1;-><init>()V

    #@5
    sput-object v0, Lcom/android/server/pm/PackageInstallerSession;->sAddedFilter:Ljava/io/FileFilter;

    #@7
    .line 190
    new-instance v0, Lcom/android/server/pm/PackageInstallerSession$2;

    #@9
    invoke-direct {v0}, Lcom/android/server/pm/PackageInstallerSession$2;-><init>()V

    #@c
    sput-object v0, Lcom/android/server/pm/PackageInstallerSession;->sRemovedFilter:Ljava/io/FileFilter;

    #@e
    .line 90
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageInstallerService$InternalCallback;Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Landroid/os/Looper;IILjava/lang/String;ILandroid/content/pm/PackageInstaller$SessionParams;JLjava/io/File;Ljava/lang/String;ZZ)V
    .locals 8
    .param p1, "callback"    # Lcom/android/server/pm/PackageInstallerService$InternalCallback;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p4, "looper"    # Landroid/os/Looper;
    .param p5, "sessionId"    # I
    .param p6, "userId"    # I
    .param p7, "installerPackageName"    # Ljava/lang/String;
    .param p8, "installerUid"    # I
    .param p9, "params"    # Landroid/content/pm/PackageInstaller$SessionParams;
    .param p10, "createdMillis"    # J
    .param p12, "stageDir"    # Ljava/io/File;
    .param p13, "stageCid"    # Ljava/lang/String;
    .param p14, "prepared"    # Z
    .param p15, "sealed"    # Z

    #@0
    .prologue
    .line 221
    invoke-direct {p0}, Landroid/content/pm/IPackageInstallerSession$Stub;-><init>()V

    #@3
    .line 117
    new-instance v6, Ljava/util/concurrent/atomic/AtomicInteger;

    #@5
    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    #@8
    iput-object v6, p0, Lcom/android/server/pm/PackageInstallerSession;->mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@a
    .line 119
    new-instance v6, Ljava/lang/Object;

    #@c
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    #@f
    iput-object v6, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    #@11
    .line 122
    const/4 v6, 0x0

    #@12
    iput v6, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    #@14
    .line 124
    const/4 v6, 0x0

    #@15
    iput v6, p0, Lcom/android/server/pm/PackageInstallerSession;->mInternalProgress:F

    #@17
    .line 127
    const/4 v6, 0x0

    #@18
    iput v6, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    #@1a
    .line 129
    const/high16 v6, -0x40800000    # -1.0f

    #@1c
    iput v6, p0, Lcom/android/server/pm/PackageInstallerSession;->mReportedProgress:F

    #@1e
    .line 132
    const/4 v6, 0x0

    #@1f
    iput-boolean v6, p0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    #@21
    .line 134
    const/4 v6, 0x0

    #@22
    iput-boolean v6, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    #@24
    .line 136
    const/4 v6, 0x0

    #@25
    iput-boolean v6, p0, Lcom/android/server/pm/PackageInstallerSession;->mPermissionsAccepted:Z

    #@27
    .line 138
    const/4 v6, 0x0

    #@28
    iput-boolean v6, p0, Lcom/android/server/pm/PackageInstallerSession;->mRelinquished:Z

    #@2a
    .line 140
    const/4 v6, 0x0

    #@2b
    iput-boolean v6, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    #@2d
    .line 146
    new-instance v6, Ljava/util/ArrayList;

    #@2f
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@32
    iput-object v6, p0, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    #@34
    .line 172
    new-instance v6, Ljava/util/ArrayList;

    #@36
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@39
    iput-object v6, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStagedFiles:Ljava/util/List;

    #@3b
    .line 174
    new-instance v6, Ljava/util/ArrayList;

    #@3d
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@40
    iput-object v6, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    #@42
    .line 176
    new-instance v6, Ljava/util/ArrayList;

    #@44
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@47
    iput-object v6, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInstructionSets:Ljava/util/List;

    #@49
    .line 199
    new-instance v6, Lcom/android/server/pm/PackageInstallerSession$3;

    #@4b
    invoke-direct {v6, p0}, Lcom/android/server/pm/PackageInstallerSession$3;-><init>(Lcom/android/server/pm/PackageInstallerSession;)V

    #@4e
    iput-object v6, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandlerCallback:Landroid/os/Handler$Callback;

    #@50
    .line 225
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    #@52
    .line 226
    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    #@54
    .line 227
    iput-object p3, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    #@56
    .line 228
    new-instance v6, Landroid/os/Handler;

    #@58
    iget-object v7, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandlerCallback:Landroid/os/Handler$Callback;

    #@5a
    invoke-direct {v6, p4, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    #@5d
    iput-object v6, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    #@5f
    .line 230
    iput p5, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    #@61
    .line 231
    iput p6, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    #@63
    .line 232
    iput-object p7, p0, Lcom/android/server/pm/PackageInstallerSession;->installerPackageName:Ljava/lang/String;

    #@65
    .line 233
    move/from16 v0, p8

    #@67
    iput v0, p0, Lcom/android/server/pm/PackageInstallerSession;->installerUid:I

    #@69
    .line 234
    move-object/from16 v0, p9

    #@6b
    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    #@6d
    .line 235
    move-wide/from16 v0, p10

    #@6f
    iput-wide v0, p0, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    #@71
    .line 236
    move-object/from16 v0, p12

    #@73
    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    #@75
    .line 237
    move-object/from16 v0, p13

    #@77
    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    #@79
    .line 239
    if-nez p12, :cond_0

    #@7b
    const/4 v6, 0x1

    #@7c
    move v7, v6

    #@7d
    :goto_0
    if-nez p13, :cond_1

    #@7f
    const/4 v6, 0x1

    #@80
    :goto_1
    if-ne v7, v6, :cond_2

    #@82
    .line 240
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@84
    .line 241
    const-string/jumbo v7, "Exactly one of stageDir or stageCid stage must be set"

    #@87
    .line 240
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@8a
    throw v6

    #@8b
    .line 239
    :cond_0
    const/4 v6, 0x0

    #@8c
    move v7, v6

    #@8d
    goto :goto_0

    #@8e
    :cond_1
    const/4 v6, 0x0

    #@8f
    goto :goto_1

    #@90
    .line 244
    :cond_2
    move/from16 v0, p14

    #@92
    iput-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    #@94
    .line 245
    move/from16 v0, p15

    #@96
    iput-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    #@98
    .line 249
    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    #@9a
    .line 250
    const-string/jumbo v7, "device_policy"

    #@9d
    .line 249
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@a0
    move-result-object v2

    #@a1
    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    #@a3
    .line 252
    .local v2, "dpm":Landroid/app/admin/DevicePolicyManager;
    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    #@a5
    const-string/jumbo v7, "android.permission.INSTALL_PACKAGES"

    #@a8
    move/from16 v0, p8

    #@aa
    invoke-virtual {v6, v7, v0}, Lcom/android/server/pm/PackageManagerService;->checkUidPermission(Ljava/lang/String;I)I

    #@ad
    move-result v6

    #@ae
    if-nez v6, :cond_5

    #@b0
    const/4 v5, 0x1

    #@b1
    .line 254
    .local v5, "isPermissionGranted":Z
    :goto_2
    if-nez p8, :cond_6

    #@b3
    const/4 v4, 0x1

    #@b4
    .line 256
    .local v4, "isInstallerRoot":Z
    :goto_3
    move-object/from16 v0, p9

    #@b6
    iget v6, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@b8
    and-int/lit16 v6, v6, 0x400

    #@ba
    if-eqz v6, :cond_7

    #@bc
    const/4 v3, 0x1

    #@bd
    .line 257
    .local v3, "forcePermissionPrompt":Z
    :goto_4
    if-eqz v2, :cond_8

    #@bf
    invoke-virtual {v2, p7}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerAppOnCallingUser(Ljava/lang/String;)Z

    #@c2
    move-result v6

    #@c3
    :goto_5
    iput-boolean v6, p0, Lcom/android/server/pm/PackageInstallerSession;->mIsInstallerDeviceOwner:Z

    #@c5
    .line 259
    if-nez v5, :cond_3

    #@c7
    if-nez v4, :cond_3

    #@c9
    .line 261
    iget-boolean v6, p0, Lcom/android/server/pm/PackageInstallerSession;->mIsInstallerDeviceOwner:Z

    #@cb
    .line 259
    if-eqz v6, :cond_4

    #@cd
    .line 262
    :cond_3
    if-eqz v3, :cond_9

    #@cf
    .line 265
    :cond_4
    const/4 v6, 0x0

    #@d0
    iput-boolean v6, p0, Lcom/android/server/pm/PackageInstallerSession;->mPermissionsAccepted:Z

    #@d2
    .line 224
    :goto_6
    return-void

    #@d3
    .line 252
    .end local v3    # "forcePermissionPrompt":Z
    .end local v4    # "isInstallerRoot":Z
    .end local v5    # "isPermissionGranted":Z
    :cond_5
    const/4 v5, 0x0

    #@d4
    .restart local v5    # "isPermissionGranted":Z
    goto :goto_2

    #@d5
    .line 254
    :cond_6
    const/4 v4, 0x0

    #@d6
    .restart local v4    # "isInstallerRoot":Z
    goto :goto_3

    #@d7
    .line 256
    :cond_7
    const/4 v3, 0x0

    #@d8
    .restart local v3    # "forcePermissionPrompt":Z
    goto :goto_4

    #@d9
    .line 257
    :cond_8
    const/4 v6, 0x0

    #@da
    goto :goto_5

    #@db
    .line 263
    :cond_9
    const/4 v6, 0x1

    #@dc
    iput-boolean v6, p0, Lcom/android/server/pm/PackageInstallerSession;->mPermissionsAccepted:Z

    #@de
    goto :goto_6
.end method

.method private assertApkConsistent(Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "apk"    # Landroid/content/pm/PackageParser$ApkLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, -0x2

    #@1
    .line 826
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    #@3
    iget-object v1, p2, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    #@5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 827
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    #@d
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    const-string/jumbo v2, " package "

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    .line 828
    iget-object v2, p2, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    #@1f
    .line 827
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    .line 828
    const-string/jumbo v2, " inconsistent with "

    #@26
    .line 827
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    .line 828
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    #@2c
    .line 827
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    invoke-direct {v0, v3, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    #@37
    throw v0

    #@38
    .line 830
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    #@3a
    iget-object v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    #@3c
    if-eqz v0, :cond_1

    #@3e
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    #@40
    iget-object v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    #@42
    iget-object v1, p2, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    #@44
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@47
    move-result v0

    #@48
    if-eqz v0, :cond_2

    #@4a
    .line 835
    :cond_1
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mVersionCode:I

    #@4c
    iget v1, p2, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    #@4e
    if-eq v0, v1, :cond_3

    #@50
    .line 836
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    #@52
    new-instance v1, Ljava/lang/StringBuilder;

    #@54
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@57
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v1

    #@5b
    .line 837
    const-string/jumbo v2, " version code "

    #@5e
    .line 836
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v1

    #@62
    .line 837
    iget v2, p2, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    #@64
    .line 836
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@67
    move-result-object v1

    #@68
    .line 837
    const-string/jumbo v2, " inconsistent with "

    #@6b
    .line 836
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v1

    #@6f
    .line 838
    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mVersionCode:I

    #@71
    .line 836
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@74
    move-result-object v1

    #@75
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v1

    #@79
    invoke-direct {v0, v3, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    #@7c
    throw v0

    #@7d
    .line 831
    :cond_2
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    #@7f
    new-instance v1, Ljava/lang/StringBuilder;

    #@81
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@84
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v1

    #@88
    .line 832
    const-string/jumbo v2, " specified package "

    #@8b
    .line 831
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v1

    #@8f
    .line 832
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    #@91
    iget-object v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    #@93
    .line 831
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v1

    #@97
    .line 833
    const-string/jumbo v2, " inconsistent with "

    #@9a
    .line 831
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v1

    #@9e
    .line 833
    iget-object v2, p2, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    #@a0
    .line 831
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v1

    #@a4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a7
    move-result-object v1

    #@a8
    invoke-direct {v0, v3, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    #@ab
    throw v0

    #@ac
    .line 840
    :cond_3
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSignatures:[Landroid/content/pm/Signature;

    #@ae
    iget-object v1, p2, Landroid/content/pm/PackageParser$ApkLite;->signatures:[Landroid/content/pm/Signature;

    #@b0
    invoke-static {v0, v1}, Landroid/content/pm/Signature;->areExactMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    #@b3
    move-result v0

    #@b4
    if-nez v0, :cond_4

    #@b6
    .line 841
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    #@b8
    .line 842
    new-instance v1, Ljava/lang/StringBuilder;

    #@ba
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@bd
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v1

    #@c1
    const-string/jumbo v2, " signatures are inconsistent"

    #@c4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v1

    #@c8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cb
    move-result-object v1

    #@cc
    .line 841
    invoke-direct {v0, v3, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    #@cf
    throw v0

    #@d0
    .line 825
    :cond_4
    return-void
.end method

.method private assertPreparedAndNotSealed(Ljava/lang/String;)V
    .locals 4
    .param p1, "cookie"    # Ljava/lang/String;

    #@0
    .prologue
    .line 302
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 303
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 304
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    new-instance v2, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    const-string/jumbo v3, " before prepared"

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 302
    :catchall_0
    move-exception v0

    #@22
    monitor-exit v1

    #@23
    throw v0

    #@24
    .line 306
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    #@26
    if-eqz v0, :cond_1

    #@28
    .line 307
    new-instance v0, Ljava/lang/SecurityException;

    #@2a
    new-instance v2, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    const-string/jumbo v3, " not allowed after commit"

    #@36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v2

    #@3e
    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@41
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@42
    :cond_1
    monitor-exit v1

    #@43
    .line 301
    return-void
.end method

.method private calculateInstalledSize()J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 851
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    #@3
    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 855
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    #@8
    const/4 v4, 0x0

    #@9
    invoke-static {v3, v4}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$ApkLite;
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    move-result-object v2

    #@d
    .line 860
    .local v2, "baseApk":Landroid/content/pm/PackageParser$ApkLite;
    new-instance v11, Ljava/util/ArrayList;

    #@f
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    #@12
    .line 861
    .local v11, "splitPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStagedFiles:Ljava/util/List;

    #@14
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@17
    move-result-object v9

    #@18
    .local v9, "file$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_1

    #@1e
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@21
    move-result-object v8

    #@22
    check-cast v8, Ljava/io/File;

    #@24
    .line 862
    .local v8, "file":Ljava/io/File;
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    #@26
    invoke-virtual {v3, v8}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v3

    #@2a
    if-nez v3, :cond_0

    #@2c
    .line 863
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@33
    goto :goto_0

    #@34
    .line 856
    .end local v2    # "baseApk":Landroid/content/pm/PackageParser$ApkLite;
    .end local v8    # "file":Ljava/io/File;
    .end local v9    # "file$iterator":Ljava/util/Iterator;
    .end local v11    # "splitPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v6

    #@35
    .line 857
    .local v6, "e":Landroid/content/pm/PackageParser$PackageParserException;
    invoke-static {v6}, Lcom/android/server/pm/PackageManagerException;->from(Landroid/content/pm/PackageParser$PackageParserException;)Lcom/android/server/pm/PackageManagerException;

    #@38
    move-result-object v1

    #@39
    throw v1

    #@3a
    .line 865
    .end local v6    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    .restart local v2    # "baseApk":Landroid/content/pm/PackageParser$ApkLite;
    .restart local v9    # "file$iterator":Ljava/util/Iterator;
    .restart local v11    # "splitPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    #@3c
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3f
    move-result-object v9

    #@40
    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@43
    move-result v3

    #@44
    if-eqz v3, :cond_3

    #@46
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@49
    move-result-object v8

    #@4a
    check-cast v8, Ljava/io/File;

    #@4c
    .line 866
    .restart local v8    # "file":Ljava/io/File;
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    #@4e
    invoke-virtual {v3, v8}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    #@51
    move-result v3

    #@52
    if-nez v3, :cond_2

    #@54
    .line 867
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@57
    move-result-object v3

    #@58
    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5b
    goto :goto_1

    #@5c
    .line 872
    .end local v8    # "file":Ljava/io/File;
    :cond_3
    new-instance v0, Landroid/content/pm/PackageParser$PackageLite;

    #@5e
    .line 873
    invoke-interface {v11}, Ljava/util/List;->size()I

    #@61
    move-result v3

    #@62
    new-array v3, v3, [Ljava/lang/String;

    #@64
    invoke-interface {v11, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@67
    move-result-object v4

    #@68
    check-cast v4, [Ljava/lang/String;

    #@6a
    move-object v3, v1

    #@6b
    move-object v5, v1

    #@6c
    .line 872
    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser$PackageLite;-><init>(Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;[Ljava/lang/String;[Ljava/lang/String;[I)V

    #@6f
    .line 875
    .local v0, "pkg":Landroid/content/pm/PackageParser$PackageLite;
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    #@71
    iget v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@73
    and-int/lit8 v1, v1, 0x1

    #@75
    if-eqz v1, :cond_4

    #@77
    const/4 v10, 0x1

    #@78
    .line 878
    .local v10, "isForwardLocked":Z
    :goto_2
    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    #@7a
    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    #@7c
    invoke-static {v0, v10, v1}, Lcom/android/internal/content/PackageHelper;->calculateInstalledSize(Landroid/content/pm/PackageParser$PackageLite;ZLjava/lang/String;)J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@7f
    move-result-wide v4

    #@80
    return-wide v4

    #@81
    .line 875
    .end local v10    # "isForwardLocked":Z
    :cond_4
    const/4 v10, 0x0

    #@82
    .restart local v10    # "isForwardLocked":Z
    goto :goto_2

    #@83
    .line 879
    :catch_1
    move-exception v7

    #@84
    .line 880
    .local v7, "e":Ljava/io/IOException;
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    #@86
    .line 881
    const-string/jumbo v3, "Failed to calculate install size"

    #@89
    .line 880
    const/4 v4, -0x2

    #@8a
    invoke-direct {v1, v4, v3, v7}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    #@8d
    throw v1
.end method

.method private commitLocked()V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    #@0
    .prologue
    .line 524
    move-object/from16 v0, p0

    #@2
    iget-boolean v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 525
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    #@8
    const-string/jumbo v3, "Session destroyed"

    #@b
    const/16 v4, -0x6e

    #@d
    invoke-direct {v2, v4, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    #@10
    throw v2

    #@11
    .line 527
    :cond_0
    move-object/from16 v0, p0

    #@13
    iget-boolean v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    #@15
    if-nez v2, :cond_1

    #@17
    .line 528
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    #@19
    const-string/jumbo v3, "Session not sealed"

    #@1c
    const/16 v4, -0x6e

    #@1e
    invoke-direct {v2, v4, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    #@21
    throw v2

    #@22
    .line 532
    :cond_1
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDir()Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    .line 541
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->validateInstallLocked()V

    #@28
    .line 543
    move-object/from16 v0, p0

    #@2a
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    #@2c
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@2f
    .line 544
    move-object/from16 v0, p0

    #@31
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mSignatures:[Landroid/content/pm/Signature;

    #@33
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@36
    .line 545
    move-object/from16 v0, p0

    #@38
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    #@3a
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3d
    .line 547
    move-object/from16 v0, p0

    #@3f
    iget-boolean v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mPermissionsAccepted:Z

    #@41
    if-nez v2, :cond_2

    #@43
    .line 550
    new-instance v17, Landroid/content/Intent;

    #@45
    const-string/jumbo v2, "android.content.pm.action.CONFIRM_PERMISSIONS"

    #@48
    move-object/from16 v0, v17

    #@4a
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@4d
    .line 551
    .local v17, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    #@4f
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    #@51
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@54
    move-result-object v2

    #@55
    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    #@58
    move-result-object v2

    #@59
    move-object/from16 v0, v17

    #@5b
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@5e
    .line 552
    const-string/jumbo v2, "android.content.pm.extra.SESSION_ID"

    #@61
    move-object/from16 v0, p0

    #@63
    iget v3, v0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    #@65
    move-object/from16 v0, v17

    #@67
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@6a
    .line 554
    :try_start_1
    move-object/from16 v0, p0

    #@6c
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mRemoteObserver:Landroid/content/pm/IPackageInstallObserver2;

    #@6e
    move-object/from16 v0, v17

    #@70
    invoke-interface {v2, v0}, Landroid/content/pm/IPackageInstallObserver2;->onUserActionRequired(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    #@73
    .line 560
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->close()V

    #@76
    .line 561
    return-void

    #@77
    .line 533
    .end local v17    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v12

    #@78
    .line 534
    .local v12, "e":Ljava/io/IOException;
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    #@7a
    .line 535
    const-string/jumbo v3, "Failed to resolve stage location"

    #@7d
    .line 534
    const/16 v4, -0x12

    #@7f
    invoke-direct {v2, v4, v3, v12}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    #@82
    throw v2

    #@83
    .line 564
    .end local v12    # "e":Ljava/io/IOException;
    :cond_2
    move-object/from16 v0, p0

    #@85
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    #@87
    if-eqz v2, :cond_3

    #@89
    .line 568
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->calculateInstalledSize()J

    #@8c
    move-result-wide v14

    #@8d
    .line 569
    .local v14, "finalSize":J
    move-object/from16 v0, p0

    #@8f
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    #@91
    invoke-static {v2, v14, v15}, Lcom/android/server/pm/PackageInstallerSession;->resizeContainer(Ljava/lang/String;J)V

    #@94
    .line 574
    .end local v14    # "finalSize":J
    :cond_3
    move-object/from16 v0, p0

    #@96
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    #@98
    iget v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    #@9a
    const/4 v3, 0x2

    #@9b
    if-ne v2, v3, :cond_6

    #@9d
    .line 576
    :try_start_2
    move-object/from16 v0, p0

    #@9f
    iget-object v13, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    #@a1
    .line 577
    .local v13, "fromFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDir()Ljava/io/File;

    #@a4
    move-result-object v19

    #@a5
    .line 579
    .local v19, "toDir":Ljava/io/File;
    const-string/jumbo v2, "PackageInstaller"

    #@a8
    new-instance v3, Ljava/lang/StringBuilder;

    #@aa
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@ad
    const-string/jumbo v4, "Inherited files: "

    #@b0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v3

    #@b4
    move-object/from16 v0, p0

    #@b6
    iget-object v4, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    #@b8
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v3

    #@bc
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bf
    move-result-object v3

    #@c0
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@c3
    .line 580
    move-object/from16 v0, p0

    #@c5
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    #@c7
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    #@ca
    move-result v2

    #@cb
    if-nez v2, :cond_4

    #@cd
    move-object/from16 v0, p0

    #@cf
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mInheritedFilesBase:Ljava/io/File;

    #@d1
    if-nez v2, :cond_4

    #@d3
    .line 581
    new-instance v2, Ljava/lang/IllegalStateException;

    #@d5
    const-string/jumbo v3, "mInheritedFilesBase == null"

    #@d8
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@db
    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    #@dc
    .line 595
    .end local v13    # "fromFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v19    # "toDir":Ljava/io/File;
    :catch_1
    move-exception v12

    #@dd
    .line 596
    .restart local v12    # "e":Ljava/io/IOException;
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    #@df
    .line 597
    const-string/jumbo v3, "Failed to inherit existing install"

    #@e2
    .line 596
    const/4 v4, -0x4

    #@e3
    invoke-direct {v2, v4, v3, v12}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    #@e6
    throw v2

    #@e7
    .line 584
    .end local v12    # "e":Ljava/io/IOException;
    .restart local v13    # "fromFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v19    # "toDir":Ljava/io/File;
    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    #@e9
    move-object/from16 v1, v19

    #@eb
    invoke-direct {v0, v13, v1}, Lcom/android/server/pm/PackageInstallerSession;->isLinkPossible(Ljava/util/List;Ljava/io/File;)Z

    #@ee
    move-result v2

    #@ef
    if-eqz v2, :cond_8

    #@f1
    .line 585
    move-object/from16 v0, p0

    #@f3
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInstructionSets:Ljava/util/List;

    #@f5
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    #@f8
    move-result v2

    #@f9
    if-nez v2, :cond_5

    #@fb
    .line 586
    new-instance v18, Ljava/io/File;

    #@fd
    const-string/jumbo v2, "oat"

    #@100
    move-object/from16 v0, v18

    #@102
    move-object/from16 v1, v19

    #@104
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@107
    .line 587
    .local v18, "oatDir":Ljava/io/File;
    move-object/from16 v0, p0

    #@109
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInstructionSets:Ljava/util/List;

    #@10b
    move-object/from16 v0, p0

    #@10d
    move-object/from16 v1, v18

    #@10f
    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageInstallerSession;->createOatDirs(Ljava/util/List;Ljava/io/File;)V

    #@112
    .line 589
    .end local v18    # "oatDir":Ljava/io/File;
    :cond_5
    move-object/from16 v0, p0

    #@114
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mInheritedFilesBase:Ljava/io/File;

    #@116
    move-object/from16 v0, p0

    #@118
    move-object/from16 v1, v19

    #@11a
    invoke-direct {v0, v13, v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->linkFiles(Ljava/util/List;Ljava/io/File;Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    #@11d
    .line 602
    .end local v13    # "fromFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v19    # "toDir":Ljava/io/File;
    :cond_6
    :goto_1
    const/high16 v2, 0x3f000000    # 0.5f

    #@11f
    move-object/from16 v0, p0

    #@121
    iput v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mInternalProgress:F

    #@123
    .line 603
    const/4 v2, 0x1

    #@124
    move-object/from16 v0, p0

    #@126
    invoke-direct {v0, v2}, Lcom/android/server/pm/PackageInstallerSession;->computeProgressLocked(Z)V

    #@129
    .line 606
    move-object/from16 v0, p0

    #@12b
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    #@12d
    move-object/from16 v0, p0

    #@12f
    iget-object v3, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    #@131
    iget-object v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    #@133
    invoke-static {v2, v3}, Lcom/android/server/pm/PackageInstallerSession;->extractNativeLibraries(Ljava/io/File;Ljava/lang/String;)V

    #@136
    .line 609
    move-object/from16 v0, p0

    #@138
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    #@13a
    if-eqz v2, :cond_7

    #@13c
    .line 610
    move-object/from16 v0, p0

    #@13e
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    #@140
    move-object/from16 v0, p0

    #@142
    invoke-direct {v0, v2}, Lcom/android/server/pm/PackageInstallerSession;->finalizeAndFixContainer(Ljava/lang/String;)V

    #@145
    .line 615
    :cond_7
    new-instance v6, Lcom/android/server/pm/PackageInstallerSession$4;

    #@147
    move-object/from16 v0, p0

    #@149
    invoke-direct {v6, v0}, Lcom/android/server/pm/PackageInstallerSession$4;-><init>(Lcom/android/server/pm/PackageInstallerSession;)V

    #@14c
    .line 630
    .local v6, "localObserver":Landroid/content/pm/IPackageInstallObserver2;
    move-object/from16 v0, p0

    #@14e
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    #@150
    iget v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@152
    and-int/lit8 v2, v2, 0x40

    #@154
    if-eqz v2, :cond_9

    #@156
    .line 631
    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@158
    .line 636
    .local v10, "user":Landroid/os/UserHandle;
    :goto_2
    const/4 v2, 0x1

    #@159
    move-object/from16 v0, p0

    #@15b
    iput-boolean v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mRelinquished:Z

    #@15d
    .line 637
    move-object/from16 v0, p0

    #@15f
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    #@161
    move-object/from16 v0, p0

    #@163
    iget-object v3, v0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    #@165
    move-object/from16 v0, p0

    #@167
    iget-object v4, v0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    #@169
    move-object/from16 v0, p0

    #@16b
    iget-object v5, v0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    #@16d
    move-object/from16 v0, p0

    #@16f
    iget-object v7, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    #@171
    .line 638
    move-object/from16 v0, p0

    #@173
    iget-object v8, v0, Lcom/android/server/pm/PackageInstallerSession;->installerPackageName:Ljava/lang/String;

    #@175
    move-object/from16 v0, p0

    #@177
    iget v9, v0, Lcom/android/server/pm/PackageInstallerSession;->installerUid:I

    #@179
    move-object/from16 v0, p0

    #@17b
    iget-object v11, v0, Lcom/android/server/pm/PackageInstallerSession;->mCertificates:[[Ljava/security/cert/Certificate;

    #@17d
    .line 637
    invoke-virtual/range {v2 .. v11}, Lcom/android/server/pm/PackageManagerService;->installStage(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;ILandroid/os/UserHandle;[[Ljava/security/cert/Certificate;)V

    #@180
    .line 523
    return-void

    #@181
    .line 593
    .end local v6    # "localObserver":Landroid/content/pm/IPackageInstallObserver2;
    .end local v10    # "user":Landroid/os/UserHandle;
    .restart local v13    # "fromFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v19    # "toDir":Ljava/io/File;
    :cond_8
    :try_start_4
    move-object/from16 v0, v19

    #@183
    invoke-static {v13, v0}, Lcom/android/server/pm/PackageInstallerSession;->copyFiles(Ljava/util/List;Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    #@186
    goto :goto_1

    #@187
    .line 633
    .end local v13    # "fromFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v19    # "toDir":Ljava/io/File;
    .restart local v6    # "localObserver":Landroid/content/pm/IPackageInstallObserver2;
    :cond_9
    new-instance v10, Landroid/os/UserHandle;

    #@189
    move-object/from16 v0, p0

    #@18b
    iget v2, v0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    #@18d
    invoke-direct {v10, v2}, Landroid/os/UserHandle;-><init>(I)V

    #@190
    .restart local v10    # "user":Landroid/os/UserHandle;
    goto :goto_2

    #@191
    .line 555
    .end local v6    # "localObserver":Landroid/content/pm/IPackageInstallObserver2;
    .end local v10    # "user":Landroid/os/UserHandle;
    .restart local v17    # "intent":Landroid/content/Intent;
    :catch_2
    move-exception v16

    #@192
    .local v16, "ignored":Landroid/os/RemoteException;
    goto/16 :goto_0
.end method

.method private computeProgressLocked(Z)V
    .locals 4
    .param p1, "forcePublish"    # Z

    #@0
    .prologue
    const v1, 0x3f4ccccd    # 0.8f

    #@3
    const v3, 0x3e4ccccd    # 0.2f

    #@6
    const/4 v2, 0x0

    #@7
    .line 353
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    #@9
    mul-float/2addr v0, v1

    #@a
    invoke-static {v0, v2, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    #@d
    move-result v0

    #@e
    .line 354
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInternalProgress:F

    #@10
    mul-float/2addr v1, v3

    #@11
    invoke-static {v1, v2, v3}, Landroid/util/MathUtils;->constrain(FFF)F

    #@14
    move-result v1

    #@15
    .line 353
    add-float/2addr v0, v1

    #@16
    iput v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    #@18
    .line 357
    if-nez p1, :cond_0

    #@1a
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    #@1c
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mReportedProgress:F

    #@1e
    sub-float/2addr v0, v1

    #@1f
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    #@22
    move-result v0

    #@23
    float-to-double v0, v0

    #@24
    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    #@29
    cmpl-double v0, v0, v2

    #@2b
    if-ltz v0, :cond_1

    #@2d
    .line 358
    :cond_0
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    #@2f
    iput v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mReportedProgress:F

    #@31
    .line 359
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    #@33
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    #@35
    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionProgressChanged(Lcom/android/server/pm/PackageInstallerSession;F)V

    #@38
    .line 352
    :cond_1
    return-void
.end method

.method private static copyFiles(Ljava/util/List;Ljava/io/File;)V
    .locals 11
    .param p1, "toDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 949
    .local p0, "fromFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@3
    move-result-object v7

    #@4
    const/4 v6, 0x0

    #@5
    array-length v8, v7

    #@6
    :goto_0
    if-ge v6, v8, :cond_1

    #@8
    aget-object v1, v7, v6

    #@a
    .line 950
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    #@d
    move-result-object v9

    #@e
    const-string/jumbo v10, ".tmp"

    #@11
    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@14
    move-result v9

    #@15
    if-eqz v9, :cond_0

    #@17
    .line 951
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    #@1a
    .line 949
    :cond_0
    add-int/lit8 v6, v6, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 955
    .end local v1    # "file":Ljava/io/File;
    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@20
    move-result-object v3

    #@21
    .local v3, "fromFile$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@24
    move-result v6

    #@25
    if-eqz v6, :cond_4

    #@27
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2a
    move-result-object v2

    #@2b
    check-cast v2, Ljava/io/File;

    #@2d
    .line 956
    .local v2, "fromFile":Ljava/io/File;
    const-string/jumbo v6, "inherit"

    #@30
    const-string/jumbo v7, ".tmp"

    #@33
    invoke-static {v6, v7, p1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    #@36
    move-result-object v4

    #@37
    .line 957
    .local v4, "tmpFile":Ljava/io/File;
    const-string/jumbo v6, "PackageInstaller"

    #@3a
    new-instance v7, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v8, "Copying "

    #@42
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v7

    #@46
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v7

    #@4a
    const-string/jumbo v8, " to "

    #@4d
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v7

    #@51
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v7

    #@55
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v7

    #@59
    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@5c
    .line 958
    invoke-static {v2, v4}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    #@5f
    move-result v6

    #@60
    if-nez v6, :cond_3

    #@62
    .line 959
    new-instance v6, Ljava/io/IOException;

    #@64
    new-instance v7, Ljava/lang/StringBuilder;

    #@66
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@69
    const-string/jumbo v8, "Failed to copy "

    #@6c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v7

    #@70
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v7

    #@74
    const-string/jumbo v8, " to "

    #@77
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v7

    #@7b
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v7

    #@7f
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82
    move-result-object v7

    #@83
    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@86
    throw v6

    #@87
    .line 962
    :cond_3
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@8a
    move-result-object v6

    #@8b
    const/16 v7, 0x1a4

    #@8d
    invoke-static {v6, v7}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@90
    .line 966
    new-instance v5, Ljava/io/File;

    #@92
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    #@95
    move-result-object v6

    #@96
    invoke-direct {v5, p1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@99
    .line 967
    .local v5, "toFile":Ljava/io/File;
    const-string/jumbo v6, "PackageInstaller"

    #@9c
    new-instance v7, Ljava/lang/StringBuilder;

    #@9e
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@a1
    const-string/jumbo v8, "Renaming "

    #@a4
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v7

    #@a8
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v7

    #@ac
    const-string/jumbo v8, " to "

    #@af
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v7

    #@b3
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v7

    #@b7
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ba
    move-result-object v7

    #@bb
    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@be
    .line 968
    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    #@c1
    move-result v6

    #@c2
    if-nez v6, :cond_2

    #@c4
    .line 969
    new-instance v6, Ljava/io/IOException;

    #@c6
    new-instance v7, Ljava/lang/StringBuilder;

    #@c8
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@cb
    const-string/jumbo v8, "Failed to rename "

    #@ce
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v7

    #@d2
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v7

    #@d6
    const-string/jumbo v8, " to "

    #@d9
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v7

    #@dd
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e0
    move-result-object v7

    #@e1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e4
    move-result-object v7

    #@e5
    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@e8
    throw v6

    #@e9
    .line 963
    .end local v5    # "toFile":Ljava/io/File;
    :catch_0
    move-exception v0

    #@ea
    .line 964
    .local v0, "e":Landroid/system/ErrnoException;
    new-instance v6, Ljava/io/IOException;

    #@ec
    new-instance v7, Ljava/lang/StringBuilder;

    #@ee
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@f1
    const-string/jumbo v8, "Failed to chmod "

    #@f4
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f7
    move-result-object v7

    #@f8
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v7

    #@fc
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ff
    move-result-object v7

    #@100
    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@103
    throw v6

    #@104
    .line 972
    .end local v0    # "e":Landroid/system/ErrnoException;
    .end local v2    # "fromFile":Ljava/io/File;
    .end local v4    # "tmpFile":Ljava/io/File;
    :cond_4
    const-string/jumbo v6, "PackageInstaller"

    #@107
    new-instance v7, Ljava/lang/StringBuilder;

    #@109
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@10c
    const-string/jumbo v8, "Copied "

    #@10f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@112
    move-result-object v7

    #@113
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@116
    move-result v8

    #@117
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11a
    move-result-object v7

    #@11b
    const-string/jumbo v8, " files into "

    #@11e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@121
    move-result-object v7

    #@122
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@125
    move-result-object v7

    #@126
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@129
    move-result-object v7

    #@12a
    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@12d
    .line 947
    return-void
.end method

.method private createOatDirs(Ljava/util/List;Ljava/io/File;)V
    .locals 5
    .param p2, "fromDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    #@0
    .prologue
    .line 922
    .local p1, "instructionSets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v2

    #@4
    .local v2, "instructionSet$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v3

    #@8
    if-eqz v3, :cond_0

    #@a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    check-cast v1, Ljava/lang/String;

    #@10
    .line 924
    .local v1, "instructionSet":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    #@12
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    #@14
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@17
    move-result-object v4

    #@18
    invoke-virtual {v3, v4, v1}, Lcom/android/server/pm/Installer;->createOatDir(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/internal/os/InstallerConnection$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    goto :goto_0

    #@1c
    .line 925
    :catch_0
    move-exception v0

    #@1d
    .line 926
    .local v0, "e":Lcom/android/internal/os/InstallerConnection$InstallerException;
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerException;->from(Lcom/android/internal/os/InstallerConnection$InstallerException;)Lcom/android/server/pm/PackageManagerException;

    #@20
    move-result-object v3

    #@21
    throw v3

    #@22
    .line 921
    .end local v0    # "e":Lcom/android/internal/os/InstallerConnection$InstallerException;
    .end local v1    # "instructionSet":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private createRemoveSplitMarker(Ljava/lang/String;)V
    .locals 6
    .param p1, "splitName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 387
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v3

    #@9
    const-string/jumbo v4, ".removed"

    #@c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    .line 388
    .local v1, "markerName":Ljava/lang/String;
    invoke-static {v1}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    #@17
    move-result v3

    #@18
    if-nez v3, :cond_0

    #@1a
    .line 389
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@1c
    new-instance v4, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v5, "Invalid marker: "

    #@24
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v4

    #@30
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@33
    throw v3
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@34
    .line 394
    .end local v1    # "markerName":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@35
    .line 395
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    #@38
    move-result-object v3

    #@39
    throw v3

    #@3a
    .line 391
    .end local v0    # "e":Landroid/system/ErrnoException;
    .restart local v1    # "markerName":Ljava/lang/String;
    :cond_0
    :try_start_1
    new-instance v2, Ljava/io/File;

    #@3c
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDir()Ljava/io/File;

    #@3f
    move-result-object v3

    #@40
    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@43
    .line 392
    .local v2, "target":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    #@46
    .line 393
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@49
    move-result-object v3

    #@4a
    const/4 v4, 0x0

    #@4b
    invoke-static {v3, v4}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0

    #@4e
    .line 385
    return-void
.end method

.method private destroyInternal()V
    .locals 5

    #@0
    .prologue
    .line 1123
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v4

    #@3
    .line 1124
    const/4 v3, 0x1

    #@4
    :try_start_0
    iput-boolean v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    #@6
    .line 1125
    const/4 v3, 0x1

    #@7
    iput-boolean v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    #@9
    .line 1128
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    #@b
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v1

    #@f
    .local v1, "bridge$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_0

    #@15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Landroid/os/FileBridge;

    #@1b
    .line 1129
    .local v0, "bridge":Landroid/os/FileBridge;
    invoke-virtual {v0}, Landroid/os/FileBridge;->forceClose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    goto :goto_0

    #@1f
    .line 1123
    .end local v0    # "bridge":Landroid/os/FileBridge;
    .end local v1    # "bridge$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    #@20
    monitor-exit v4

    #@21
    throw v3

    #@22
    .restart local v1    # "bridge$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v4

    #@23
    .line 1132
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    #@25
    if-eqz v3, :cond_1

    #@27
    .line 1134
    :try_start_1
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    #@29
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    #@2b
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    #@2d
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@30
    move-result-object v4

    #@31
    invoke-virtual {v3, v4}, Lcom/android/server/pm/Installer;->rmPackageDir(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/android/internal/os/InstallerConnection$InstallerException; {:try_start_1 .. :try_end_1} :catch_0

    #@34
    .line 1138
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    #@36
    if-eqz v3, :cond_2

    #@38
    .line 1139
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    #@3a
    invoke-static {v3}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    #@3d
    .line 1122
    :cond_2
    return-void

    #@3e
    .line 1135
    :catch_0
    move-exception v2

    #@3f
    .local v2, "ignored":Lcom/android/internal/os/InstallerConnection$InstallerException;
    goto :goto_1
.end method

.method private dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "returnCode"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1108
    iput p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mFinalStatus:I

    #@2
    .line 1109
    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerSession;->mFinalMessage:Ljava/lang/String;

    #@4
    .line 1111
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mRemoteObserver:Landroid/content/pm/IPackageInstallObserver2;

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 1113
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mRemoteObserver:Landroid/content/pm/IPackageInstallObserver2;

    #@a
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    #@c
    invoke-interface {v2, v3, p1, p2, p3}, Landroid/content/pm/IPackageInstallObserver2;->onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 1118
    :cond_0
    :goto_0
    const/4 v2, 0x1

    #@10
    if-ne p1, v2, :cond_1

    #@12
    const/4 v1, 0x1

    #@13
    .line 1119
    .local v1, "success":Z
    :goto_1
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    #@15
    invoke-virtual {v2, p0, v1}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionFinished(Lcom/android/server/pm/PackageInstallerSession;Z)V

    #@18
    .line 1107
    return-void

    #@19
    .line 1118
    .end local v1    # "success":Z
    :cond_1
    const/4 v1, 0x0

    #@1a
    .restart local v1    # "success":Z
    goto :goto_1

    #@1b
    .line 1114
    .end local v1    # "success":Z
    :catch_0
    move-exception v0

    #@1c
    .local v0, "ignored":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 4
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    #@0
    .prologue
    .line 1150
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Session "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, ":"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@20
    .line 1151
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@23
    .line 1153
    const-string/jumbo v0, "userId"

    #@26
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    #@28
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@2f
    .line 1154
    const-string/jumbo v0, "installerPackageName"

    #@32
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->installerPackageName:Ljava/lang/String;

    #@34
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@37
    .line 1155
    const-string/jumbo v0, "installerUid"

    #@3a
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->installerUid:I

    #@3c
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3f
    move-result-object v1

    #@40
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@43
    .line 1156
    const-string/jumbo v0, "createdMillis"

    #@46
    iget-wide v2, p0, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    #@48
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@4b
    move-result-object v1

    #@4c
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@4f
    .line 1157
    const-string/jumbo v0, "stageDir"

    #@52
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    #@54
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@57
    .line 1158
    const-string/jumbo v0, "stageCid"

    #@5a
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    #@5c
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@5f
    .line 1159
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@62
    .line 1161
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    #@64
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageInstaller$SessionParams;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    #@67
    .line 1163
    const-string/jumbo v0, "mClientProgress"

    #@6a
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    #@6c
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@6f
    move-result-object v1

    #@70
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@73
    .line 1164
    const-string/jumbo v0, "mProgress"

    #@76
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    #@78
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@7b
    move-result-object v1

    #@7c
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@7f
    .line 1165
    const-string/jumbo v0, "mSealed"

    #@82
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    #@84
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@87
    move-result-object v1

    #@88
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@8b
    .line 1166
    const-string/jumbo v0, "mPermissionsAccepted"

    #@8e
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPermissionsAccepted:Z

    #@90
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@93
    move-result-object v1

    #@94
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@97
    .line 1167
    const-string/jumbo v0, "mRelinquished"

    #@9a
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mRelinquished:Z

    #@9c
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@9f
    move-result-object v1

    #@a0
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@a3
    .line 1168
    const-string/jumbo v0, "mDestroyed"

    #@a6
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    #@a8
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@ab
    move-result-object v1

    #@ac
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@af
    .line 1169
    const-string/jumbo v0, "mBridges"

    #@b2
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    #@b4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@b7
    move-result v1

    #@b8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@bb
    move-result-object v1

    #@bc
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@bf
    .line 1170
    const-string/jumbo v0, "mFinalStatus"

    #@c2
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mFinalStatus:I

    #@c4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c7
    move-result-object v1

    #@c8
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@cb
    .line 1171
    const-string/jumbo v0, "mFinalMessage"

    #@ce
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mFinalMessage:Ljava/lang/String;

    #@d0
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@d3
    .line 1172
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@d6
    .line 1174
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@d9
    .line 1149
    return-void
.end method

.method private static extractNativeLibraries(Ljava/io/File;Ljava/lang/String;)V
    .locals 7
    .param p0, "packageDir"    # Ljava/io/File;
    .param p1, "abiOverride"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 978
    new-instance v2, Ljava/io/File;

    #@3
    const-string/jumbo v4, "lib"

    #@6
    invoke-direct {v2, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@9
    .line 979
    .local v2, "libDir":Ljava/io/File;
    invoke-static {v2, v5}, Lcom/android/internal/content/NativeLibraryHelper;->removeNativeBinariesFromDirLI(Ljava/io/File;Z)V

    #@c
    .line 981
    const/4 v1, 0x0

    #@d
    .line 983
    .local v1, "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    :try_start_0
    invoke-static {p0}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Ljava/io/File;)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    #@10
    move-result-object v1

    #@11
    .line 984
    .local v1, "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    invoke-static {v1, v2, p1}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesWithOverride(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;Ljava/lang/String;)I

    #@14
    move-result v3

    #@15
    .line 986
    .local v3, "res":I
    if-eq v3, v5, :cond_0

    #@17
    .line 987
    new-instance v4, Lcom/android/server/pm/PackageManagerException;

    #@19
    .line 988
    new-instance v5, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v6, "Failed to extract native libraries, res="

    #@21
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v5

    #@25
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v5

    #@29
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v5

    #@2d
    .line 987
    invoke-direct {v4, v3, v5}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    #@30
    throw v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@31
    .line 990
    .end local v1    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .end local v3    # "res":I
    :catch_0
    move-exception v0

    #@32
    .line 991
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v4, Lcom/android/server/pm/PackageManagerException;

    #@34
    .line 992
    const-string/jumbo v5, "Failed to extract native libraries"

    #@37
    .line 991
    const/16 v6, -0x6e

    #@39
    invoke-direct {v4, v6, v5, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    #@3c
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3d
    .line 993
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    #@3e
    .line 994
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@41
    .line 993
    throw v4

    #@42
    .line 994
    .restart local v1    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .restart local v3    # "res":I
    :cond_0
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@45
    .line 976
    return-void
.end method

.method private finalizeAndFixContainer(Ljava/lang/String;)V
    .locals 7
    .param p1, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v6, -0x12

    #@2
    .line 1033
    invoke-static {p1}, Lcom/android/internal/content/PackageHelper;->finalizeSdDir(Ljava/lang/String;)Z

    #@5
    move-result v2

    #@6
    if-nez v2, :cond_0

    #@8
    .line 1034
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    #@a
    .line 1035
    new-instance v3, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v4, "Failed to finalize container "

    #@12
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    .line 1034
    invoke-direct {v2, v6, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    #@21
    throw v2

    #@22
    .line 1038
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    #@24
    const-string/jumbo v3, "com.android.defcontainer"

    #@27
    .line 1039
    const/high16 v4, 0x100000

    #@29
    const/4 v5, 0x0

    #@2a
    .line 1038
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    #@2d
    move-result v1

    #@2e
    .line 1040
    .local v1, "uid":I
    invoke-static {v1}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    #@31
    move-result v0

    #@32
    .line 1041
    .local v0, "gid":I
    const/4 v2, 0x0

    #@33
    invoke-static {p1, v0, v2}, Lcom/android/internal/content/PackageHelper;->fixSdPermissions(Ljava/lang/String;ILjava/lang/String;)Z

    #@36
    move-result v2

    #@37
    if-nez v2, :cond_1

    #@39
    .line 1042
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    #@3b
    .line 1043
    new-instance v3, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v4, "Failed to fix permissions on container "

    #@43
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v3

    #@47
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v3

    #@4b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v3

    #@4f
    .line 1042
    invoke-direct {v2, v6, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    #@52
    throw v2

    #@53
    .line 1032
    :cond_1
    return-void
.end method

.method private static getRelativePath(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;
    .locals 5
    .param p0, "file"    # Ljava/io/File;
    .param p1, "base"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 906
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 907
    .local v1, "pathStr":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 909
    .local v0, "baseStr":Ljava/lang/String;
    const-string/jumbo v2, "/."

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_0

    #@11
    .line 910
    new-instance v2, Ljava/io/IOException;

    #@13
    new-instance v3, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v4, "Invalid path (was relative) : "

    #@1b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v2

    #@2b
    .line 913
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@2e
    move-result v2

    #@2f
    if-eqz v2, :cond_1

    #@31
    .line 914
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@34
    move-result v2

    #@35
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@38
    move-result-object v2

    #@39
    return-object v2

    #@3a
    .line 917
    :cond_1
    new-instance v2, Ljava/io/IOException;

    #@3c
    new-instance v3, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v4, "File: "

    #@44
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v3

    #@48
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v3

    #@4c
    const-string/jumbo v4, " outside base: "

    #@4f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v3

    #@53
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v3

    #@57
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v3

    #@5b
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@5e
    throw v2
.end method

.method private isLinkPossible(Ljava/util/List;Ljava/io/File;)Z
    .locals 11
    .param p2, "toDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")Z"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "fromFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    const/4 v10, 0x0

    #@1
    .line 891
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@4
    move-result-object v5

    #@5
    invoke-static {v5}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    #@8
    move-result-object v4

    #@9
    .line 892
    .local v4, "toStat":Landroid/system/StructStat;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v2

    #@d
    .local v2, "fromFile$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v5

    #@11
    if-eqz v5, :cond_1

    #@13
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Ljava/io/File;

    #@19
    .line 893
    .local v1, "fromFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@1c
    move-result-object v5

    #@1d
    invoke-static {v5}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    #@20
    move-result-object v3

    #@21
    .line 894
    .local v3, "fromStat":Landroid/system/StructStat;
    iget-wide v6, v3, Landroid/system/StructStat;->st_dev:J

    #@23
    iget-wide v8, v4, Landroid/system/StructStat;->st_dev:J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    cmp-long v5, v6, v8

    #@27
    if-eqz v5, :cond_0

    #@29
    .line 895
    return v10

    #@2a
    .line 898
    .end local v1    # "fromFile":Ljava/io/File;
    .end local v2    # "fromFile$iterator":Ljava/util/Iterator;
    .end local v3    # "fromStat":Landroid/system/StructStat;
    .end local v4    # "toStat":Landroid/system/StructStat;
    :catch_0
    move-exception v0

    #@2b
    .line 899
    .local v0, "e":Landroid/system/ErrnoException;
    const-string/jumbo v5, "PackageInstaller"

    #@2e
    new-instance v6, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v7, "Failed to detect if linking possible: "

    #@36
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v6

    #@3a
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v6

    #@3e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v6

    #@42
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@45
    .line 900
    return v10

    #@46
    .line 902
    .end local v0    # "e":Landroid/system/ErrnoException;
    .restart local v2    # "fromFile$iterator":Ljava/util/Iterator;
    .restart local v4    # "toStat":Landroid/system/StructStat;
    :cond_1
    const/4 v5, 0x1

    #@47
    return v5
.end method

.method private linkFiles(Ljava/util/List;Ljava/io/File;Ljava/io/File;)V
    .locals 7
    .param p2, "toDir"    # Ljava/io/File;
    .param p3, "fromDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 933
    .local p1, "fromFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v2

    #@4
    .local v2, "fromFile$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v4

    #@8
    if-eqz v4, :cond_0

    #@a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    check-cast v1, Ljava/io/File;

    #@10
    .line 934
    .local v1, "fromFile":Ljava/io/File;
    invoke-static {v1, p3}, Lcom/android/server/pm/PackageInstallerSession;->getRelativePath(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    .line 936
    .local v3, "relativePath":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    #@16
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    #@18
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@1b
    move-result-object v5

    #@1c
    .line 937
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@1f
    move-result-object v6

    #@20
    .line 936
    invoke-virtual {v4, v3, v5, v6}, Lcom/android/server/pm/Installer;->linkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/internal/os/InstallerConnection$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    #@23
    goto :goto_0

    #@24
    .line 938
    :catch_0
    move-exception v0

    #@25
    .line 939
    .local v0, "e":Lcom/android/internal/os/InstallerConnection$InstallerException;
    new-instance v4, Ljava/io/IOException;

    #@27
    new-instance v5, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v6, "failed linkOrCreateDir("

    #@2f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v5

    #@33
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v5

    #@37
    const-string/jumbo v6, ", "

    #@3a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v5

    #@3e
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v5

    #@42
    .line 940
    const-string/jumbo v6, ", "

    #@45
    .line 939
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v5

    #@49
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v5

    #@4d
    .line 940
    const-string/jumbo v6, ")"

    #@50
    .line 939
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v5

    #@54
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v5

    #@58
    invoke-direct {v4, v5, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@5b
    throw v4

    #@5c
    .line 944
    .end local v0    # "e":Lcom/android/internal/os/InstallerConnection$InstallerException;
    .end local v1    # "fromFile":Ljava/io/File;
    .end local v3    # "relativePath":Ljava/lang/String;
    :cond_0
    const-string/jumbo v4, "PackageInstaller"

    #@5f
    new-instance v5, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    const-string/jumbo v6, "Linked "

    #@67
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v5

    #@6b
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@6e
    move-result v6

    #@6f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@72
    move-result-object v5

    #@73
    const-string/jumbo v6, " files into "

    #@76
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v5

    #@7a
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v5

    #@7e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@81
    move-result-object v5

    #@82
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@85
    .line 932
    return-void
.end method

.method private openReadInternal(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 469
    const-string/jumbo v3, "openRead"

    #@3
    invoke-direct {p0, v3}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotSealed(Ljava/lang/String;)V

    #@6
    .line 472
    :try_start_0
    invoke-static {p1}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    #@9
    move-result v3

    #@a
    if-nez v3, :cond_0

    #@c
    .line 473
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@e
    new-instance v4, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v5, "Invalid name: "

    #@16
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v4

    #@1a
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v4

    #@1e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v4

    #@22
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@25
    throw v3
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    .line 480
    :catch_0
    move-exception v0

    #@27
    .line 481
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    #@2a
    move-result-object v3

    #@2b
    throw v3

    #@2c
    .line 475
    .end local v0    # "e":Landroid/system/ErrnoException;
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/File;

    #@2e
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDir()Ljava/io/File;

    #@31
    move-result-object v3

    #@32
    invoke-direct {v1, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@35
    .line 477
    .local v1, "target":Ljava/io/File;
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@37
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@3a
    move-result-object v4

    #@3b
    sget v5, Landroid/system/OsConstants;->O_RDONLY:I

    #@3d
    const/4 v6, 0x0

    #@3e
    invoke-interface {v3, v4, v5, v6}, Llibcore/io/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    #@41
    move-result-object v2

    #@42
    .line 478
    .local v2, "targetFd":Ljava/io/FileDescriptor;
    new-instance v3, Landroid/os/ParcelFileDescriptor;

    #@44
    invoke-direct {v3, v2}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0

    #@47
    return-object v3
.end method

.method private openWriteInternal(Ljava/lang/String;JJ)Landroid/os/ParcelFileDescriptor;
    .locals 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "offsetBytes"    # J
    .param p4, "lengthBytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 414
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 415
    :try_start_0
    const-string/jumbo v0, "openWrite"

    #@6
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotSealed(Ljava/lang/String;)V

    #@9
    .line 417
    new-instance v6, Landroid/os/FileBridge;

    #@b
    invoke-direct {v6}, Landroid/os/FileBridge;-><init>()V

    #@e
    .line 418
    .local v6, "bridge":Landroid/os/FileBridge;
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit v2

    #@14
    .line 423
    :try_start_1
    invoke-static {p1}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    #@17
    move-result v0

    #@18
    if-nez v0, :cond_0

    #@1a
    .line 424
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1c
    new-instance v2, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v3, "Invalid name: "

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@33
    throw v0
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0

    #@34
    .line 454
    :catch_0
    move-exception v7

    #@35
    .line 455
    .local v7, "e":Landroid/system/ErrnoException;
    invoke-virtual {v7}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    #@38
    move-result-object v0

    #@39
    throw v0

    #@3a
    .line 414
    .end local v6    # "bridge":Landroid/os/FileBridge;
    .end local v7    # "e":Landroid/system/ErrnoException;
    :catchall_0
    move-exception v0

    #@3b
    monitor-exit v2

    #@3c
    throw v0

    #@3d
    .line 426
    .restart local v6    # "bridge":Landroid/os/FileBridge;
    :cond_0
    :try_start_2
    new-instance v11, Ljava/io/File;

    #@3f
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDir()Ljava/io/File;

    #@42
    move-result-object v0

    #@43
    invoke-direct {v11, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@46
    .line 430
    .local v11, "target":Ljava/io/File;
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@48
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@4b
    move-result-object v2

    #@4c
    .line 431
    sget v3, Landroid/system/OsConstants;->O_CREAT:I

    #@4e
    sget v4, Landroid/system/OsConstants;->O_WRONLY:I

    #@50
    or-int/2addr v3, v4

    #@51
    const/16 v4, 0x1a4

    #@53
    .line 430
    invoke-interface {v0, v2, v3, v4}, Llibcore/io/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    #@56
    move-result-object v1

    #@57
    .line 432
    .local v1, "targetFd":Ljava/io/FileDescriptor;
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@5a
    move-result-object v0

    #@5b
    const/16 v2, 0x1a4

    #@5d
    invoke-static {v0, v2}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    #@60
    .line 436
    const-wide/16 v2, 0x0

    #@62
    cmp-long v0, p4, v2

    #@64
    if-lez v0, :cond_2

    #@66
    .line 437
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@68
    invoke-interface {v0, v1}, Llibcore/io/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    #@6b
    move-result-object v10

    #@6c
    .line 438
    .local v10, "stat":Landroid/system/StructStat;
    iget-wide v2, v10, Landroid/system/StructStat;->st_size:J

    #@6e
    sub-long v8, p4, v2

    #@70
    .line 440
    .local v8, "deltaBytes":J
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    #@72
    if-eqz v0, :cond_1

    #@74
    const-wide/16 v2, 0x0

    #@76
    cmp-long v0, v8, v2

    #@78
    if-lez v0, :cond_1

    #@7a
    .line 441
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    #@7c
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    #@7e
    iget-object v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    #@80
    invoke-virtual {v0, v2, v8, v9}, Lcom/android/server/pm/PackageManagerService;->freeStorage(Ljava/lang/String;J)V

    #@83
    .line 443
    :cond_1
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@85
    const-wide/16 v2, 0x0

    #@87
    move-wide/from16 v4, p4

    #@89
    invoke-interface/range {v0 .. v5}, Llibcore/io/Os;->posix_fallocate(Ljava/io/FileDescriptor;JJ)V

    #@8c
    .line 446
    .end local v8    # "deltaBytes":J
    .end local v10    # "stat":Landroid/system/StructStat;
    :cond_2
    const-wide/16 v2, 0x0

    #@8e
    cmp-long v0, p2, v2

    #@90
    if-lez v0, :cond_3

    #@92
    .line 447
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@94
    sget v2, Landroid/system/OsConstants;->SEEK_SET:I

    #@96
    invoke-interface {v0, v1, p2, p3, v2}, Llibcore/io/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    #@99
    .line 450
    :cond_3
    invoke-virtual {v6, v1}, Landroid/os/FileBridge;->setTargetFile(Ljava/io/FileDescriptor;)V

    #@9c
    .line 451
    invoke-virtual {v6}, Landroid/os/FileBridge;->start()V

    #@9f
    .line 452
    new-instance v0, Landroid/os/ParcelFileDescriptor;

    #@a1
    invoke-virtual {v6}, Landroid/os/FileBridge;->getClientSocket()Ljava/io/FileDescriptor;

    #@a4
    move-result-object v2

    #@a5
    invoke-direct {v0, v2}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0

    #@a8
    return-object v0
.end method

.method private static resizeContainer(Ljava/lang/String;J)V
    .locals 7
    .param p0, "cid"    # Ljava/lang/String;
    .param p1, "targetSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v6, -0x12

    #@2
    .line 1000
    invoke-static {p0}, Lcom/android/internal/content/PackageHelper;->getSdDir(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    .line 1001
    .local v2, "path":Ljava/lang/String;
    if-nez v2, :cond_0

    #@8
    .line 1002
    new-instance v3, Lcom/android/server/pm/PackageManagerException;

    #@a
    .line 1003
    new-instance v4, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v5, "Failed to find mounted "

    #@12
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v4

    #@16
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v4

    #@1a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v4

    #@1e
    .line 1002
    invoke-direct {v3, v6, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    #@21
    throw v3

    #@22
    .line 1006
    :cond_0
    new-instance v3, Ljava/io/File;

    #@24
    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@27
    invoke-virtual {v3}, Ljava/io/File;->getTotalSpace()J

    #@2a
    move-result-wide v0

    #@2b
    .line 1007
    .local v0, "currentSize":J
    cmp-long v3, v0, p1

    #@2d
    if-lez v3, :cond_1

    #@2f
    .line 1008
    const-string/jumbo v3, "PackageInstaller"

    #@32
    new-instance v4, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v5, "Current size "

    #@3a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v4

    #@3e
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@41
    move-result-object v4

    #@42
    const-string/jumbo v5, " is larger than target size "

    #@45
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v4

    #@49
    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v4

    #@4d
    .line 1009
    const-string/jumbo v5, "; skipping resize"

    #@50
    .line 1008
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v4

    #@54
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v4

    #@58
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@5b
    .line 1010
    return-void

    #@5c
    .line 1013
    :cond_1
    invoke-static {p0}, Lcom/android/internal/content/PackageHelper;->unMountSdDir(Ljava/lang/String;)Z

    #@5f
    move-result v3

    #@60
    if-nez v3, :cond_2

    #@62
    .line 1014
    new-instance v3, Lcom/android/server/pm/PackageManagerException;

    #@64
    .line 1015
    new-instance v4, Ljava/lang/StringBuilder;

    #@66
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@69
    const-string/jumbo v5, "Failed to unmount "

    #@6c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v4

    #@70
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v4

    #@74
    const-string/jumbo v5, " before resize"

    #@77
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v4

    #@7b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7e
    move-result-object v4

    #@7f
    .line 1014
    invoke-direct {v3, v6, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    #@82
    throw v3

    #@83
    .line 1019
    :cond_2
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->getEncryptKey()Ljava/lang/String;

    #@86
    move-result-object v3

    #@87
    .line 1018
    invoke-static {p1, p2, p0, v3}, Lcom/android/internal/content/PackageHelper;->resizeSdDir(JLjava/lang/String;Ljava/lang/String;)Z

    #@8a
    move-result v3

    #@8b
    if-nez v3, :cond_3

    #@8d
    .line 1020
    new-instance v3, Lcom/android/server/pm/PackageManagerException;

    #@8f
    .line 1021
    new-instance v4, Ljava/lang/StringBuilder;

    #@91
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@94
    const-string/jumbo v5, "Failed to resize "

    #@97
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v4

    #@9b
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v4

    #@9f
    const-string/jumbo v5, " to "

    #@a2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v4

    #@a6
    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v4

    #@aa
    const-string/jumbo v5, " bytes"

    #@ad
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v4

    #@b1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b4
    move-result-object v4

    #@b5
    .line 1020
    invoke-direct {v3, v6, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    #@b8
    throw v3

    #@b9
    .line 1024
    :cond_3
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->getEncryptKey()Ljava/lang/String;

    #@bc
    move-result-object v3

    #@bd
    .line 1025
    const/16 v4, 0x3e8

    #@bf
    const/4 v5, 0x0

    #@c0
    .line 1024
    invoke-static {p0, v3, v4, v5}, Lcom/android/internal/content/PackageHelper;->mountSdDir(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    #@c3
    move-result-object v2

    #@c4
    .line 1026
    if-nez v2, :cond_4

    #@c6
    .line 1027
    new-instance v3, Lcom/android/server/pm/PackageManagerException;

    #@c8
    .line 1028
    new-instance v4, Ljava/lang/StringBuilder;

    #@ca
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@cd
    const-string/jumbo v5, "Failed to mount "

    #@d0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d3
    move-result-object v4

    #@d4
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v4

    #@d8
    const-string/jumbo v5, " after resize"

    #@db
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@de
    move-result-object v4

    #@df
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e2
    move-result-object v4

    #@e3
    .line 1027
    invoke-direct {v3, v6, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    #@e6
    throw v3

    #@e7
    .line 999
    :cond_4
    return-void
.end method

.method private resolveStageDir()Ljava/io/File;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 318
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 319
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    #@5
    if-nez v1, :cond_0

    #@7
    .line 320
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    #@9
    if-eqz v1, :cond_1

    #@b
    .line 321
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    #@d
    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    #@f
    .line 331
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit v2

    #@12
    return-object v1

    #@13
    .line 323
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    #@15
    invoke-static {v1}, Lcom/android/internal/content/PackageHelper;->getSdDir(Ljava/lang/String;)Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    .line 324
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_2

    #@1b
    .line 325
    new-instance v1, Ljava/io/File;

    #@1d
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@20
    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@22
    goto :goto_0

    #@23
    .line 318
    .end local v0    # "path":Ljava/lang/String;
    :catchall_0
    move-exception v1

    #@24
    monitor-exit v2

    #@25
    throw v1

    #@26
    .line 327
    .restart local v0    # "path":Ljava/lang/String;
    :cond_2
    :try_start_2
    new-instance v1, Ljava/io/IOException;

    #@28
    new-instance v3, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v4, "Failed to resolve path to container "

    #@30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v3

    #@34
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    #@36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v3

    #@3e
    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@41
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private validateInstallLocked()V
    .locals 35
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    #@0
    .prologue
    .line 654
    const/16 v31, 0x0

    #@2
    move-object/from16 v0, v31

    #@4
    move-object/from16 v1, p0

    #@6
    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    #@8
    .line 655
    const/16 v31, -0x1

    #@a
    move/from16 v0, v31

    #@c
    move-object/from16 v1, p0

    #@e
    iput v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mVersionCode:I

    #@10
    .line 656
    const/16 v31, 0x0

    #@12
    move-object/from16 v0, v31

    #@14
    move-object/from16 v1, p0

    #@16
    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mSignatures:[Landroid/content/pm/Signature;

    #@18
    .line 658
    const/16 v31, 0x0

    #@1a
    move-object/from16 v0, v31

    #@1c
    move-object/from16 v1, p0

    #@1e
    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    #@20
    .line 659
    move-object/from16 v0, p0

    #@22
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStagedFiles:Ljava/util/List;

    #@24
    move-object/from16 v31, v0

    #@26
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->clear()V

    #@29
    .line 660
    move-object/from16 v0, p0

    #@2b
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    #@2d
    move-object/from16 v31, v0

    #@2f
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->clear()V

    #@32
    .line 662
    move-object/from16 v0, p0

    #@34
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    #@36
    move-object/from16 v31, v0

    #@38
    sget-object v32, Lcom/android/server/pm/PackageInstallerSession;->sRemovedFilter:Ljava/io/FileFilter;

    #@3a
    invoke-virtual/range {v31 .. v32}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    #@3d
    move-result-object v23

    #@3e
    .line 663
    .local v23, "removedFiles":[Ljava/io/File;
    new-instance v21, Ljava/util/ArrayList;

    #@40
    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    #@43
    .line 664
    .local v21, "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static/range {v23 .. v23}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    #@46
    move-result v31

    #@47
    if-nez v31, :cond_0

    #@49
    .line 665
    const/16 v31, 0x0

    #@4b
    move-object/from16 v0, v23

    #@4d
    array-length v0, v0

    #@4e
    move/from16 v32, v0

    #@50
    :goto_0
    move/from16 v0, v31

    #@52
    move/from16 v1, v32

    #@54
    if-ge v0, v1, :cond_0

    #@56
    aget-object v22, v23, v31

    #@58
    .line 666
    .local v22, "removedFile":Ljava/io/File;
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getName()Ljava/lang/String;

    #@5b
    move-result-object v13

    #@5c
    .line 668
    .local v13, "fileName":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    #@5f
    move-result v33

    #@60
    const-string/jumbo v34, ".removed"

    #@63
    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->length()I

    #@66
    move-result v34

    #@67
    sub-int v33, v33, v34

    #@69
    const/16 v34, 0x0

    #@6b
    .line 667
    move/from16 v0, v34

    #@6d
    move/from16 v1, v33

    #@6f
    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@72
    move-result-object v25

    #@73
    .line 669
    .local v25, "splitName":Ljava/lang/String;
    move-object/from16 v0, v21

    #@75
    move-object/from16 v1, v25

    #@77
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@7a
    .line 665
    add-int/lit8 v31, v31, 0x1

    #@7c
    goto :goto_0

    #@7d
    .line 673
    .end local v13    # "fileName":Ljava/lang/String;
    .end local v22    # "removedFile":Ljava/io/File;
    .end local v25    # "splitName":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    #@7f
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    #@81
    move-object/from16 v31, v0

    #@83
    sget-object v32, Lcom/android/server/pm/PackageInstallerSession;->sAddedFilter:Ljava/io/FileFilter;

    #@85
    invoke-virtual/range {v31 .. v32}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    #@88
    move-result-object v5

    #@89
    .line 674
    .local v5, "addedFiles":[Ljava/io/File;
    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    #@8c
    move-result v31

    #@8d
    if-eqz v31, :cond_1

    #@8f
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    #@92
    move-result v31

    #@93
    if-nez v31, :cond_1

    #@95
    .line 675
    new-instance v31, Lcom/android/server/pm/PackageManagerException;

    #@97
    const-string/jumbo v32, "No packages staged"

    #@9a
    const/16 v33, -0x2

    #@9c
    move-object/from16 v0, v31

    #@9e
    move/from16 v1, v33

    #@a0
    move-object/from16 v2, v32

    #@a2
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    #@a5
    throw v31

    #@a6
    .line 678
    :cond_1
    new-instance v28, Landroid/util/ArraySet;

    #@a8
    invoke-direct/range {v28 .. v28}, Landroid/util/ArraySet;-><init>()V

    #@ab
    .line 679
    .local v28, "stagedSplits":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/16 v31, 0x0

    #@ad
    array-length v0, v5

    #@ae
    move/from16 v32, v0

    #@b0
    :goto_1
    move/from16 v0, v31

    #@b2
    move/from16 v1, v32

    #@b4
    if-ge v0, v1, :cond_9

    #@b6
    aget-object v4, v5, v31

    #@b8
    .line 683
    .local v4, "addedFile":Ljava/io/File;
    const/16 v33, 0x100

    #@ba
    .line 682
    :try_start_0
    move/from16 v0, v33

    #@bc
    invoke-static {v4, v0}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$ApkLite;
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_0

    #@bf
    move-result-object v6

    #@c0
    .line 688
    .local v6, "apk":Landroid/content/pm/PackageParser$ApkLite;
    iget-object v0, v6, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    #@c2
    move-object/from16 v33, v0

    #@c4
    move-object/from16 v0, v28

    #@c6
    move-object/from16 v1, v33

    #@c8
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@cb
    move-result v33

    #@cc
    if-nez v33, :cond_2

    #@ce
    .line 689
    new-instance v31, Lcom/android/server/pm/PackageManagerException;

    #@d0
    .line 690
    new-instance v32, Ljava/lang/StringBuilder;

    #@d2
    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    #@d5
    const-string/jumbo v33, "Split "

    #@d8
    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@db
    move-result-object v32

    #@dc
    iget-object v0, v6, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    #@de
    move-object/from16 v33, v0

    #@e0
    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v32

    #@e4
    const-string/jumbo v33, " was defined multiple times"

    #@e7
    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ea
    move-result-object v32

    #@eb
    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ee
    move-result-object v32

    #@ef
    .line 689
    const/16 v33, -0x2

    #@f1
    move-object/from16 v0, v31

    #@f3
    move/from16 v1, v33

    #@f5
    move-object/from16 v2, v32

    #@f7
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    #@fa
    throw v31

    #@fb
    .line 684
    .end local v6    # "apk":Landroid/content/pm/PackageParser$ApkLite;
    :catch_0
    move-exception v10

    #@fc
    .line 685
    .local v10, "e":Landroid/content/pm/PackageParser$PackageParserException;
    invoke-static {v10}, Lcom/android/server/pm/PackageManagerException;->from(Landroid/content/pm/PackageParser$PackageParserException;)Lcom/android/server/pm/PackageManagerException;

    #@ff
    move-result-object v31

    #@100
    throw v31

    #@101
    .line 694
    .end local v10    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    .restart local v6    # "apk":Landroid/content/pm/PackageParser$ApkLite;
    :cond_2
    move-object/from16 v0, p0

    #@103
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    #@105
    move-object/from16 v33, v0

    #@107
    if-nez v33, :cond_3

    #@109
    .line 695
    iget-object v0, v6, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    #@10b
    move-object/from16 v33, v0

    #@10d
    move-object/from16 v0, v33

    #@10f
    move-object/from16 v1, p0

    #@111
    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    #@113
    .line 696
    iget v0, v6, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    #@115
    move/from16 v33, v0

    #@117
    move/from16 v0, v33

    #@119
    move-object/from16 v1, p0

    #@11b
    iput v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mVersionCode:I

    #@11d
    .line 698
    :cond_3
    move-object/from16 v0, p0

    #@11f
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mSignatures:[Landroid/content/pm/Signature;

    #@121
    move-object/from16 v33, v0

    #@123
    if-nez v33, :cond_4

    #@125
    .line 699
    iget-object v0, v6, Landroid/content/pm/PackageParser$ApkLite;->signatures:[Landroid/content/pm/Signature;

    #@127
    move-object/from16 v33, v0

    #@129
    move-object/from16 v0, v33

    #@12b
    move-object/from16 v1, p0

    #@12d
    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mSignatures:[Landroid/content/pm/Signature;

    #@12f
    .line 700
    iget-object v0, v6, Landroid/content/pm/PackageParser$ApkLite;->certificates:[[Ljava/security/cert/Certificate;

    #@131
    move-object/from16 v33, v0

    #@133
    move-object/from16 v0, v33

    #@135
    move-object/from16 v1, p0

    #@137
    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mCertificates:[[Ljava/security/cert/Certificate;

    #@139
    .line 703
    :cond_4
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@13c
    move-result-object v33

    #@13d
    move-object/from16 v0, p0

    #@13f
    move-object/from16 v1, v33

    #@141
    invoke-direct {v0, v1, v6}, Lcom/android/server/pm/PackageInstallerSession;->assertApkConsistent(Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;)V

    #@144
    .line 707
    iget-object v0, v6, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    #@146
    move-object/from16 v33, v0

    #@148
    if-nez v33, :cond_5

    #@14a
    .line 708
    const-string/jumbo v30, "base.apk"

    #@14d
    .line 712
    .local v30, "targetName":Ljava/lang/String;
    :goto_2
    invoke-static/range {v30 .. v30}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    #@150
    move-result v33

    #@151
    if-nez v33, :cond_6

    #@153
    .line 713
    new-instance v31, Lcom/android/server/pm/PackageManagerException;

    #@155
    .line 714
    new-instance v32, Ljava/lang/StringBuilder;

    #@157
    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    #@15a
    const-string/jumbo v33, "Invalid filename: "

    #@15d
    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@160
    move-result-object v32

    #@161
    move-object/from16 v0, v32

    #@163
    move-object/from16 v1, v30

    #@165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@168
    move-result-object v32

    #@169
    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16c
    move-result-object v32

    #@16d
    .line 713
    const/16 v33, -0x2

    #@16f
    move-object/from16 v0, v31

    #@171
    move/from16 v1, v33

    #@173
    move-object/from16 v2, v32

    #@175
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    #@178
    throw v31

    #@179
    .line 710
    .end local v30    # "targetName":Ljava/lang/String;
    :cond_5
    new-instance v33, Ljava/lang/StringBuilder;

    #@17b
    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    #@17e
    const-string/jumbo v34, "split_"

    #@181
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@184
    move-result-object v33

    #@185
    iget-object v0, v6, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    #@187
    move-object/from16 v34, v0

    #@189
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18c
    move-result-object v33

    #@18d
    const-string/jumbo v34, ".apk"

    #@190
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@193
    move-result-object v33

    #@194
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@197
    move-result-object v30

    #@198
    .restart local v30    # "targetName":Ljava/lang/String;
    goto :goto_2

    #@199
    .line 717
    :cond_6
    new-instance v29, Ljava/io/File;

    #@19b
    move-object/from16 v0, p0

    #@19d
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    #@19f
    move-object/from16 v33, v0

    #@1a1
    move-object/from16 v0, v29

    #@1a3
    move-object/from16 v1, v33

    #@1a5
    move-object/from16 v2, v30

    #@1a7
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@1aa
    .line 718
    .local v29, "targetFile":Ljava/io/File;
    move-object/from16 v0, v29

    #@1ac
    invoke-virtual {v4, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    #@1af
    move-result v33

    #@1b0
    if-nez v33, :cond_7

    #@1b2
    .line 719
    move-object/from16 v0, v29

    #@1b4
    invoke-virtual {v4, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    #@1b7
    .line 723
    :cond_7
    iget-object v0, v6, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    #@1b9
    move-object/from16 v33, v0

    #@1bb
    if-nez v33, :cond_8

    #@1bd
    .line 724
    move-object/from16 v0, v29

    #@1bf
    move-object/from16 v1, p0

    #@1c1
    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    #@1c3
    .line 727
    :cond_8
    move-object/from16 v0, p0

    #@1c5
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStagedFiles:Ljava/util/List;

    #@1c7
    move-object/from16 v33, v0

    #@1c9
    move-object/from16 v0, v33

    #@1cb
    move-object/from16 v1, v29

    #@1cd
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1d0
    .line 679
    add-int/lit8 v31, v31, 0x1

    #@1d2
    goto/16 :goto_1

    #@1d4
    .line 730
    .end local v4    # "addedFile":Ljava/io/File;
    .end local v6    # "apk":Landroid/content/pm/PackageParser$ApkLite;
    .end local v29    # "targetFile":Ljava/io/File;
    .end local v30    # "targetName":Ljava/lang/String;
    :cond_9
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    #@1d7
    move-result v31

    #@1d8
    if-lez v31, :cond_e

    #@1da
    .line 732
    move-object/from16 v0, p0

    #@1dc
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mSignatures:[Landroid/content/pm/Signature;

    #@1de
    move-object/from16 v31, v0

    #@1e0
    if-nez v31, :cond_b

    #@1e2
    const/16 v14, 0x40

    #@1e4
    .line 733
    .local v14, "flags":I
    :goto_3
    move-object/from16 v0, p0

    #@1e6
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    #@1e8
    move-object/from16 v31, v0

    #@1ea
    move-object/from16 v0, p0

    #@1ec
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    #@1ee
    move-object/from16 v32, v0

    #@1f0
    move-object/from16 v0, v32

    #@1f2
    iget-object v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    #@1f4
    move-object/from16 v32, v0

    #@1f6
    move-object/from16 v0, p0

    #@1f8
    iget v0, v0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    #@1fa
    move/from16 v33, v0

    #@1fc
    move-object/from16 v0, v31

    #@1fe
    move-object/from16 v1, v32

    #@200
    move/from16 v2, v33

    #@202
    invoke-virtual {v0, v1, v14, v2}, Lcom/android/server/pm/PackageManagerService;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    #@205
    move-result-object v20

    #@206
    .line 734
    .local v20, "pkg":Landroid/content/pm/PackageInfo;
    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@209
    move-result-object v26

    #@20a
    .local v26, "splitName$iterator":Ljava/util/Iterator;
    :cond_a
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    #@20d
    move-result v31

    #@20e
    if-eqz v31, :cond_c

    #@210
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@213
    move-result-object v25

    #@214
    check-cast v25, Ljava/lang/String;

    #@216
    .line 735
    .restart local v25    # "splitName":Ljava/lang/String;
    move-object/from16 v0, v20

    #@218
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;

    #@21a
    move-object/from16 v31, v0

    #@21c
    move-object/from16 v0, v31

    #@21e
    move-object/from16 v1, v25

    #@220
    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    #@223
    move-result v31

    #@224
    if-nez v31, :cond_a

    #@226
    .line 736
    new-instance v31, Lcom/android/server/pm/PackageManagerException;

    #@228
    .line 737
    new-instance v32, Ljava/lang/StringBuilder;

    #@22a
    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    #@22d
    const-string/jumbo v33, "Split not found: "

    #@230
    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@233
    move-result-object v32

    #@234
    move-object/from16 v0, v32

    #@236
    move-object/from16 v1, v25

    #@238
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23b
    move-result-object v32

    #@23c
    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23f
    move-result-object v32

    #@240
    .line 736
    const/16 v33, -0x2

    #@242
    move-object/from16 v0, v31

    #@244
    move/from16 v1, v33

    #@246
    move-object/from16 v2, v32

    #@248
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    #@24b
    throw v31

    #@24c
    .line 732
    .end local v14    # "flags":I
    .end local v20    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v25    # "splitName":Ljava/lang/String;
    .end local v26    # "splitName$iterator":Ljava/util/Iterator;
    :cond_b
    const/4 v14, 0x0

    #@24d
    .restart local v14    # "flags":I
    goto :goto_3

    #@24e
    .line 742
    .restart local v20    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v26    # "splitName$iterator":Ljava/util/Iterator;
    :cond_c
    move-object/from16 v0, p0

    #@250
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    #@252
    move-object/from16 v31, v0

    #@254
    if-nez v31, :cond_d

    #@256
    .line 743
    move-object/from16 v0, v20

    #@258
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@25a
    move-object/from16 v31, v0

    #@25c
    move-object/from16 v0, v31

    #@25e
    move-object/from16 v1, p0

    #@260
    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    #@262
    .line 744
    move-object/from16 v0, v20

    #@264
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    #@266
    move/from16 v31, v0

    #@268
    move/from16 v0, v31

    #@26a
    move-object/from16 v1, p0

    #@26c
    iput v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mVersionCode:I

    #@26e
    .line 746
    :cond_d
    move-object/from16 v0, p0

    #@270
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mSignatures:[Landroid/content/pm/Signature;

    #@272
    move-object/from16 v31, v0

    #@274
    if-nez v31, :cond_e

    #@276
    .line 747
    move-object/from16 v0, v20

    #@278
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    #@27a
    move-object/from16 v31, v0

    #@27c
    move-object/from16 v0, v31

    #@27e
    move-object/from16 v1, p0

    #@280
    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mSignatures:[Landroid/content/pm/Signature;

    #@282
    .line 751
    .end local v14    # "flags":I
    .end local v20    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v26    # "splitName$iterator":Ljava/util/Iterator;
    :cond_e
    move-object/from16 v0, p0

    #@284
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    #@286
    move-object/from16 v31, v0

    #@288
    move-object/from16 v0, v31

    #@28a
    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    #@28c
    move/from16 v31, v0

    #@28e
    const/16 v32, 0x1

    #@290
    move/from16 v0, v31

    #@292
    move/from16 v1, v32

    #@294
    if-ne v0, v1, :cond_f

    #@296
    .line 753
    const/16 v31, 0x0

    #@298
    move-object/from16 v0, v28

    #@29a
    move-object/from16 v1, v31

    #@29c
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@29f
    move-result v31

    #@2a0
    if-nez v31, :cond_17

    #@2a2
    .line 754
    new-instance v31, Lcom/android/server/pm/PackageManagerException;

    #@2a4
    .line 755
    const-string/jumbo v32, "Full install must include a base package"

    #@2a7
    .line 754
    const/16 v33, -0x2

    #@2a9
    move-object/from16 v0, v31

    #@2ab
    move/from16 v1, v33

    #@2ad
    move-object/from16 v2, v32

    #@2af
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    #@2b2
    throw v31

    #@2b3
    .line 760
    :cond_f
    move-object/from16 v0, p0

    #@2b5
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    #@2b7
    move-object/from16 v31, v0

    #@2b9
    move-object/from16 v0, p0

    #@2bb
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    #@2bd
    move-object/from16 v32, v0

    #@2bf
    move-object/from16 v0, p0

    #@2c1
    iget v0, v0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    #@2c3
    move/from16 v33, v0

    #@2c5
    const/16 v34, 0x0

    #@2c7
    move-object/from16 v0, v31

    #@2c9
    move-object/from16 v1, v32

    #@2cb
    move/from16 v2, v34

    #@2cd
    move/from16 v3, v33

    #@2cf
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    #@2d2
    move-result-object v7

    #@2d3
    .line 761
    .local v7, "app":Landroid/content/pm/ApplicationInfo;
    if-nez v7, :cond_10

    #@2d5
    .line 762
    new-instance v31, Lcom/android/server/pm/PackageManagerException;

    #@2d7
    .line 763
    new-instance v32, Ljava/lang/StringBuilder;

    #@2d9
    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    #@2dc
    const-string/jumbo v33, "Missing existing base package for "

    #@2df
    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e2
    move-result-object v32

    #@2e3
    move-object/from16 v0, p0

    #@2e5
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    #@2e7
    move-object/from16 v33, v0

    #@2e9
    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ec
    move-result-object v32

    #@2ed
    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f0
    move-result-object v32

    #@2f1
    .line 762
    const/16 v33, -0x2

    #@2f3
    move-object/from16 v0, v31

    #@2f5
    move/from16 v1, v33

    #@2f7
    move-object/from16 v2, v32

    #@2f9
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    #@2fc
    throw v31

    #@2fd
    .line 769
    :cond_10
    :try_start_1
    new-instance v31, Ljava/io/File;

    #@2ff
    invoke-virtual {v7}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    #@302
    move-result-object v32

    #@303
    invoke-direct/range {v31 .. v32}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@306
    const/16 v32, 0x0

    #@308
    invoke-static/range {v31 .. v32}, Landroid/content/pm/PackageParser;->parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    #@30b
    move-result-object v11

    #@30c
    .line 770
    .local v11, "existing":Landroid/content/pm/PackageParser$PackageLite;
    new-instance v31, Ljava/io/File;

    #@30e
    invoke-virtual {v7}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    #@311
    move-result-object v32

    #@312
    invoke-direct/range {v31 .. v32}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@315
    .line 771
    const/16 v32, 0x100

    #@317
    .line 770
    invoke-static/range {v31 .. v32}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$ApkLite;
    :try_end_1
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_1 .. :try_end_1} :catch_1

    #@31a
    move-result-object v12

    #@31b
    .line 776
    .local v12, "existingBase":Landroid/content/pm/PackageParser$ApkLite;
    const-string/jumbo v31, "Existing base"

    #@31e
    move-object/from16 v0, p0

    #@320
    move-object/from16 v1, v31

    #@322
    invoke-direct {v0, v1, v12}, Lcom/android/server/pm/PackageInstallerSession;->assertApkConsistent(Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;)V

    #@325
    .line 779
    move-object/from16 v0, p0

    #@327
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    #@329
    move-object/from16 v31, v0

    #@32b
    if-nez v31, :cond_11

    #@32d
    .line 780
    new-instance v31, Ljava/io/File;

    #@32f
    invoke-virtual {v7}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    #@332
    move-result-object v32

    #@333
    invoke-direct/range {v31 .. v32}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@336
    move-object/from16 v0, v31

    #@338
    move-object/from16 v1, p0

    #@33a
    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    #@33c
    .line 781
    move-object/from16 v0, p0

    #@33e
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    #@340
    move-object/from16 v31, v0

    #@342
    move-object/from16 v0, p0

    #@344
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    #@346
    move-object/from16 v32, v0

    #@348
    invoke-interface/range {v31 .. v32}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@34b
    .line 785
    :cond_11
    iget-object v0, v11, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    #@34d
    move-object/from16 v31, v0

    #@34f
    invoke-static/range {v31 .. v31}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    #@352
    move-result v31

    #@353
    if-nez v31, :cond_14

    #@355
    .line 786
    const/4 v15, 0x0

    #@356
    .local v15, "i":I
    :goto_4
    iget-object v0, v11, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    #@358
    move-object/from16 v31, v0

    #@35a
    move-object/from16 v0, v31

    #@35c
    array-length v0, v0

    #@35d
    move/from16 v31, v0

    #@35f
    move/from16 v0, v31

    #@361
    if-ge v15, v0, :cond_14

    #@363
    .line 787
    iget-object v0, v11, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    #@365
    move-object/from16 v31, v0

    #@367
    aget-object v25, v31, v15

    #@369
    .line 788
    .restart local v25    # "splitName":Ljava/lang/String;
    new-instance v24, Ljava/io/File;

    #@36b
    iget-object v0, v11, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    #@36d
    move-object/from16 v31, v0

    #@36f
    aget-object v31, v31, v15

    #@371
    move-object/from16 v0, v24

    #@373
    move-object/from16 v1, v31

    #@375
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@378
    .line 789
    .local v24, "splitFile":Ljava/io/File;
    move-object/from16 v0, v21

    #@37a
    move-object/from16 v1, v25

    #@37c
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@37f
    move-result v27

    #@380
    .line 790
    .local v27, "splitRemoved":Z
    move-object/from16 v0, v28

    #@382
    move-object/from16 v1, v25

    #@384
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@387
    move-result v31

    #@388
    if-nez v31, :cond_12

    #@38a
    if-eqz v27, :cond_13

    #@38c
    .line 786
    :cond_12
    :goto_5
    add-int/lit8 v15, v15, 0x1

    #@38e
    goto :goto_4

    #@38f
    .line 772
    .end local v11    # "existing":Landroid/content/pm/PackageParser$PackageLite;
    .end local v12    # "existingBase":Landroid/content/pm/PackageParser$ApkLite;
    .end local v15    # "i":I
    .end local v24    # "splitFile":Ljava/io/File;
    .end local v25    # "splitName":Ljava/lang/String;
    .end local v27    # "splitRemoved":Z
    :catch_1
    move-exception v10

    #@390
    .line 773
    .restart local v10    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    invoke-static {v10}, Lcom/android/server/pm/PackageManagerException;->from(Landroid/content/pm/PackageParser$PackageParserException;)Lcom/android/server/pm/PackageManagerException;

    #@393
    move-result-object v31

    #@394
    throw v31

    #@395
    .line 791
    .end local v10    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    .restart local v11    # "existing":Landroid/content/pm/PackageParser$PackageLite;
    .restart local v12    # "existingBase":Landroid/content/pm/PackageParser$ApkLite;
    .restart local v15    # "i":I
    .restart local v24    # "splitFile":Ljava/io/File;
    .restart local v25    # "splitName":Ljava/lang/String;
    .restart local v27    # "splitRemoved":Z
    :cond_13
    move-object/from16 v0, p0

    #@397
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    #@399
    move-object/from16 v31, v0

    #@39b
    move-object/from16 v0, v31

    #@39d
    move-object/from16 v1, v24

    #@39f
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3a2
    goto :goto_5

    #@3a3
    .line 797
    .end local v15    # "i":I
    .end local v24    # "splitFile":Ljava/io/File;
    .end local v25    # "splitName":Ljava/lang/String;
    .end local v27    # "splitRemoved":Z
    :cond_14
    new-instance v31, Ljava/io/File;

    #@3a5
    invoke-virtual {v7}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    #@3a8
    move-result-object v32

    #@3a9
    invoke-direct/range {v31 .. v32}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@3ac
    invoke-virtual/range {v31 .. v31}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@3af
    move-result-object v19

    #@3b0
    .line 798
    .local v19, "packageInstallDir":Ljava/io/File;
    move-object/from16 v0, v19

    #@3b2
    move-object/from16 v1, p0

    #@3b4
    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mInheritedFilesBase:Ljava/io/File;

    #@3b6
    .line 799
    new-instance v17, Ljava/io/File;

    #@3b8
    const-string/jumbo v31, "oat"

    #@3bb
    move-object/from16 v0, v17

    #@3bd
    move-object/from16 v1, v19

    #@3bf
    move-object/from16 v2, v31

    #@3c1
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@3c4
    .line 800
    .local v17, "oatDir":Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    #@3c7
    move-result v31

    #@3c8
    if-eqz v31, :cond_17

    #@3ca
    .line 801
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@3cd
    move-result-object v9

    #@3ce
    .line 806
    .local v9, "archSubdirs":[Ljava/io/File;
    if-eqz v9, :cond_17

    #@3d0
    array-length v0, v9

    #@3d1
    move/from16 v31, v0

    #@3d3
    if-lez v31, :cond_17

    #@3d5
    .line 807
    invoke-static {}, Lcom/android/server/pm/InstructionSets;->getAllDexCodeInstructionSets()[Ljava/lang/String;

    #@3d8
    move-result-object v16

    #@3d9
    .line 808
    .local v16, "instructionSets":[Ljava/lang/String;
    const/16 v31, 0x0

    #@3db
    array-length v0, v9

    #@3dc
    move/from16 v32, v0

    #@3de
    :goto_6
    move/from16 v0, v31

    #@3e0
    move/from16 v1, v32

    #@3e2
    if-ge v0, v1, :cond_17

    #@3e4
    aget-object v8, v9, v31

    #@3e6
    .line 810
    .local v8, "archSubDir":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    #@3e9
    move-result-object v33

    #@3ea
    move-object/from16 v0, v16

    #@3ec
    move-object/from16 v1, v33

    #@3ee
    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    #@3f1
    move-result v33

    #@3f2
    if-nez v33, :cond_16

    #@3f4
    .line 808
    :cond_15
    :goto_7
    add-int/lit8 v31, v31, 0x1

    #@3f6
    goto :goto_6

    #@3f7
    .line 814
    :cond_16
    move-object/from16 v0, p0

    #@3f9
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInstructionSets:Ljava/util/List;

    #@3fb
    move-object/from16 v33, v0

    #@3fd
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    #@400
    move-result-object v34

    #@401
    invoke-interface/range {v33 .. v34}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@404
    .line 815
    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@407
    move-result-object v33

    #@408
    invoke-static/range {v33 .. v33}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@40b
    move-result-object v18

    #@40c
    .line 816
    .local v18, "oatFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->isEmpty()Z

    #@40f
    move-result v33

    #@410
    if-nez v33, :cond_15

    #@412
    .line 817
    move-object/from16 v0, p0

    #@414
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    #@416
    move-object/from16 v33, v0

    #@418
    move-object/from16 v0, v33

    #@41a
    move-object/from16 v1, v18

    #@41c
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@41f
    goto :goto_7

    #@420
    .line 653
    .end local v7    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "archSubDir":Ljava/io/File;
    .end local v9    # "archSubdirs":[Ljava/io/File;
    .end local v11    # "existing":Landroid/content/pm/PackageParser$PackageLite;
    .end local v12    # "existingBase":Landroid/content/pm/PackageParser$ApkLite;
    .end local v16    # "instructionSets":[Ljava/lang/String;
    .end local v17    # "oatDir":Ljava/io/File;
    .end local v18    # "oatFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v19    # "packageInstallDir":Ljava/io/File;
    :cond_17
    return-void
.end method


# virtual methods
.method public abandon()V
    .locals 3

    #@0
    .prologue
    .line 1099
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mRelinquished:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1100
    const-string/jumbo v0, "PackageInstaller"

    #@7
    const-string/jumbo v1, "Ignoring abandon after commit relinquished control"

    #@a
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 1101
    return-void

    #@e
    .line 1103
    :cond_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->destroyInternal()V

    #@11
    .line 1104
    const-string/jumbo v0, "Session was abandoned"

    #@14
    const/16 v1, -0x73

    #@16
    const/4 v2, 0x0

    #@17
    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    #@1a
    .line 1098
    return-void
.end method

.method public addClientProgress(F)V
    .locals 2
    .param p1, "progress"    # F

    #@0
    .prologue
    .line 347
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 348
    :try_start_0
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    #@5
    add-float/2addr v0, p1

    #@6
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->setClientProgress(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v1

    #@a
    .line 346
    return-void

    #@b
    .line 347
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public close()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1092
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 1093
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    #@b
    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionActiveChanged(Lcom/android/server/pm/PackageInstallerSession;Z)V

    #@e
    .line 1091
    :cond_0
    return-void
.end method

.method public commit(Landroid/content/IntentSender;)V
    .locals 9
    .param p1, "statusReceiver"    # Landroid/content/IntentSender;

    #@0
    .prologue
    .line 487
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 490
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v2

    #@6
    .line 491
    :try_start_0
    iget-boolean v8, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    #@8
    .line 492
    .local v8, "wasSealed":Z
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    #@a
    if-nez v1, :cond_2

    #@c
    .line 494
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    #@e
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v7

    #@12
    .local v7, "bridge$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_1

    #@18
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v6

    #@1c
    check-cast v6, Landroid/os/FileBridge;

    #@1e
    .line 495
    .local v6, "bridge":Landroid/os/FileBridge;
    invoke-virtual {v6}, Landroid/os/FileBridge;->isClosed()Z

    #@21
    move-result v1

    #@22
    if-nez v1, :cond_0

    #@24
    .line 496
    new-instance v1, Ljava/lang/SecurityException;

    #@26
    const-string/jumbo v3, "Files still open"

    #@29
    invoke-direct {v1, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    .line 490
    .end local v6    # "bridge":Landroid/os/FileBridge;
    .end local v7    # "bridge$iterator":Ljava/util/Iterator;
    .end local v8    # "wasSealed":Z
    :catchall_0
    move-exception v1

    #@2e
    monitor-exit v2

    #@2f
    throw v1

    #@30
    .line 499
    .restart local v7    # "bridge$iterator":Ljava/util/Iterator;
    .restart local v8    # "wasSealed":Z
    :cond_1
    const/4 v1, 0x1

    #@31
    :try_start_1
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    #@33
    .line 503
    .end local v7    # "bridge$iterator":Ljava/util/Iterator;
    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    #@35
    iput v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    #@37
    .line 504
    const/4 v1, 0x1

    #@38
    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->computeProgressLocked(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3b
    monitor-exit v2

    #@3c
    .line 507
    if-nez v8, :cond_3

    #@3e
    .line 511
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    #@40
    invoke-virtual {v1, p0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionSealedBlocking(Lcom/android/server/pm/PackageInstallerSession;)V

    #@43
    .line 516
    :cond_3
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@45
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    #@48
    .line 518
    new-instance v0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;

    #@4a
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    #@4c
    .line 519
    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    #@4e
    iget-boolean v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mIsInstallerDeviceOwner:Z

    #@50
    iget v5, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    #@52
    move-object v2, p1

    #@53
    .line 518
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;-><init>(Landroid/content/Context;Landroid/content/IntentSender;IZI)V

    #@56
    .line 520
    .local v0, "adapter":Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    #@58
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->getBinder()Landroid/content/pm/IPackageInstallObserver2;

    #@5b
    move-result-object v2

    #@5c
    const/4 v3, 0x0

    #@5d
    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@60
    move-result-object v1

    #@61
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@64
    .line 486
    return-void
.end method

.method dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    #@0
    .prologue
    .line 1144
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 1145
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 1143
    return-void

    #@8
    .line 1144
    :catchall_0
    move-exception v1

    #@9
    monitor-exit v0

    #@a
    throw v1
.end method

.method public generateInfo()Landroid/content/pm/PackageInstaller$SessionInfo;
    .locals 6

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 270
    new-instance v0, Landroid/content/pm/PackageInstaller$SessionInfo;

    #@4
    invoke-direct {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;-><init>()V

    #@7
    .line 271
    .local v0, "info":Landroid/content/pm/PackageInstaller$SessionInfo;
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    #@9
    monitor-enter v3

    #@a
    .line 272
    :try_start_0
    iget v4, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    #@c
    iput v4, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->sessionId:I

    #@e
    .line 273
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->installerPackageName:Ljava/lang/String;

    #@10
    iput-object v4, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->installerPackageName:Ljava/lang/String;

    #@12
    .line 274
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    #@14
    if-eqz v4, :cond_0

    #@16
    .line 275
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    #@18
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    .line 274
    :cond_0
    iput-object v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->resolvedBaseCodePath:Ljava/lang/String;

    #@1e
    .line 276
    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    #@20
    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->progress:F

    #@22
    .line 277
    iget-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    #@24
    iput-boolean v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->sealed:Z

    #@26
    .line 278
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@28
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@2b
    move-result v2

    #@2c
    if-lez v2, :cond_1

    #@2e
    const/4 v1, 0x1

    #@2f
    :cond_1
    iput-boolean v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->active:Z

    #@31
    .line 280
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    #@33
    iget v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    #@35
    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->mode:I

    #@37
    .line 281
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    #@39
    iget-wide v4, v1, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    #@3b
    iput-wide v4, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->sizeBytes:J

    #@3d
    .line 282
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    #@3f
    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    #@41
    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->appPackageName:Ljava/lang/String;

    #@43
    .line 283
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    #@45
    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    #@47
    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->appIcon:Landroid/graphics/Bitmap;

    #@49
    .line 284
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    #@4b
    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    #@4d
    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->appLabel:Ljava/lang/CharSequence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4f
    monitor-exit v3

    #@50
    .line 286
    return-object v0

    #@51
    .line 271
    :catchall_0
    move-exception v1

    #@52
    monitor-exit v3

    #@53
    throw v1
.end method

.method public getNames()[Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 365
    const-string/jumbo v1, "getNames"

    #@3
    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotSealed(Ljava/lang/String;)V

    #@6
    .line 367
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDir()Ljava/io/File;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result-object v1

    #@e
    return-object v1

    #@f
    .line 368
    :catch_0
    move-exception v0

    #@10
    .line 369
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    #@13
    move-result-object v1

    #@14
    throw v1
.end method

.method public isPrepared()Z
    .locals 2

    #@0
    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 291
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 290
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public isSealed()Z
    .locals 2

    #@0
    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 297
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 296
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public open()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1065
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 1066
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    #@b
    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionActiveChanged(Lcom/android/server/pm/PackageInstallerSession;Z)V

    #@e
    .line 1069
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    #@10
    monitor-enter v1

    #@11
    .line 1070
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    #@13
    if-nez v0, :cond_1

    #@15
    .line 1071
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    #@17
    if-eqz v0, :cond_2

    #@19
    .line 1072
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    #@1b
    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerService;->prepareStageDir(Ljava/io/File;)V

    #@1e
    .line 1084
    :goto_0
    const/4 v0, 0x1

    #@1f
    iput-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    #@21
    .line 1085
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    #@23
    invoke-virtual {v0, p0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionPrepared(Lcom/android/server/pm/PackageInstallerSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    :cond_1
    monitor-exit v1

    #@27
    .line 1064
    return-void

    #@28
    .line 1073
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    #@2a
    if-eqz v0, :cond_3

    #@2c
    .line 1074
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    #@2e
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    #@30
    iget-wide v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    #@32
    invoke-static {v0, v2, v3}, Lcom/android/server/pm/PackageInstallerService;->prepareExternalStageCid(Ljava/lang/String;J)V

    #@35
    .line 1077
    const/high16 v0, 0x3e800000    # 0.25f

    #@37
    iput v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInternalProgress:F

    #@39
    .line 1078
    const/4 v0, 0x1

    #@3a
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->computeProgressLocked(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3d
    goto :goto_0

    #@3e
    .line 1069
    :catchall_0
    move-exception v0

    #@3f
    monitor-exit v1

    #@40
    throw v0

    #@41
    .line 1080
    :cond_3
    :try_start_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@43
    .line 1081
    const-string/jumbo v2, "Exactly one of stageDir or stageCid stage must be set"

    #@46
    .line 1080
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@49
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public openRead(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 462
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->openReadInternal(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v1

    #@4
    return-object v1

    #@5
    .line 463
    :catch_0
    move-exception v0

    #@6
    .line 464
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    #@9
    move-result-object v1

    #@a
    throw v1
.end method

.method public openWrite(Ljava/lang/String;JJ)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "offsetBytes"    # J
    .param p4, "lengthBytes"    # J

    #@0
    .prologue
    .line 402
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/PackageInstallerSession;->openWriteInternal(Ljava/lang/String;JJ)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v1

    #@4
    return-object v1

    #@5
    .line 403
    :catch_0
    move-exception v0

    #@6
    .line 404
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    #@9
    move-result-object v1

    #@a
    throw v1
.end method

.method public removeSplit(Ljava/lang/String;)V
    .locals 3
    .param p1, "splitName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 375
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    #@2
    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    #@4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 376
    new-instance v1, Ljava/lang/IllegalStateException;

    #@c
    const-string/jumbo v2, "Must specify package name to remove a split"

    #@f
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@12
    throw v1

    #@13
    .line 379
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->createRemoveSplitMarker(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    .line 374
    return-void

    #@17
    .line 380
    :catch_0
    move-exception v0

    #@18
    .line 381
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    #@1b
    move-result-object v1

    #@1c
    throw v1
.end method

.method public setClientProgress(F)V
    .locals 4
    .param p1, "progress"    # F

    #@0
    .prologue
    .line 337
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 339
    :try_start_0
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    #@5
    const/4 v3, 0x0

    #@6
    cmpl-float v1, v1, v3

    #@8
    if-nez v1, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    .line 340
    .local v0, "forcePublish":Z
    :goto_0
    iput p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    #@d
    .line 341
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->computeProgressLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v2

    #@11
    .line 336
    return-void

    #@12
    .line 339
    .end local v0    # "forcePublish":Z
    :cond_0
    const/4 v0, 0x0

    #@13
    .restart local v0    # "forcePublish":Z
    goto :goto_0

    #@14
    .line 337
    .end local v0    # "forcePublish":Z
    :catchall_0
    move-exception v1

    #@15
    monitor-exit v2

    #@16
    throw v1
.end method

.method setPermissionsResult(Z)V
    .locals 3
    .param p1, "accepted"    # Z

    #@0
    .prologue
    .line 1048
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1049
    new-instance v0, Ljava/lang/SecurityException;

    #@6
    const-string/jumbo v1, "Must be sealed to accept permissions"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 1052
    :cond_0
    if-eqz p1, :cond_1

    #@f
    .line 1054
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    #@11
    monitor-enter v0

    #@12
    .line 1055
    const/4 v1, 0x1

    #@13
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPermissionsAccepted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    monitor-exit v0

    #@16
    .line 1057
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    #@18
    const/4 v1, 0x0

    #@19
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@20
    .line 1047
    :goto_0
    return-void

    #@21
    .line 1054
    :catchall_0
    move-exception v1

    #@22
    monitor-exit v0

    #@23
    throw v1

    #@24
    .line 1059
    :cond_1
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->destroyInternal()V

    #@27
    .line 1060
    const-string/jumbo v0, "User rejected permissions"

    #@2a
    const/16 v1, -0x73

    #@2c
    const/4 v2, 0x0

    #@2d
    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    #@30
    goto :goto_0
.end method
