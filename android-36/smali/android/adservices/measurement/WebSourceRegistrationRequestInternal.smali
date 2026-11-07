.class public Landroid/adservices/measurement/WebSourceRegistrationRequestInternal;
.super Ljava/lang/Object;
.source "WebSourceRegistrationRequestInternal.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/measurement/WebSourceRegistrationRequestInternal$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/measurement/WebSourceRegistrationRequestInternal;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAppPackageName:Ljava/lang/String;

.field private final blacklist mIsAdIdPermissionGranted:Z

.field private final blacklist mRequestTime:J

.field private final blacklist mSdkPackageName:Ljava/lang/String;

.field private final blacklist mSourceRegistrationRequest:Landroid/adservices/measurement/WebSourceRegistrationRequest;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 33
    new-instance v0, Landroid/adservices/measurement/WebSourceRegistrationRequestInternal$1;

    invoke-direct {v0}, Landroid/adservices/measurement/WebSourceRegistrationRequestInternal$1;-><init>()V

    sput-object v0, Landroid/adservices/measurement/WebSourceRegistrationRequestInternal;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/adservices/measurement/WebSourceRegistrationRequestInternal$Builder;)V
    .registers 4
    .param p1, "builder"    # Landroid/adservices/measurement/WebSourceRegistrationRequestInternal$Builder;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {p1}, Landroid/adservices/measurement/WebSourceRegistrationRequestInternal$Builder;->-$$Nest$fgetmSourceRegistrationRequest(Landroid/adservices/measurement/WebSourceRegistrationRequestInternal$Builder;)Landroid/adservices/measurement/WebSourceRegistrationRequest;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/measurement/WebSourceRegistrationRequestInternal;->mSourceRegistrationRequest:Landroid/adservices/measurement/WebSourceRegistrationRequest;

    .line 58
    invoke-static {p1}, Landroid/adservices/measurement/WebSourceRegistrationRequestInternal$Builder;->-$$Nest$fgetmAppPackageName(Landroid/adservices/measurement/WebSourceRegistrationRequestInternal$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/measurement/WebSourceRegistrationRequestInternal;->mAppPackageName:Ljava/lang/String;

    .line 59
    invoke-static {p1}, Landroid/adservices/measurement/WebSourceRegistrationRequestInternal$Builder;->-$$Nest$fgetmSdkPackageName(Landroid/adservices/measurement/WebSourceRegistrationRequestInternal$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/measurement/WebSourceRegistrationRequestInternal;->mSdkPackageName:Ljava/lang/String;

    .line 60
    invoke-static {p1}, Landroid/adservices/measurement/WebSourceRegistrationRequestInternal$Builder;->-$$Nest$fgetmRequestTime(Landroid/adservices/measurement/WebSourceRegistrationRequestInternal$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/adservices/measurement/WebSourceRegistrationRequestInternal;->mRequestTime:J

    .line 61
    invoke-static {p1}, Landroid/adservices/measurement/WebSourceRegistrationRequestInternal$Builder;->-$$Nest$fgetmIsAdIdPermissionGranted(Landroid/adservices/measurement/WebSourceRegistrationRequestInternal$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/adservices/measurement/WebSourceRegistrationRequestInternal;->mIsAdIdPermissionGranted:Z

    .line 62
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/adservices/measurement/WebSourceRegistrationRequestInternal$Builder;Landroid/adservices/measurement/WebSourceRegistrationRequestInternal-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/measurement/WebSourceRegistrationRequestInternal;-><init>(Landroid/adservices/measurement/WebSourceRegistrationRequestInternal$Builder;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Landroid/adservices/measurement/WebSourceRegistrationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/measurement/WebSourceRegistrationRequest;

    iput-object v0, p0, Landroid/adservices/measurement/WebSourceRegistrationRequestInternal;->mSourceRegistrationRequest:Landroid/adservices/measurement/WebSourceRegistrationRequest;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/measurement/WebSourceRegistrationRequestInternal;->mAppPackageName:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/measurement/WebSourceRegistrationRequestInternal;->mSdkPackageName:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/adservices/measurement/WebSourceRegistrationRequestInternal;->mRequestTime:J

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/adservices/measurement/WebSourceRegistrationRequestInternal;->mIsAdIdPermissionGranted:Z

    .line 71
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/adservices/measurement/WebSourceRegistrationRequestInternal-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/measurement/WebSourceRegistrationRequestInternal;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 100
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 101
    :cond_4
    instance-of v1, p1, Landroid/adservices/measurement/WebSourceRegistrationRequestInternal;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 102
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/adservices/measurement/WebSourceRegistrationRequestInternal;

    .line 103
    .local v1, "that":Landroid/adservices/measurement/WebSourceRegistrationRequestInternal;
    iget-object v3, p0, Landroid/adservices/measurement/WebSourceRegistrationRequestInternal;->mSourceRegistrationRequest:Landroid/adservices/measurement/WebSourceRegistrationRequest;

    iget-object v4, v1, Landroid/adservices/measurement/WebSourceRegistrationRequestInternal;->mSourceRegistrationRequest:Landroid/adservices/measurement/WebSourceRegistrationRequest;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    iget-object v3, p0, Landroid/adservices/measurement/WebSourceRegistrationRequestInternal;->mAppPackageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/adservices/measurement/WebSourceRegistrationRequestInternal;->mAppPackageName:Ljava/lang/String;

    .line 104
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    iget-object v3, p0, Landroid/adservices/measurement/WebSourceRegistrationRequestInternal;->mSdkPackageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/adservices/measurement/WebSourceRegistrationRequestInternal;->mSdkPackageName:Ljava/lang/String;

    .line 105
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    iget-wide v3, p0, Landroid/adservices/measurement/WebSourceRegistrationRequestInternal;->mRequestTime:J

    iget-wide v5, v1, Landroid/adservices/measurement/WebSourceRegistrationRequestInternal;->mRequestTime:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3a

    iget-boolean v3, p0, Landroid/adservices/measurement/WebSourceRegistrationRequestInternal;->mIsAdIdPermissionGranted:Z

    iget-boolean v4, v1, Landroid/adservices/measurement/WebSourceRegistrationRequestInternal;->mIsAdIdPermissionGranted:Z

    if-ne v3, v4, :cond_3a

    goto :goto_3b

    :cond_3a
    move v0, v2

    .line 103
    :goto_3b
    return v0
.end method

.method public blacklist getAppPackageName()Ljava/lang/String;
    .registers 2

    .line 80
    iget-object v0, p0, Landroid/adservices/measurement/WebSourceRegistrationRequestInternal;->mAppPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRequestTime()J
    .registers 3

    .line 90
    iget-wide v0, p0, Landroid/adservices/measurement/WebSourceRegistrationRequestInternal;->mRequestTime:J

    return-wide v0
.end method

.method public blacklist getSdkPackageName()Ljava/lang/String;
    .registers 2

    .line 85
    iget-object v0, p0, Landroid/adservices/measurement/WebSourceRegistrationRequestInternal;->mSdkPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSourceRegistrationRequest()Landroid/adservices/measurement/WebSourceRegistrationRequest;
    .registers 2

    .line 75
    iget-object v0, p0, Landroid/adservices/measurement/WebSourceRegistrationRequestInternal;->mSourceRegistrationRequest:Landroid/adservices/measurement/WebSourceRegistrationRequest;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 112
    iget-object v0, p0, Landroid/adservices/measurement/WebSourceRegistrationRequestInternal;->mSourceRegistrationRequest:Landroid/adservices/measurement/WebSourceRegistrationRequest;

    iget-object v1, p0, Landroid/adservices/measurement/WebSourceRegistrationRequestInternal;->mAppPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/adservices/measurement/WebSourceRegistrationRequestInternal;->mSdkPackageName:Ljava/lang/String;

    iget-boolean v3, p0, Landroid/adservices/measurement/WebSourceRegistrationRequestInternal;->mIsAdIdPermissionGranted:Z

    .line 116
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 112
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isAdIdPermissionGranted()Z
    .registers 2

    .line 95
    iget-boolean v0, p0, Landroid/adservices/measurement/WebSourceRegistrationRequestInternal;->mIsAdIdPermissionGranted:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 126
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v0, p0, Landroid/adservices/measurement/WebSourceRegistrationRequestInternal;->mSourceRegistrationRequest:Landroid/adservices/measurement/WebSourceRegistrationRequest;

    invoke-virtual {v0, p1, p2}, Landroid/adservices/measurement/WebSourceRegistrationRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 128
    iget-object v0, p0, Landroid/adservices/measurement/WebSourceRegistrationRequestInternal;->mAppPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Landroid/adservices/measurement/WebSourceRegistrationRequestInternal;->mSdkPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget-wide v0, p0, Landroid/adservices/measurement/WebSourceRegistrationRequestInternal;->mRequestTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 131
    iget-boolean v0, p0, Landroid/adservices/measurement/WebSourceRegistrationRequestInternal;->mIsAdIdPermissionGranted:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 132
    return-void
.end method
