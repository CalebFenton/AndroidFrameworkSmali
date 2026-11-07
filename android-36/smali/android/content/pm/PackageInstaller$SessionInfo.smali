.class public Landroid/content/pm/PackageInstaller$SessionInfo;
.super Ljava/lang/Object;
.source "PackageInstaller.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SessionInfo"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/PackageInstaller$SessionInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist INVALID_ID:I = -0x1

.field private static final blacklist NO_SESSIONS:[I

.field public static final whitelist SESSION_ACTIVATION_FAILED:I = 0x2

.field public static final whitelist SESSION_CONFLICT:I = 0x4

.field public static final whitelist SESSION_NO_ERROR:I = 0x0

.field public static final whitelist SESSION_UNKNOWN_ERROR:I = 0x3

.field public static final whitelist SESSION_VERIFICATION_FAILED:I = 0x1

.field public static final whitelist STAGED_SESSION_ACTIVATION_FAILED:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist STAGED_SESSION_CONFLICT:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist STAGED_SESSION_NO_ERROR:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist STAGED_SESSION_UNKNOWN:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist STAGED_SESSION_VERIFICATION_FAILED:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field public greylist-max-p active:Z

.field public greylist-max-p appIcon:Landroid/graphics/Bitmap;

.field public greylist-max-p appLabel:Ljava/lang/CharSequence;

.field public greylist-max-p appPackageName:Ljava/lang/String;

.field public blacklist applicationEnabledSettingPersistent:Z

.field public blacklist autoRevokePermissionsMode:I

.field public blacklist childSessionIds:[I

.field public blacklist createdMillis:J

.field public blacklist forceQueryable:Z

.field public greylist-max-o grantedRuntimePermissions:[Ljava/lang/String;

.field public greylist-max-o installFlags:I

.field public greylist-max-o installLocation:I

.field public greylist-max-o installReason:I

.field public blacklist installScenario:I

.field public blacklist installerAttributionTag:Ljava/lang/String;

.field public greylist-max-p installerPackageName:Ljava/lang/String;

.field public blacklist installerUid:I

.field public blacklist isAutoInstallingDependenciesEnabled:Z

.field public blacklist isCommitted:Z

.field public blacklist isMultiPackage:Z

.field public blacklist isPreapprovalRequested:Z

.field public blacklist isSessionApplied:Z

.field public blacklist isSessionFailed:Z

.field public blacklist isSessionReady:Z

.field public blacklist isStaged:Z

.field private blacklist mSessionErrorCode:I

.field private blacklist mSessionErrorMessage:Ljava/lang/String;

.field public greylist-max-p mode:I

.field public greylist-max-o originatingUid:I

.field public greylist-max-o originatingUri:Landroid/net/Uri;

.field public blacklist packageSource:I

.field public blacklist parentSessionId:I

.field public blacklist pendingUserActionReason:I

.field public greylist-max-p progress:F

.field public greylist-max-o referrerUri:Landroid/net/Uri;

.field public blacklist requireUserAction:I

.field public greylist-max-r resolvedBaseCodePath:Ljava/lang/String;

.field public blacklist rollbackDataPolicy:I

.field public blacklist rollbackImpactLevel:I

.field public blacklist rollbackLifetimeMillis:J

.field public greylist-max-r sealed:Z

.field public greylist-max-p sessionId:I

.field public greylist-max-p sizeBytes:J

.field public blacklist updatedMillis:J

.field public blacklist userId:I

.field public blacklist whitelistedRestrictedPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$smuserActionToString(I)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Landroid/content/pm/PackageInstaller$SessionInfo;->userActionToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 3742
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Landroid/content/pm/PackageInstaller$SessionInfo;->NO_SESSIONS:[I

    .line 4645
    new-instance v0, Landroid/content/pm/PackageInstaller$SessionInfo$1;

    invoke-direct {v0}, Landroid/content/pm/PackageInstaller$SessionInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/PackageInstaller$SessionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-r <init>()V
    .registers 2

    .line 3934
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3870
    const/4 v0, 0x3

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->autoRevokePermissionsMode:I

    .line 3880
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->parentSessionId:I

    .line 3882
    sget-object v0, Landroid/content/pm/PackageInstaller$SessionInfo;->NO_SESSIONS:[I

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->childSessionIds:[I

    .line 3918
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->packageSource:I

    .line 3935
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "source"    # Landroid/os/Parcel;

    .line 3938
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3870
    const/4 v0, 0x3

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->autoRevokePermissionsMode:I

    .line 3880
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->parentSessionId:I

    .line 3882
    sget-object v0, Landroid/content/pm/PackageInstaller$SessionInfo;->NO_SESSIONS:[I

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->childSessionIds:[I

    .line 3918
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->packageSource:I

    .line 3939
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->sessionId:I

    .line 3940
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->userId:I

    .line 3941
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installerPackageName:Ljava/lang/String;

    .line 3942
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installerAttributionTag:Ljava/lang/String;

    .line 3943
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->resolvedBaseCodePath:Ljava/lang/String;

    .line 3944
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->progress:F

    .line 3945
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3d

    move v1, v2

    goto :goto_3e

    :cond_3d
    move v1, v0

    :goto_3e
    iput-boolean v1, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->sealed:Z

    .line 3946
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_47

    move v0, v2

    :cond_47
    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->active:Z

    .line 3948
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->mode:I

    .line 3949
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installReason:I

    .line 3950
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installScenario:I

    .line 3951
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->sizeBytes:J

    .line 3952
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->appPackageName:Ljava/lang/String;

    .line 3953
    const-class v0, Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->appIcon:Landroid/graphics/Bitmap;

    .line 3954
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->appLabel:Ljava/lang/CharSequence;

    .line 3956
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installLocation:I

    .line 3957
    const-class v0, Landroid/net/Uri;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->originatingUri:Landroid/net/Uri;

    .line 3958
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->originatingUid:I

    .line 3959
    const-class v0, Landroid/net/Uri;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->referrerUri:Landroid/net/Uri;

    .line 3960
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->grantedRuntimePermissions:[Ljava/lang/String;

    .line 3961
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->whitelistedRestrictedPermissions:Ljava/util/List;

    .line 3962
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->autoRevokePermissionsMode:I

    .line 3964
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installFlags:I

    .line 3965
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isMultiPackage:Z

    .line 3966
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isStaged:Z

    .line 3967
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->forceQueryable:Z

    .line 3968
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->parentSessionId:I

    .line 3969
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->childSessionIds:[I

    .line 3970
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->childSessionIds:[I

    if-nez v0, :cond_d6

    .line 3971
    sget-object v0, Landroid/content/pm/PackageInstaller$SessionInfo;->NO_SESSIONS:[I

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->childSessionIds:[I

    .line 3973
    :cond_d6
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isSessionApplied:Z

    .line 3974
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isSessionReady:Z

    .line 3975
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isSessionFailed:Z

    .line 3976
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->mSessionErrorCode:I

    .line 3977
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->mSessionErrorMessage:Ljava/lang/String;

    .line 3978
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isCommitted:Z

    .line 3979
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isPreapprovalRequested:Z

    .line 3980
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->rollbackDataPolicy:I

    .line 3981
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->rollbackLifetimeMillis:J

    .line 3982
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->rollbackImpactLevel:I

    .line 3983
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->createdMillis:J

    .line 3984
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->requireUserAction:I

    .line 3985
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installerUid:I

    .line 3986
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->packageSource:I

    .line 3987
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->applicationEnabledSettingPersistent:Z

    .line 3988
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->pendingUserActionReason:I

    .line 3989
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isAutoInstallingDependenciesEnabled:Z

    .line 3990
    return-void
.end method

.method private blacklist checkSessionIsStaged()V
    .registers 3

    .line 4426
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isStaged:Z

    if-eqz v0, :cond_5

    .line 4429
    return-void

    .line 4427
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Session is not marked as staged."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist userActionToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "requireUserAction"    # I

    .line 3804
    packed-switch p0, :pswitch_data_c

    .line 3810
    const-string v0, "UNSPECIFIED"

    return-object v0

    .line 3808
    :pswitch_6
    const-string v0, "NOT_REQUIRED"

    return-object v0

    .line 3806
    :pswitch_9
    const-string v0, "REQUIRED"

    return-object v0

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public whitelist createDetailsIntent()Landroid/content/Intent;
    .registers 4

    .line 4121
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.content.pm.action.SESSION_DETAILS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4122
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.content.pm.extra.SESSION_ID"

    iget v2, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->sessionId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4123
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4124
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4125
    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 4590
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAllocateAggressive()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4326
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installFlags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist getAllowDowngrade()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4245
    invoke-virtual {p0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getRequestDowngrade()Z

    move-result v0

    return v0
.end method

.method public whitelist getAppIcon()Landroid/graphics/Bitmap;
    .registers 3

    .line 4089
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->appIcon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_21

    .line 4093
    :try_start_4
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->sessionId:I

    .line 4094
    invoke-interface {v0, v1}, Landroid/content/pm/IPackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v0

    .line 4095
    .local v0, "info":Landroid/content/pm/PackageInstaller$SessionInfo;
    if-eqz v0, :cond_17

    iget-object v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->appIcon:Landroid/graphics/Bitmap;

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    iput-object v1, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->appIcon:Landroid/graphics/Bitmap;
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1a} :catch_1b

    .line 4098
    .end local v0    # "info":Landroid/content/pm/PackageInstaller$SessionInfo;
    goto :goto_21

    .line 4096
    :catch_1b
    move-exception v0

    .line 4097
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4100
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_21
    :goto_21
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->appIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public whitelist getAppLabel()Ljava/lang/CharSequence;
    .registers 2

    .line 4108
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->appLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getAppPackageName()Ljava/lang/String;
    .registers 2

    .line 4081
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->appPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getAutoRevokePermissionsMode()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4233
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->autoRevokePermissionsMode:I

    return v0
.end method

.method public whitelist getChildSessionIds()[I
    .registers 2

    .line 4422
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->childSessionIds:[I

    return-object v0
.end method

.method public whitelist getCreatedMillis()J
    .registers 3

    .line 4495
    iget-wide v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->createdMillis:J

    return-wide v0
.end method

.method public greylist-max-o getDetailsIntent()Landroid/content/Intent;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4333
    invoke-virtual {p0}, Landroid/content/pm/PackageInstaller$SessionInfo;->createDetailsIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDontKillApp()Z
    .registers 2

    .line 4262
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installFlags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist getEnableRollback()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4316
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installFlags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public whitelist getGrantedRuntimePermissions()[Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4198
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->grantedRuntimePermissions:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getInstallAsFullApp(Z)Z
    .registers 3
    .param p1, "isInstantApp"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4296
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installFlags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist getInstallAsInstantApp(Z)Z
    .registers 3
    .param p1, "isInstantApp"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4279
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installFlags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist getInstallAsVirtualPreload()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4306
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installFlags:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public whitelist getInstallLocation()I
    .registers 2

    .line 4142
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installLocation:I

    return v0
.end method

.method public whitelist getInstallReason()I
    .registers 2

    .line 4067
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installReason:I

    return v0
.end method

.method public whitelist getInstallerAttributionTag()Ljava/lang/String;
    .registers 2

    .line 4018
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installerAttributionTag:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getInstallerPackageName()Ljava/lang/String;
    .registers 2

    .line 4010
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getInstallerUid()I
    .registers 2

    .line 4527
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installerUid:I

    return v0
.end method

.method public whitelist getMode()I
    .registers 2

    .line 4135
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->mode:I

    return v0
.end method

.method public whitelist getOriginatingUid()I
    .registers 2

    .line 4166
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->originatingUid:I

    return v0
.end method

.method public whitelist getOriginatingUri()Landroid/net/Uri;
    .registers 2

    .line 4159
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->originatingUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getPackageSource()I
    .registers 2

    .line 4341
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->packageSource:I

    return v0
.end method

.method public whitelist getParentSessionId()I
    .registers 2

    .line 4406
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->parentSessionId:I

    return v0
.end method

.method public whitelist getPendingUserActionReason()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4561
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->pendingUserActionReason:I

    return v0
.end method

.method public whitelist getProgress()F
    .registers 2

    .line 4031
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->progress:F

    return v0
.end method

.method public whitelist getReferrerUri()Landroid/net/Uri;
    .registers 2

    .line 4174
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->referrerUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getRequestDowngrade()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4255
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installFlags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist getRequireUserAction()I
    .registers 2

    .line 4520
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->requireUserAction:I

    return v0
.end method

.method public whitelist getResolvedBaseApkPath()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4188
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->resolvedBaseCodePath:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getRollbackDataPolicy()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4367
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->rollbackDataPolicy:I

    return v0
.end method

.method public whitelist getSessionId()I
    .registers 2

    .line 3996
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->sessionId:I

    return v0
.end method

.method public whitelist getSize()J
    .registers 3

    .line 4151
    iget-wide v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->sizeBytes:J

    return-wide v0
.end method

.method public whitelist getStagedSessionErrorCode()I
    .registers 2

    .line 4464
    invoke-direct {p0}, Landroid/content/pm/PackageInstaller$SessionInfo;->checkSessionIsStaged()V

    .line 4465
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->mSessionErrorCode:I

    return v0
.end method

.method public whitelist getStagedSessionErrorMessage()Ljava/lang/String;
    .registers 2

    .line 4473
    invoke-direct {p0}, Landroid/content/pm/PackageInstaller$SessionInfo;->checkSessionIsStaged()V

    .line 4474
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->mSessionErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getUpdatedMillis()J
    .registers 3

    .line 4504
    iget-wide v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->updatedMillis:J

    return-wide v0
.end method

.method public whitelist getUser()Landroid/os/UserHandle;
    .registers 3

    .line 4003
    new-instance v0, Landroid/os/UserHandle;

    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->userId:I

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    return-object v0
.end method

.method public whitelist getWhitelistedRestrictedPermissions()Ljava/util/Set;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4210
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installFlags:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-eqz v0, :cond_a

    .line 4211
    sget-object v0, Landroid/content/pm/PackageInstaller$SessionParams;->RESTRICTED_PERMISSIONS_ALL:Ljava/util/Set;

    return-object v0

    .line 4213
    :cond_a
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->whitelistedRestrictedPermissions:Ljava/util/List;

    if-eqz v0, :cond_16

    .line 4214
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->whitelistedRestrictedPermissions:Ljava/util/List;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 4216
    :cond_16
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist hasParentSessionId()Z
    .registers 3

    .line 4413
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->parentSessionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public whitelist isActive()Z
    .registers 2

    .line 4048
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->active:Z

    return v0
.end method

.method public whitelist isApplicationEnabledSettingPersistent()Z
    .registers 2

    .line 4535
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->applicationEnabledSettingPersistent:Z

    return v0
.end method

.method public whitelist isAutoInstallDependenciesEnabled()Z
    .registers 2

    .line 4585
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isAutoInstallingDependenciesEnabled:Z

    return v0
.end method

.method public whitelist isCommitted()Z
    .registers 2

    .line 4488
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isCommitted:Z

    return v0
.end method

.method public blacklist isForceQueryable()Z
    .registers 2

    .line 4375
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->forceQueryable:Z

    return v0
.end method

.method public whitelist isMultiPackage()Z
    .registers 2

    .line 4349
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isMultiPackage:Z

    return v0
.end method

.method public greylist-max-o isOpen()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4073
    invoke-virtual {p0}, Landroid/content/pm/PackageInstaller$SessionInfo;->isActive()Z

    move-result v0

    return v0
.end method

.method public whitelist isPreApprovalRequested()Z
    .registers 2

    .line 4542
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isPreapprovalRequested:Z

    return v0
.end method

.method public whitelist isRequestUpdateOwnership()Z
    .registers 3

    .line 4552
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installFlags:I

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public whitelist isSealed()Z
    .registers 2

    .line 4058
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->sealed:Z

    return v0
.end method

.method public whitelist isStaged()Z
    .registers 2

    .line 4356
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isStaged:Z

    return v0
.end method

.method public whitelist isStagedSessionActive()Z
    .registers 2

    .line 4397
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isStaged:Z

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isCommitted:Z

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isSessionApplied:Z

    if-nez v0, :cond_18

    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isSessionFailed:Z

    if-nez v0, :cond_18

    .line 4398
    invoke-virtual {p0}, Landroid/content/pm/PackageInstaller$SessionInfo;->hasParentSessionId()Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 4397
    :goto_19
    return v0
.end method

.method public whitelist isStagedSessionApplied()Z
    .registers 2

    .line 4437
    invoke-direct {p0}, Landroid/content/pm/PackageInstaller$SessionInfo;->checkSessionIsStaged()V

    .line 4438
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isSessionApplied:Z

    return v0
.end method

.method public whitelist isStagedSessionFailed()Z
    .registers 2

    .line 4455
    invoke-direct {p0}, Landroid/content/pm/PackageInstaller$SessionInfo;->checkSessionIsStaged()V

    .line 4456
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isSessionFailed:Z

    return v0
.end method

.method public whitelist isStagedSessionReady()Z
    .registers 2

    .line 4446
    invoke-direct {p0}, Landroid/content/pm/PackageInstaller$SessionInfo;->checkSessionIsStaged()V

    .line 4447
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isSessionReady:Z

    return v0
.end method

.method public whitelist isUnarchival()Z
    .registers 3

    .line 4571
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installFlags:I

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public blacklist setSessionErrorCode(ILjava/lang/String;)V
    .registers 3
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;

    .line 4479
    iput p1, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->mSessionErrorCode:I

    .line 4480
    iput-object p2, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->mSessionErrorMessage:Ljava/lang/String;

    .line 4481
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 4595
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->sessionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4596
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->userId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4597
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installerPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4598
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installerAttributionTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4599
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->resolvedBaseCodePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4600
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->progress:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 4601
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->sealed:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4602
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->active:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4604
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->mode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4605
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4606
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installScenario:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4607
    iget-wide v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->sizeBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 4608
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->appPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4609
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->appIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 4610
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->appLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_51

    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->appLabel:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_52

    :cond_51
    const/4 v0, 0x0

    :goto_52
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4612
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installLocation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4613
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->originatingUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 4614
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->originatingUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4615
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->referrerUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 4616
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->grantedRuntimePermissions:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 4617
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->whitelistedRestrictedPermissions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4618
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->autoRevokePermissionsMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4619
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4620
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isMultiPackage:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4621
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isStaged:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4622
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->forceQueryable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4623
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->parentSessionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4624
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->childSessionIds:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 4625
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isSessionApplied:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4626
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isSessionReady:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4627
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isSessionFailed:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4628
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->mSessionErrorCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4629
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->mSessionErrorMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4630
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isCommitted:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4631
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isPreapprovalRequested:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4632
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->rollbackDataPolicy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4633
    iget-wide v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->rollbackLifetimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 4634
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->rollbackImpactLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4635
    iget-wide v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->createdMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 4636
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->requireUserAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4637
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installerUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4638
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->packageSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4639
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->applicationEnabledSettingPersistent:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4640
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->pendingUserActionReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4641
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isAutoInstallingDependenciesEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4642
    return-void
.end method
