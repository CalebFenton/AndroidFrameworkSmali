.class public final Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput;
.super Ljava/lang/Object;
.source "FetchAndJoinCustomAudienceInput.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mActivationTime:Ljava/time/Instant;

.field private final blacklist mCallerPackageName:Ljava/lang/String;

.field private final blacklist mExpirationTime:Ljava/time/Instant;

.field private final blacklist mFetchUri:Landroid/net/Uri;

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mUserBiddingSignals:Landroid/adservices/common/AdSelectionSignals;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 48
    new-instance v0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput$1;

    invoke-direct {v0}, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput$1;-><init>()V

    sput-object v0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput$Builder;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-static {p1}, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput$Builder;->-$$Nest$fgetmFetchUri(Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput;->mFetchUri:Landroid/net/Uri;

    .line 69
    invoke-static {p1}, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput$Builder;->-$$Nest$fgetmName(Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput;->mName:Ljava/lang/String;

    .line 70
    invoke-static {p1}, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput$Builder;->-$$Nest$fgetmActivationTime(Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput$Builder;)Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput;->mActivationTime:Ljava/time/Instant;

    .line 71
    invoke-static {p1}, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput$Builder;->-$$Nest$fgetmExpirationTime(Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput$Builder;)Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput;->mExpirationTime:Ljava/time/Instant;

    .line 72
    invoke-static {p1}, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput$Builder;->-$$Nest$fgetmUserBiddingSignals(Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput$Builder;)Landroid/adservices/common/AdSelectionSignals;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput;->mUserBiddingSignals:Landroid/adservices/common/AdSelectionSignals;

    .line 73
    invoke-static {p1}, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput$Builder;->-$$Nest$fgetmCallerPackageName(Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput;->mCallerPackageName:Ljava/lang/String;

    .line 74
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput$Builder;Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput;-><init>(Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput$Builder;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput;->mFetchUri:Landroid/net/Uri;

    .line 80
    new-instance v0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcel;)V

    .line 81
    invoke-static {p1, v0}, Lcom/android/adservices/AdServicesParcelableUtil;->readNullableFromParcel(Landroid/os/Parcel;Lcom/android/adservices/AdServicesParcelableUtil$ParcelReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput;->mName:Ljava/lang/String;

    .line 83
    new-instance v0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput$$ExternalSyntheticLambda1;-><init>()V

    .line 84
    invoke-static {p1, v0}, Lcom/android/adservices/AdServicesParcelableUtil;->readNullableFromParcel(Landroid/os/Parcel;Lcom/android/adservices/AdServicesParcelableUtil$ParcelReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/Instant;

    iput-object v0, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput;->mActivationTime:Ljava/time/Instant;

    .line 86
    new-instance v0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput$$ExternalSyntheticLambda2;-><init>()V

    .line 87
    invoke-static {p1, v0}, Lcom/android/adservices/AdServicesParcelableUtil;->readNullableFromParcel(Landroid/os/Parcel;Lcom/android/adservices/AdServicesParcelableUtil$ParcelReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/Instant;

    iput-object v0, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput;->mExpirationTime:Ljava/time/Instant;

    .line 89
    sget-object v0, Landroid/adservices/common/AdSelectionSignals;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 91
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/adservices/customaudience/CustomAudience$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0}, Landroid/adservices/customaudience/CustomAudience$$ExternalSyntheticLambda6;-><init>(Landroid/os/Parcelable$Creator;)V

    .line 90
    invoke-static {p1, v1}, Lcom/android/adservices/AdServicesParcelableUtil;->readNullableFromParcel(Landroid/os/Parcel;Lcom/android/adservices/AdServicesParcelableUtil$ParcelReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/common/AdSelectionSignals;

    iput-object v0, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput;->mUserBiddingSignals:Landroid/adservices/common/AdSelectionSignals;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput;->mCallerPackageName:Ljava/lang/String;

    .line 93
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic blacklist lambda$new$0(Landroid/os/Parcel;Landroid/os/Parcel;)Ljava/lang/String;
    .registers 3
    .param p0, "in"    # Landroid/os/Parcel;
    .param p1, "sourceParcel"    # Landroid/os/Parcel;

    .line 82
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$new$1(Landroid/os/Parcel;)Ljava/time/Instant;
    .registers 3
    .param p0, "sourceParcel"    # Landroid/os/Parcel;

    .line 85
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$new$2(Landroid/os/Parcel;)Ljava/time/Instant;
    .registers 3
    .param p0, "sourceParcel"    # Landroid/os/Parcel;

    .line 88
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$writeToParcel$3(Landroid/os/Parcel;Ljava/time/Instant;)V
    .registers 4
    .param p0, "targetParcel"    # Landroid/os/Parcel;
    .param p1, "sourceInstant"    # Ljava/time/Instant;

    .line 167
    invoke-virtual {p1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method

.method static synthetic blacklist lambda$writeToParcel$4(Landroid/os/Parcel;Ljava/time/Instant;)V
    .registers 4
    .param p0, "targetParcel"    # Landroid/os/Parcel;
    .param p1, "sourceInstant"    # Ljava/time/Instant;

    .line 172
    invoke-virtual {p1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method

.method static synthetic blacklist lambda$writeToParcel$5(ILandroid/os/Parcel;Landroid/adservices/common/AdSelectionSignals;)V
    .registers 3
    .param p0, "flags"    # I
    .param p1, "targetParcel"    # Landroid/os/Parcel;
    .param p2, "sourceSignals"    # Landroid/adservices/common/AdSelectionSignals;

    .line 176
    invoke-virtual {p2, p1, p0}, Landroid/adservices/common/AdSelectionSignals;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 186
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 187
    :cond_4
    instance-of v1, p1, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 188
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput;

    .line 189
    .local v1, "that":Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput;
    iget-object v3, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput;->mFetchUri:Landroid/net/Uri;

    iget-object v4, v1, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput;->mFetchUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    iget-object v3, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput;->mCallerPackageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput;->mCallerPackageName:Ljava/lang/String;

    .line 190
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    iget-object v3, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput;->mName:Ljava/lang/String;

    iget-object v4, v1, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput;->mName:Ljava/lang/String;

    .line 191
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    iget-object v3, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput;->mActivationTime:Ljava/time/Instant;

    iget-object v4, v1, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput;->mActivationTime:Ljava/time/Instant;

    .line 192
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    iget-object v3, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput;->mExpirationTime:Ljava/time/Instant;

    iget-object v4, v1, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput;->mExpirationTime:Ljava/time/Instant;

    .line 193
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    iget-object v3, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput;->mUserBiddingSignals:Landroid/adservices/common/AdSelectionSignals;

    iget-object v4, v1, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput;->mUserBiddingSignals:Landroid/adservices/common/AdSelectionSignals;

    .line 194
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    goto :goto_4b

    :cond_4a
    move v0, v2

    .line 189
    :goto_4b
    return v0
.end method

.method public blacklist getActivationTime()Ljava/time/Instant;
    .registers 2

    .line 120
    iget-object v0, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput;->mActivationTime:Ljava/time/Instant;

    return-object v0
.end method

.method public blacklist getCallerPackageName()Ljava/lang/String;
    .registers 2

    .line 149
    iget-object v0, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput;->mCallerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getExpirationTime()Ljava/time/Instant;
    .registers 2

    .line 130
    iget-object v0, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput;->mExpirationTime:Ljava/time/Instant;

    return-object v0
.end method

.method public blacklist getFetchUri()Landroid/net/Uri;
    .registers 2

    .line 100
    iget-object v0, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput;->mFetchUri:Landroid/net/Uri;

    return-object v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 110
    iget-object v0, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getUserBiddingSignals()Landroid/adservices/common/AdSelectionSignals;
    .registers 2

    .line 141
    iget-object v0, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput;->mUserBiddingSignals:Landroid/adservices/common/AdSelectionSignals;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 7

    .line 202
    iget-object v0, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput;->mFetchUri:Landroid/net/Uri;

    iget-object v1, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput;->mCallerPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput;->mName:Ljava/lang/String;

    iget-object v3, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput;->mActivationTime:Ljava/time/Instant;

    iget-object v4, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput;->mExpirationTime:Ljava/time/Instant;

    iget-object v5, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput;->mUserBiddingSignals:Landroid/adservices/common/AdSelectionSignals;

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FetchAndJoinCustomAudienceInput{fetchUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput;->mFetchUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", activationTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput;->mActivationTime:Ljava/time/Instant;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", expirationTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput;->mExpirationTime:Ljava/time/Instant;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userBiddingSignals="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput;->mUserBiddingSignals:Landroid/adservices/common/AdSelectionSignals;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", callerPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput;->mCallerPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 159
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v0, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput;->mFetchUri:Landroid/net/Uri;

    invoke-virtual {v0, p1, p2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 162
    iget-object v0, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput;->mName:Ljava/lang/String;

    new-instance v1, Landroid/adservices/adselection/ReportInteractionInput$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/adservices/adselection/ReportInteractionInput$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, v0, v1}, Lcom/android/adservices/AdServicesParcelableUtil;->writeNullableToParcel(Landroid/os/Parcel;Ljava/lang/Object;Lcom/android/adservices/AdServicesParcelableUtil$ParcelWriter;)V

    .line 163
    iget-object v0, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput;->mActivationTime:Ljava/time/Instant;

    new-instance v1, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {p1, v0, v1}, Lcom/android/adservices/AdServicesParcelableUtil;->writeNullableToParcel(Landroid/os/Parcel;Ljava/lang/Object;Lcom/android/adservices/AdServicesParcelableUtil$ParcelWriter;)V

    .line 168
    iget-object v0, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput;->mExpirationTime:Ljava/time/Instant;

    new-instance v1, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {p1, v0, v1}, Lcom/android/adservices/AdServicesParcelableUtil;->writeNullableToParcel(Landroid/os/Parcel;Ljava/lang/Object;Lcom/android/adservices/AdServicesParcelableUtil$ParcelWriter;)V

    .line 173
    iget-object v0, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput;->mUserBiddingSignals:Landroid/adservices/common/AdSelectionSignals;

    new-instance v1, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput$$ExternalSyntheticLambda5;

    invoke-direct {v1, p2}, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput$$ExternalSyntheticLambda5;-><init>(I)V

    invoke-static {p1, v0, v1}, Lcom/android/adservices/AdServicesParcelableUtil;->writeNullableToParcel(Landroid/os/Parcel;Ljava/lang/Object;Lcom/android/adservices/AdServicesParcelableUtil$ParcelWriter;)V

    .line 177
    iget-object v0, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput;->mCallerPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 178
    return-void
.end method
