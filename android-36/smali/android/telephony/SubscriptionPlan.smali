.class public final Landroid/telephony/SubscriptionPlan;
.super Ljava/lang/Object;
.source "SubscriptionPlan.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/SubscriptionPlan$Builder;,
        Landroid/telephony/SubscriptionPlan$SubscriptionStatus;,
        Landroid/telephony/SubscriptionPlan$LimitBehavior;
    }
.end annotation


# static fields
.field public static final whitelist BYTES_UNKNOWN:J = -0x1L

.field public static final whitelist BYTES_UNLIMITED:J = 0x7fffffffffffffffL

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/SubscriptionPlan;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist LIMIT_BEHAVIOR_BILLED:I = 0x1

.field public static final whitelist LIMIT_BEHAVIOR_DISABLED:I = 0x0

.field public static final whitelist LIMIT_BEHAVIOR_THROTTLED:I = 0x2

.field public static final whitelist LIMIT_BEHAVIOR_UNKNOWN:I = -0x1

.field public static final whitelist SUBSCRIPTION_STATUS_ACTIVE:I = 0x1

.field public static final whitelist SUBSCRIPTION_STATUS_INACTIVE:I = 0x2

.field public static final whitelist SUBSCRIPTION_STATUS_SUSPENDED:I = 0x4

.field public static final whitelist SUBSCRIPTION_STATUS_TRIAL:I = 0x3

.field public static final whitelist SUBSCRIPTION_STATUS_UNKNOWN:I = 0x0

.field public static final whitelist TIME_UNKNOWN:J = -0x1L


# instance fields
.field private final greylist-max-o cycleRule:Landroid/util/RecurrenceRule;

.field private greylist-max-o dataLimitBehavior:I

.field private greylist-max-o dataLimitBytes:J

.field private greylist-max-o dataUsageBytes:J

.field private greylist-max-o dataUsageTime:J

.field private blacklist mSubscriptionStatus:I

