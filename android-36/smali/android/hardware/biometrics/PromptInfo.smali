.class public Landroid/hardware/biometrics/PromptInfo;
.super Ljava/lang/Object;
.source "PromptInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/biometrics/PromptInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAllowBackgroundAuthentication:Z

.field private blacklist mAllowedSensorIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAuthenticators:I

.field private blacklist mClassNameIfItIsConfirmDeviceCredentialActivity:Ljava/lang/String;

.field private blacklist mConfirmationRequested:Z

.field private blacklist mContentView:Landroid/hardware/biometrics/PromptContentViewParcelable;

.field private blacklist mDescription:Ljava/lang/CharSequence;

.field private blacklist mDeviceCredentialAllowed:Z

.field private blacklist mDeviceCredentialDescription:Ljava/lang/CharSequence;

.field private blacklist mDeviceCredentialSubtitle:Ljava/lang/CharSequence;

.field private blacklist mDeviceCredentialTitle:Ljava/lang/CharSequence;

.field private blacklist mDisallowBiometricsIfPolicyExists:Z

.field private blacklist mIgnoreEnrollmentState:Z

.field private blacklist mIsForLegacyFingerprintManager:Z

.field private blacklist mLogoBitmap:Landroid/graphics/Bitmap;

.field private blacklist mLogoDescription:Ljava/lang/String;

.field private blacklist mLogoRes:I

.field private blacklist mNegativeButtonText:Ljava/lang/CharSequence;

.field private blacklist mRealCallerForConfirmDeviceCredentialActivity:Landroid/content/ComponentName;

.field private blacklist mReceiveSystemEvents:Z

.field private blacklist mShowEmergencyCallButton:Z

.field private blacklist mSubtitle:Ljava/lang/CharSequence;

.field private blacklist mTitle:Ljava/lang/CharSequence;

.field private blacklist mUseDefaultSubtitle:Z

.field private blacklist mUseDefaultTitle:Z

.field private blacklist mUseParentProfileForDeviceCredential:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 98
    new-instance v0, Landroid/hardware/biometrics/PromptInfo$1;

    invoke-direct {v0}, Landroid/hardware/biometrics/PromptInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/biometrics/PromptInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mConfirmationRequested:Z

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowedSensorIds:Ljava/util/List;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mIsForLegacyFingerprintManager:Z

    .line 58
    iput-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mShowEmergencyCallButton:Z

    .line 59
    iput-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mUseParentProfileForDeviceCredential:Z

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mRealCallerForConfirmDeviceCredentialActivity:Landroid/content/ComponentName;

    .line 61
    iput-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mClassNameIfItIsConfirmDeviceCredentialActivity:Ljava/lang/String;

    .line 65
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mConfirmationRequested:Z

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowedSensorIds:Ljava/util/List;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mIsForLegacyFingerprintManager:Z

    .line 58
    iput-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mShowEmergencyCallButton:Z

    .line 59
    iput-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mUseParentProfileForDeviceCredential:Z

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mRealCallerForConfirmDeviceCredentialActivity:Landroid/content/ComponentName;

    .line 61
    iput-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mClassNameIfItIsConfirmDeviceCredentialActivity:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/biometrics/PromptInfo;->mLogoRes:I

    .line 69
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mLogoBitmap:Landroid/graphics/Bitmap;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mLogoDescription:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mTitle:Ljava/lang/CharSequence;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mUseDefaultTitle:Z

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mSubtitle:Ljava/lang/CharSequence;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mUseDefaultSubtitle:Z

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDescription:Ljava/lang/CharSequence;

    .line 76
    const-class v0, Landroid/hardware/biometrics/PromptContentViewParcelable;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/hardware/biometrics/PromptContentViewParcelable;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/PromptContentViewParcelable;

    iput-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mContentView:Landroid/hardware/biometrics/PromptContentViewParcelable;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialTitle:Ljava/lang/CharSequence;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialSubtitle:Ljava/lang/CharSequence;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialDescription:Ljava/lang/CharSequence;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mConfirmationRequested:Z

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialAllowed:Z

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAuthenticators:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDisallowBiometricsIfPolicyExists:Z

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mReceiveSystemEvents:Z

    .line 87
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowedSensorIds:Ljava/util/List;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowBackgroundAuthentication:Z

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mIgnoreEnrollmentState:Z

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mIsForLegacyFingerprintManager:Z

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mShowEmergencyCallButton:Z

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mUseParentProfileForDeviceCredential:Z

    .line 93
    const-class v0, Landroid/content/ComponentName;

    .line 94
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/content/ComponentName;

    .line 93
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mRealCallerForConfirmDeviceCredentialActivity:Landroid/content/ComponentName;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mClassNameIfItIsConfirmDeviceCredentialActivity:Ljava/lang/String;

    .line 96
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAllowedSensorIds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 448
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowedSensorIds:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getAuthenticators()I
    .registers 2

    .line 435
    iget v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAuthenticators:I

    return v0
