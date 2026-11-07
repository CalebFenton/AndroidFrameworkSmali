.class public abstract Landroid/health/connect/internal/datatypes/RecordInternal;
.super Ljava/lang/Object;
.source "RecordInternal.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/health/connect/datatypes/Record;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private blacklist mAppInfoId:J

.field private blacklist mAppName:Ljava/lang/String;

.field private blacklist mClientRecordId:Ljava/lang/String;

.field private blacklist mClientRecordVersion:J

.field private blacklist mDeviceInfoId:J

.field private blacklist mDeviceType:I

.field private blacklist mLastModifiedTime:J

.field private blacklist mManufacturer:Ljava/lang/String;

.field private blacklist mModel:Ljava/lang/String;

.field private blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mRecordIdentifier:I

.field private blacklist mRecordingMethod:I

.field private blacklist mRowId:I

.field private blacklist mUuid:Ljava/util/UUID;


# direct methods
.method constructor blacklist <init>()V
    .registers 3

    .line 61
    .local p0, "this":Landroid/health/connect/internal/datatypes/RecordInternal;, "Landroid/health/connect/internal/datatypes/RecordInternal<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/RecordInternal;->mLastModifiedTime:J

    .line 50
    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/RecordInternal;->mClientRecordVersion:J

    .line 54
    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/RecordInternal;->mDeviceInfoId:J

    .line 55
    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/RecordInternal;->mAppInfoId:J

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Landroid/health/connect/internal/datatypes/RecordInternal;->mRowId:I

    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/health/connect/datatypes/Identifier;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Landroid/health/connect/datatypes/Identifier;

    .line 63
    .local v0, "annotation":Landroid/health/connect/datatypes/Identifier;
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-interface {v0}, Landroid/health/connect/datatypes/Identifier;->recordIdentifier()I

    move-result v1

    iput v1, p0, Landroid/health/connect/internal/datatypes/RecordInternal;->mRecordIdentifier:I

    .line 65
    return-void
.end method


# virtual methods
.method blacklist buildMetaData()Landroid/health/connect/datatypes/Metadata;
    .registers 4

    .line 284
    .local p0, "this":Landroid/health/connect/internal/datatypes/RecordInternal;, "Landroid/health/connect/internal/datatypes/RecordInternal<TT;>;"
    new-instance v0, Landroid/health/connect/datatypes/Metadata$Builder;

    invoke-direct {v0}, Landroid/health/connect/datatypes/Metadata$Builder;-><init>()V

    .line 285
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/RecordInternal;->getClientRecordId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/Metadata$Builder;->setClientRecordId(Ljava/lang/String;)Landroid/health/connect/datatypes/Metadata$Builder;

    move-result-object v0

    .line 286
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/RecordInternal;->getClientRecordVersion()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/datatypes/Metadata$Builder;->setClientRecordVersion(J)Landroid/health/connect/datatypes/Metadata$Builder;

    move-result-object v0

    new-instance v1, Landroid/health/connect/datatypes/DataOrigin$Builder;

    invoke-direct {v1}, Landroid/health/connect/datatypes/DataOrigin$Builder;-><init>()V

    .line 287
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/RecordInternal;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/health/connect/datatypes/DataOrigin$Builder;->setPackageName(Ljava/lang/String;)Landroid/health/connect/datatypes/DataOrigin$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/DataOrigin$Builder;->build()Landroid/health/connect/datatypes/DataOrigin;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/Metadata$Builder;->setDataOrigin(Landroid/health/connect/datatypes/DataOrigin;)Landroid/health/connect/datatypes/Metadata$Builder;

    move-result-object v0

    .line 288
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/RecordInternal;->getUuid()Ljava/util/UUID;

    move-result-object v1

    if-nez v1, :cond_32

    const/4 v1, 0x0

    goto :goto_3a

    :cond_32
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/RecordInternal;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3a
    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/Metadata$Builder;->setId(Ljava/lang/String;)Landroid/health/connect/datatypes/Metadata$Builder;

    move-result-object v0

    .line 289
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/RecordInternal;->getLastModifiedTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/Metadata$Builder;->setLastModifiedTime(Ljava/time/Instant;)Landroid/health/connect/datatypes/Metadata$Builder;

    move-result-object v0

    .line 290
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/RecordInternal;->getRecordingMethod()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/Metadata$Builder;->setRecordingMethod(I)Landroid/health/connect/datatypes/Metadata$Builder;

    move-result-object v0

    new-instance v1, Landroid/health/connect/datatypes/Device$Builder;

    invoke-direct {v1}, Landroid/health/connect/datatypes/Device$Builder;-><init>()V

    .line 293
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/RecordInternal;->getManufacturer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/health/connect/datatypes/Device$Builder;->setManufacturer(Ljava/lang/String;)Landroid/health/connect/datatypes/Device$Builder;

    move-result-object v1

    .line 294
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/RecordInternal;->getDeviceType()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/health/connect/datatypes/Device$Builder;->setType(I)Landroid/health/connect/datatypes/Device$Builder;

    move-result-object v1

    .line 295
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/RecordInternal;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/health/connect/datatypes/Device$Builder;->setModel(Ljava/lang/String;)Landroid/health/connect/datatypes/Device$Builder;

    move-result-object v1

    .line 296
    invoke-virtual {v1}, Landroid/health/connect/datatypes/Device$Builder;->build()Landroid/health/connect/datatypes/Device;

    move-result-object v1

    .line 291
    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/Metadata$Builder;->setDevice(Landroid/health/connect/datatypes/Device;)Landroid/health/connect/datatypes/Metadata$Builder;

    move-result-object v0

    .line 297
    invoke-virtual {v0}, Landroid/health/connect/datatypes/Metadata$Builder;->build()Landroid/health/connect/datatypes/Metadata;

    move-result-object v0

    .line 284
    return-object v0
