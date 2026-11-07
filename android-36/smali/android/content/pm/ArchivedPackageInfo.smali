.class public final Landroid/content/pm/ArchivedPackageInfo;
.super Ljava/lang/Object;
.source "ArchivedPackageInfo.java"


# instance fields
.field private blacklist mDefaultToDeviceProtectedStorage:Ljava/lang/String;

.field private blacklist mLauncherActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ArchivedActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPackageName:Ljava/lang/String;

.field private blacklist mRequestLegacyExternalStorage:Ljava/lang/String;

.field private blacklist mSigningInfo:Landroid/content/pm/SigningInfo;

.field private blacklist mTargetSdkVersion:I

.field private blacklist mUserDataFragile:Ljava/lang/String;

.field private blacklist mVersionCode:I

.field private blacklist mVersionCodeMajor:I


# direct methods
.method public constructor blacklist <init>(Landroid/content/pm/ArchivedPackageParcel;)V
    .registers 8
    .param p1, "parcel"    # Landroid/content/pm/ArchivedPackageParcel;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/ArchivedPackageInfo;->mVersionCode:I

    .line 50
    iput v0, p0, Landroid/content/pm/ArchivedPackageInfo;->mVersionCodeMajor:I

    .line 56
    iput v0, p0, Landroid/content/pm/ArchivedPackageInfo;->mTargetSdkVersion:I

    .line 98
    iget-object v1, p1, Landroid/content/pm/ArchivedPackageParcel;->packageName:Ljava/lang/String;

    iput-object v1, p0, Landroid/content/pm/ArchivedPackageInfo;->mPackageName:Ljava/lang/String;

    .line 99
    new-instance v1, Landroid/content/pm/SigningInfo;

    iget-object v2, p1, Landroid/content/pm/ArchivedPackageParcel;->signingDetails:Landroid/content/pm/SigningDetails;

    invoke-direct {v1, v2}, Landroid/content/pm/SigningInfo;-><init>(Landroid/content/pm/SigningDetails;)V

    iput-object v1, p0, Landroid/content/pm/ArchivedPackageInfo;->mSigningInfo:Landroid/content/pm/SigningInfo;

    .line 100
    iget v1, p1, Landroid/content/pm/ArchivedPackageParcel;->versionCode:I

    iput v1, p0, Landroid/content/pm/ArchivedPackageInfo;->mVersionCode:I

    .line 101
    iget v1, p1, Landroid/content/pm/ArchivedPackageParcel;->versionCodeMajor:I

    iput v1, p0, Landroid/content/pm/ArchivedPackageInfo;->mVersionCodeMajor:I

    .line 102
    iget v1, p1, Landroid/content/pm/ArchivedPackageParcel;->targetSdkVersion:I

    iput v1, p0, Landroid/content/pm/ArchivedPackageInfo;->mTargetSdkVersion:I

    .line 103
    iget-object v1, p1, Landroid/content/pm/ArchivedPackageParcel;->defaultToDeviceProtectedStorage:Ljava/lang/String;

    iput-object v1, p0, Landroid/content/pm/ArchivedPackageInfo;->mDefaultToDeviceProtectedStorage:Ljava/lang/String;

    .line 104
    iget-object v1, p1, Landroid/content/pm/ArchivedPackageParcel;->requestLegacyExternalStorage:Ljava/lang/String;

    iput-object v1, p0, Landroid/content/pm/ArchivedPackageInfo;->mRequestLegacyExternalStorage:Ljava/lang/String;

    .line 105
    iget-object v1, p1, Landroid/content/pm/ArchivedPackageParcel;->userDataFragile:Ljava/lang/String;

    iput-object v1, p0, Landroid/content/pm/ArchivedPackageInfo;->mUserDataFragile:Ljava/lang/String;

    .line 106
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/content/pm/ArchivedPackageInfo;->mLauncherActivities:Ljava/util/List;

    .line 107
    iget-object v1, p1, Landroid/content/pm/ArchivedPackageParcel;->archivedActivities:[Landroid/content/pm/ArchivedActivityParcel;

    if-eqz v1, :cond_4e

    .line 108
    iget-object v1, p1, Landroid/content/pm/ArchivedPackageParcel;->archivedActivities:[Landroid/content/pm/ArchivedActivityParcel;

    array-length v2, v1

    :goto_3d
    if-ge v0, v2, :cond_4e

    aget-object v3, v1, v0

    .line 109
    .local v3, "activityParcel":Landroid/content/pm/ArchivedActivityParcel;
    iget-object v4, p0, Landroid/content/pm/ArchivedPackageInfo;->mLauncherActivities:Ljava/util/List;

    new-instance v5, Landroid/content/pm/ArchivedActivityInfo;

    invoke-direct {v5, v3}, Landroid/content/pm/ArchivedActivityInfo;-><init>(Landroid/content/pm/ArchivedActivityParcel;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    .end local v3    # "activityParcel":Landroid/content/pm/ArchivedActivityParcel;
    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    .line 112
    :cond_4e
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Landroid/content/pm/SigningInfo;Ljava/util/List;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "signingInfo"    # Landroid/content/pm/SigningInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/SigningInfo;",
            "Ljava/util/List<",
            "Landroid/content/pm/ArchivedActivityInfo;",
            ">;)V"
        }
    .end annotation

    .line 84
    .local p3, "launcherActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ArchivedActivityInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/ArchivedPackageInfo;->mVersionCode:I

    .line 50
    iput v0, p0, Landroid/content/pm/ArchivedPackageInfo;->mVersionCodeMajor:I

    .line 56
    iput v0, p0, Landroid/content/pm/ArchivedPackageInfo;->mTargetSdkVersion:I

    .line 85
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iput-object p1, p0, Landroid/content/pm/ArchivedPackageInfo;->mPackageName:Ljava/lang/String;

    .line 89
    iput-object p2, p0, Landroid/content/pm/ArchivedPackageInfo;->mSigningInfo:Landroid/content/pm/SigningInfo;

    .line 90
    iput-object p3, p0, Landroid/content/pm/ArchivedPackageInfo;->mLauncherActivities:Ljava/util/List;

    .line 91
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 342
    return-void
.end method


# virtual methods
.method public whitelist getDefaultToDeviceProtectedStorage()Ljava/lang/String;
    .registers 2

    .line 200
    iget-object v0, p0, Landroid/content/pm/ArchivedPackageInfo;->mDefaultToDeviceProtectedStorage:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getLauncherActivities()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ArchivedActivityInfo;",
            ">;"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Landroid/content/pm/ArchivedPackageInfo;->mLauncherActivities:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 2

    .line 154
    iget-object v0, p0, Landroid/content/pm/ArchivedPackageInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method blacklist getParcel()Landroid/content/pm/ArchivedPackageParcel;
    .registers 6

    .line 116
    new-instance v0, Landroid/content/pm/ArchivedPackageParcel;

    invoke-direct {v0}, Landroid/content/pm/ArchivedPackageParcel;-><init>()V

    .line 117
    .local v0, "parcel":Landroid/content/pm/ArchivedPackageParcel;
    iget-object v1, p0, Landroid/content/pm/ArchivedPackageInfo;->mPackageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ArchivedPackageParcel;->packageName:Ljava/lang/String;

    .line 118
    iget-object v1, p0, Landroid/content/pm/ArchivedPackageInfo;->mSigningInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {v1}, Landroid/content/pm/SigningInfo;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ArchivedPackageParcel;->signingDetails:Landroid/content/pm/SigningDetails;

    .line 119
    iget v1, p0, Landroid/content/pm/ArchivedPackageInfo;->mVersionCode:I

    iput v1, v0, Landroid/content/pm/ArchivedPackageParcel;->versionCode:I

    .line 120
    iget v1, p0, Landroid/content/pm/ArchivedPackageInfo;->mVersionCodeMajor:I

    iput v1, v0, Landroid/content/pm/ArchivedPackageParcel;->versionCodeMajor:I

    .line 121
    iget v1, p0, Landroid/content/pm/ArchivedPackageInfo;->mTargetSdkVersion:I

    iput v1, v0, Landroid/content/pm/ArchivedPackageParcel;->targetSdkVersion:I

    .line 122
    iget-object v1, p0, Landroid/content/pm/ArchivedPackageInfo;->mDefaultToDeviceProtectedStorage:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ArchivedPackageParcel;->defaultToDeviceProtectedStorage:Ljava/lang/String;

    .line 123
    iget-object v1, p0, Landroid/content/pm/ArchivedPackageInfo;->mRequestLegacyExternalStorage:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ArchivedPackageParcel;->requestLegacyExternalStorage:Ljava/lang/String;

    .line 124
    iget-object v1, p0, Landroid/content/pm/ArchivedPackageInfo;->mUserDataFragile:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ArchivedPackageParcel;->userDataFragile:Ljava/lang/String;

    .line 126
    iget-object v1, p0, Landroid/content/pm/ArchivedPackageInfo;->mLauncherActivities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/content/pm/ArchivedActivityParcel;

    iput-object v1, v0, Landroid/content/pm/ArchivedPackageParcel;->archivedActivities:[Landroid/content/pm/ArchivedActivityParcel;

    .line 127
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, v0, Landroid/content/pm/ArchivedPackageParcel;->archivedActivities:[Landroid/content/pm/ArchivedActivityParcel;

    array-length v2, v2

    .local v2, "size":I
    :goto_37
    if-ge v1, v2, :cond_4c

    .line 128
    iget-object v3, v0, Landroid/content/pm/ArchivedPackageParcel;->archivedActivities:[Landroid/content/pm/ArchivedActivityParcel;

    iget-object v4, p0, Landroid/content/pm/ArchivedPackageInfo;->mLauncherActivities:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ArchivedActivityInfo;

    invoke-virtual {v4}, Landroid/content/pm/ArchivedActivityInfo;->getParcel()Landroid/content/pm/ArchivedActivityParcel;

    move-result-object v4

    aput-object v4, v3, v1

    .line 127
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    .line 131
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_4c
    return-object v0
.end method

.method public whitelist getRequestLegacyExternalStorage()Ljava/lang/String;
    .registers 2

    .line 211
    iget-object v0, p0, Landroid/content/pm/ArchivedPackageInfo;->mRequestLegacyExternalStorage:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSigningInfo()Landroid/content/pm/SigningInfo;
    .registers 2

    .line 162
    iget-object v0, p0, Landroid/content/pm/ArchivedPackageInfo;->mSigningInfo:Landroid/content/pm/SigningInfo;

    return-object v0
.end method

.method public whitelist getTargetSdkVersion()I
    .registers 2

    .line 190
    iget v0, p0, Landroid/content/pm/ArchivedPackageInfo;->mTargetSdkVersion:I

    return v0
.end method

.method public whitelist getUserDataFragile()Ljava/lang/String;
    .registers 2

    .line 221
    iget-object v0, p0, Landroid/content/pm/ArchivedPackageInfo;->mUserDataFragile:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getVersionCode()I
    .registers 2

    .line 171
    iget v0, p0, Landroid/content/pm/ArchivedPackageInfo;->mVersionCode:I

    return v0
.end method

.method public whitelist getVersionCodeMajor()I
    .registers 2

    .line 180
    iget v0, p0, Landroid/content/pm/ArchivedPackageInfo;->mVersionCodeMajor:I

    return v0
.end method

.method public whitelist setDefaultToDeviceProtectedStorage(Ljava/lang/String;)Landroid/content/pm/ArchivedPackageInfo;
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .line 295
    iput-object p1, p0, Landroid/content/pm/ArchivedPackageInfo;->mDefaultToDeviceProtectedStorage:Ljava/lang/String;

    .line 296
    return-object p0
.end method

.method public whitelist setLauncherActivities(Ljava/util/List;)Landroid/content/pm/ArchivedPackageInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ArchivedActivityInfo;",
            ">;)",
            "Landroid/content/pm/ArchivedPackageInfo;"
        }
    .end annotation

    .line 330
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ArchivedActivityInfo;>;"
    iput-object p1, p0, Landroid/content/pm/ArchivedPackageInfo;->mLauncherActivities:Ljava/util/List;

    .line 331
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/content/pm/ArchivedPackageInfo;->mLauncherActivities:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 333
    return-object p0
.end method

.method public whitelist setPackageName(Ljava/lang/String;)Landroid/content/pm/ArchivedPackageInfo;
    .registers 5
    .param p1, "value"    # Ljava/lang/String;

    .line 240
    iput-object p1, p0, Landroid/content/pm/ArchivedPackageInfo;->mPackageName:Ljava/lang/String;

    .line 241
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/content/pm/ArchivedPackageInfo;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 243
    return-object p0
.end method

.method public whitelist setRequestLegacyExternalStorage(Ljava/lang/String;)Landroid/content/pm/ArchivedPackageInfo;
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .line 307
    iput-object p1, p0, Landroid/content/pm/ArchivedPackageInfo;->mRequestLegacyExternalStorage:Ljava/lang/String;

    .line 308
    return-object p0
.end method

.method public whitelist setSigningInfo(Landroid/content/pm/SigningInfo;)Landroid/content/pm/ArchivedPackageInfo;
    .registers 5
    .param p1, "value"    # Landroid/content/pm/SigningInfo;

    .line 251
    iput-object p1, p0, Landroid/content/pm/ArchivedPackageInfo;->mSigningInfo:Landroid/content/pm/SigningInfo;

    .line 252
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/content/pm/ArchivedPackageInfo;->mSigningInfo:Landroid/content/pm/SigningInfo;

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 254
    return-object p0
.end method

.method public whitelist setTargetSdkVersion(I)Landroid/content/pm/ArchivedPackageInfo;
    .registers 2
    .param p1, "value"    # I

    .line 284
    iput p1, p0, Landroid/content/pm/ArchivedPackageInfo;->mTargetSdkVersion:I

    .line 285
    return-object p0
.end method

.method public whitelist setUserDataFragile(Ljava/lang/String;)Landroid/content/pm/ArchivedPackageInfo;
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .line 318
    iput-object p1, p0, Landroid/content/pm/ArchivedPackageInfo;->mUserDataFragile:Ljava/lang/String;

    .line 319
    return-object p0
.end method

.method public whitelist setVersionCode(I)Landroid/content/pm/ArchivedPackageInfo;
    .registers 2
    .param p1, "value"    # I

    .line 263
    iput p1, p0, Landroid/content/pm/ArchivedPackageInfo;->mVersionCode:I

    .line 264
    return-object p0
.end method

.method public whitelist setVersionCodeMajor(I)Landroid/content/pm/ArchivedPackageInfo;
    .registers 2
    .param p1, "value"    # I

    .line 273
    iput p1, p0, Landroid/content/pm/ArchivedPackageInfo;->mVersionCodeMajor:I

    .line 274
    return-object p0
.end method
