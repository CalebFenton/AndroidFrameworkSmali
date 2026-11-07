.class public final Landroid/location/RealTimeIntegrityModel;
.super Ljava/lang/Object;
.source "RealTimeIntegrityModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/RealTimeIntegrityModel$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/RealTimeIntegrityModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAdvisoryNumber:Ljava/lang/String;

.field private final blacklist mAdvisoryType:Ljava/lang/String;

.field private final blacklist mBadSignalTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/location/GnssSignalType;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mBadSvid:I

.field private final blacklist mEndDateSeconds:J

.field private final blacklist mPublishDateSeconds:J

.field private final blacklist mStartDateSeconds:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 169
    new-instance v0, Landroid/location/RealTimeIntegrityModel$1;

    invoke-direct {v0}, Landroid/location/RealTimeIntegrityModel$1;-><init>()V

    sput-object v0, Landroid/location/RealTimeIntegrityModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/location/RealTimeIntegrityModel$Builder;)V
    .registers 9
    .param p1, "builder"    # Landroid/location/RealTimeIntegrityModel$Builder;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-static {p1}, Landroid/location/RealTimeIntegrityModel$Builder;->-$$Nest$fgetmBadSvid(Landroid/location/RealTimeIntegrityModel$Builder;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_d

    move v0, v2

    goto :goto_e

    :cond_d
    move v0, v1

    :goto_e
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 92
    invoke-static {p1}, Landroid/location/RealTimeIntegrityModel$Builder;->-$$Nest$fgetmPublishDateSeconds(Landroid/location/RealTimeIntegrityModel$Builder;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_1d

    move v0, v2

    goto :goto_1e

    :cond_1d
    move v0, v1

    :goto_1e
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 93
    invoke-static {p1}, Landroid/location/RealTimeIntegrityModel$Builder;->-$$Nest$fgetmStartDateSeconds(Landroid/location/RealTimeIntegrityModel$Builder;)J

    move-result-wide v3

    cmp-long v0, v3, v5

    if-lez v0, :cond_2b

    move v0, v2

    goto :goto_2c

    :cond_2b
    move v0, v1

    :goto_2c
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 94
    invoke-static {p1}, Landroid/location/RealTimeIntegrityModel$Builder;->-$$Nest$fgetmEndDateSeconds(Landroid/location/RealTimeIntegrityModel$Builder;)J

    move-result-wide v3

    cmp-long v0, v3, v5

    if-lez v0, :cond_38

    move v1, v2

    :cond_38
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 95
    invoke-static {p1}, Landroid/location/RealTimeIntegrityModel$Builder;->-$$Nest$fgetmAdvisoryType(Landroid/location/RealTimeIntegrityModel$Builder;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdvisoryType cannot be null"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-static {p1}, Landroid/location/RealTimeIntegrityModel$Builder;->-$$Nest$fgetmAdvisoryNumber(Landroid/location/RealTimeIntegrityModel$Builder;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdvisoryNumber cannot be null"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-static {p1}, Landroid/location/RealTimeIntegrityModel$Builder;->-$$Nest$fgetmBadSignalTypes(Landroid/location/RealTimeIntegrityModel$Builder;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_5b

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/location/RealTimeIntegrityModel;->mBadSignalTypes:Ljava/util/List;

    goto :goto_6a

    .line 100
    :cond_5b
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/location/RealTimeIntegrityModel$Builder;->-$$Nest$fgetmBadSignalTypes(Landroid/location/RealTimeIntegrityModel$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/location/RealTimeIntegrityModel;->mBadSignalTypes:Ljava/util/List;

    .line 103
    :goto_6a
    invoke-static {p1}, Landroid/location/RealTimeIntegrityModel$Builder;->-$$Nest$fgetmBadSvid(Landroid/location/RealTimeIntegrityModel$Builder;)I

    move-result v0

    iput v0, p0, Landroid/location/RealTimeIntegrityModel;->mBadSvid:I

    .line 104
    invoke-static {p1}, Landroid/location/RealTimeIntegrityModel$Builder;->-$$Nest$fgetmPublishDateSeconds(Landroid/location/RealTimeIntegrityModel$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/RealTimeIntegrityModel;->mPublishDateSeconds:J

    .line 105
    invoke-static {p1}, Landroid/location/RealTimeIntegrityModel$Builder;->-$$Nest$fgetmStartDateSeconds(Landroid/location/RealTimeIntegrityModel$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/RealTimeIntegrityModel;->mStartDateSeconds:J

    .line 106
    invoke-static {p1}, Landroid/location/RealTimeIntegrityModel$Builder;->-$$Nest$fgetmEndDateSeconds(Landroid/location/RealTimeIntegrityModel$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/RealTimeIntegrityModel;->mEndDateSeconds:J

    .line 107
    invoke-static {p1}, Landroid/location/RealTimeIntegrityModel$Builder;->-$$Nest$fgetmAdvisoryType(Landroid/location/RealTimeIntegrityModel$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/location/RealTimeIntegrityModel;->mAdvisoryType:Ljava/lang/String;

    .line 108
    invoke-static {p1}, Landroid/location/RealTimeIntegrityModel$Builder;->-$$Nest$fgetmAdvisoryNumber(Landroid/location/RealTimeIntegrityModel$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/location/RealTimeIntegrityModel;->mAdvisoryNumber:Ljava/lang/String;

    .line 109
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/location/RealTimeIntegrityModel$Builder;Landroid/location/RealTimeIntegrityModel-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/location/RealTimeIntegrityModel;-><init>(Landroid/location/RealTimeIntegrityModel$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 196
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAdvisoryNumber()Ljava/lang/String;
    .registers 2

    .line 166
    iget-object v0, p0, Landroid/location/RealTimeIntegrityModel;->mAdvisoryNumber:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getAdvisoryType()Ljava/lang/String;
    .registers 2

    .line 160
    iget-object v0, p0, Landroid/location/RealTimeIntegrityModel;->mAdvisoryType:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getBadSignalTypes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/location/GnssSignalType;",
            ">;"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Landroid/location/RealTimeIntegrityModel;->mBadSignalTypes:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getBadSvid()I
    .registers 2

    .line 126
    iget v0, p0, Landroid/location/RealTimeIntegrityModel;->mBadSvid:I

    return v0
.end method

.method public blacklist getEndDateSeconds()J
    .registers 3

    .line 154
    iget-wide v0, p0, Landroid/location/RealTimeIntegrityModel;->mEndDateSeconds:J

    return-wide v0
.end method

.method public blacklist getPublishDateSeconds()J
    .registers 3

    .line 142
    iget-wide v0, p0, Landroid/location/RealTimeIntegrityModel;->mPublishDateSeconds:J

    return-wide v0
.end method

.method public blacklist getStartDateSeconds()J
    .registers 3

    .line 148
    iget-wide v0, p0, Landroid/location/RealTimeIntegrityModel;->mStartDateSeconds:J

    return-wide v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RealTimeIntegrityModel["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 214
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "badSvid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/RealTimeIntegrityModel;->mBadSvid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 215
    const-string v1, ", badSignalTypes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/location/RealTimeIntegrityModel;->mBadSignalTypes:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 216
    const-string v1, ", publishDateSeconds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/RealTimeIntegrityModel;->mPublishDateSeconds:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 217
    const-string v1, ", startDateSeconds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/RealTimeIntegrityModel;->mStartDateSeconds:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 218
    const-string v1, ", endDateSeconds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/RealTimeIntegrityModel;->mEndDateSeconds:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 219
    const-string v1, ", advisoryType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/location/RealTimeIntegrityModel;->mAdvisoryType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    const-string v1, ", advisoryNumber = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/location/RealTimeIntegrityModel;->mAdvisoryNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 201
    iget v0, p0, Landroid/location/RealTimeIntegrityModel;->mBadSvid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    iget-object v0, p0, Landroid/location/RealTimeIntegrityModel;->mBadSignalTypes:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 203
    iget-wide v0, p0, Landroid/location/RealTimeIntegrityModel;->mPublishDateSeconds:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 204
    iget-wide v0, p0, Landroid/location/RealTimeIntegrityModel;->mStartDateSeconds:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 205
    iget-wide v0, p0, Landroid/location/RealTimeIntegrityModel;->mEndDateSeconds:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 206
    iget-object v0, p0, Landroid/location/RealTimeIntegrityModel;->mAdvisoryType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Landroid/location/RealTimeIntegrityModel;->mAdvisoryNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 208
    return-void
.end method