.end method

.method public blacklist getAppInfoId()J
    .registers 3

    .line 256
    .local p0, "this":Landroid/health/connect/internal/datatypes/RecordInternal;, "Landroid/health/connect/internal/datatypes/RecordInternal<TT;>;"
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/RecordInternal;->mAppInfoId:J

    return-wide v0
.end method

.method public blacklist getAppName()Ljava/lang/String;
    .registers 2

    .line 167
    .local p0, "this":Landroid/health/connect/internal/datatypes/RecordInternal;, "Landroid/health/connect/internal/datatypes/RecordInternal<TT;>;"
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/RecordInternal;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getClientRecordId()Ljava/lang/String;
    .registers 2

    .line 190
    .local p0, "this":Landroid/health/connect/internal/datatypes/RecordInternal;, "Landroid/health/connect/internal/datatypes/RecordInternal<TT;>;"
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/RecordInternal;->mClientRecordId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getClientRecordVersion()J
    .registers 3

    .line 201
    .local p0, "this":Landroid/health/connect/internal/datatypes/RecordInternal;, "Landroid/health/connect/internal/datatypes/RecordInternal<TT;>;"
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/RecordInternal;->mClientRecordVersion:J

    return-wide v0
.end method

.method public blacklist getDeviceInfoId()J
    .registers 3

    .line 246
    .local p0, "this":Landroid/health/connect/internal/datatypes/RecordInternal;, "Landroid/health/connect/internal/datatypes/RecordInternal<TT;>;"
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/RecordInternal;->mDeviceInfoId:J

    return-wide v0
.end method

.method public blacklist getDeviceType()I
    .registers 2

    .line 236
    .local p0, "this":Landroid/health/connect/internal/datatypes/RecordInternal;, "Landroid/health/connect/internal/datatypes/RecordInternal<TT;>;"
    iget v0, p0, Landroid/health/connect/internal/datatypes/RecordInternal;->mDeviceType:I

    return v0
.end method

.method public blacklist getLastModifiedTime()J
    .registers 3

    .line 179
    .local p0, "this":Landroid/health/connect/internal/datatypes/RecordInternal;, "Landroid/health/connect/internal/datatypes/RecordInternal<TT;>;"
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/RecordInternal;->mLastModifiedTime:J

    return-wide v0
.end method

.method public abstract blacklist getLocalDate()Ljava/time/LocalDate;
.end method

