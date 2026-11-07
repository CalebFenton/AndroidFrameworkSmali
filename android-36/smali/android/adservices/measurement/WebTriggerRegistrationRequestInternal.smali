.class public Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal;
.super Ljava/lang/Object;
.source "WebTriggerRegistrationRequestInternal.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAppPackageName:Ljava/lang/String;

.field private final blacklist mIsAdIdPermissionGranted:Z

.field private final blacklist mSdkPackageName:Ljava/lang/String;

.field private final blacklist mTriggerRegistrationRequest:Landroid/adservices/measurement/WebTriggerRegistrationRequest;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 34
    new-instance v0, Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal$1;

    invoke-direct {v0}, Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal$1;-><init>()V

    sput-object v0, Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal$Builder;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {p1}, Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal$Builder;->-$$Nest$fgetmTriggerRegistrationRequest(Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal$Builder;)Landroid/adservices/measurement/WebTriggerRegistrationRequest;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal;->mTriggerRegistrationRequest:Landroid/adservices/measurement/WebTriggerRegistrationRequest;

    .line 57
    invoke-static {p1}, Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal$Builder;->-$$Nest$fgetmAppPackageName(Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal;->mAppPackageName:Ljava/lang/String;

    .line 58
    invoke-static {p1}, Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal$Builder;->-$$Nest$fgetmSdkPackageName(Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal;->mSdkPackageName:Ljava/lang/String;

    .line 59
    invoke-static {p1}, Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal$Builder;->-$$Nest$fgetmIsAdIdPermissionGranted(Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal;->mIsAdIdPermissionGranted:Z

    .line 60
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal$Builder;Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal;-><init>(Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal$Builder;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Landroid/adservices/measurement/WebTriggerRegistrationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/measurement/WebTriggerRegistrationRequest;

    iput-object v0, p0, Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal;->mTriggerRegistrationRequest:Landroid/adservices/measurement/WebTriggerRegistrationRequest;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal;->mAppPackageName:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal;->mSdkPackageName:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal;->mIsAdIdPermissionGranted:Z

    .line 68
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 92
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 93
    :cond_4
    instance-of v1, p1, Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 94
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal;

    .line 95
    .local v1, "that":Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal;
    iget-object v3, p0, Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal;->mTriggerRegistrationRequest:Landroid/adservices/measurement/WebTriggerRegistrationRequest;

    iget-object v4, v1, Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal;->mTriggerRegistrationRequest:Landroid/adservices/measurement/WebTriggerRegistrationRequest;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    iget-object v3, p0, Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal;->mAppPackageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal;->mAppPackageName:Ljava/lang/String;

    .line 96
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    iget-object v3, p0, Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal;->mSdkPackageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal;->mSdkPackageName:Ljava/lang/String;

    .line 97
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    iget-boolean v3, p0, Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal;->mIsAdIdPermissionGranted:Z

    .line 98
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, v1, Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal;->mIsAdIdPermissionGranted:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    goto :goto_3f

    :cond_3e
    move v0, v2

    .line 95
    :goto_3f
    return v0
.end method

.method public blacklist getAppPackageName()Ljava/lang/String;
    .registers 2

    .line 77
    iget-object v0, p0, Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal;->mAppPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSdkPackageName()Ljava/lang/String;
    .registers 2

    .line 82
    iget-object v0, p0, Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal;->mSdkPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTriggerRegistrationRequest()Landroid/adservices/measurement/WebTriggerRegistrationRequest;
    .registers 2

    .line 72
    iget-object v0, p0, Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal;->mTriggerRegistrationRequest:Landroid/adservices/measurement/WebTriggerRegistrationRequest;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 103
    iget-object v0, p0, Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal;->mTriggerRegistrationRequest:Landroid/adservices/measurement/WebTriggerRegistrationRequest;

    iget-object v1, p0, Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal;->mAppPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal;->mSdkPackageName:Ljava/lang/String;

    iget-boolean v3, p0, Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal;->mIsAdIdPermissionGranted:Z

    .line 107
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 103
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isAdIdPermissionGranted()Z
    .registers 2

    .line 87
    iget-boolean v0, p0, Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal;->mIsAdIdPermissionGranted:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 117
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal;->mTriggerRegistrationRequest:Landroid/adservices/measurement/WebTriggerRegistrationRequest;

    invoke-virtual {v0, p1, p2}, Landroid/adservices/measurement/WebTriggerRegistrationRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 119
    iget-object v0, p0, Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal;->mAppPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal;->mSdkPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    iget-boolean v0, p0, Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal;->mIsAdIdPermissionGranted:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 122
    return-void
.end method
