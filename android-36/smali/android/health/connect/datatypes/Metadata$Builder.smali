.class public final Landroid/health/connect/datatypes/Metadata$Builder;
.super Ljava/lang/Object;
.source "Metadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/datatypes/Metadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mClientRecordId:Ljava/lang/String;

.field private blacklist mClientRecordVersion:J

.field private blacklist mDataOrigin:Landroid/health/connect/datatypes/DataOrigin;

.field private blacklist mDevice:Landroid/health/connect/datatypes/Device;

.field private blacklist mId:Ljava/lang/String;

.field private blacklist mLastModifiedTime:Ljava/time/Instant;

.field private blacklist mRecordingMethod:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    new-instance v0, Landroid/health/connect/datatypes/Device$Builder;

    invoke-direct {v0}, Landroid/health/connect/datatypes/Device$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/health/connect/datatypes/Device$Builder;->build()Landroid/health/connect/datatypes/Device;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/Metadata$Builder;->mDevice:Landroid/health/connect/datatypes/Device;

    .line 242
    new-instance v0, Landroid/health/connect/datatypes/DataOrigin$Builder;

    invoke-direct {v0}, Landroid/health/connect/datatypes/DataOrigin$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/health/connect/datatypes/DataOrigin$Builder;->build()Landroid/health/connect/datatypes/DataOrigin;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/Metadata$Builder;->mDataOrigin:Landroid/health/connect/datatypes/DataOrigin;

    .line 243
    const-string v0, ""

    iput-object v0, p0, Landroid/health/connect/datatypes/Metadata$Builder;->mId:Ljava/lang/String;

    .line 244
    sget-object v0, Ljava/time/Instant;->EPOCH:Ljava/time/Instant;

    iput-object v0, p0, Landroid/health/connect/datatypes/Metadata$Builder;->mLastModifiedTime:Ljava/time/Instant;

    .line 246
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/health/connect/datatypes/Metadata$Builder;->mClientRecordVersion:J

    .line 248
    const/4 v0, 0x0

    iput v0, p0, Landroid/health/connect/datatypes/Metadata$Builder;->mRecordingMethod:I

    .line 251
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/health/connect/datatypes/Metadata;
    .registers 11

    .line 345
    new-instance v0, Landroid/health/connect/datatypes/Metadata;

    iget-object v1, p0, Landroid/health/connect/datatypes/Metadata$Builder;->mDevice:Landroid/health/connect/datatypes/Device;

    iget-object v2, p0, Landroid/health/connect/datatypes/Metadata$Builder;->mDataOrigin:Landroid/health/connect/datatypes/DataOrigin;

    iget-object v3, p0, Landroid/health/connect/datatypes/Metadata$Builder;->mId:Ljava/lang/String;

    iget-object v4, p0, Landroid/health/connect/datatypes/Metadata$Builder;->mLastModifiedTime:Ljava/time/Instant;

    iget-object v5, p0, Landroid/health/connect/datatypes/Metadata$Builder;->mClientRecordId:Ljava/lang/String;

    iget-wide v6, p0, Landroid/health/connect/datatypes/Metadata$Builder;->mClientRecordVersion:J

    iget v8, p0, Landroid/health/connect/datatypes/Metadata$Builder;->mRecordingMethod:I

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Landroid/health/connect/datatypes/Metadata;-><init>(Landroid/health/connect/datatypes/Device;Landroid/health/connect/datatypes/DataOrigin;Ljava/lang/String;Ljava/time/Instant;Ljava/lang/String;JILandroid/health/connect/datatypes/Metadata-IA;)V

    return-object v0
.end method

.method public whitelist setClientRecordId(Ljava/lang/String;)Landroid/health/connect/datatypes/Metadata$Builder;
    .registers 2
    .param p1, "clientRecordId"    # Ljava/lang/String;

    .line 313
    iput-object p1, p0, Landroid/health/connect/datatypes/Metadata$Builder;->mClientRecordId:Ljava/lang/String;

    .line 314
    return-object p0
.end method

.method public whitelist setClientRecordVersion(J)Landroid/health/connect/datatypes/Metadata$Builder;
    .registers 3
    .param p1, "clientRecordVersion"    # J

    .line 325
    iput-wide p1, p0, Landroid/health/connect/datatypes/Metadata$Builder;->mClientRecordVersion:J

    .line 326
    return-object p0
.end method

.method public whitelist setDataOrigin(Landroid/health/connect/datatypes/DataOrigin;)Landroid/health/connect/datatypes/Metadata$Builder;
    .registers 2
    .param p1, "dataOrigin"    # Landroid/health/connect/datatypes/DataOrigin;

    .line 270
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    iput-object p1, p0, Landroid/health/connect/datatypes/Metadata$Builder;->mDataOrigin:Landroid/health/connect/datatypes/DataOrigin;

    .line 273
    return-object p0
.end method

.method public whitelist setDevice(Landroid/health/connect/datatypes/Device;)Landroid/health/connect/datatypes/Metadata$Builder;
    .registers 2
    .param p1, "device"    # Landroid/health/connect/datatypes/Device;

    .line 256
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    iput-object p1, p0, Landroid/health/connect/datatypes/Metadata$Builder;->mDevice:Landroid/health/connect/datatypes/Device;

    .line 259
    return-object p0
.end method

.method public whitelist setId(Ljava/lang/String;)Landroid/health/connect/datatypes/Metadata$Builder;
    .registers 2
    .param p1, "id"    # Ljava/lang/String;

    .line 283
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    iput-object p1, p0, Landroid/health/connect/datatypes/Metadata$Builder;->mId:Ljava/lang/String;

    .line 286
    return-object p0
.end method

.method public whitelist setLastModifiedTime(Ljava/time/Instant;)Landroid/health/connect/datatypes/Metadata$Builder;
    .registers 2
    .param p1, "lastModifiedTime"    # Ljava/time/Instant;

    .line 295
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    iput-object p1, p0, Landroid/health/connect/datatypes/Metadata$Builder;->mLastModifiedTime:Ljava/time/Instant;

    .line 298
    return-object p0
.end method

.method public whitelist setRecordingMethod(I)Landroid/health/connect/datatypes/Metadata$Builder;
    .registers 2
    .param p1, "recordingMethod"    # I

    .line 336
    iput p1, p0, Landroid/health/connect/datatypes/Metadata$Builder;->mRecordingMethod:I

    .line 337
    return-object p0
.end method