.field private blacklist networkTypes:[I

.field private greylist-max-o summary:Ljava/lang/CharSequence;

.field private greylist-max-o title:Ljava/lang/CharSequence;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputdataLimitBehavior(Landroid/telephony/SubscriptionPlan;I)V
    .registers 2

    iput p1, p0, Landroid/telephony/SubscriptionPlan;->dataLimitBehavior:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputdataLimitBytes(Landroid/telephony/SubscriptionPlan;J)V
    .registers 3

    iput-wide p1, p0, Landroid/telephony/SubscriptionPlan;->dataLimitBytes:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputdataUsageBytes(Landroid/telephony/SubscriptionPlan;J)V
    .registers 3

    iput-wide p1, p0, Landroid/telephony/SubscriptionPlan;->dataUsageBytes:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputdataUsageTime(Landroid/telephony/SubscriptionPlan;J)V
    .registers 3

    iput-wide p1, p0, Landroid/telephony/SubscriptionPlan;->dataUsageTime:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSubscriptionStatus(Landroid/telephony/SubscriptionPlan;I)V
    .registers 2

    iput p1, p0, Landroid/telephony/SubscriptionPlan;->mSubscriptionStatus:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputnetworkTypes(Landroid/telephony/SubscriptionPlan;[I)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/SubscriptionPlan;->networkTypes:[I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputsummary(Landroid/telephony/SubscriptionPlan;Ljava/lang/CharSequence;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/SubscriptionPlan;->summary:Ljava/lang/CharSequence;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputtitle(Landroid/telephony/SubscriptionPlan;Ljava/lang/CharSequence;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/SubscriptionPlan;->title:Ljava/lang/CharSequence;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 199
    new-instance v0, Landroid/telephony/SubscriptionPlan$1;

    invoke-direct {v0}, Landroid/telephony/SubscriptionPlan$1;-><init>()V

    sput-object v0, Landroid/telephony/SubscriptionPlan;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "source"    # Landroid/os/Parcel;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/telephony/SubscriptionPlan;->dataLimitBytes:J

    .line 119
    const/4 v2, -0x1

    iput v2, p0, Landroid/telephony/SubscriptionPlan;->dataLimitBehavior:I

    .line 120
    iput-wide v0, p0, Landroid/telephony/SubscriptionPlan;->dataUsageBytes:J

    .line 121
    iput-wide v0, p0, Landroid/telephony/SubscriptionPlan;->dataUsageTime:J

    .line 123
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SubscriptionPlan;->mSubscriptionStatus:I

    .line 132
    const/4 v0, 0x0

    const-class v1, Landroid/util/RecurrenceRule;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/RecurrenceRule;

    iput-object v0, p0, Landroid/telephony/SubscriptionPlan;->cycleRule:Landroid/util/RecurrenceRule;

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionPlan;->title:Ljava/lang/CharSequence;

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionPlan;->summary:Ljava/lang/CharSequence;

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/SubscriptionPlan;->dataLimitBytes:J

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SubscriptionPlan;->dataLimitBehavior:I

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/SubscriptionPlan;->dataUsageBytes:J

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/SubscriptionPlan;->dataUsageTime:J

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionPlan;->networkTypes:[I

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SubscriptionPlan;->mSubscriptionStatus:I

    .line 141
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/SubscriptionPlan-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/SubscriptionPlan;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/util/RecurrenceRule;)V
    .registers 5
    .param p1, "cycleRule"    # Landroid/util/RecurrenceRule;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/telephony/SubscriptionPlan;->dataLimitBytes:J

    .line 119
    const/4 v2, -0x1

    iput v2, p0, Landroid/telephony/SubscriptionPlan;->dataLimitBehavior:I

    .line 120
    iput-wide v0, p0, Landroid/telephony/SubscriptionPlan;->dataUsageBytes:J

    .line 121
    iput-wide v0, p0, Landroid/telephony/SubscriptionPlan;->dataUsageTime:J

    .line 123
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SubscriptionPlan;->mSubscriptionStatus:I

    .line 126
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/RecurrenceRule;

    iput-object v0, p0, Landroid/telephony/SubscriptionPlan;->cycleRule:Landroid/util/RecurrenceRule;

    .line 127
    invoke-static {}, Landroid/telephony/TelephonyManager;->getAllNetworkTypes()[I

    move-result-object v0

    .line 128
    invoke-static {}, Landroid/telephony/TelephonyManager;->getAllNetworkTypes()[I

    move-result-object v1

    array-length v1, v1

    .line 127
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionPlan;->networkTypes:[I

    .line 129
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/util/RecurrenceRule;Landroid/telephony/SubscriptionPlan-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/SubscriptionPlan;-><init>(Landroid/util/RecurrenceRule;)V

    return-void
.end method


# virtual methods
.method public whitelist cycleIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroid/util/Range<",
            "Ljava/time/ZonedDateTime;",
            ">;>;"
        }
    .end annotation

    .line 278
    iget-object v0, p0, Landroid/telephony/SubscriptionPlan;->cycleRule:Landroid/util/RecurrenceRule;

    invoke-virtual {v0}, Landroid/util/RecurrenceRule;->cycleIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "obj"    # Ljava/lang/Object;

    .line 184
    instance-of v0, p1, Landroid/telephony/SubscriptionPlan;

    const/4 v1, 0x0

    if-eqz v0, :cond_58

    .line 185
    move-object v0, p1

    check-cast v0, Landroid/telephony/SubscriptionPlan;

    .line 186
    .local v0, "other":Landroid/telephony/SubscriptionPlan;
    iget-object v2, p0, Landroid/telephony/SubscriptionPlan;->cycleRule:Landroid/util/RecurrenceRule;

    iget-object v3, v0, Landroid/telephony/SubscriptionPlan;->cycleRule:Landroid/util/RecurrenceRule;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    iget-object v2, p0, Landroid/telephony/SubscriptionPlan;->title:Ljava/lang/CharSequence;

    iget-object v3, v0, Landroid/telephony/SubscriptionPlan;->title:Ljava/lang/CharSequence;

    .line 187
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    iget-object v2, p0, Landroid/telephony/SubscriptionPlan;->summary:Ljava/lang/CharSequence;

    iget-object v3, v0, Landroid/telephony/SubscriptionPlan;->summary:Ljava/lang/CharSequence;

    .line 188
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    iget-wide v2, p0, Landroid/telephony/SubscriptionPlan;->dataLimitBytes:J

    iget-wide v4, v0, Landroid/telephony/SubscriptionPlan;->dataLimitBytes:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_56

    iget v2, p0, Landroid/telephony/SubscriptionPlan;->dataLimitBehavior:I

    iget v3, v0, Landroid/telephony/SubscriptionPlan;->dataLimitBehavior:I

    if-ne v2, v3, :cond_56

    iget-wide v2, p0, Landroid/telephony/SubscriptionPlan;->dataUsageBytes:J

    iget-wide v4, v0, Landroid/telephony/SubscriptionPlan;->dataUsageBytes:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_56

    iget-wide v2, p0, Landroid/telephony/SubscriptionPlan;->dataUsageTime:J

    iget-wide v4, v0, Landroid/telephony/SubscriptionPlan;->dataUsageTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_56

    iget-object v2, p0, Landroid/telephony/SubscriptionPlan;->networkTypes:[I

    iget-object v3, v0, Landroid/telephony/SubscriptionPlan;->networkTypes:[I

    .line 193
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_56

    iget v2, p0, Landroid/telephony/SubscriptionPlan;->mSubscriptionStatus:I

    iget v3, v0, Landroid/telephony/SubscriptionPlan;->mSubscriptionStatus:I

    if-ne v2, v3, :cond_56

    const/4 v1, 0x1

    goto :goto_57

    :cond_56
    nop

    .line 186
    :goto_57
    return v1

    .line 196
    .end local v0    # "other":Landroid/telephony/SubscriptionPlan;
    :cond_58
    return v1
.end method

.method public greylist-max-o getCycleRule()Landroid/util/RecurrenceRule;
    .registers 2

    .line 213
    iget-object v0, p0, Landroid/telephony/SubscriptionPlan;->cycleRule:Landroid/util/RecurrenceRule;

    return-object v0
.end method

.method public whitelist getDataLimitBehavior()I
    .registers 2

    .line 246
    iget v0, p0, Landroid/telephony/SubscriptionPlan;->dataLimitBehavior:I

    return v0
.end method

.method public whitelist getDataLimitBytes()J
    .registers 3

    .line 238
    iget-wide v0, p0, Landroid/telephony/SubscriptionPlan;->dataLimitBytes:J

    return-wide v0
.end method

.method public whitelist getDataUsageBytes()J
    .registers 3

    .line 254
    iget-wide v0, p0, Landroid/telephony/SubscriptionPlan;->dataUsageBytes:J

    return-wide v0
.end method

.method public whitelist getDataUsageTime()J
    .registers 3

    .line 261
    iget-wide v0, p0, Landroid/telephony/SubscriptionPlan;->dataUsageTime:J

    return-wide v0
.end method

.method public whitelist getNetworkTypes()[I
    .registers 3

    .line 269
    iget-object v0, p0, Landroid/telephony/SubscriptionPlan;->networkTypes:[I

    iget-object v1, p0, Landroid/telephony/SubscriptionPlan;->networkTypes:[I

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPlanEndDate()Ljava/time/ZonedDateTime;
    .registers 2

    .line 220
    iget-object v0, p0, Landroid/telephony/SubscriptionPlan;->cycleRule:Landroid/util/RecurrenceRule;

    iget-object v0, v0, Landroid/util/RecurrenceRule;->end:Ljava/time/ZonedDateTime;

    return-object v0
.end method

.method public whitelist getSubscriptionStatus()I
    .registers 2

    .line 288
    iget v0, p0, Landroid/telephony/SubscriptionPlan;->mSubscriptionStatus:I

    return v0
.end method

.method public whitelist getSummary()Ljava/lang/CharSequence;
    .registers 2

    .line 230
    iget-object v0, p0, Landroid/telephony/SubscriptionPlan;->summary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 225
    iget-object v0, p0, Landroid/telephony/SubscriptionPlan;->title:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 10

    .line 178
    iget-object v0, p0, Landroid/telephony/SubscriptionPlan;->cycleRule:Landroid/util/RecurrenceRule;

    iget-object v1, p0, Landroid/telephony/SubscriptionPlan;->title:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/telephony/SubscriptionPlan;->summary:Ljava/lang/CharSequence;

    iget-wide v3, p0, Landroid/telephony/SubscriptionPlan;->dataLimitBytes:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget v4, p0, Landroid/telephony/SubscriptionPlan;->dataLimitBehavior:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-wide v5, p0, Landroid/telephony/SubscriptionPlan;->dataUsageBytes:J

    .line 179
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-wide v6, p0, Landroid/telephony/SubscriptionPlan;->dataUsageTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-object v7, p0, Landroid/telephony/SubscriptionPlan;->networkTypes:[I

    invoke-static {v7}, Ljava/util/Arrays;->hashCode([I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v8, p0, Landroid/telephony/SubscriptionPlan;->mSubscriptionStatus:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    .line 178
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SubscriptionPlan{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    const-string v1, "cycleRule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/SubscriptionPlan;->cycleRule:Landroid/util/RecurrenceRule;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 165
    const-string v1, " title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/SubscriptionPlan;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 166
    const-string v1, " summary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/SubscriptionPlan;->summary:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 167
    const-string v1, " dataLimitBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/telephony/SubscriptionPlan;->dataLimitBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 168
    const-string v1, " dataLimitBehavior="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SubscriptionPlan;->dataLimitBehavior:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 169
    const-string v1, " dataUsageBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/telephony/SubscriptionPlan;->dataUsageBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 170
    const-string v1, " dataUsageTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/telephony/SubscriptionPlan;->dataUsageTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 171
    const-string v1, " networkTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/SubscriptionPlan;->networkTypes:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 172
    const-string v1, " subscriptionStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SubscriptionPlan;->mSubscriptionStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 173
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 150
    iget-object v0, p0, Landroid/telephony/SubscriptionPlan;->cycleRule:Landroid/util/RecurrenceRule;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 151
    iget-object v0, p0, Landroid/telephony/SubscriptionPlan;->title:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v0, p0, Landroid/telephony/SubscriptionPlan;->summary:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 153
    iget-wide v0, p0, Landroid/telephony/SubscriptionPlan;->dataLimitBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 154
    iget v0, p0, Landroid/telephony/SubscriptionPlan;->dataLimitBehavior:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    iget-wide v0, p0, Landroid/telephony/SubscriptionPlan;->dataUsageBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 156
    iget-wide v0, p0, Landroid/telephony/SubscriptionPlan;->dataUsageTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 157
    iget-object v0, p0, Landroid/telephony/SubscriptionPlan;->networkTypes:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 158
    iget v0, p0, Landroid/telephony/SubscriptionPlan;->mSubscriptionStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    return-void
.end method