.method public blacklist getManufacturer()Ljava/lang/String;
    .registers 2

    .line 212
    .local p0, "this":Landroid/health/connect/internal/datatypes/RecordInternal;, "Landroid/health/connect/internal/datatypes/RecordInternal<TT;>;"
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/RecordInternal;->mManufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getModel()Ljava/lang/String;
    .registers 2

    .line 224
    .local p0, "this":Landroid/health/connect/internal/datatypes/RecordInternal;, "Landroid/health/connect/internal/datatypes/RecordInternal<TT;>;"
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/RecordInternal;->mModel:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .registers 2

    .line 140
    .local p0, "this":Landroid/health/connect/internal/datatypes/RecordInternal;, "Landroid/health/connect/internal/datatypes/RecordInternal<TT;>;"
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/RecordInternal;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public abstract blacklist getRecordTime()J
.end method

.method public blacklist getRecordType()I
    .registers 2

    .line 69
    .local p0, "this":Landroid/health/connect/internal/datatypes/RecordInternal;, "Landroid/health/connect/internal/datatypes/RecordInternal<TT;>;"
    iget v0, p0, Landroid/health/connect/internal/datatypes/RecordInternal;->mRecordIdentifier:I

    return v0
.end method

.method public blacklist getRecordingMethod()I
    .registers 2

    .line 268
    .local p0, "this":Landroid/health/connect/internal/datatypes/RecordInternal;, "Landroid/health/connect/internal/datatypes/RecordInternal<TT;>;"
    iget v0, p0, Landroid/health/connect/internal/datatypes/RecordInternal;->mRecordingMethod:I

    return v0
.end method

.method public blacklist getRowId()I
    .registers 2

    .line 151
    .local p0, "this":Landroid/health/connect/internal/datatypes/RecordInternal;, "Landroid/health/connect/internal/datatypes/RecordInternal<TT;>;"
    iget v0, p0, Landroid/health/connect/internal/datatypes/RecordInternal;->mRowId:I

    return v0
.end method

.method public blacklist getUuid()Ljava/util/UUID;
    .registers 2

    .line 116
    .local p0, "this":Landroid/health/connect/internal/datatypes/RecordInternal;, "Landroid/health/connect/internal/datatypes/RecordInternal<TT;>;"
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/RecordInternal;->mUuid:Ljava/util/UUID;

    return-object v0
.end method

.method abstract blacklist populateRecordFrom(Landroid/os/Parcel;)V
.end method

.method abstract blacklist populateRecordTo(Landroid/os/Parcel;)V
.end method

.method public final blacklist populateUsing(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 77
    .local p0, "this":Landroid/health/connect/internal/datatypes/RecordInternal;, "Landroid/health/connect/internal/datatypes/RecordInternal<TT;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "uuidString":Ljava/lang/String;
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    .line 79
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    iput-object v1, p0, Landroid/health/connect/internal/datatypes/RecordInternal;->mUuid:Ljava/util/UUID;

    .line 81
    :cond_12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/health/connect/internal/datatypes/RecordInternal;->mPackageName:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/health/connect/internal/datatypes/RecordInternal;->mAppName:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/health/connect/internal/datatypes/RecordInternal;->mLastModifiedTime:J

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/health/connect/internal/datatypes/RecordInternal;->mClientRecordId:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/health/connect/internal/datatypes/RecordInternal;->mClientRecordVersion:J

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/health/connect/internal/datatypes/RecordInternal;->mManufacturer:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/health/connect/internal/datatypes/RecordInternal;->mModel:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/health/connect/internal/datatypes/RecordInternal;->mDeviceType:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/health/connect/internal/datatypes/RecordInternal;->mRecordingMethod:I

    .line 91
    invoke-virtual {p0, p1}, Landroid/health/connect/internal/datatypes/RecordInternal;->populateRecordFrom(Landroid/os/Parcel;)V

    .line 92
    return-void
.end method

.method public blacklist setAppInfoId(J)Landroid/health/connect/internal/datatypes/RecordInternal;
    .registers 3
    .param p1, "appInfoId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/health/connect/internal/datatypes/RecordInternal<",
            "TT;>;"
        }
    .end annotation

    .line 261
    .local p0, "this":Landroid/health/connect/internal/datatypes/RecordInternal;, "Landroid/health/connect/internal/datatypes/RecordInternal<TT;>;"
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/RecordInternal;->mAppInfoId:J

    .line 262
    return-object p0
.end method

