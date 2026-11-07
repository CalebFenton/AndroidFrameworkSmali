.class public final Landroid/adservices/customaudience/PartialCustomAudience;
.super Ljava/lang/Object;
.source "PartialCustomAudience.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/customaudience/PartialCustomAudience$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/customaudience/PartialCustomAudience;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mActivationTime:Ljava/time/Instant;

.field private final blacklist mExpirationTime:Ljava/time/Instant;

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mUserBiddingSignals:Landroid/adservices/common/AdSelectionSignals;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 62
    new-instance v0, Landroid/adservices/customaudience/PartialCustomAudience$1;

    invoke-direct {v0}, Landroid/adservices/customaudience/PartialCustomAudience$1;-><init>()V

    sput-object v0, Landroid/adservices/customaudience/PartialCustomAudience;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/adservices/customaudience/PartialCustomAudience$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/adservices/customaudience/PartialCustomAudience$Builder;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-static {p1}, Landroid/adservices/customaudience/PartialCustomAudience$Builder;->-$$Nest$fgetmName(Landroid/adservices/customaudience/PartialCustomAudience$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/customaudience/PartialCustomAudience;->mName:Ljava/lang/String;

    .line 56
    invoke-static {p1}, Landroid/adservices/customaudience/PartialCustomAudience$Builder;->-$$Nest$fgetmActivationTime(Landroid/adservices/customaudience/PartialCustomAudience$Builder;)Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/customaudience/PartialCustomAudience;->mActivationTime:Ljava/time/Instant;

    .line 57
    invoke-static {p1}, Landroid/adservices/customaudience/PartialCustomAudience$Builder;->-$$Nest$fgetmExpirationTime(Landroid/adservices/customaudience/PartialCustomAudience$Builder;)Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/customaudience/PartialCustomAudience;->mExpirationTime:Ljava/time/Instant;

    .line 58
    invoke-static {p1}, Landroid/adservices/customaudience/PartialCustomAudience$Builder;->-$$Nest$fgetmUserBiddingSignals(Landroid/adservices/customaudience/PartialCustomAudience$Builder;)Landroid/adservices/common/AdSelectionSignals;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/customaudience/PartialCustomAudience;->mUserBiddingSignals:Landroid/adservices/common/AdSelectionSignals;

    .line 59
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/adservices/customaudience/PartialCustomAudience$Builder;Landroid/adservices/customaudience/PartialCustomAudience-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/customaudience/PartialCustomAudience;-><init>(Landroid/adservices/customaudience/PartialCustomAudience$Builder;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/customaudience/PartialCustomAudience;->mName:Ljava/lang/String;

    .line 82
    new-instance v0, Landroid/adservices/customaudience/PartialCustomAudience$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/adservices/customaudience/PartialCustomAudience$$ExternalSyntheticLambda0;-><init>()V

    .line 83
    invoke-static {p1, v0}, Lcom/android/adservices/AdServicesParcelableUtil;->readNullableFromParcel(Landroid/os/Parcel;Lcom/android/adservices/AdServicesParcelableUtil$ParcelReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/Instant;

    iput-object v0, p0, Landroid/adservices/customaudience/PartialCustomAudience;->mActivationTime:Ljava/time/Instant;

    .line 85
    new-instance v0, Landroid/adservices/customaudience/PartialCustomAudience$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/adservices/customaudience/PartialCustomAudience$$ExternalSyntheticLambda1;-><init>()V

    .line 86
    invoke-static {p1, v0}, Lcom/android/adservices/AdServicesParcelableUtil;->readNullableFromParcel(Landroid/os/Parcel;Lcom/android/adservices/AdServicesParcelableUtil$ParcelReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/Instant;

    iput-object v0, p0, Landroid/adservices/customaudience/PartialCustomAudience;->mExpirationTime:Ljava/time/Instant;

    .line 88
    sget-object v0, Landroid/adservices/common/AdSelectionSignals;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 90
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/adservices/customaudience/CustomAudience$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0}, Landroid/adservices/customaudience/CustomAudience$$ExternalSyntheticLambda6;-><init>(Landroid/os/Parcelable$Creator;)V

    .line 89
    invoke-static {p1, v1}, Lcom/android/adservices/AdServicesParcelableUtil;->readNullableFromParcel(Landroid/os/Parcel;Lcom/android/adservices/AdServicesParcelableUtil$ParcelReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/common/AdSelectionSignals;

    iput-object v0, p0, Landroid/adservices/customaudience/PartialCustomAudience;->mUserBiddingSignals:Landroid/adservices/common/AdSelectionSignals;

    .line 91
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/adservices/customaudience/PartialCustomAudience-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/customaudience/PartialCustomAudience;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic blacklist lambda$new$0(Landroid/os/Parcel;)Ljava/time/Instant;
    .registers 3
    .param p0, "sourceParcel"    # Landroid/os/Parcel;

    .line 84
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$new$1(Landroid/os/Parcel;)Ljava/time/Instant;
    .registers 3
    .param p0, "sourceParcel"    # Landroid/os/Parcel;

    .line 87
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$writeToParcel$2(Landroid/os/Parcel;Ljava/time/Instant;)V
    .registers 4
    .param p0, "targetParcel"    # Landroid/os/Parcel;
    .param p1, "sourceInstant"    # Ljava/time/Instant;

    .line 191
    invoke-virtual {p1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method

.method static synthetic blacklist lambda$writeToParcel$3(Landroid/os/Parcel;Ljava/time/Instant;)V
    .registers 4
    .param p0, "targetParcel"    # Landroid/os/Parcel;
    .param p1, "sourceInstant"    # Ljava/time/Instant;

    .line 196
    invoke-virtual {p1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method

.method static synthetic blacklist lambda$writeToParcel$4(ILandroid/os/Parcel;Landroid/adservices/common/AdSelectionSignals;)V
    .registers 3
    .param p0, "flags"    # I
    .param p1, "targetParcel"    # Landroid/os/Parcel;
    .param p2, "sourceSignals"    # Landroid/adservices/common/AdSelectionSignals;

    .line 200
    invoke-virtual {p2, p1, p0}, Landroid/adservices/common/AdSelectionSignals;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 151
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 152
    :cond_4
    instance-of v1, p1, Landroid/adservices/customaudience/PartialCustomAudience;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 153
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/adservices/customaudience/PartialCustomAudience;

    .line 154
    .local v1, "that":Landroid/adservices/customaudience/PartialCustomAudience;
    iget-object v3, p0, Landroid/adservices/customaudience/PartialCustomAudience;->mName:Ljava/lang/String;

    iget-object v4, v1, Landroid/adservices/customaudience/PartialCustomAudience;->mName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    iget-object v3, p0, Landroid/adservices/customaudience/PartialCustomAudience;->mActivationTime:Ljava/time/Instant;

    iget-object v4, v1, Landroid/adservices/customaudience/PartialCustomAudience;->mActivationTime:Ljava/time/Instant;

    .line 155
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    iget-object v3, p0, Landroid/adservices/customaudience/PartialCustomAudience;->mExpirationTime:Ljava/time/Instant;

    iget-object v4, v1, Landroid/adservices/customaudience/PartialCustomAudience;->mExpirationTime:Ljava/time/Instant;

    .line 156
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    iget-object v3, p0, Landroid/adservices/customaudience/PartialCustomAudience;->mUserBiddingSignals:Landroid/adservices/common/AdSelectionSignals;

    iget-object v4, v1, Landroid/adservices/customaudience/PartialCustomAudience;->mUserBiddingSignals:Landroid/adservices/common/AdSelectionSignals;

    .line 157
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    goto :goto_37

    :cond_36
    move v0, v2

    .line 154
    :goto_37
    return v0
.end method

.method public whitelist getActivationTime()Ljava/time/Instant;
    .registers 2

    .line 111
    iget-object v0, p0, Landroid/adservices/customaudience/PartialCustomAudience;->mActivationTime:Ljava/time/Instant;

    return-object v0
.end method

.method public whitelist getExpirationTime()Ljava/time/Instant;
    .registers 2

    .line 122
    iget-object v0, p0, Landroid/adservices/customaudience/PartialCustomAudience;->mExpirationTime:Ljava/time/Instant;

    return-object v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .registers 2

    .line 100
    iget-object v0, p0, Landroid/adservices/customaudience/PartialCustomAudience;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getUserBiddingSignals()Landroid/adservices/common/AdSelectionSignals;
    .registers 2

    .line 134
    iget-object v0, p0, Landroid/adservices/customaudience/PartialCustomAudience;->mUserBiddingSignals:Landroid/adservices/common/AdSelectionSignals;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 142
    iget-object v0, p0, Landroid/adservices/customaudience/PartialCustomAudience;->mName:Ljava/lang/String;

    iget-object v1, p0, Landroid/adservices/customaudience/PartialCustomAudience;->mActivationTime:Ljava/time/Instant;

    iget-object v2, p0, Landroid/adservices/customaudience/PartialCustomAudience;->mExpirationTime:Ljava/time/Instant;

    iget-object v3, p0, Landroid/adservices/customaudience/PartialCustomAudience;->mUserBiddingSignals:Landroid/adservices/common/AdSelectionSignals;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PartialCustomAudience {name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/customaudience/PartialCustomAudience;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", activationTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/customaudience/PartialCustomAudience;->mActivationTime:Ljava/time/Instant;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", expirationTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/customaudience/PartialCustomAudience;->mExpirationTime:Ljava/time/Instant;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userBiddingSignals="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/customaudience/PartialCustomAudience;->mUserBiddingSignals:Landroid/adservices/common/AdSelectionSignals;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    .line 184
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget-object v0, p0, Landroid/adservices/customaudience/PartialCustomAudience;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Landroid/adservices/customaudience/PartialCustomAudience;->mActivationTime:Ljava/time/Instant;

    new-instance v1, Landroid/adservices/customaudience/PartialCustomAudience$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/adservices/customaudience/PartialCustomAudience$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p1, v0, v1}, Lcom/android/adservices/AdServicesParcelableUtil;->writeNullableToParcel(Landroid/os/Parcel;Ljava/lang/Object;Lcom/android/adservices/AdServicesParcelableUtil$ParcelWriter;)V

    .line 192
    iget-object v0, p0, Landroid/adservices/customaudience/PartialCustomAudience;->mExpirationTime:Ljava/time/Instant;

    new-instance v1, Landroid/adservices/customaudience/PartialCustomAudience$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/adservices/customaudience/PartialCustomAudience$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {p1, v0, v1}, Lcom/android/adservices/AdServicesParcelableUtil;->writeNullableToParcel(Landroid/os/Parcel;Ljava/lang/Object;Lcom/android/adservices/AdServicesParcelableUtil$ParcelWriter;)V

    .line 197
    iget-object v0, p0, Landroid/adservices/customaudience/PartialCustomAudience;->mUserBiddingSignals:Landroid/adservices/common/AdSelectionSignals;

    new-instance v1, Landroid/adservices/customaudience/PartialCustomAudience$$ExternalSyntheticLambda4;

    invoke-direct {v1, p2}, Landroid/adservices/customaudience/PartialCustomAudience$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-static {p1, v0, v1}, Lcom/android/adservices/AdServicesParcelableUtil;->writeNullableToParcel(Landroid/os/Parcel;Ljava/lang/Object;Lcom/android/adservices/AdServicesParcelableUtil$ParcelWriter;)V

    .line 201
    return-void
.end method
