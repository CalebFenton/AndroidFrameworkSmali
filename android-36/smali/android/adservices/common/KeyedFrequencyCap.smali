.class public final Landroid/adservices/common/KeyedFrequencyCap;
.super Ljava/lang/Object;
.source "KeyedFrequencyCap.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/common/KeyedFrequencyCap$Builder;
    }
.end annotation


# static fields
.field public static final blacklist AD_COUNTER_KEY_FIELD_NAME:Ljava/lang/String; = "ad_counter_key"

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/common/KeyedFrequencyCap;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist INTERVAL_FIELD_NAME:Ljava/lang/String; = "interval_in_seconds"

.field public static final blacklist INTERVAL_NOT_POSITIVE_FORMAT:Ljava/lang/String; = "KeyedFrequencyCap interval %s must be strictly positive"

.field public static final blacklist INTERVAL_NULL_ERROR_MESSAGE:Ljava/lang/String; = "KeyedFrequencyCap interval must not be null"

.field public static final blacklist MAX_COUNT_FIELD_NAME:Ljava/lang/String; = "max_count"

.field public static final blacklist MAX_COUNT_NOT_POSITIVE_ERROR_MESSAGE:Ljava/lang/String; = "KeyedFrequencyCap max count %d must be strictly positive"

.field public static final blacklist MAX_INTERVAL:Ljava/time/Duration;

.field public static final blacklist MAX_INTERVAL_EXCEEDED_FORMAT:Ljava/lang/String; = "KeyedFrequencyCap interval %s must be no greater than %s"

.field private static final blacklist SIZE_OF_FIXED_FIELDS:I = 0x14


# instance fields
.field private final blacklist mAdCounterKey:I

.field private final blacklist mInterval:Ljava/time/Duration;

