.class public Lcom/android/server/pm/PackageInstallerSession;
.super Landroid/content/pm/IPackageInstallerSession$Stub;
.source "PackageInstallerSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageInstallerSession$1;
    }
.end annotation


# static fields
.field private static final LOGD:Z = true

.field private static final MSG_COMMIT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PackageInstaller"


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

.method public constructor <init>(Lcom/android/server/pm/PackageInstallerService$InternalCallback;Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Landroid/os/Looper;IILjava/lang/String;ILandroid/content/pm/PackageInstaller$SessionParams;JLjava/io/File;Ljava/lang/String;ZZ)V
    .locals 4
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
    .line 195
    invoke-direct {p0}, Landroid/content/pm/IPackageInstallerSession$Stub;-><init>()V

    #@3
    .line 111
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    #@5
    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    #@8
    iput-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@a
    .line 113
    new-instance v2, Ljava/lang/Object;

    #@c
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    #@f
    iput-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    #@11
    .line 116
    const/4 v2, 0x0

    #@12
    iput v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    #@14
    .line 118
    const/4 v2, 0x0

    #@15
    iput v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mInternalProgress:F

    #@17
    .line 121
    const/4 v2, 0x0

    #@18
    iput v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    #@1a
    .line 123
    const/high16 v2, -0x40800000    # -1.0f

    #@1c
    iput v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mReportedProgress:F

    #@1e
    .line 126
    const/4 v2, 0x0

    #@1f
    iput-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    #@21
    .line 128
    const/4 v2, 0x0

    #@22
    iput-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    #@24
    .line 130
    const/4 v2, 0x0

    #@25
    iput-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mPermissionsAccepted:Z

    #@27
    .line 132
    const/4 v2, 0x0

    #@28
    iput-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mRelinquished:Z

    #@2a
    .line 134
    const/4 v2, 0x0

    #@2b
    iput-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    #@2d
    .line 140
    new-instance v2, Ljava/util/ArrayList;

    #@2f
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@32
    iput-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    #@34
    .line 165
    new-instance v2, Ljava/util/ArrayList;

    #@36
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@39
    iput-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStagedFiles:Ljava/util/List;

    #@3b
    .line 167
    new-instance v2, Ljava/util/ArrayList;

    #@3d
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@40
    iput-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    #@42
    .line 169
    new-instance v2, Ljava/util/ArrayList;

    #@44
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@47
    iput-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInstructionSets:Ljava/util/List;

    #@49
    .line 173
    new-instance v2, Lcom/android/server/pm/PackageInstallerSession$1;

    #@4b
    invoke-direct {v2, p0}, Lcom/android/server/pm/PackageInstallerSession$1;-><init>(Lcom/android/server/pm/PackageInstallerSession;)V

    #@4e
    iput-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandlerCallback:Landroid/os/Handler$Callback;

    #@50
    .line 199
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    #@52
    .line 200
    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    #@54
    .line 201
    iput-object p3, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    #@56
    .line 202
    new-instance v2, Landroid/os/Handler;

    #@58
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandlerCallback:Landroid/os/Handler$Callback;

    #@5a
    invoke-direct {v2, p4, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    #@5d
    iput-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    #@5f
    .line 204
    iput p5, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    #@61
    .line 205
    iput p6, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    #@63
    .line 206
    iput-object p7, p0, Lcom/android/server/pm/PackageInstallerSession;->installerPackageName:Ljava/lang/String;

    #@65
    .line 207
    iput p8, p0, Lcom/android/server/pm/PackageInstallerSession;->installerUid:I

    #@67
    .line 208
    iput-object p9, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    #@69
    .line 209
    iput-wide p10, p0, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    #@6b
    .line 210
    move-object/from16 v0, p12

    #@6d
    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    #@6f
    .line 211
    move-object/from16 v0, p13

    #@71
    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    #@73
    .line 213
    if-nez p12, :cond_0

    #@75
    const/4 v2, 0x1

    #@76
    move v3, v2

    #@77
    :goto_0
    if-nez p13, :cond_1

    #@79
    const/4 v2, 0x1

    #@7a
    :goto_1
    if-ne v3, v2, :cond_2

    #@7c
    .line 214
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@7e
    .line 215
    const-string/jumbo v3, "Exactly one of stageDir or stageCid stage must be set"

    #@81
    .line 214
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@84
    throw v2

    #@85
    .line 213
    :cond_0
    const/4 v2, 0x0

    #@86
    move v3, v2

    #@87
    goto :goto_0

    #@88
    :cond_1
    const/4 v2, 0x0

    #@89
    goto :goto_1

    #@8a
    .line 218
    :cond_2
    move/from16 v0, p14

    #@8c
    iput-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    #@8e
    .line 219
    move/from16 v0, p15

    #@90
    iput-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    #@92
    .line 223
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    #@94
    .line 224
    const-string/jumbo v3, "device_policy"

    #@97
    .line 223
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@9a
    move-result-object v1

    #@9b
    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    #@9d
    .line 225
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v1, :cond_4

    #@9f
    invoke-virtual {v1, p7}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    #@a2
    move-result v2

    #@a3
    :goto_2
    iput-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mIsInstallerDeviceOwner:Z

    #@a5
    .line 226
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    #@a7
    const-string/jumbo v3, "android.permission.INSTALL_PACKAGES"

    #@aa
    invoke-virtual {v2, v3, p8}, Lcom/android/server/pm/PackageManagerService;->checkUidPermission(Ljava/lang/String;I)I

    #@ad
    move-result v2

    #@ae
    if-eqz v2, :cond_3

    #@b0
    .line 228
    if-nez p8, :cond_5

    #@b2
    .line 230
    :cond_3
    const/4 v2, 0x1

    #@b3
    iput-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mPermissionsAccepted:Z

    #@b5
    .line 198
    :goto_3
    return-void

    #@b6
    .line 225
    :cond_4
    const/4 v2, 0x0

    #@b7
    goto :goto_2

    #@b8
    .line 229
    :cond_5
    iget-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mIsInstallerDeviceOwner:Z

    #@ba
    .line 226
    if-nez v2, :cond_3

    #@bc
    .line 232
    const/4 v2, 0x0

    #@bd
    iput-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mPermissionsAccepted:Z

    #@bf
    goto :goto_3
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
    .line 739
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
    .line 740
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
    .line 741
    iget-object v2, p2, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    #@1f
    .line 740
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    .line 741
    const-string/jumbo v2, " inconsistent with "

    #@26
    .line 740
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    .line 741
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    #@2c
    .line 740
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
    .line 743
    :cond_0
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mVersionCode:I

    #@3a
    iget v1, p2, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    #@3c
    if-eq v0, v1, :cond_1

    #@3e
    .line 744
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    #@40
    new-instance v1, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v1

    #@49
    .line 745
    const-string/jumbo v2, " version code "

    #@4c
    .line 744
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v1

    #@50
    .line 745
    iget v2, p2, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    #@52
    .line 744
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@55
    move-result-object v1

    #@56
    .line 745
    const-string/jumbo v2, " inconsistent with "

    #@59
    .line 744
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v1

    #@5d
    .line 746
    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mVersionCode:I

    #@5f
    .line 744
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@62
    move-result-object v1

    #@63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v1

    #@67
    invoke-direct {v0, v3, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    #@6a
    throw v0

    #@6b
    .line 748
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSignatures:[Landroid/content/pm/Signature;

    #@6d
    iget-object v1, p2, Landroid/content/pm/PackageParser$ApkLite;->signatures:[Landroid/content/pm/Signature;

    #@6f
    invoke-static {v0, v1}, Landroid/content/pm/Signature;->areExactMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    #@72
    move-result v0

    #@73
    if-nez v0, :cond_2

    #@75
    .line 749
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    #@77
    .line 750
    new-instance v1, Ljava/lang/StringBuilder;

    #@79
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v1

    #@80
    const-string/jumbo v2, " signatures are inconsistent"

    #@83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v1

    #@87
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a
    move-result-object v1

    #@8b
    .line 749
    invoke-direct {v0, v3, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    #@8e
    throw v0

    #@8f
    .line 738
    :cond_2
    return-void
.end method

.method private assertPreparedAndNotSealed(Ljava/lang/String;)V
    .locals 4
    .param p1, "cookie"    # Ljava/lang/String;

    #@0
    .prologue
    .line 269
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 270
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 271
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
    .line 269
    :catchall_0
    move-exception v0

    #@22
    monitor-exit v1

    #@23
    throw v0

    #@24
    .line 273
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    #@26
    if-eqz v0, :cond_1

    #@28
    .line 274
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
    .line 268
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
    .line 759
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    #@3
    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 763
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
    .line 768
    .local v2, "baseApk":Landroid/content/pm/PackageParser$ApkLite;
    new-instance v11, Ljava/util/ArrayList;

    #@f
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    #@12
    .line 769
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
    .line 770
    .local v8, "file":Ljava/io/File;
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    #@26
    invoke-virtual {v3, v8}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v3

    #@2a
    if-nez v3, :cond_0

    #@2c
    .line 771
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@33
    goto :goto_0

    #@34
    .line 764
    .end local v2    # "baseApk":Landroid/content/pm/PackageParser$ApkLite;
    .end local v8    # "file":Ljava/io/File;
    .end local v9    # "file$iterator":Ljava/util/Iterator;
    .end local v11    # "splitPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v6

    #@35
    .line 765
    .local v6, "e":Landroid/content/pm/PackageParser$PackageParserException;
    invoke-static {v6}, Lcom/android/server/pm/PackageManagerException;->from(Landroid/content/pm/PackageParser$PackageParserException;)Lcom/android/server/pm/PackageManagerException;

    #@38
    move-result-object v1

    #@39
    throw v1

    #@3a
    .line 773
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
    .line 774
    .restart local v8    # "file":Ljava/io/File;
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    #@4e
    invoke-virtual {v3, v8}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    #@51
    move-result v3

    #@52
    if-nez v3, :cond_2

    #@54
    .line 775
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@57
    move-result-object v3

    #@58
    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5b
    goto :goto_1

    #@5c
    .line 780
    .end local v8    # "file":Ljava/io/File;
    :cond_3
    new-instance v0, Landroid/content/pm/PackageParser$PackageLite;

    #@5e
    .line 781
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
    .line 780
    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser$PackageLite;-><init>(Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;[Ljava/lang/String;[Ljava/lang/String;[I)V

    #@6f
    .line 783
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
    .line 786
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
    .line 783
    .end local v10    # "isForwardLocked":Z
    :cond_4
    const/4 v10, 0x0

    #@82
    .restart local v10    # "isForwardLocked":Z
    goto :goto_2

    #@83
    .line 787
    :catch_1
    move-exception v7

    #@84
    .line 788
    .local v7, "e":Ljava/io/IOException;
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    #@86
    .line 789
    const-string/jumbo v3, "Failed to calculate install size"

    #@89
    .line 788
    const/4 v4, -0x2

    #@8a
    invoke-direct {v1, v4, v3, v7}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    #@8d
    throw v1
.end method

.method private commitLocked()V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    #@0
    .prologue
    .line 465
    move-object/from16 v0, p0

    #@2
    iget-boolean v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 466
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
    .line 468
    :cond_0
    move-object/from16 v0, p0

    #@13
    iget-boolean v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    #@15
    if-nez v2, :cond_1

    #@17
    .line 469
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
    .line 473
    :cond_1
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDir()Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    .line 482
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->validateInstallLocked()V

    #@28
    .line 484
    move-object/from16 v0, p0

    #@2a
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    #@2c
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@2f
    .line 485
    move-object/from16 v0, p0

    #@31
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mSignatures:[Landroid/content/pm/Signature;

    #@33
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@36
    .line 486
    move-object/from16 v0, p0

    #@38
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    #@3a
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3d
    .line 488
    move-object/from16 v0, p0

    #@3f
    iget-boolean v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mPermissionsAccepted:Z

    #@41
    if-nez v2, :cond_2

    #@43
    .line 491
    new-instance v16, Landroid/content/Intent;

    #@45
    const-string/jumbo v2, "android.content.pm.action.CONFIRM_PERMISSIONS"

    #@48
    move-object/from16 v0, v16

    #@4a
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@4d
    .line 492
    .local v16, "intent":Landroid/content/Intent;
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
    move-object/from16 v0, v16

    #@5b
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@5e
    .line 493
    const-string/jumbo v2, "android.content.pm.extra.SESSION_ID"

    #@61
    move-object/from16 v0, p0

    #@63
    iget v3, v0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    #@65
    move-object/from16 v0, v16

    #@67
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@6a
    .line 495
    :try_start_1
    move-object/from16 v0, p0

    #@6c
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mRemoteObserver:Landroid/content/pm/IPackageInstallObserver2;

    #@6e
    move-object/from16 v0, v16

    #@70
    invoke-interface {v2, v0}, Landroid/content/pm/IPackageInstallObserver2;->onUserActionRequired(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    #@73
    .line 501
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->close()V

    #@76
    .line 502
    return-void

    #@77
    .line 474
    .end local v16    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v11

    #@78
    .line 475
    .local v11, "e":Ljava/io/IOException;
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    #@7a
    .line 476
    const-string/jumbo v3, "Failed to resolve stage location"

    #@7d
    .line 475
    const/16 v4, -0x12

    #@7f
    invoke-direct {v2, v4, v3, v11}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    #@82
    throw v2

    #@83
    .line 505
    .end local v11    # "e":Ljava/io/IOException;
    :cond_2
    move-object/from16 v0, p0

    #@85
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    #@87
    if-eqz v2, :cond_3

    #@89
    .line 509
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->calculateInstalledSize()J

    #@8c
    move-result-wide v12

    #@8d
    .line 510
    .local v12, "finalSize":J
    move-object/from16 v0, p0

    #@8f
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    #@91
    invoke-static {v2, v12, v13}, Lcom/android/server/pm/PackageInstallerSession;->resizeContainer(Ljava/lang/String;J)V

    #@94
    .line 515
    .end local v12    # "finalSize":J
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
    .line 517
    :try_start_2
    move-object/from16 v0, p0

    #@9f
    iget-object v14, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    #@a1
    .line 518
    .local v14, "fromFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDir()Ljava/io/File;

    #@a4
    move-result-object v18

    #@a5
    .line 520
    .local v18, "toDir":Ljava/io/File;
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
    .line 521
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
    .line 522
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
    .line 536
    .end local v14    # "fromFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v18    # "toDir":Ljava/io/File;
    :catch_1
    move-exception v11

    #@dd
    .line 537
    .restart local v11    # "e":Ljava/io/IOException;
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    #@df
    .line 538
    const-string/jumbo v3, "Failed to inherit existing install"

    #@e2
    .line 537
    const/4 v4, -0x4

    #@e3
    invoke-direct {v2, v4, v3, v11}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    #@e6
    throw v2

    #@e7
    .line 525
    .end local v11    # "e":Ljava/io/IOException;
    .restart local v14    # "fromFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v18    # "toDir":Ljava/io/File;
    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    #@e9
    move-object/from16 v1, v18

    #@eb
    invoke-direct {v0, v14, v1}, Lcom/android/server/pm/PackageInstallerSession;->isLinkPossible(Ljava/util/List;Ljava/io/File;)Z

    #@ee
    move-result v2

    #@ef
    if-eqz v2, :cond_8

    #@f1
    .line 526
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
    .line 527
    new-instance v17, Ljava/io/File;

    #@fd
    const-string/jumbo v2, "oat"

    #@100
    move-object/from16 v0, v17

    #@102
    move-object/from16 v1, v18

    #@104
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@107
    .line 528
    .local v17, "oatDir":Ljava/io/File;
    move-object/from16 v0, p0

    #@109
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInstructionSets:Ljava/util/List;

    #@10b
    move-object/from16 v0, p0

    #@10d
    move-object/from16 v1, v17

    #@10f
    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageInstallerSession;->createOatDirs(Ljava/util/List;Ljava/io/File;)V

    #@112
    .line 530
    .end local v17    # "oatDir":Ljava/io/File;
    :cond_5
    move-object/from16 v0, p0

    #@114
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mInheritedFilesBase:Ljava/io/File;

    #@116
    move-object/from16 v0, p0

    #@118
    move-object/from16 v1, v18

    #@11a
    invoke-direct {v0, v14, v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->linkFiles(Ljava/util/List;Ljava/io/File;Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    #@11d
    .line 543
    .end local v14    # "fromFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v18    # "toDir":Ljava/io/File;
    :cond_6
    :goto_1
    const/high16 v2, 0x3f000000    # 0.5f

    #@11f
    move-object/from16 v0, p0

    #@121
    iput v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mInternalProgress:F

    #@123
    .line 544
    const/4 v2, 0x1

    #@124
    move-object/from16 v0, p0

    #@126
    invoke-direct {v0, v2}, Lcom/android/server/pm/PackageInstallerSession;->computeProgressLocked(Z)V

    #@129
    .line 547
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
    .line 550
    move-object/from16 v0, p0

    #@138
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    #@13a
    if-eqz v2, :cond_7

    #@13c
    .line 551
    move-object/from16 v0, p0

    #@13e
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    #@140
    move-object/from16 v0, p0

    #@142
    invoke-direct {v0, v2}, Lcom/android/server/pm/PackageInstallerSession;->finalizeAndFixContainer(Ljava/lang/String;)V

    #@145
    .line 556
    :cond_7
    new-instance v6, Lcom/android/server/pm/PackageInstallerSession$2;

    #@147
    move-object/from16 v0, p0

    #@149
    invoke-direct {v6, v0}, Lcom/android/server/pm/PackageInstallerSession$2;-><init>(Lcom/android/server/pm/PackageInstallerSession;)V

    #@14c
    .line 571
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
    .line 572
    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@158
    .line 577
    .local v10, "user":Landroid/os/UserHandle;
    :goto_2
    const/4 v2, 0x1

    #@159
    move-object/from16 v0, p0

    #@15b
    iput-boolean v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mRelinquished:Z

    #@15d
    .line 578
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
    .line 579
    move-object/from16 v0, p0

    #@173
    iget-object v8, v0, Lcom/android/server/pm/PackageInstallerSession;->installerPackageName:Ljava/lang/String;

    #@175
    move-object/from16 v0, p0

    #@177
    iget v9, v0, Lcom/android/server/pm/PackageInstallerSession;->installerUid:I

    #@179
    .line 578
    invoke-virtual/range {v2 .. v10}, Lcom/android/server/pm/PackageManagerService;->installStage(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;ILandroid/os/UserHandle;)V

    #@17c
    .line 464
    return-void

    #@17d
    .line 534
    .end local v6    # "localObserver":Landroid/content/pm/IPackageInstallObserver2;
    .end local v10    # "user":Landroid/os/UserHandle;
    .restart local v14    # "fromFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v18    # "toDir":Ljava/io/File;
    :cond_8
    :try_start_4
    move-object/from16 v0, v18

    #@17f
    invoke-static {v14, v0}, Lcom/android/server/pm/PackageInstallerSession;->copyFiles(Ljava/util/List;Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    #@182
    goto :goto_1

    #@183
    .line 574
    .end local v14    # "fromFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v18    # "toDir":Ljava/io/File;
    .restart local v6    # "localObserver":Landroid/content/pm/IPackageInstallObserver2;
    :cond_9
    new-instance v10, Landroid/os/UserHandle;

    #@185
    move-object/from16 v0, p0

    #@187
    iget v2, v0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    #@189
    invoke-direct {v10, v2}, Landroid/os/UserHandle;-><init>(I)V

    #@18c
    .restart local v10    # "user":Landroid/os/UserHandle;
    goto :goto_2

    #@18d
    .line 496
    .end local v6    # "localObserver":Landroid/content/pm/IPackageInstallObserver2;
    .end local v10    # "user":Landroid/os/UserHandle;
    .restart local v16    # "intent":Landroid/content/Intent;
    :catch_2
    move-exception v15

    #@18e
    .local v15, "ignored":Landroid/os/RemoteException;
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
    .line 320
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    #@9
    mul-float/2addr v0, v1

    #@a
    invoke-static {v0, v2, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    #@d
    move-result v0

    #@e
    .line 321
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInternalProgress:F

    #@10
    mul-float/2addr v1, v3

    #@11
    invoke-static {v1, v2, v3}, Landroid/util/MathUtils;->constrain(FFF)F

    #@14
    move-result v1

    #@15
    .line 320
    add-float/2addr v0, v1

    #@16
    iput v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    #@18
    .line 324
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
    .line 325
    :cond_0
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    #@2f
    iput v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mReportedProgress:F

    #@31
    .line 326
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    #@33
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    #@35
    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionProgressChanged(Lcom/android/server/pm/PackageInstallerSession;F)V

    #@38
    .line 319
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
    .line 853
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
    .line 854
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
    .line 855
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    #@1a
    .line 853
    :cond_0
    add-int/lit8 v6, v6, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 859
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
    .line 860
    .local v2, "fromFile":Ljava/io/File;
    const-string/jumbo v6, "inherit"

    #@30
    const-string/jumbo v7, ".tmp"

    #@33
    invoke-static {v6, v7, p1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    #@36
    move-result-object v4

    #@37
    .line 861
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
    .line 862
    invoke-static {v2, v4}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    #@5f
    move-result v6

    #@60
    if-nez v6, :cond_3

    #@62
    .line 863
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
    .line 866
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
    .line 870
    new-instance v5, Ljava/io/File;

    #@92
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    #@95
    move-result-object v6

    #@96
    invoke-direct {v5, p1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@99
    .line 871
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
    .line 872
    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    #@c1
    move-result v6

    #@c2
    if-nez v6, :cond_2

    #@c4
    .line 873
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
    .line 867
    .end local v5    # "toFile":Ljava/io/File;
    :catch_0
    move-exception v0

    #@ea
    .line 868
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
    .line 876
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
    .line 851
    return-void
.end method

.method private createOatDirs(Ljava/util/List;Ljava/io/File;)V
    .locals 4
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

    #@0
    .prologue
    .line 829
    .local p1, "instructionSets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v1

    #@4
    .local v1, "instructionSet$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_0

    #@a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Ljava/lang/String;

    #@10
    .line 830
    .local v0, "instructionSet":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    #@12
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    #@14
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v2, v3, v0}, Lcom/android/server/pm/Installer;->createOatDir(Ljava/lang/String;Ljava/lang/String;)I

    #@1b
    goto :goto_0

    #@1c
    .line 828
    .end local v0    # "instructionSet":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private destroyInternal()V
    .locals 4

    #@0
    .prologue
    .line 1025
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 1026
    const/4 v2, 0x1

    #@4
    :try_start_0
    iput-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    #@6
    .line 1027
    const/4 v2, 0x1

    #@7
    iput-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    #@9
    .line 1030
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    #@b
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v1

    #@f
    .local v1, "bridge$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_0

    #@15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Landroid/os/FileBridge;

    #@1b
    .line 1031
    .local v0, "bridge":Landroid/os/FileBridge;
    invoke-virtual {v0}, Landroid/os/FileBridge;->forceClose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    goto :goto_0

    #@1f
    .line 1025
    .end local v0    # "bridge":Landroid/os/FileBridge;
    .end local v1    # "bridge$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    #@20
    monitor-exit v3

    #@21
    throw v2

    #@22
    .restart local v1    # "bridge$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v3

    #@23
    .line 1034
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    #@25
    if-eqz v2, :cond_1

    #@27
    .line 1035
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    #@29
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    #@2b
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    #@2d
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v2, v3}, Lcom/android/server/pm/Installer;->rmPackageDir(Ljava/lang/String;)I

    #@34
    .line 1037
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    #@36
    if-eqz v2, :cond_2

    #@38
    .line 1038
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    #@3a
    invoke-static {v2}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    #@3d
    .line 1024
    :cond_2
    return-void
.end method

.method private dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "returnCode"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1010
    iput p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mFinalStatus:I

    #@2
    .line 1011
    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerSession;->mFinalMessage:Ljava/lang/String;

    #@4
    .line 1013
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mRemoteObserver:Landroid/content/pm/IPackageInstallObserver2;

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 1015
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mRemoteObserver:Landroid/content/pm/IPackageInstallObserver2;

    #@a
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    #@c
    invoke-interface {v2, v3, p1, p2, p3}, Landroid/content/pm/IPackageInstallObserver2;->onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 1020
    :cond_0
    :goto_0
    const/4 v2, 0x1

    #@10
    if-ne p1, v2, :cond_1

    #@12
    const/4 v1, 0x1

    #@13
    .line 1021
    .local v1, "success":Z
    :goto_1
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    #@15
    invoke-virtual {v2, p0, v1}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionFinished(Lcom/android/server/pm/PackageInstallerSession;Z)V

    #@18
    .line 1009
    return-void

    #@19
    .line 1020
    .end local v1    # "success":Z
    :cond_1
    const/4 v1, 0x0

    #@1a
    .restart local v1    # "success":Z
    goto :goto_1

    #@1b
    .line 1016
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
    .line 1049
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
    .line 1050
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@23
    .line 1052
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
    .line 1053
    const-string/jumbo v0, "installerPackageName"

    #@32
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->installerPackageName:Ljava/lang/String;

    #@34
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@37
    .line 1054
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
    .line 1055
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
    .line 1056
    const-string/jumbo v0, "stageDir"

    #@52
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    #@54
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@57
    .line 1057
    const-string/jumbo v0, "stageCid"

    #@5a
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    #@5c
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@5f
    .line 1058
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@62
    .line 1060
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    #@64
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageInstaller$SessionParams;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    #@67
    .line 1062
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
    .line 1063
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
    .line 1064
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
    .line 1065
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
    .line 1066
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
    .line 1067
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
    .line 1068
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
    .line 1069
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
    .line 1070
    const-string/jumbo v0, "mFinalMessage"

    #@ce
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mFinalMessage:Ljava/lang/String;

    #@d0
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@d3
    .line 1071
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@d6
    .line 1073
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@d9
    .line 1048
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
    .line 882
    new-instance v2, Ljava/io/File;

    #@3
    const-string/jumbo v4, "lib"

    #@6
    invoke-direct {v2, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@9
    .line 883
    .local v2, "libDir":Ljava/io/File;
    invoke-static {v2, v5}, Lcom/android/internal/content/NativeLibraryHelper;->removeNativeBinariesFromDirLI(Ljava/io/File;Z)V

    #@c
    .line 885
    const/4 v1, 0x0

    #@d
    .line 887
    .local v1, "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    :try_start_0
    invoke-static {p0}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Ljava/io/File;)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    #@10
    move-result-object v1

    #@11
    .line 888
    .local v1, "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    invoke-static {v1, v2, p1}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesWithOverride(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;Ljava/lang/String;)I

    #@14
    move-result v3

    #@15
    .line 890
    .local v3, "res":I
    if-eq v3, v5, :cond_0

    #@17
    .line 891
    new-instance v4, Lcom/android/server/pm/PackageManagerException;

    #@19
    .line 892
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
    .line 891
    invoke-direct {v4, v3, v5}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    #@30
    throw v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@31
    .line 894
    .end local v1    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .end local v3    # "res":I
    :catch_0
    move-exception v0

    #@32
    .line 895
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v4, Lcom/android/server/pm/PackageManagerException;

    #@34
    .line 896
    const-string/jumbo v5, "Failed to extract native libraries"

    #@37
    .line 895
    const/16 v6, -0x6e

    #@39
    invoke-direct {v4, v6, v5, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    #@3c
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3d
    .line 897
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    #@3e
    .line 898
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@41
    .line 897
    throw v4

    #@42
    .line 898
    .restart local v1    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .restart local v3    # "res":I
    :cond_0
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@45
    .line 880
    return-void
.end method

.method private finalizeAndFixContainer(Ljava/lang/String;)V
    .locals 6
    .param p1, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v5, -0x12

    #@2
    .line 937
    invoke-static {p1}, Lcom/android/internal/content/PackageHelper;->finalizeSdDir(Ljava/lang/String;)Z

    #@5
    move-result v2

    #@6
    if-nez v2, :cond_0

    #@8
    .line 938
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    #@a
    .line 939
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
    .line 938
    invoke-direct {v2, v5, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    #@21
    throw v2

    #@22
    .line 942
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    #@24
    const-string/jumbo v3, "com.android.defcontainer"

    #@27
    .line 943
    const/4 v4, 0x0

    #@28
    .line 942
    invoke-virtual {v2, v3, v4}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;I)I

    #@2b
    move-result v1

    #@2c
    .line 944
    .local v1, "uid":I
    invoke-static {v1}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    #@2f
    move-result v0

    #@30
    .line 945
    .local v0, "gid":I
    const/4 v2, 0x0

    #@31
    invoke-static {p1, v0, v2}, Lcom/android/internal/content/PackageHelper;->fixSdPermissions(Ljava/lang/String;ILjava/lang/String;)Z

    #@34
    move-result v2

    #@35
    if-nez v2, :cond_1

    #@37
    .line 946
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    #@39
    .line 947
    new-instance v3, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v4, "Failed to fix permissions on container "

    #@41
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v3

    #@45
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v3

    #@49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v3

    #@4d
    .line 946
    invoke-direct {v2, v5, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    #@50
    throw v2

    #@51
    .line 936
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
    .line 814
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 815
    .local v1, "pathStr":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 817
    .local v0, "baseStr":Ljava/lang/String;
    const-string/jumbo v2, "/."

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_0

    #@11
    .line 818
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
    .line 821
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@2e
    move-result v2

    #@2f
    if-eqz v2, :cond_1

    #@31
    .line 822
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
    .line 825
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
    .line 799
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@4
    move-result-object v5

    #@5
    invoke-static {v5}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    #@8
    move-result-object v4

    #@9
    .line 800
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
    .line 801
    .local v1, "fromFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@1c
    move-result-object v5

    #@1d
    invoke-static {v5}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    #@20
    move-result-object v3

    #@21
    .line 802
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
    .line 803
    return v10

    #@2a
    .line 806
    .end local v1    # "fromFile":Ljava/io/File;
    .end local v2    # "fromFile$iterator":Ljava/util/Iterator;
    .end local v3    # "fromStat":Landroid/system/StructStat;
    .end local v4    # "toStat":Landroid/system/StructStat;
    :catch_0
    move-exception v0

    #@2b
    .line 807
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
    .line 808
    return v10

    #@46
    .line 810
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
    .line 836
    .local p1, "fromFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v1

    #@4
    .local v1, "fromFile$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v4

    #@8
    if-eqz v4, :cond_1

    #@a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Ljava/io/File;

    #@10
    .line 837
    .local v0, "fromFile":Ljava/io/File;
    invoke-static {v0, p3}, Lcom/android/server/pm/PackageInstallerSession;->getRelativePath(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    .line 838
    .local v2, "relativePath":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    #@16
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    #@18
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@1b
    move-result-object v5

    #@1c
    .line 839
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@1f
    move-result-object v6

    #@20
    .line 838
    invoke-virtual {v4, v2, v5, v6}, Lcom/android/server/pm/Installer;->linkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    #@23
    move-result v3

    #@24
    .line 841
    .local v3, "ret":I
    if-gez v3, :cond_0

    #@26
    .line 843
    new-instance v4, Ljava/io/IOException;

    #@28
    new-instance v5, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v6, "failed linkOrCreateDir("

    #@30
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v5

    #@34
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v5

    #@38
    const-string/jumbo v6, ", "

    #@3b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v5

    #@3f
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v5

    #@43
    .line 844
    const-string/jumbo v6, ", "

    #@46
    .line 843
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v5

    #@4a
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v5

    #@4e
    .line 844
    const-string/jumbo v6, ")"

    #@51
    .line 843
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v5

    #@55
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v5

    #@59
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@5c
    throw v4

    #@5d
    .line 848
    .end local v0    # "fromFile":Ljava/io/File;
    .end local v2    # "relativePath":Ljava/lang/String;
    .end local v3    # "ret":I
    :cond_1
    const-string/jumbo v4, "PackageInstaller"

    #@60
    new-instance v5, Ljava/lang/StringBuilder;

    #@62
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@65
    const-string/jumbo v6, "Linked "

    #@68
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v5

    #@6c
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@6f
    move-result v6

    #@70
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@73
    move-result-object v5

    #@74
    const-string/jumbo v6, " files into "

    #@77
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v5

    #@7b
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v5

    #@7f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82
    move-result-object v5

    #@83
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@86
    .line 835
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
    .line 410
    const-string/jumbo v3, "openRead"

    #@3
    invoke-direct {p0, v3}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotSealed(Ljava/lang/String;)V

    #@6
    .line 413
    :try_start_0
    invoke-static {p1}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    #@9
    move-result v3

    #@a
    if-nez v3, :cond_0

    #@c
    .line 414
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
    .line 421
    :catch_0
    move-exception v0

    #@27
    .line 422
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    #@2a
    move-result-object v3

    #@2b
    throw v3

    #@2c
    .line 416
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
    .line 418
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
    .line 419
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
    .line 355
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 356
    :try_start_0
    const-string/jumbo v0, "openWrite"

    #@6
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotSealed(Ljava/lang/String;)V

    #@9
    .line 358
    new-instance v6, Landroid/os/FileBridge;

    #@b
    invoke-direct {v6}, Landroid/os/FileBridge;-><init>()V

    #@e
    .line 359
    .local v6, "bridge":Landroid/os/FileBridge;
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit v2

    #@14
    .line 364
    :try_start_1
    invoke-static {p1}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    #@17
    move-result v0

    #@18
    if-nez v0, :cond_0

    #@1a
    .line 365
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
    .line 395
    :catch_0
    move-exception v7

    #@35
    .line 396
    .local v7, "e":Landroid/system/ErrnoException;
    invoke-virtual {v7}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    #@38
    move-result-object v0

    #@39
    throw v0

    #@3a
    .line 355
    .end local v6    # "bridge":Landroid/os/FileBridge;
    .end local v7    # "e":Landroid/system/ErrnoException;
    :catchall_0
    move-exception v0

    #@3b
    monitor-exit v2

    #@3c
    throw v0

    #@3d
    .line 367
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
    .line 371
    .local v11, "target":Ljava/io/File;
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@48
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@4b
    move-result-object v2

    #@4c
    .line 372
    sget v3, Landroid/system/OsConstants;->O_CREAT:I

    #@4e
    sget v4, Landroid/system/OsConstants;->O_WRONLY:I

    #@50
    or-int/2addr v3, v4

    #@51
    const/16 v4, 0x1a4

    #@53
    .line 371
    invoke-interface {v0, v2, v3, v4}, Llibcore/io/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    #@56
    move-result-object v1

    #@57
    .line 373
    .local v1, "targetFd":Ljava/io/FileDescriptor;
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@5a
    move-result-object v0

    #@5b
    const/16 v2, 0x1a4

    #@5d
    invoke-static {v0, v2}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    #@60
    .line 377
    const-wide/16 v2, 0x0

    #@62
    cmp-long v0, p4, v2

    #@64
    if-lez v0, :cond_2

    #@66
    .line 378
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@68
    invoke-interface {v0, v1}, Llibcore/io/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    #@6b
    move-result-object v10

    #@6c
    .line 379
    .local v10, "stat":Landroid/system/StructStat;
    iget-wide v2, v10, Landroid/system/StructStat;->st_size:J

    #@6e
    sub-long v8, p4, v2

    #@70
    .line 381
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
    .line 382
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    #@7c
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    #@7e
    iget-object v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    #@80
    invoke-virtual {v0, v2, v8, v9}, Lcom/android/server/pm/PackageManagerService;->freeStorage(Ljava/lang/String;J)V

    #@83
    .line 384
    :cond_1
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@85
    const-wide/16 v2, 0x0

    #@87
    move-wide/from16 v4, p4

    #@89
    invoke-interface/range {v0 .. v5}, Llibcore/io/Os;->posix_fallocate(Ljava/io/FileDescriptor;JJ)V

    #@8c
    .line 387
    .end local v8    # "deltaBytes":J
    .end local v10    # "stat":Landroid/system/StructStat;
    :cond_2
    const-wide/16 v2, 0x0

    #@8e
    cmp-long v0, p2, v2

    #@90
    if-lez v0, :cond_3

    #@92
    .line 388
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@94
    sget v2, Landroid/system/OsConstants;->SEEK_SET:I

    #@96
    invoke-interface {v0, v1, p2, p3, v2}, Llibcore/io/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    #@99
    .line 391
    :cond_3
    invoke-virtual {v6, v1}, Landroid/os/FileBridge;->setTargetFile(Ljava/io/FileDescriptor;)V

    #@9c
    .line 392
    invoke-virtual {v6}, Landroid/os/FileBridge;->start()V

    #@9f
    .line 393
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
    .line 904
    invoke-static {p0}, Lcom/android/internal/content/PackageHelper;->getSdDir(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    .line 905
    .local v2, "path":Ljava/lang/String;
    if-nez v2, :cond_0

    #@8
    .line 906
    new-instance v3, Lcom/android/server/pm/PackageManagerException;

    #@a
    .line 907
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
    .line 906
    invoke-direct {v3, v6, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    #@21
    throw v3

    #@22
    .line 910
    :cond_0
    new-instance v3, Ljava/io/File;

    #@24
    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@27
    invoke-virtual {v3}, Ljava/io/File;->getTotalSpace()J

    #@2a
    move-result-wide v0

    #@2b
    .line 911
    .local v0, "currentSize":J
    cmp-long v3, v0, p1

    #@2d
    if-lez v3, :cond_1

    #@2f
    .line 912
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
    .line 913
    const-string/jumbo v5, "; skipping resize"

    #@50
    .line 912
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
    .line 914
    return-void

    #@5c
    .line 917
    :cond_1
    invoke-static {p0}, Lcom/android/internal/content/PackageHelper;->unMountSdDir(Ljava/lang/String;)Z

    #@5f
    move-result v3

    #@60
    if-nez v3, :cond_2

    #@62
    .line 918
    new-instance v3, Lcom/android/server/pm/PackageManagerException;

    #@64
    .line 919
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
    .line 918
    invoke-direct {v3, v6, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    #@82
    throw v3

    #@83
    .line 923
    :cond_2
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->getEncryptKey()Ljava/lang/String;

    #@86
    move-result-object v3

    #@87
    .line 922
    invoke-static {p1, p2, p0, v3}, Lcom/android/internal/content/PackageHelper;->resizeSdDir(JLjava/lang/String;Ljava/lang/String;)Z

    #@8a
    move-result v3

    #@8b
    if-nez v3, :cond_3

    #@8d
    .line 924
    new-instance v3, Lcom/android/server/pm/PackageManagerException;

    #@8f
    .line 925
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
    .line 924
    invoke-direct {v3, v6, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    #@b8
    throw v3

    #@b9
    .line 928
    :cond_3
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->getEncryptKey()Ljava/lang/String;

    #@bc
    move-result-object v3

    #@bd
    .line 929
    const/16 v4, 0x3e8

    #@bf
    const/4 v5, 0x0

    #@c0
    .line 928
    invoke-static {p0, v3, v4, v5}, Lcom/android/internal/content/PackageHelper;->mountSdDir(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    #@c3
    move-result-object v2

    #@c4
    .line 930
    if-nez v2, :cond_4

    #@c6
    .line 931
    new-instance v3, Lcom/android/server/pm/PackageManagerException;

    #@c8
    .line 932
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
    .line 931
    invoke-direct {v3, v6, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    #@e6
    throw v3

    #@e7
    .line 903
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
    .line 285
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 286
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    #@5
    if-nez v1, :cond_0

    #@7
    .line 287
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    #@9
    if-eqz v1, :cond_1

    #@b
    .line 288
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    #@d
    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    #@f
    .line 298
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
    .line 290
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    #@15
    invoke-static {v1}, Lcom/android/internal/content/PackageHelper;->getSdDir(Ljava/lang/String;)Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    .line 291
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_2

    #@1b
    .line 292
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
    .line 285
    .end local v0    # "path":Ljava/lang/String;
    :catchall_0
    move-exception v1

    #@24
    monitor-exit v2

    #@25
    throw v1

    #@26
    .line 294
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
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    #@0
    .prologue
    .line 595
    const/16 v23, 0x0

    #@2
    move-object/from16 v0, v23

    #@4
    move-object/from16 v1, p0

    #@6
    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    #@8
    .line 596
    const/16 v23, -0x1

    #@a
    move/from16 v0, v23

    #@c
    move-object/from16 v1, p0

    #@e
    iput v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mVersionCode:I

    #@10
    .line 597
    const/16 v23, 0x0

    #@12
    move-object/from16 v0, v23

    #@14
    move-object/from16 v1, p0

    #@16
    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mSignatures:[Landroid/content/pm/Signature;

    #@18
    .line 599
    const/16 v23, 0x0

    #@1a
    move-object/from16 v0, v23

    #@1c
    move-object/from16 v1, p0

    #@1e
    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    #@20
    .line 600
    move-object/from16 v0, p0

    #@22
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStagedFiles:Ljava/util/List;

    #@24
    move-object/from16 v23, v0

    #@26
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->clear()V

    #@29
    .line 601
    move-object/from16 v0, p0

    #@2b
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    #@2d
    move-object/from16 v23, v0

    #@2f
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->clear()V

    #@32
    .line 603
    move-object/from16 v0, p0

    #@34
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    #@36
    move-object/from16 v23, v0

    #@38
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@3b
    move-result-object v12

    #@3c
    .line 604
    .local v12, "files":[Ljava/io/File;
    invoke-static {v12}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    #@3f
    move-result v23

    #@40
    if-eqz v23, :cond_0

    #@42
    .line 605
    new-instance v23, Lcom/android/server/pm/PackageManagerException;

    #@44
    const-string/jumbo v24, "No packages staged"

    #@47
    const/16 v25, -0x2

    #@49
    move-object/from16 v0, v23

    #@4b
    move/from16 v1, v25

    #@4d
    move-object/from16 v2, v24

    #@4f
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    #@52
    throw v23

    #@53
    .line 609
    :cond_0
    new-instance v20, Landroid/util/ArraySet;

    #@55
    invoke-direct/range {v20 .. v20}, Landroid/util/ArraySet;-><init>()V

    #@58
    .line 610
    .local v20, "stagedSplits":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/16 v23, 0x0

    #@5a
    array-length v0, v12

    #@5b
    move/from16 v24, v0

    #@5d
    :goto_0
    move/from16 v0, v23

    #@5f
    move/from16 v1, v24

    #@61
    if-ge v0, v1, :cond_9

    #@63
    aget-object v11, v12, v23

    #@65
    .line 614
    .local v11, "file":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z

    #@68
    move-result v25

    #@69
    if-eqz v25, :cond_1

    #@6b
    .line 610
    :goto_1
    add-int/lit8 v23, v23, 0x1

    #@6d
    goto :goto_0

    #@6e
    .line 618
    :cond_1
    const/16 v25, 0x100

    #@70
    :try_start_0
    move/from16 v0, v25

    #@72
    invoke-static {v11, v0}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$ApkLite;
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_0

    #@75
    move-result-object v4

    #@76
    .line 623
    .local v4, "apk":Landroid/content/pm/PackageParser$ApkLite;
    iget-object v0, v4, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    #@78
    move-object/from16 v25, v0

    #@7a
    move-object/from16 v0, v20

    #@7c
    move-object/from16 v1, v25

    #@7e
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@81
    move-result v25

    #@82
    if-nez v25, :cond_2

    #@84
    .line 624
    new-instance v23, Lcom/android/server/pm/PackageManagerException;

    #@86
    .line 625
    new-instance v24, Ljava/lang/StringBuilder;

    #@88
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@8b
    const-string/jumbo v25, "Split "

    #@8e
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v24

    #@92
    iget-object v0, v4, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    #@94
    move-object/from16 v25, v0

    #@96
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v24

    #@9a
    const-string/jumbo v25, " was defined multiple times"

    #@9d
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v24

    #@a1
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a4
    move-result-object v24

    #@a5
    .line 624
    const/16 v25, -0x2

    #@a7
    move-object/from16 v0, v23

    #@a9
    move/from16 v1, v25

    #@ab
    move-object/from16 v2, v24

    #@ad
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    #@b0
    throw v23

    #@b1
    .line 619
    .end local v4    # "apk":Landroid/content/pm/PackageParser$ApkLite;
    :catch_0
    move-exception v8

    #@b2
    .line 620
    .local v8, "e":Landroid/content/pm/PackageParser$PackageParserException;
    invoke-static {v8}, Lcom/android/server/pm/PackageManagerException;->from(Landroid/content/pm/PackageParser$PackageParserException;)Lcom/android/server/pm/PackageManagerException;

    #@b5
    move-result-object v23

    #@b6
    throw v23

    #@b7
    .line 629
    .end local v8    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    .restart local v4    # "apk":Landroid/content/pm/PackageParser$ApkLite;
    :cond_2
    move-object/from16 v0, p0

    #@b9
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    #@bb
    move-object/from16 v25, v0

    #@bd
    if-nez v25, :cond_3

    #@bf
    .line 630
    iget-object v0, v4, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    #@c1
    move-object/from16 v25, v0

    #@c3
    move-object/from16 v0, v25

    #@c5
    move-object/from16 v1, p0

    #@c7
    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    #@c9
    .line 631
    iget v0, v4, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    #@cb
    move/from16 v25, v0

    #@cd
    move/from16 v0, v25

    #@cf
    move-object/from16 v1, p0

    #@d1
    iput v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mVersionCode:I

    #@d3
    .line 633
    :cond_3
    move-object/from16 v0, p0

    #@d5
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mSignatures:[Landroid/content/pm/Signature;

    #@d7
    move-object/from16 v25, v0

    #@d9
    if-nez v25, :cond_4

    #@db
    .line 634
    iget-object v0, v4, Landroid/content/pm/PackageParser$ApkLite;->signatures:[Landroid/content/pm/Signature;

    #@dd
    move-object/from16 v25, v0

    #@df
    move-object/from16 v0, v25

    #@e1
    move-object/from16 v1, p0

    #@e3
    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mSignatures:[Landroid/content/pm/Signature;

    #@e5
    .line 637
    :cond_4
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@e8
    move-result-object v25

    #@e9
    move-object/from16 v0, p0

    #@eb
    move-object/from16 v1, v25

    #@ed
    invoke-direct {v0, v1, v4}, Lcom/android/server/pm/PackageInstallerSession;->assertApkConsistent(Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;)V

    #@f0
    .line 641
    iget-object v0, v4, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    #@f2
    move-object/from16 v25, v0

    #@f4
    if-nez v25, :cond_5

    #@f6
    .line 642
    const-string/jumbo v22, "base.apk"

    #@f9
    .line 646
    .local v22, "targetName":Ljava/lang/String;
    :goto_2
    invoke-static/range {v22 .. v22}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    #@fc
    move-result v25

    #@fd
    if-nez v25, :cond_6

    #@ff
    .line 647
    new-instance v23, Lcom/android/server/pm/PackageManagerException;

    #@101
    .line 648
    new-instance v24, Ljava/lang/StringBuilder;

    #@103
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@106
    const-string/jumbo v25, "Invalid filename: "

    #@109
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10c
    move-result-object v24

    #@10d
    move-object/from16 v0, v24

    #@10f
    move-object/from16 v1, v22

    #@111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@114
    move-result-object v24

    #@115
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@118
    move-result-object v24

    #@119
    .line 647
    const/16 v25, -0x2

    #@11b
    move-object/from16 v0, v23

    #@11d
    move/from16 v1, v25

    #@11f
    move-object/from16 v2, v24

    #@121
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    #@124
    throw v23

    #@125
    .line 644
    .end local v22    # "targetName":Ljava/lang/String;
    :cond_5
    new-instance v25, Ljava/lang/StringBuilder;

    #@127
    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    #@12a
    const-string/jumbo v26, "split_"

    #@12d
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@130
    move-result-object v25

    #@131
    iget-object v0, v4, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    #@133
    move-object/from16 v26, v0

    #@135
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@138
    move-result-object v25

    #@139
    const-string/jumbo v26, ".apk"

    #@13c
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13f
    move-result-object v25

    #@140
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@143
    move-result-object v22

    #@144
    .restart local v22    # "targetName":Ljava/lang/String;
    goto :goto_2

    #@145
    .line 651
    :cond_6
    new-instance v21, Ljava/io/File;

    #@147
    move-object/from16 v0, p0

    #@149
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    #@14b
    move-object/from16 v25, v0

    #@14d
    move-object/from16 v0, v21

    #@14f
    move-object/from16 v1, v25

    #@151
    move-object/from16 v2, v22

    #@153
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@156
    .line 652
    .local v21, "targetFile":Ljava/io/File;
    move-object/from16 v0, v21

    #@158
    invoke-virtual {v11, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    #@15b
    move-result v25

    #@15c
    if-nez v25, :cond_7

    #@15e
    .line 653
    move-object/from16 v0, v21

    #@160
    invoke-virtual {v11, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    #@163
    .line 657
    :cond_7
    iget-object v0, v4, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    #@165
    move-object/from16 v25, v0

    #@167
    if-nez v25, :cond_8

    #@169
    .line 658
    move-object/from16 v0, v21

    #@16b
    move-object/from16 v1, p0

    #@16d
    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    #@16f
    .line 661
    :cond_8
    move-object/from16 v0, p0

    #@171
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStagedFiles:Ljava/util/List;

    #@173
    move-object/from16 v25, v0

    #@175
    move-object/from16 v0, v25

    #@177
    move-object/from16 v1, v21

    #@179
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@17c
    goto/16 :goto_1

    #@17e
    .line 664
    .end local v4    # "apk":Landroid/content/pm/PackageParser$ApkLite;
    .end local v11    # "file":Ljava/io/File;
    .end local v21    # "targetFile":Ljava/io/File;
    .end local v22    # "targetName":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    #@180
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    #@182
    move-object/from16 v23, v0

    #@184
    move-object/from16 v0, v23

    #@186
    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    #@188
    move/from16 v23, v0

    #@18a
    const/16 v24, 0x1

    #@18c
    move/from16 v0, v23

    #@18e
    move/from16 v1, v24

    #@190
    if-ne v0, v1, :cond_a

    #@192
    .line 666
    const/16 v23, 0x0

    #@194
    move-object/from16 v0, v20

    #@196
    move-object/from16 v1, v23

    #@198
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@19b
    move-result v23

    #@19c
    if-nez v23, :cond_11

    #@19e
    .line 667
    new-instance v23, Lcom/android/server/pm/PackageManagerException;

    #@1a0
    .line 668
    const-string/jumbo v24, "Full install must include a base package"

    #@1a3
    .line 667
    const/16 v25, -0x2

    #@1a5
    move-object/from16 v0, v23

    #@1a7
    move/from16 v1, v25

    #@1a9
    move-object/from16 v2, v24

    #@1ab
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    #@1ae
    throw v23

    #@1af
    .line 673
    :cond_a
    move-object/from16 v0, p0

    #@1b1
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    #@1b3
    move-object/from16 v23, v0

    #@1b5
    move-object/from16 v0, p0

    #@1b7
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    #@1b9
    move-object/from16 v24, v0

    #@1bb
    move-object/from16 v0, p0

    #@1bd
    iget v0, v0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    #@1bf
    move/from16 v25, v0

    #@1c1
    const/16 v26, 0x0

    #@1c3
    move-object/from16 v0, v23

    #@1c5
    move-object/from16 v1, v24

    #@1c7
    move/from16 v2, v26

    #@1c9
    move/from16 v3, v25

    #@1cb
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    #@1ce
    move-result-object v5

    #@1cf
    .line 674
    .local v5, "app":Landroid/content/pm/ApplicationInfo;
    if-nez v5, :cond_b

    #@1d1
    .line 675
    new-instance v23, Lcom/android/server/pm/PackageManagerException;

    #@1d3
    .line 676
    new-instance v24, Ljava/lang/StringBuilder;

    #@1d5
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@1d8
    const-string/jumbo v25, "Missing existing base package for "

    #@1db
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1de
    move-result-object v24

    #@1df
    move-object/from16 v0, p0

    #@1e1
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    #@1e3
    move-object/from16 v25, v0

    #@1e5
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e8
    move-result-object v24

    #@1e9
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ec
    move-result-object v24

    #@1ed
    .line 675
    const/16 v25, -0x2

    #@1ef
    move-object/from16 v0, v23

    #@1f1
    move/from16 v1, v25

    #@1f3
    move-object/from16 v2, v24

    #@1f5
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    #@1f8
    throw v23

    #@1f9
    .line 682
    :cond_b
    :try_start_1
    new-instance v23, Ljava/io/File;

    #@1fb
    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    #@1fe
    move-result-object v24

    #@1ff
    invoke-direct/range {v23 .. v24}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@202
    const/16 v24, 0x0

    #@204
    invoke-static/range {v23 .. v24}, Landroid/content/pm/PackageParser;->parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    #@207
    move-result-object v9

    #@208
    .line 683
    .local v9, "existing":Landroid/content/pm/PackageParser$PackageLite;
    new-instance v23, Ljava/io/File;

    #@20a
    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    #@20d
    move-result-object v24

    #@20e
    invoke-direct/range {v23 .. v24}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@211
    .line 684
    const/16 v24, 0x100

    #@213
    .line 683
    invoke-static/range {v23 .. v24}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$ApkLite;
    :try_end_1
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_1 .. :try_end_1} :catch_1

    #@216
    move-result-object v10

    #@217
    .line 689
    .local v10, "existingBase":Landroid/content/pm/PackageParser$ApkLite;
    const-string/jumbo v23, "Existing base"

    #@21a
    move-object/from16 v0, p0

    #@21c
    move-object/from16 v1, v23

    #@21e
    invoke-direct {v0, v1, v10}, Lcom/android/server/pm/PackageInstallerSession;->assertApkConsistent(Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;)V

    #@221
    .line 692
    move-object/from16 v0, p0

    #@223
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    #@225
    move-object/from16 v23, v0

    #@227
    if-nez v23, :cond_c

    #@229
    .line 693
    new-instance v23, Ljava/io/File;

    #@22b
    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    #@22e
    move-result-object v24

    #@22f
    invoke-direct/range {v23 .. v24}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@232
    move-object/from16 v0, v23

    #@234
    move-object/from16 v1, p0

    #@236
    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    #@238
    .line 694
    move-object/from16 v0, p0

    #@23a
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    #@23c
    move-object/from16 v23, v0

    #@23e
    move-object/from16 v0, p0

    #@240
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    #@242
    move-object/from16 v24, v0

    #@244
    invoke-interface/range {v23 .. v24}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@247
    .line 698
    :cond_c
    iget-object v0, v9, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    #@249
    move-object/from16 v23, v0

    #@24b
    invoke-static/range {v23 .. v23}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    #@24e
    move-result v23

    #@24f
    if-nez v23, :cond_e

    #@251
    .line 699
    const/4 v13, 0x0

    #@252
    .local v13, "i":I
    :goto_3
    iget-object v0, v9, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    #@254
    move-object/from16 v23, v0

    #@256
    move-object/from16 v0, v23

    #@258
    array-length v0, v0

    #@259
    move/from16 v23, v0

    #@25b
    move/from16 v0, v23

    #@25d
    if-ge v13, v0, :cond_e

    #@25f
    .line 700
    iget-object v0, v9, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    #@261
    move-object/from16 v23, v0

    #@263
    aget-object v19, v23, v13

    #@265
    .line 701
    .local v19, "splitName":Ljava/lang/String;
    new-instance v18, Ljava/io/File;

    #@267
    iget-object v0, v9, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    #@269
    move-object/from16 v23, v0

    #@26b
    aget-object v23, v23, v13

    #@26d
    move-object/from16 v0, v18

    #@26f
    move-object/from16 v1, v23

    #@271
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@274
    .line 703
    .local v18, "splitFile":Ljava/io/File;
    move-object/from16 v0, v20

    #@276
    move-object/from16 v1, v19

    #@278
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@27b
    move-result v23

    #@27c
    if-nez v23, :cond_d

    #@27e
    .line 704
    move-object/from16 v0, p0

    #@280
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    #@282
    move-object/from16 v23, v0

    #@284
    move-object/from16 v0, v23

    #@286
    move-object/from16 v1, v18

    #@288
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@28b
    .line 699
    :cond_d
    add-int/lit8 v13, v13, 0x1

    #@28d
    goto :goto_3

    #@28e
    .line 685
    .end local v9    # "existing":Landroid/content/pm/PackageParser$PackageLite;
    .end local v10    # "existingBase":Landroid/content/pm/PackageParser$ApkLite;
    .end local v13    # "i":I
    .end local v18    # "splitFile":Ljava/io/File;
    .end local v19    # "splitName":Ljava/lang/String;
    :catch_1
    move-exception v8

    #@28f
    .line 686
    .restart local v8    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    invoke-static {v8}, Lcom/android/server/pm/PackageManagerException;->from(Landroid/content/pm/PackageParser$PackageParserException;)Lcom/android/server/pm/PackageManagerException;

    #@292
    move-result-object v23

    #@293
    throw v23

    #@294
    .line 710
    .end local v8    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    .restart local v9    # "existing":Landroid/content/pm/PackageParser$PackageLite;
    .restart local v10    # "existingBase":Landroid/content/pm/PackageParser$ApkLite;
    :cond_e
    new-instance v23, Ljava/io/File;

    #@296
    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    #@299
    move-result-object v24

    #@29a
    invoke-direct/range {v23 .. v24}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@29d
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@2a0
    move-result-object v17

    #@2a1
    .line 711
    .local v17, "packageInstallDir":Ljava/io/File;
    move-object/from16 v0, v17

    #@2a3
    move-object/from16 v1, p0

    #@2a5
    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mInheritedFilesBase:Ljava/io/File;

    #@2a7
    .line 712
    new-instance v15, Ljava/io/File;

    #@2a9
    const-string/jumbo v23, "oat"

    #@2ac
    move-object/from16 v0, v17

    #@2ae
    move-object/from16 v1, v23

    #@2b0
    invoke-direct {v15, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@2b3
    .line 713
    .local v15, "oatDir":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    #@2b6
    move-result v23

    #@2b7
    if-eqz v23, :cond_11

    #@2b9
    .line 714
    invoke-virtual {v15}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@2bc
    move-result-object v7

    #@2bd
    .line 719
    .local v7, "archSubdirs":[Ljava/io/File;
    if-eqz v7, :cond_11

    #@2bf
    array-length v0, v7

    #@2c0
    move/from16 v23, v0

    #@2c2
    if-lez v23, :cond_11

    #@2c4
    .line 720
    invoke-static {}, Lcom/android/server/pm/InstructionSets;->getAllDexCodeInstructionSets()[Ljava/lang/String;

    #@2c7
    move-result-object v14

    #@2c8
    .line 721
    .local v14, "instructionSets":[Ljava/lang/String;
    const/16 v23, 0x0

    #@2ca
    array-length v0, v7

    #@2cb
    move/from16 v24, v0

    #@2cd
    :goto_4
    move/from16 v0, v23

    #@2cf
    move/from16 v1, v24

    #@2d1
    if-ge v0, v1, :cond_11

    #@2d3
    aget-object v6, v7, v23

    #@2d5
    .line 723
    .local v6, "archSubDir":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    #@2d8
    move-result-object v25

    #@2d9
    move-object/from16 v0, v25

    #@2db
    invoke-static {v14, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    #@2de
    move-result v25

    #@2df
    if-nez v25, :cond_10

    #@2e1
    .line 721
    :cond_f
    :goto_5
    add-int/lit8 v23, v23, 0x1

    #@2e3
    goto :goto_4

    #@2e4
    .line 727
    :cond_10
    move-object/from16 v0, p0

    #@2e6
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInstructionSets:Ljava/util/List;

    #@2e8
    move-object/from16 v25, v0

    #@2ea
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    #@2ed
    move-result-object v26

    #@2ee
    invoke-interface/range {v25 .. v26}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2f1
    .line 728
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@2f4
    move-result-object v25

    #@2f5
    invoke-static/range {v25 .. v25}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@2f8
    move-result-object v16

    #@2f9
    .line 729
    .local v16, "oatFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    #@2fc
    move-result v25

    #@2fd
    if-nez v25, :cond_f

    #@2ff
    .line 730
    move-object/from16 v0, p0

    #@301
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    #@303
    move-object/from16 v25, v0

    #@305
    move-object/from16 v0, v25

    #@307
    move-object/from16 v1, v16

    #@309
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@30c
    goto :goto_5

    #@30d
    .line 594
    .end local v5    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "archSubDir":Ljava/io/File;
    .end local v7    # "archSubdirs":[Ljava/io/File;
    .end local v9    # "existing":Landroid/content/pm/PackageParser$PackageLite;
    .end local v10    # "existingBase":Landroid/content/pm/PackageParser$ApkLite;
    .end local v14    # "instructionSets":[Ljava/lang/String;
    .end local v15    # "oatDir":Ljava/io/File;
    .end local v16    # "oatFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v17    # "packageInstallDir":Ljava/io/File;
    :cond_11
    return-void
.end method


# virtual methods
.method public abandon()V
    .locals 3

    #@0
    .prologue
    .line 1001
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mRelinquished:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1002
    const-string/jumbo v0, "PackageInstaller"

    #@7
    const-string/jumbo v1, "Ignoring abandon after commit relinquished control"

    #@a
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 1003
    return-void

    #@e
    .line 1005
    :cond_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->destroyInternal()V

    #@11
    .line 1006
    const-string/jumbo v0, "Session was abandoned"

    #@14
    const/16 v1, -0x73

    #@16
    const/4 v2, 0x0

    #@17
    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    #@1a
    .line 1000
    return-void
.end method

.method public addClientProgress(F)V
    .locals 2
    .param p1, "progress"    # F

    #@0
    .prologue
    .line 314
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 315
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
    .line 313
    return-void

    #@b
    .line 314
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
    .line 994
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 995
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    #@b
    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionActiveChanged(Lcom/android/server/pm/PackageInstallerSession;Z)V

    #@e
    .line 993
    :cond_0
    return-void
.end method

.method public commit(Landroid/content/IntentSender;)V
    .locals 9
    .param p1, "statusReceiver"    # Landroid/content/IntentSender;

    #@0
    .prologue
    .line 428
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 431
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v2

    #@6
    .line 432
    :try_start_0
    iget-boolean v8, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    #@8
    .line 433
    .local v8, "wasSealed":Z
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    #@a
    if-nez v1, :cond_2

    #@c
    .line 435
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
    .line 436
    .local v6, "bridge":Landroid/os/FileBridge;
    invoke-virtual {v6}, Landroid/os/FileBridge;->isClosed()Z

    #@21
    move-result v1

    #@22
    if-nez v1, :cond_0

    #@24
    .line 437
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
    .line 431
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
    .line 440
    .restart local v7    # "bridge$iterator":Ljava/util/Iterator;
    .restart local v8    # "wasSealed":Z
    :cond_1
    const/4 v1, 0x1

    #@31
    :try_start_1
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    #@33
    .line 444
    .end local v7    # "bridge$iterator":Ljava/util/Iterator;
    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    #@35
    iput v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    #@37
    .line 445
    const/4 v1, 0x1

    #@38
    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->computeProgressLocked(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3b
    monitor-exit v2

    #@3c
    .line 448
    if-nez v8, :cond_3

    #@3e
    .line 452
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    #@40
    invoke-virtual {v1, p0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionSealedBlocking(Lcom/android/server/pm/PackageInstallerSession;)V

    #@43
    .line 457
    :cond_3
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@45
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    #@48
    .line 459
    new-instance v0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;

    #@4a
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    #@4c
    .line 460
    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    #@4e
    iget-boolean v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mIsInstallerDeviceOwner:Z

    #@50
    iget v5, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    #@52
    move-object v2, p1

    #@53
    .line 459
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;-><init>(Landroid/content/Context;Landroid/content/IntentSender;IZI)V

    #@56
    .line 461
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
    .line 427
    return-void
.end method

.method dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    #@0
    .prologue
    .line 1043
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 1044
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 1042
    return-void

    #@8
    .line 1043
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
    .line 237
    new-instance v0, Landroid/content/pm/PackageInstaller$SessionInfo;

    #@4
    invoke-direct {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;-><init>()V

    #@7
    .line 238
    .local v0, "info":Landroid/content/pm/PackageInstaller$SessionInfo;
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    #@9
    monitor-enter v3

    #@a
    .line 239
    :try_start_0
    iget v4, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    #@c
    iput v4, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->sessionId:I

    #@e
    .line 240
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->installerPackageName:Ljava/lang/String;

    #@10
    iput-object v4, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->installerPackageName:Ljava/lang/String;

    #@12
    .line 241
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    #@14
    if-eqz v4, :cond_0

    #@16
    .line 242
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    #@18
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    .line 241
    :cond_0
    iput-object v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->resolvedBaseCodePath:Ljava/lang/String;

    #@1e
    .line 243
    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    #@20
    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->progress:F

    #@22
    .line 244
    iget-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    #@24
    iput-boolean v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->sealed:Z

    #@26
    .line 245
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
    .line 247
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    #@33
    iget v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    #@35
    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->mode:I

    #@37
    .line 248
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    #@39
    iget-wide v4, v1, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    #@3b
    iput-wide v4, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->sizeBytes:J

    #@3d
    .line 249
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    #@3f
    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    #@41
    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->appPackageName:Ljava/lang/String;

    #@43
    .line 250
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    #@45
    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    #@47
    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->appIcon:Landroid/graphics/Bitmap;

    #@49
    .line 251
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
    .line 253
    return-object v0

    #@51
    .line 238
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
    .line 332
    const-string/jumbo v1, "getNames"

    #@3
    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotSealed(Ljava/lang/String;)V

    #@6
    .line 334
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
    .line 335
    :catch_0
    move-exception v0

    #@10
    .line 336
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
    .line 257
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 258
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 257
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
    .line 263
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 264
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 263
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
    .line 967
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 968
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    #@b
    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionActiveChanged(Lcom/android/server/pm/PackageInstallerSession;Z)V

    #@e
    .line 971
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    #@10
    monitor-enter v1

    #@11
    .line 972
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    #@13
    if-nez v0, :cond_1

    #@15
    .line 973
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    #@17
    if-eqz v0, :cond_2

    #@19
    .line 974
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    #@1b
    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerService;->prepareStageDir(Ljava/io/File;)V

    #@1e
    .line 986
    :goto_0
    const/4 v0, 0x1

    #@1f
    iput-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    #@21
    .line 987
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    #@23
    invoke-virtual {v0, p0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionPrepared(Lcom/android/server/pm/PackageInstallerSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    :cond_1
    monitor-exit v1

    #@27
    .line 966
    return-void

    #@28
    .line 975
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    #@2a
    if-eqz v0, :cond_3

    #@2c
    .line 976
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    #@2e
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    #@30
    iget-wide v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    #@32
    invoke-static {v0, v2, v3}, Lcom/android/server/pm/PackageInstallerService;->prepareExternalStageCid(Ljava/lang/String;J)V

    #@35
    .line 979
    const/high16 v0, 0x3e800000    # 0.25f

    #@37
    iput v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInternalProgress:F

    #@39
    .line 980
    const/4 v0, 0x1

    #@3a
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->computeProgressLocked(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3d
    goto :goto_0

    #@3e
    .line 971
    :catchall_0
    move-exception v0

    #@3f
    monitor-exit v1

    #@40
    throw v0

    #@41
    .line 982
    :cond_3
    :try_start_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@43
    .line 983
    const-string/jumbo v2, "Exactly one of stageDir or stageCid stage must be set"

    #@46
    .line 982
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
    .line 403
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->openReadInternal(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v1

    #@4
    return-object v1

    #@5
    .line 404
    :catch_0
    move-exception v0

    #@6
    .line 405
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
    .line 343
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/PackageInstallerSession;->openWriteInternal(Ljava/lang/String;JJ)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v1

    #@4
    return-object v1

    #@5
    .line 344
    :catch_0
    move-exception v0

    #@6
    .line 345
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    #@9
    move-result-object v1

    #@a
    throw v1
.end method

.method public setClientProgress(F)V
    .locals 4
    .param p1, "progress"    # F

    #@0
    .prologue
    .line 304
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 306
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
    .line 307
    .local v0, "forcePublish":Z
    :goto_0
    iput p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    #@d
    .line 308
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->computeProgressLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v2

    #@11
    .line 303
    return-void

    #@12
    .line 306
    .end local v0    # "forcePublish":Z
    :cond_0
    const/4 v0, 0x0

    #@13
    .restart local v0    # "forcePublish":Z
    goto :goto_0

    #@14
    .line 304
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
    .line 952
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 953
    new-instance v0, Ljava/lang/SecurityException;

    #@6
    const-string/jumbo v1, "Must be sealed to accept permissions"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 956
    :cond_0
    if-eqz p1, :cond_1

    #@f
    .line 958
    const/4 v0, 0x1

    #@10
    iput-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPermissionsAccepted:Z

    #@12
    .line 959
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    #@14
    const/4 v1, 0x0

    #@15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@1c
    .line 951
    :goto_0
    return-void

    #@1d
    .line 961
    :cond_1
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->destroyInternal()V

    #@20
    .line 962
    const-string/jumbo v0, "User rejected permissions"

    #@23
    const/16 v1, -0x73

    #@25
    const/4 v2, 0x0

    #@26
    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    #@29
    goto :goto_0
.end method