.end method

.method public blacklist getClassNameIfItIsConfirmDeviceCredentialActivity()Ljava/lang/String;
    .registers 2

    .line 476
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mClassNameIfItIsConfirmDeviceCredentialActivity:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getContentView()Landroid/hardware/biometrics/PromptContentView;
    .registers 2

    .line 400
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mContentView:Landroid/hardware/biometrics/PromptContentViewParcelable;

    return-object v0
.end method

.method public blacklist getDescription()Ljava/lang/CharSequence;
    .registers 2

    .line 391
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getDeviceCredentialDescription()Ljava/lang/CharSequence;
    .registers 2

    .line 412
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getDeviceCredentialSubtitle()Ljava/lang/CharSequence;
    .registers 2

    .line 408
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getDeviceCredentialTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 404
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getLogo()Landroid/graphics/Bitmap;
    .registers 2

    .line 350
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mLogoBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public blacklist getLogoBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .line 367
    iget v0, p0, Landroid/hardware/biometrics/PromptInfo;->mLogoRes:I

    if-nez v0, :cond_7

    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mLogoBitmap:Landroid/graphics/Bitmap;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method public blacklist getLogoDescription()Ljava/lang/String;
    .registers 2

    .line 371
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mLogoDescription:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getLogoRes()I
    .registers 2

    .line 358
    iget v0, p0, Landroid/hardware/biometrics/PromptInfo;->mLogoRes:I

    return v0
.end method

.method public blacklist getNegativeButtonText()Ljava/lang/CharSequence;
    .registers 2

    .line 416
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mNegativeButtonText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getRealCallerForConfirmDeviceCredentialActivity()Landroid/content/ComponentName;
    .registers 2

    .line 468
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mRealCallerForConfirmDeviceCredentialActivity:Landroid/content/ComponentName;

    return-object v0
.end method

.method public blacklist getSubtitle()Ljava/lang/CharSequence;
    .registers 2

    .line 383
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 375
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist isAllowBackgroundAuthentication()Z
    .registers 2

    .line 452
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowBackgroundAuthentication:Z

    return v0
.end method

.method public blacklist isConfirmationRequested()Z
    .registers 2

    .line 420
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mConfirmationRequested:Z

    return v0
.end method

.method public blacklist isContentViewMoreOptionsButtonUsed()Z
    .registers 2

    .line 220
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mContentView:Landroid/hardware/biometrics/PromptContentViewParcelable;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mContentView:Landroid/hardware/biometrics/PromptContentViewParcelable;

    instance-of v0, v0, Landroid/hardware/biometrics/PromptContentViewWithMoreOptionsButton;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public blacklist isDeviceCredentialAllowed()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 431
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialAllowed:Z

    return v0
.end method

.method public blacklist isDisallowBiometricsIfPolicyExists()Z
    .registers 2

    .line 439
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDisallowBiometricsIfPolicyExists:Z

    return v0
.end method

.method public blacklist isForLegacyFingerprintManager()Z
    .registers 2

    .line 460
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mIsForLegacyFingerprintManager:Z

    return v0
.end method

.method public blacklist isIgnoreEnrollmentState()Z
    .registers 2

    .line 456
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mIgnoreEnrollmentState:Z

    return v0
.end method

