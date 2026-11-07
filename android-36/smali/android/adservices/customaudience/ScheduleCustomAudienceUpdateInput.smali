.class public final Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput;
.super Ljava/lang/Object;
.source "ScheduleCustomAudienceUpdateInput.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCallerPackageName:Ljava/lang/String;

.field private final blacklist mMinDelay:Ljava/time/Duration;

.field private final blacklist mPartialCustomAudienceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/adservices/customaudience/PartialCustomAudience;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mShouldReplacePendingUpdates:Z

.field private final blacklist mUpdateUri:Landroid/net/Uri;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 44
    new-instance v0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput$1;

    invoke-direct {v0}, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput$1;-><init>()V

    sput-object v0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput$Builder;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-static {p1}, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput$Builder;->-$$Nest$fgetmUpdateUri(Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput;->mUpdateUri:Landroid/net/Uri;

    .line 65
    invoke-static {p1}, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput$Builder;->-$$Nest$fgetmCallerPackageName(Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput;->mCallerPackageName:Ljava/lang/String;

    .line 66
    invoke-static {p1}, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput$Builder;->-$$Nest$fgetmMinDelay(Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput$Builder;)Ljava/time/Duration;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput;->mMinDelay:Ljava/time/Duration;

    .line 67
    invoke-static {p1}, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput$Builder;->-$$Nest$fgetmPartialCustomAudienceList(Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput;->mPartialCustomAudienceList:Ljava/util/List;

    .line 68
    iget-boolean v0, p1, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput$Builder;->mShouldReplacePendingUpdates:Z

    iput-boolean v0, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput;->mShouldReplacePendingUpdates:Z

    .line 69
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput$Builder;Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput;-><init>(Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput$Builder;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput;->mUpdateUri:Landroid/net/Uri;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput;->mCallerPackageName:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput;->mMinDelay:Ljava/time/Duration;

    .line 77
    sget-object v0, Landroid/adservices/customaudience/PartialCustomAudience;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput;->mPartialCustomAudienceList:Ljava/util/List;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput;->mShouldReplacePendingUpdates:Z

    .line 79
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 146
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 147
    :cond_4
    instance-of v1, p1, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 148
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput;

    .line 149
    .local v1, "that":Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput;
    iget-object v3, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput;->mUpdateUri:Landroid/net/Uri;

    iget-object v4, v1, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput;->mUpdateUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    iget-object v3, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput;->mCallerPackageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput;->mCallerPackageName:Ljava/lang/String;

    .line 150
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    iget-object v3, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput;->mMinDelay:Ljava/time/Duration;

    iget-object v4, v1, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput;->mMinDelay:Ljava/time/Duration;

    .line 151
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    iget-object v3, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput;->mPartialCustomAudienceList:Ljava/util/List;

    iget-object v4, v1, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput;->mPartialCustomAudienceList:Ljava/util/List;

    .line 152
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    iget-boolean v3, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput;->mShouldReplacePendingUpdates:Z

    iget-boolean v4, v1, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput;->mShouldReplacePendingUpdates:Z

    if-ne v3, v4, :cond_3c

    goto :goto_3d

    :cond_3c
    move v0, v2

    .line 149
    :goto_3d
    return v0
.end method

.method public blacklist getCallerPackageName()Ljava/lang/String;
    .registers 2

    .line 106
    iget-object v0, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput;->mCallerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getMinDelay()Ljava/time/Duration;
    .registers 2

    .line 112
    iget-object v0, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput;->mMinDelay:Ljava/time/Duration;

    return-object v0
.end method

.method public blacklist getPartialCustomAudienceList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/adservices/customaudience/PartialCustomAudience;",
            ">;"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput;->mPartialCustomAudienceList:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getUpdateUri()Landroid/net/Uri;
    .registers 2

    .line 100
    iget-object v0, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput;->mUpdateUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 136
    iget-object v0, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput;->mUpdateUri:Landroid/net/Uri;

    iget-object v1, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput;->mCallerPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput;->mMinDelay:Ljava/time/Duration;

    iget-object v3, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput;->mPartialCustomAudienceList:Ljava/util/List;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist shouldReplacePendingUpdates()Z
    .registers 2

    .line 120
    iget-boolean v0, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput;->mShouldReplacePendingUpdates:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScheduleCustomAudienceUpdateInput{mUpdateUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput;->mUpdateUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCallerPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput;->mCallerPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMinDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput;->mMinDelay:Ljava/time/Duration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPartialCustomAudienceList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput;->mPartialCustomAudienceList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mShouldReplacePendingUpdates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput;->mShouldReplacePendingUpdates:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

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

    .line 88
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput;->mUpdateUri:Landroid/net/Uri;

    invoke-virtual {v0, p1, p2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 91
    iget-object v0, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput;->mCallerPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput;->mMinDelay:Ljava/time/Duration;

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 93
    iget-object v0, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput;->mPartialCustomAudienceList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 94
    iget-boolean v0, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput;->mShouldReplacePendingUpdates:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 95
    return-void
.end method