.field private final blacklist mMaxCount:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 59
    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Landroid/adservices/common/KeyedFrequencyCap;->MAX_INTERVAL:Ljava/time/Duration;

    .line 69
    new-instance v0, Landroid/adservices/common/KeyedFrequencyCap$1;

    invoke-direct {v0}, Landroid/adservices/common/KeyedFrequencyCap$1;-><init>()V

    sput-object v0, Landroid/adservices/common/KeyedFrequencyCap;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/adservices/common/KeyedFrequencyCap$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/adservices/common/KeyedFrequencyCap$Builder;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-static {p1}, Landroid/adservices/common/KeyedFrequencyCap$Builder;->-$$Nest$fgetmAdCounterKey(Landroid/adservices/common/KeyedFrequencyCap$Builder;)I

    move-result v0

    iput v0, p0, Landroid/adservices/common/KeyedFrequencyCap;->mAdCounterKey:I

    .line 87
    invoke-static {p1}, Landroid/adservices/common/KeyedFrequencyCap$Builder;->-$$Nest$fgetmMaxCount(Landroid/adservices/common/KeyedFrequencyCap$Builder;)I

    move-result v0

    iput v0, p0, Landroid/adservices/common/KeyedFrequencyCap;->mMaxCount:I

    .line 88
    invoke-static {p1}, Landroid/adservices/common/KeyedFrequencyCap$Builder;->-$$Nest$fgetmInterval(Landroid/adservices/common/KeyedFrequencyCap$Builder;)Ljava/time/Duration;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/common/KeyedFrequencyCap;->mInterval:Ljava/time/Duration;

    .line 89
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/adservices/common/KeyedFrequencyCap$Builder;Landroid/adservices/common/KeyedFrequencyCap-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/common/KeyedFrequencyCap;-><init>(Landroid/adservices/common/KeyedFrequencyCap$Builder;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/adservices/common/KeyedFrequencyCap;->mAdCounterKey:I

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/adservices/common/KeyedFrequencyCap;->mMaxCount:I

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/common/KeyedFrequencyCap;->mInterval:Ljava/time/Duration;

    .line 97
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/adservices/common/KeyedFrequencyCap-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/common/KeyedFrequencyCap;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist fromJson(Lorg/json/JSONObject;)Landroid/adservices/common/KeyedFrequencyCap;
    .registers 6
    .param p0, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 172
    new-instance v0, Landroid/adservices/common/KeyedFrequencyCap$Builder;

    .line 173
    const-string v1, "ad_counter_key"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 174
    const-string v2, "max_count"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 175
    const-string v3, "interval_in_seconds"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/adservices/common/KeyedFrequencyCap$Builder;-><init>(IILjava/time/Duration;)V

    .line 176
    invoke-virtual {v0}, Landroid/adservices/common/KeyedFrequencyCap$Builder;->build()Landroid/adservices/common/KeyedFrequencyCap;

    move-result-object v0

    .line 172
    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 190
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 196
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 197
    :cond_4
    instance-of v1, p1, Landroid/adservices/common/KeyedFrequencyCap;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 198
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/adservices/common/KeyedFrequencyCap;

    .line 199
    .local v1, "that":Landroid/adservices/common/KeyedFrequencyCap;
    iget v3, p0, Landroid/adservices/common/KeyedFrequencyCap;->mMaxCount:I

    iget v4, v1, Landroid/adservices/common/KeyedFrequencyCap;->mMaxCount:I

    if-ne v3, v4, :cond_24

    iget-object v3, p0, Landroid/adservices/common/KeyedFrequencyCap;->mInterval:Ljava/time/Duration;

    iget-object v4, v1, Landroid/adservices/common/KeyedFrequencyCap;->mInterval:Ljava/time/Duration;

    .line 200
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    iget v3, p0, Landroid/adservices/common/KeyedFrequencyCap;->mAdCounterKey:I

    iget v4, v1, Landroid/adservices/common/KeyedFrequencyCap;->mAdCounterKey:I

    if-ne v3, v4, :cond_24

    goto :goto_25

    :cond_24
    move v0, v2

    .line 199
    :goto_25
    return v0
.end method

.method public whitelist getAdCounterKey()I
    .registers 2

    .line 109
    iget v0, p0, Landroid/adservices/common/KeyedFrequencyCap;->mAdCounterKey:I

    return v0
.end method

.method public whitelist getInterval()Ljava/time/Duration;
    .registers 2

    .line 138
    iget-object v0, p0, Landroid/adservices/common/KeyedFrequencyCap;->mInterval:Ljava/time/Duration;

    return-object v0
.end method

.method public whitelist getMaxCount()I
    .registers 2

    .line 124
    iget v0, p0, Landroid/adservices/common/KeyedFrequencyCap;->mMaxCount:I

    return v0
.end method

.method public blacklist getSizeInBytes()I
    .registers 2

    .line 146
    const/16 v0, 0x14

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 207
    iget v0, p0, Landroid/adservices/common/KeyedFrequencyCap;->mAdCounterKey:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/adservices/common/KeyedFrequencyCap;->mMaxCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/adservices/common/KeyedFrequencyCap;->mInterval:Ljava/time/Duration;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist toJson()Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 156
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 157
    .local v0, "toReturn":Lorg/json/JSONObject;
    const-string v1, "ad_counter_key"

    iget v2, p0, Landroid/adservices/common/KeyedFrequencyCap;->mAdCounterKey:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 158
    const-string v1, "max_count"

    iget v2, p0, Landroid/adservices/common/KeyedFrequencyCap;->mMaxCount:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 159
    iget-object v1, p0, Landroid/adservices/common/KeyedFrequencyCap;->mInterval:Ljava/time/Duration;

    invoke-virtual {v1}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v1

    const-string v3, "interval_in_seconds"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 160
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyedFrequencyCap{mAdCounterKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/adservices/common/KeyedFrequencyCap;->mAdCounterKey:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMaxCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/adservices/common/KeyedFrequencyCap;->mMaxCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/common/KeyedFrequencyCap;->mInterval:Ljava/time/Duration;

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

    .line 181
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget v0, p0, Landroid/adservices/common/KeyedFrequencyCap;->mAdCounterKey:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    iget v0, p0, Landroid/adservices/common/KeyedFrequencyCap;->mMaxCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    iget-object v0, p0, Landroid/adservices/common/KeyedFrequencyCap;->mInterval:Ljava/time/Duration;

    invoke-virtual {v0}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 185
    return-void
.end method