.method public blacklist isReceiveSystemEvents()Z
    .registers 2

    .line 443
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mReceiveSystemEvents:Z

    return v0
.end method

.method public blacklist isShowEmergencyCallButton()Z
    .registers 2

    .line 464
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mShowEmergencyCallButton:Z

    return v0
.end method

.method public blacklist isUseDefaultSubtitle()Z
    .registers 2

    .line 387
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mUseDefaultSubtitle:Z

    return v0
.end method

.method public blacklist isUseDefaultTitle()Z
    .registers 2

    .line 379
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mUseDefaultTitle:Z

    return v0
.end method

.method public blacklist requiresAdvancedPermission()Z
    .registers 4

    .line 193
    iget v0, p0, Landroid/hardware/biometrics/PromptInfo;->mLogoRes:I

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 194
    return v1

    .line 195
    :cond_6
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mLogoBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_b

    .line 196
    return v1

    .line 197
    :cond_b
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mLogoDescription:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 198
    return v1

    .line 199
    :cond_10
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mContentView:Landroid/hardware/biometrics/PromptContentViewParcelable;

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Landroid/hardware/biometrics/PromptInfo;->isContentViewMoreOptionsButtonUsed()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 200
    return v1

    .line 201
    :cond_1b
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/Flags;->mandatoryBiometrics()Z

    move-result v0

    if-eqz v0, :cond_29

    iget v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAuthenticators:I

    const/high16 v2, 0x10000

    and-int/2addr v0, v2

    if-eqz v0, :cond_29

    .line 204
    return v1

    .line 206
    :cond_29
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist requiresInternalPermission()Z
    .registers 3

    .line 168
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDisallowBiometricsIfPolicyExists:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 169
    return v1

    .line 170
    :cond_6
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mUseDefaultTitle:Z

    if-eqz v0, :cond_b

    .line 171
    return v1

    .line 172
    :cond_b
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mUseDefaultSubtitle:Z

    if-eqz v0, :cond_10

    .line 173
    return v1

    .line 174
    :cond_10
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_15

    .line 175
    return v1

    .line 176
    :cond_15
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialSubtitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1a

    .line 177
    return v1

    .line 178
    :cond_1a
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1f

    .line 179
    return v1

    .line 180
    :cond_1f
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mReceiveSystemEvents:Z

    if-eqz v0, :cond_24

    .line 181
    return v1

    .line 183
    :cond_24
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist requiresTestOrInternalPermission()Z
    .registers 4

    .line 147
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mIsForLegacyFingerprintManager:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowedSensorIds:Ljava/util/List;

    .line 148
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_13

    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowBackgroundAuthentication:Z

    if-nez v0, :cond_13

    .line 150
    return v1

    .line 151
    :cond_13
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowedSensorIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 152
    return v2

    .line 153
    :cond_1c
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowBackgroundAuthentication:Z

    if-eqz v0, :cond_21

    .line 154
    return v2

    .line 155
    :cond_21
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mIsForLegacyFingerprintManager:Z

    if-eqz v0, :cond_26

    .line 156
    return v2

    .line 157
    :cond_26
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mIgnoreEnrollmentState:Z

    if-eqz v0, :cond_2b

    .line 158
    return v2

    .line 159
    :cond_2b
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mShowEmergencyCallButton:Z

    if-eqz v0, :cond_30

    .line 160
    return v2

    .line 161
    :cond_30
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mRealCallerForConfirmDeviceCredentialActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_35

    .line 162
    return v2

    .line 164
    :cond_35
    return v1
.end method

.method public blacklist setAllowBackgroundAuthentication(Z)V
    .registers 2
    .param p1, "allow"    # Z

    .line 310
    iput-boolean p1, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowBackgroundAuthentication:Z

    .line 311
    return-void
.end method

