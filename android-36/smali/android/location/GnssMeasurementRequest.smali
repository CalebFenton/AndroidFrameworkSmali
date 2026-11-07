.class public final Landroid/location/GnssMeasurementRequest;
.super Ljava/lang/Object;
.source "GnssMeasurementRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GnssMeasurementRequest$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GnssMeasurementRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist PASSIVE_INTERVAL:I = 0x7fffffff


# instance fields
.field private final blacklist mCorrelationVectorOutputsEnabled:Z

.field private final blacklist mFullTracking:Z

.field private final blacklist mIntervalMillis:I

.field private blacklist mWorkSource:Landroid/os/WorkSource;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 133
    new-instance v0, Landroid/location/GnssMeasurementRequest$1;

    invoke-direct {v0}, Landroid/location/GnssMeasurementRequest$1;-><init>()V

    sput-object v0, Landroid/location/GnssMeasurementRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ZZILandroid/os/WorkSource;)V
    .registers 6
    .param p1, "fullTracking"    # Z
    .param p2, "correlationVectorOutputsEnabled"    # Z
    .param p3, "intervalMillis"    # I
    .param p4, "workSource"    # Landroid/os/WorkSource;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-boolean p1, p0, Landroid/location/GnssMeasurementRequest;->mFullTracking:Z

    .line 62
    iput-boolean p2, p0, Landroid/location/GnssMeasurementRequest;->mCorrelationVectorOutputsEnabled:Z

    .line 63
    iput p3, p0, Landroid/location/GnssMeasurementRequest;->mIntervalMillis:I

    .line 64
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    iput-object v0, p0, Landroid/location/GnssMeasurementRequest;->mWorkSource:Landroid/os/WorkSource;

    .line 65
    return-void
.end method

.method synthetic constructor blacklist <init>(ZZILandroid/os/WorkSource;Landroid/location/GnssMeasurementRequest-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/location/GnssMeasurementRequest;-><init>(ZZILandroid/os/WorkSource;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 211
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 185
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 186
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 187
    :cond_8
    instance-of v2, p1, Landroid/location/GnssMeasurementRequest;

    if-nez v2, :cond_d

    return v1

    .line 189
    :cond_d
    move-object v2, p1

    check-cast v2, Landroid/location/GnssMeasurementRequest;

    .line 190
    .local v2, "other":Landroid/location/GnssMeasurementRequest;
    iget-boolean v3, p0, Landroid/location/GnssMeasurementRequest;->mFullTracking:Z

    iget-boolean v4, v2, Landroid/location/GnssMeasurementRequest;->mFullTracking:Z

    if-eq v3, v4, :cond_17

    return v1

    .line 191
    :cond_17
    iget-boolean v3, p0, Landroid/location/GnssMeasurementRequest;->mCorrelationVectorOutputsEnabled:Z

    iget-boolean v4, v2, Landroid/location/GnssMeasurementRequest;->mCorrelationVectorOutputsEnabled:Z

    if-eq v3, v4, :cond_1e

    .line 192
    return v1

    .line 194
    :cond_1e
    iget v3, p0, Landroid/location/GnssMeasurementRequest;->mIntervalMillis:I

    iget v4, v2, Landroid/location/GnssMeasurementRequest;->mIntervalMillis:I

    if-eq v3, v4, :cond_25

    .line 195
    return v1

    .line 197
    :cond_25
    iget-object v3, p0, Landroid/location/GnssMeasurementRequest;->mWorkSource:Landroid/os/WorkSource;

    iget-object v4, v2, Landroid/location/GnssMeasurementRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    .line 198
    return v1

    .line 200
    :cond_30
    return v0
.end method

.method public whitelist getIntervalMillis()I
    .registers 2

    .line 114
    iget v0, p0, Landroid/location/GnssMeasurementRequest;->mIntervalMillis:I

    return v0
.end method

.method public whitelist getWorkSource()Landroid/os/WorkSource;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 129
    iget-object v0, p0, Landroid/location/GnssMeasurementRequest;->mWorkSource:Landroid/os/WorkSource;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 205
    iget-boolean v0, p0, Landroid/location/GnssMeasurementRequest;->mFullTracking:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v1, p0, Landroid/location/GnssMeasurementRequest;->mCorrelationVectorOutputsEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget v2, p0, Landroid/location/GnssMeasurementRequest;->mIntervalMillis:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/location/GnssMeasurementRequest;->mWorkSource:Landroid/os/WorkSource;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isCorrelationVectorOutputsEnabled()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 77
    iget-boolean v0, p0, Landroid/location/GnssMeasurementRequest;->mCorrelationVectorOutputsEnabled:Z

    return v0
.end method

.method public whitelist isFullTracking()Z
    .registers 2

    .line 95
    iget-boolean v0, p0, Landroid/location/GnssMeasurementRequest;->mFullTracking:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .local v0, "s":Ljava/lang/StringBuilder;
    const-string v1, "GnssMeasurementRequest["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    iget v1, p0, Landroid/location/GnssMeasurementRequest;->mIntervalMillis:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_17

    .line 165
    const-string v1, "passive"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_22

    .line 167
    :cond_17
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    iget v1, p0, Landroid/location/GnssMeasurementRequest;->mIntervalMillis:I

    int-to-long v1, v1

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 170
    :goto_22
    iget-boolean v1, p0, Landroid/location/GnssMeasurementRequest;->mFullTracking:Z

    if-eqz v1, :cond_2b

    .line 171
    const-string v1, ", FullTracking"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    :cond_2b
    iget-boolean v1, p0, Landroid/location/GnssMeasurementRequest;->mCorrelationVectorOutputsEnabled:Z

    if-eqz v1, :cond_34

    .line 174
    const-string v1, ", CorrelationVectorOutputs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    :cond_34
    iget-object v1, p0, Landroid/location/GnssMeasurementRequest;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v1, :cond_4b

    iget-object v1, p0, Landroid/location/GnssMeasurementRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v1}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4b

    .line 177
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/location/GnssMeasurementRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 179
    :cond_4b
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 153
    iget-boolean v0, p0, Landroid/location/GnssMeasurementRequest;->mFullTracking:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 154
    iget-boolean v0, p0, Landroid/location/GnssMeasurementRequest;->mCorrelationVectorOutputsEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 155
    iget v0, p0, Landroid/location/GnssMeasurementRequest;->mIntervalMillis:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    iget-object v0, p0, Landroid/location/GnssMeasurementRequest;->mWorkSource:Landroid/os/WorkSource;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 157
    return-void
.end method