.method public blacklist setAppName(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;
    .registers 2
    .param p1, "appName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/health/connect/internal/datatypes/RecordInternal<",
            "TT;>;"
        }
    .end annotation

    .line 174
    .local p0, "this":Landroid/health/connect/internal/datatypes/RecordInternal;, "Landroid/health/connect/internal/datatypes/RecordInternal<TT;>;"
    iput-object p1, p0, Landroid/health/connect/internal/datatypes/RecordInternal;->mAppName:Ljava/lang/String;

    .line 175
    return-object p0
.end method

.method public blacklist setClientRecordId(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;
    .registers 2
    .param p1, "clientRecordId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/health/connect/internal/datatypes/RecordInternal<",
            "TT;>;"
        }
    .end annotation

    .line 196
    .local p0, "this":Landroid/health/connect/internal/datatypes/RecordInternal;, "Landroid/health/connect/internal/datatypes/RecordInternal<TT;>;"
    iput-object p1, p0, Landroid/health/connect/internal/datatypes/RecordInternal;->mClientRecordId:Ljava/lang/String;

    .line 197
    return-object p0
.end method

.method public blacklist setClientRecordVersion(J)Landroid/health/connect/internal/datatypes/RecordInternal;
    .registers 3
    .param p1, "clientRecordVersion"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/health/connect/internal/datatypes/RecordInternal<",
            "TT;>;"
        }
    .end annotation

    .line 206
    .local p0, "this":Landroid/health/connect/internal/datatypes/RecordInternal;, "Landroid/health/connect/internal/datatypes/RecordInternal<TT;>;"
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/RecordInternal;->mClientRecordVersion:J

    .line 207
    return-object p0
.end method

.method public blacklist setDeviceInfoId(J)Landroid/health/connect/internal/datatypes/RecordInternal;
    .registers 3
    .param p1, "deviceInfoId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/health/connect/internal/datatypes/RecordInternal<",
            "TT;>;"
        }
    .end annotation

    .line 251
    .local p0, "this":Landroid/health/connect/internal/datatypes/RecordInternal;, "Landroid/health/connect/internal/datatypes/RecordInternal<TT;>;"
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/RecordInternal;->mDeviceInfoId:J

    .line 252
    return-object p0
.end method

.method public blacklist setDeviceType(I)Landroid/health/connect/internal/datatypes/RecordInternal;
    .registers 2
    .param p1, "deviceType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/health/connect/internal/datatypes/RecordInternal<",
            "TT;>;"
        }
    .end annotation

    .line 241
    .local p0, "this":Landroid/health/connect/internal/datatypes/RecordInternal;, "Landroid/health/connect/internal/datatypes/RecordInternal<TT;>;"
    iput p1, p0, Landroid/health/connect/internal/datatypes/RecordInternal;->mDeviceType:I

    .line 242
    return-object p0
.end method

.method public blacklist setLastModifiedTime(J)Landroid/health/connect/internal/datatypes/RecordInternal;
    .registers 3
    .param p1, "lastModifiedTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/health/connect/internal/datatypes/RecordInternal<",
            "TT;>;"
        }
    .end annotation

    .line 184
    .local p0, "this":Landroid/health/connect/internal/datatypes/RecordInternal;, "Landroid/health/connect/internal/datatypes/RecordInternal<TT;>;"
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/RecordInternal;->mLastModifiedTime:J

    .line 185
    return-object p0
.end method

.method public blacklist setManufacturer(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;
    .registers 2
    .param p1, "manufacturer"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/health/connect/internal/datatypes/RecordInternal<",
            "TT;>;"
        }
    .end annotation

    .line 218
    .local p0, "this":Landroid/health/connect/internal/datatypes/RecordInternal;, "Landroid/health/connect/internal/datatypes/RecordInternal<TT;>;"
    iput-object p1, p0, Landroid/health/connect/internal/datatypes/RecordInternal;->mManufacturer:Ljava/lang/String;

    .line 219
    return-object p0
.end method

.method public blacklist setModel(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;
    .registers 2
    .param p1, "model"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/health/connect/internal/datatypes/RecordInternal<",
            "TT;>;"
        }
    .end annotation

    .line 230
    .local p0, "this":Landroid/health/connect/internal/datatypes/RecordInternal;, "Landroid/health/connect/internal/datatypes/RecordInternal<TT;>;"
    iput-object p1, p0, Landroid/health/connect/internal/datatypes/RecordInternal;->mModel:Ljava/lang/String;

    .line 231
    return-object p0
.end method

