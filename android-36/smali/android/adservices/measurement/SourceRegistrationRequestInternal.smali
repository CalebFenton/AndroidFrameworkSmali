.class public Landroid/adservices/measurement/SourceRegistrationRequestInternal;
.super Ljava/lang/Object;
.source "SourceRegistrationRequestInternal.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/measurement/SourceRegistrationRequestInternal$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/measurement/SourceRegistrationRequestInternal;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAdIdValue:Ljava/lang/String;

.field private final blacklist mAppPackageName:Ljava/lang/String;

.field private final blacklist mBootRelativeRequestTime:J

.field private final blacklist mSdkPackageName:Ljava/lang/String;

.field private final blacklist mSourceRegistrationRequest:Landroid/adservices/measurement/SourceRegistrationRequest;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 177
    new-instance v0, Landroid/adservices/measurement/SourceRegistrationRequestInternal$1;

    invoke-direct {v0}, Landroid/adservices/measurement/SourceRegistrationRequestInternal$1;-><init>()V

    sput-object v0, Landroid/adservices/measurement/SourceRegistrationRequestInternal;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/adservices/measurement/SourceRegistrationRequestInternal$Builder;)V
    .registers 4
    .param p1, "builder"    # Landroid/adservices/measurement/SourceRegistrationRequestInternal$Builder;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {p1}, Landroid/adservices/measurement/SourceRegistrationRequestInternal$Builder;->-$$Nest$fgetmRegistrationRequest(Landroid/adservices/measurement/SourceRegistrationRequestInternal$Builder;)Landroid/adservices/measurement/SourceRegistrationRequest;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/measurement/SourceRegistrationRequestInternal;->mSourceRegistrationRequest:Landroid/adservices/measurement/SourceRegistrationRequest;

    .line 48
    invoke-static {p1}, Landroid/adservices/measurement/SourceRegistrationRequestInternal$Builder;->-$$Nest$fgetmAppPackageName(Landroid/adservices/measurement/SourceRegistrationRequestInternal$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/measurement/SourceRegistrationRequestInternal;->mAppPackageName:Ljava/lang/String;

    .line 49
    invoke-static {p1}, Landroid/adservices/measurement/SourceRegistrationRequestInternal$Builder;->-$$Nest$fgetmSdkPackageName(Landroid/adservices/measurement/SourceRegistrationRequestInternal$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/measurement/SourceRegistrationRequestInternal;->mSdkPackageName:Ljava/lang/String;

    .line 50
    invoke-static {p1}, Landroid/adservices/measurement/SourceRegistrationRequestInternal$Builder;->-$$Nest$fgetmBootRelativeRequestTime(Landroid/adservices/measurement/SourceRegistrationRequestInternal$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/adservices/measurement/SourceRegistrationRequestInternal;->mBootRelativeRequestTime:J

    .line 51
    invoke-static {p1}, Landroid/adservices/measurement/SourceRegistrationRequestInternal$Builder;->-$$Nest$fgetmAdIdValue(Landroid/adservices/measurement/SourceRegistrationRequestInternal$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/measurement/SourceRegistrationRequestInternal;->mAdIdValue:Ljava/lang/String;

    .line 52
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/adservices/measurement/SourceRegistrationRequestInternal$Builder;Landroid/adservices/measurement/SourceRegistrationRequestInternal-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/measurement/SourceRegistrationRequestInternal;-><init>(Landroid/adservices/measurement/SourceRegistrationRequestInternal$Builder;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Landroid/adservices/measurement/SourceRegistrationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/measurement/SourceRegistrationRequest;

    iput-object v0, p0, Landroid/adservices/measurement/SourceRegistrationRequestInternal;->mSourceRegistrationRequest:Landroid/adservices/measurement/SourceRegistrationRequest;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/measurement/SourceRegistrationRequestInternal;->mAppPackageName:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/measurement/SourceRegistrationRequestInternal;->mSdkPackageName:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/adservices/measurement/SourceRegistrationRequestInternal;->mBootRelativeRequestTime:J

    .line 60
    new-instance v0, Landroid/adservices/measurement/SourceRegistrationRequestInternal$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/adservices/measurement/SourceRegistrationRequestInternal$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0}, Lcom/android/adservices/AdServicesParcelableUtil;->readNullableFromParcel(Landroid/os/Parcel;Lcom/android/adservices/AdServicesParcelableUtil$ParcelReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/adservices/measurement/SourceRegistrationRequestInternal;->mAdIdValue:Ljava/lang/String;

    .line 61
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/adservices/measurement/SourceRegistrationRequestInternal-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/measurement/SourceRegistrationRequestInternal;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 95
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 96
    :cond_4
    instance-of v1, p1, Landroid/adservices/measurement/SourceRegistrationRequestInternal;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 97
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/adservices/measurement/SourceRegistrationRequestInternal;

    .line 98
    .local v1, "that":Landroid/adservices/measurement/SourceRegistrationRequestInternal;
    iget-object v3, p0, Landroid/adservices/measurement/SourceRegistrationRequestInternal;->mSourceRegistrationRequest:Landroid/adservices/measurement/SourceRegistrationRequest;

    iget-object v4, v1, Landroid/adservices/measurement/SourceRegistrationRequestInternal;->mSourceRegistrationRequest:Landroid/adservices/measurement/SourceRegistrationRequest;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    iget-object v3, p0, Landroid/adservices/measurement/SourceRegistrationRequestInternal;->mAppPackageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/adservices/measurement/SourceRegistrationRequestInternal;->mAppPackageName:Ljava/lang/String;

    .line 99
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    iget-object v3, p0, Landroid/adservices/measurement/SourceRegistrationRequestInternal;->mSdkPackageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/adservices/measurement/SourceRegistrationRequestInternal;->mSdkPackageName:Ljava/lang/String;

    .line 100
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    iget-wide v3, p0, Landroid/adservices/measurement/SourceRegistrationRequestInternal;->mBootRelativeRequestTime:J

    iget-wide v5, v1, Landroid/adservices/measurement/SourceRegistrationRequestInternal;->mBootRelativeRequestTime:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3e

    iget-object v3, p0, Landroid/adservices/measurement/SourceRegistrationRequestInternal;->mAdIdValue:Ljava/lang/String;

    iget-object v4, v1, Landroid/adservices/measurement/SourceRegistrationRequestInternal;->mAdIdValue:Ljava/lang/String;

    .line 102
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    goto :goto_3f

    :cond_3e
    move v0, v2

    .line 98
    :goto_3f
    return v0
.end method

.method public blacklist getAdIdValue()Ljava/lang/String;
    .registers 2

    .line 90
    iget-object v0, p0, Landroid/adservices/measurement/SourceRegistrationRequestInternal;->mAdIdValue:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getAppPackageName()Ljava/lang/String;
    .registers 2

    .line 72
    iget-object v0, p0, Landroid/adservices/measurement/SourceRegistrationRequestInternal;->mAppPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getBootRelativeRequestTime()J
    .registers 3

    .line 84
    iget-wide v0, p0, Landroid/adservices/measurement/SourceRegistrationRequestInternal;->mBootRelativeRequestTime:J

    return-wide v0
.end method

.method public blacklist getSdkPackageName()Ljava/lang/String;
    .registers 2

    .line 78
    iget-object v0, p0, Landroid/adservices/measurement/SourceRegistrationRequestInternal;->mSdkPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSourceRegistrationRequest()Landroid/adservices/measurement/SourceRegistrationRequest;
    .registers 2

    .line 66
    iget-object v0, p0, Landroid/adservices/measurement/SourceRegistrationRequestInternal;->mSourceRegistrationRequest:Landroid/adservices/measurement/SourceRegistrationRequest;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 107
    iget-object v0, p0, Landroid/adservices/measurement/SourceRegistrationRequestInternal;->mSourceRegistrationRequest:Landroid/adservices/measurement/SourceRegistrationRequest;

    iget-object v1, p0, Landroid/adservices/measurement/SourceRegistrationRequestInternal;->mAppPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/adservices/measurement/SourceRegistrationRequestInternal;->mSdkPackageName:Ljava/lang/String;

    iget-wide v3, p0, Landroid/adservices/measurement/SourceRegistrationRequestInternal;->mBootRelativeRequestTime:J

    .line 111
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Landroid/adservices/measurement/SourceRegistrationRequestInternal;->mAdIdValue:Ljava/lang/String;

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 107
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 122
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v0, p0, Landroid/adservices/measurement/SourceRegistrationRequestInternal;->mSourceRegistrationRequest:Landroid/adservices/measurement/SourceRegistrationRequest;

    invoke-virtual {v0, p1, p2}, Landroid/adservices/measurement/SourceRegistrationRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 124
    iget-object v0, p0, Landroid/adservices/measurement/SourceRegistrationRequestInternal;->mAppPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Landroid/adservices/measurement/SourceRegistrationRequestInternal;->mSdkPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    iget-wide v0, p0, Landroid/adservices/measurement/SourceRegistrationRequestInternal;->mBootRelativeRequestTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 127
    iget-object v0, p0, Landroid/adservices/measurement/SourceRegistrationRequestInternal;->mAdIdValue:Ljava/lang/String;

    new-instance v1, Landroid/adservices/adselection/ReportInteractionInput$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/adservices/adselection/ReportInteractionInput$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, v0, v1}, Lcom/android/adservices/AdServicesParcelableUtil;->writeNullableToParcel(Landroid/os/Parcel;Ljava/lang/Object;Lcom/android/adservices/AdServicesParcelableUtil$ParcelWriter;)V

    .line 128
    return-void
.end method