.method public blacklist setAllowedSensorIds(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 305
    .local p1, "sensorIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowedSensorIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 306
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowedSensorIds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 307
    return-void
.end method

.method public blacklist setAuthenticators(I)V
    .registers 2
    .param p1, "authenticators"    # I

    .line 293
    iput p1, p0, Landroid/hardware/biometrics/PromptInfo;->mAuthenticators:I

    .line 294
    return-void
.end method

.method blacklist setClassNameIfItIsConfirmDeviceCredentialActivity(Ljava/lang/String;)V
    .registers 2
    .param p1, "className"    # Ljava/lang/String;

    .line 340
    iput-object p1, p0, Landroid/hardware/biometrics/PromptInfo;->mClassNameIfItIsConfirmDeviceCredentialActivity:Ljava/lang/String;

    .line 341
    return-void
.end method

.method public blacklist setConfirmationRequested(Z)V
    .registers 2
    .param p1, "confirmationRequested"    # Z

    .line 285
    iput-boolean p1, p0, Landroid/hardware/biometrics/PromptInfo;->mConfirmationRequested:Z

    .line 286
    return-void
.end method

.method public blacklist setContentView(Landroid/hardware/biometrics/PromptContentView;)V
    .registers 3
    .param p1, "view"    # Landroid/hardware/biometrics/PromptContentView;

    .line 265
    move-object v0, p1

    check-cast v0, Landroid/hardware/biometrics/PromptContentViewParcelable;

    iput-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mContentView:Landroid/hardware/biometrics/PromptContentViewParcelable;

    .line 266
    return-void
.end method

.method public blacklist setDescription(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "description"    # Ljava/lang/CharSequence;

    .line 261
    iput-object p1, p0, Landroid/hardware/biometrics/PromptInfo;->mDescription:Ljava/lang/CharSequence;

    .line 262
    return-void
.end method

.method public blacklist setDeviceCredentialAllowed(Z)V
    .registers 2
    .param p1, "deviceCredentialAllowed"    # Z

    .line 289
    iput-boolean p1, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialAllowed:Z

    .line 290
    return-void
.end method

.method public blacklist setDeviceCredentialDescription(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "deviceCredentialDescription"    # Ljava/lang/CharSequence;

    .line 277
    iput-object p1, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialDescription:Ljava/lang/CharSequence;

    .line 278
    return-void
.end method

.method public blacklist setDeviceCredentialSubtitle(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "deviceCredentialSubtitle"    # Ljava/lang/CharSequence;

    .line 273
    iput-object p1, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialSubtitle:Ljava/lang/CharSequence;

    .line 274
    return-void
.end method

.method public blacklist setDeviceCredentialTitle(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "deviceCredentialTitle"    # Ljava/lang/CharSequence;

    .line 269
    iput-object p1, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialTitle:Ljava/lang/CharSequence;

    .line 270
    return-void
.end method

.method public blacklist setDisallowBiometricsIfPolicyExists(Z)V
    .registers 2
    .param p1, "disallowBiometricsIfPolicyExists"    # Z

    .line 297
    iput-boolean p1, p0, Landroid/hardware/biometrics/PromptInfo;->mDisallowBiometricsIfPolicyExists:Z

    .line 298
    return-void
.end method

.method public blacklist setIgnoreEnrollmentState(Z)V
    .registers 2
    .param p1, "ignoreEnrollmentState"    # Z

    .line 314
    iput-boolean p1, p0, Landroid/hardware/biometrics/PromptInfo;->mIgnoreEnrollmentState:Z

    .line 315
    return-void
.end method

.method public blacklist setIsForLegacyFingerprintManager(I)V
    .registers 4
    .param p1, "sensorId"    # I

    .line 318
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mIsForLegacyFingerprintManager:Z

    .line 319
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowedSensorIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 320
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowedSensorIds:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    return-void
.end method

.method public blacklist setLogo(ILandroid/graphics/Bitmap;)V
    .registers 3
    .param p1, "logoRes"    # I
    .param p2, "logoBitmap"    # Landroid/graphics/Bitmap;

    .line 236
    iput p1, p0, Landroid/hardware/biometrics/PromptInfo;->mLogoRes:I

    .line 237
    iput-object p2, p0, Landroid/hardware/biometrics/PromptInfo;->mLogoBitmap:Landroid/graphics/Bitmap;

    .line 238
    return-void
.end method

.method public blacklist setLogoDescription(Ljava/lang/String;)V
    .registers 2
    .param p1, "logoDescription"    # Ljava/lang/String;

    .line 241
    iput-object p1, p0, Landroid/hardware/biometrics/PromptInfo;->mLogoDescription:Ljava/lang/String;

    .line 242
    return-void
.end method

.method public blacklist setNegativeButtonText(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "negativeButtonText"    # Ljava/lang/CharSequence;

    .line 281
    iput-object p1, p0, Landroid/hardware/biometrics/PromptInfo;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 282
    return-void
.end method

.method public blacklist setRealCallerForConfirmDeviceCredentialActivity(Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "realCaller"    # Landroid/content/ComponentName;

    .line 328
    iput-object p1, p0, Landroid/hardware/biometrics/PromptInfo;->mRealCallerForConfirmDeviceCredentialActivity:Landroid/content/ComponentName;

    .line 329
    return-void
.end method

.method public blacklist setReceiveSystemEvents(Z)V
    .registers 2
    .param p1, "receiveSystemEvents"    # Z

    .line 301
    iput-boolean p1, p0, Landroid/hardware/biometrics/PromptInfo;->mReceiveSystemEvents:Z

    .line 302
    return-void
.end method

.method public blacklist setShowEmergencyCallButton(Z)V
    .registers 2
    .param p1, "showEmergencyCallButton"    # Z

    .line 324
    iput-boolean p1, p0, Landroid/hardware/biometrics/PromptInfo;->mShowEmergencyCallButton:Z

    .line 325
    return-void
.end method

.method public blacklist setSubtitle(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .line 253
    iput-object p1, p0, Landroid/hardware/biometrics/PromptInfo;->mSubtitle:Ljava/lang/CharSequence;

    .line 254
    return-void
.end method

.method public blacklist setTitle(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 245
    iput-object p1, p0, Landroid/hardware/biometrics/PromptInfo;->mTitle:Ljava/lang/CharSequence;

    .line 246
    return-void
.end method

.method public blacklist setUseDefaultSubtitle(Z)V
    .registers 2
    .param p1, "useDefaultSubtitle"    # Z

    .line 257
    iput-boolean p1, p0, Landroid/hardware/biometrics/PromptInfo;->mUseDefaultSubtitle:Z

    .line 258
    return-void
.end method

.method public blacklist setUseDefaultTitle(Z)V
    .registers 2
    .param p1, "useDefaultTitle"    # Z

    .line 249
    iput-boolean p1, p0, Landroid/hardware/biometrics/PromptInfo;->mUseDefaultTitle:Z

    .line 250
    return-void
.end method

.method public blacklist setUseParentProfileForDeviceCredential(Z)V
    .registers 2
    .param p1, "useParentProfileForDeviceCredential"    # Z

    .line 333
    iput-boolean p1, p0, Landroid/hardware/biometrics/PromptInfo;->mUseParentProfileForDeviceCredential:Z

    .line 334
    return-void
.end method

.method public blacklist shouldUseParentProfileForDeviceCredential()Z
    .registers 2

    .line 213
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mUseParentProfileForDeviceCredential:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 117
    iget v0, p0, Landroid/hardware/biometrics/PromptInfo;->mLogoRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mLogoBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 119
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mLogoDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 121
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mUseDefaultTitle:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 122
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 123
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mUseDefaultSubtitle:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 124
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mContentView:Landroid/hardware/biometrics/PromptContentViewParcelable;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 126
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mNegativeButtonText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 130
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mConfirmationRequested:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 131
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialAllowed:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 132
    iget v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAuthenticators:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDisallowBiometricsIfPolicyExists:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 134
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mReceiveSystemEvents:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 135
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowedSensorIds:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 136
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowBackgroundAuthentication:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 137
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mIgnoreEnrollmentState:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 138
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mIsForLegacyFingerprintManager:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 139
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mShowEmergencyCallButton:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 140
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mUseParentProfileForDeviceCredential:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 141
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mRealCallerForConfirmDeviceCredentialActivity:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 142
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mClassNameIfItIsConfirmDeviceCredentialActivity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    return-void
.end method