.method public blacklist setPackageName(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/health/connect/internal/datatypes/RecordInternal<",
            "TT;>;"
        }
    .end annotation

    .line 145
    .local p0, "this":Landroid/health/connect/internal/datatypes/RecordInternal;, "Landroid/health/connect/internal/datatypes/RecordInternal<TT;>;"
    iput-object p1, p0, Landroid/health/connect/internal/datatypes/RecordInternal;->mPackageName:Ljava/lang/String;

    .line 146
    return-object p0
.end method

.method public blacklist setRecordingMethod(I)Landroid/health/connect/internal/datatypes/RecordInternal;
    .registers 2
    .param p1, "recordingMethod"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/health/connect/internal/datatypes/RecordInternal<",
            "TT;>;"
        }
    .end annotation

    .line 274
    .local p0, "this":Landroid/health/connect/internal/datatypes/RecordInternal;, "Landroid/health/connect/internal/datatypes/RecordInternal<TT;>;"
    iput p1, p0, Landroid/health/connect/internal/datatypes/RecordInternal;->mRecordingMethod:I

    .line 275
    return-object p0
.end method

.method public blacklist setRowId(I)Landroid/health/connect/internal/datatypes/RecordInternal;
    .registers 2
    .param p1, "rowId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/health/connect/internal/datatypes/RecordInternal<",
            "TT;>;"
        }
    .end annotation

    .line 156
    .local p0, "this":Landroid/health/connect/internal/datatypes/RecordInternal;, "Landroid/health/connect/internal/datatypes/RecordInternal<TT;>;"
    iput p1, p0, Landroid/health/connect/internal/datatypes/RecordInternal;->mRowId:I

    .line 157
    return-object p0
.end method

.method public blacklist setUuid(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;
    .registers 3
    .param p1, "uuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/health/connect/internal/datatypes/RecordInternal<",
            "TT;>;"
        }
    .end annotation

    .line 129
    .local p0, "this":Landroid/health/connect/internal/datatypes/RecordInternal;, "Landroid/health/connect/internal/datatypes/RecordInternal<TT;>;"
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_10

    .line 134
    :cond_9
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/internal/datatypes/RecordInternal;->mUuid:Ljava/util/UUID;

    .line 135
    return-object p0

    .line 130
    :cond_10
    :goto_10
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/health/connect/internal/datatypes/RecordInternal;->mUuid:Ljava/util/UUID;

    .line 131
    return-object p0
.end method

.method public blacklist setUuid(Ljava/util/UUID;)Landroid/health/connect/internal/datatypes/RecordInternal;
    .registers 2
    .param p1, "uuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            ")",
            "Landroid/health/connect/internal/datatypes/RecordInternal<",
            "TT;>;"
        }
    .end annotation

    .line 122
    .local p0, "this":Landroid/health/connect/internal/datatypes/RecordInternal;, "Landroid/health/connect/internal/datatypes/RecordInternal<TT;>;"
    iput-object p1, p0, Landroid/health/connect/internal/datatypes/RecordInternal;->mUuid:Ljava/util/UUID;

    .line 123
    return-object p0
.end method

.method public abstract blacklist toExternalRecord()Landroid/health/connect/datatypes/Record;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public final blacklist writeToParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 100
    .local p0, "this":Landroid/health/connect/internal/datatypes/RecordInternal;, "Landroid/health/connect/internal/datatypes/RecordInternal<TT;>;"
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/RecordInternal;->mUuid:Ljava/util/UUID;

    if-nez v0, :cond_7

    const-string v0, ""

    goto :goto_d

    :cond_7
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/RecordInternal;->mUuid:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/RecordInternal;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/RecordInternal;->mAppName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/RecordInternal;->mLastModifiedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 104
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/RecordInternal;->mClientRecordId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/RecordInternal;->mClientRecordVersion:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 106
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/RecordInternal;->mManufacturer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/RecordInternal;->mModel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget v0, p0, Landroid/health/connect/internal/datatypes/RecordInternal;->mDeviceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget v0, p0, Landroid/health/connect/internal/datatypes/RecordInternal;->mRecordingMethod:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    invoke-virtual {p0, p1}, Landroid/health/connect/internal/datatypes/RecordInternal;->populateRecordTo(Landroid/os/Parcel;)V

    .line 112
    return-void
.end method
