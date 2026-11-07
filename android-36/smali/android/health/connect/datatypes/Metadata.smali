.class public final Landroid/health/connect/datatypes/Metadata;
.super Ljava/lang/Object;
.source "Metadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/datatypes/Metadata$RecordingMethod;,
        Landroid/health/connect/datatypes/Metadata$Builder;
    }
.end annotation


# static fields
.field public static final whitelist RECORDING_METHOD_ACTIVELY_RECORDED:I = 0x1

.field public static final whitelist RECORDING_METHOD_AUTOMATICALLY_RECORDED:I = 0x2

.field public static final whitelist RECORDING_METHOD_MANUAL_ENTRY:I = 0x3

.field public static final whitelist RECORDING_METHOD_UNKNOWN:I

.field public static final blacklist VALID_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mClientRecordId:Ljava/lang/String;

.field private final blacklist mClientRecordVersion:J

.field private final blacklist mDataOrigin:Landroid/health/connect/datatypes/DataOrigin;

.field private final blacklist mDevice:Landroid/health/connect/datatypes/Device;

.field private blacklist mId:Ljava/lang/String;

.field private final blacklist mLastModifiedTime:Ljava/time/Instant;

.field private final blacklist mRecordingMethod:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 63
    nop

    .line 65
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 66
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 67
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 68
    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 64
    invoke-static {v0, v1, v2, v3}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroid/health/connect/datatypes/Metadata;->VALID_TYPES:Ljava/util/Set;

    .line 63
    return-void
.end method

.method private constructor blacklist <init>(Landroid/health/connect/datatypes/Device;Landroid/health/connect/datatypes/DataOrigin;Ljava/lang/String;Ljava/time/Instant;Ljava/lang/String;JI)V
    .registers 11
    .param p1, "device"    # Landroid/health/connect/datatypes/Device;
    .param p2, "dataOrigin"    # Landroid/health/connect/datatypes/DataOrigin;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "lastModifiedTime"    # Ljava/time/Instant;
    .param p5, "clientRecordId"    # Ljava/lang/String;
    .param p6, "clientRecordVersion"    # J
    .param p8, "recordingMethod"    # I

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    sget-object v0, Landroid/health/connect/datatypes/Metadata;->VALID_TYPES:Ljava/util/Set;

    const-class v1, Landroid/health/connect/datatypes/Metadata$RecordingMethod;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p8, v0, v1}, Landroid/health/connect/datatypes/validation/ValidationUtils;->validateIntDefValue(ILjava/util/Set;Ljava/lang/String;)V

    .line 111
    iput-object p1, p0, Landroid/health/connect/datatypes/Metadata;->mDevice:Landroid/health/connect/datatypes/Device;

    .line 112
    iput-object p2, p0, Landroid/health/connect/datatypes/Metadata;->mDataOrigin:Landroid/health/connect/datatypes/DataOrigin;

    .line 113
    iput-object p3, p0, Landroid/health/connect/datatypes/Metadata;->mId:Ljava/lang/String;

    .line 114
    iput-object p4, p0, Landroid/health/connect/datatypes/Metadata;->mLastModifiedTime:Ljava/time/Instant;

    .line 115
    iput-object p5, p0, Landroid/health/connect/datatypes/Metadata;->mClientRecordId:Ljava/lang/String;

    .line 116
    iput-wide p6, p0, Landroid/health/connect/datatypes/Metadata;->mClientRecordVersion:J

    .line 117
    iput p8, p0, Landroid/health/connect/datatypes/Metadata;->mRecordingMethod:I

    .line 118
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/health/connect/datatypes/Device;Landroid/health/connect/datatypes/DataOrigin;Ljava/lang/String;Ljava/time/Instant;Ljava/lang/String;JILandroid/health/connect/datatypes/Metadata-IA;)V
    .registers 10

    invoke-direct/range {p0 .. p8}, Landroid/health/connect/datatypes/Metadata;-><init>(Landroid/health/connect/datatypes/Device;Landroid/health/connect/datatypes/DataOrigin;Ljava/lang/String;Ljava/time/Instant;Ljava/lang/String;JI)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "object"    # Ljava/lang/Object;

    .line 193
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 194
    :cond_4
    instance-of v1, p1, Landroid/health/connect/datatypes/Metadata;

    const/4 v2, 0x0

    if-eqz v1, :cond_5d

    .line 195
    move-object v1, p1

    check-cast v1, Landroid/health/connect/datatypes/Metadata;

    .line 196
    .local v1, "other":Landroid/health/connect/datatypes/Metadata;
    invoke-virtual {p0}, Landroid/health/connect/datatypes/Metadata;->getDevice()Landroid/health/connect/datatypes/Device;

    move-result-object v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDevice()Landroid/health/connect/datatypes/Device;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/health/connect/datatypes/Device;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 197
    invoke-virtual {p0}, Landroid/health/connect/datatypes/Metadata;->getDataOrigin()Landroid/health/connect/datatypes/DataOrigin;

    move-result-object v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getDataOrigin()Landroid/health/connect/datatypes/DataOrigin;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/health/connect/datatypes/DataOrigin;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 198
    invoke-virtual {p0}, Landroid/health/connect/datatypes/Metadata;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 199
    invoke-virtual {p0}, Landroid/health/connect/datatypes/Metadata;->getClientRecordId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getClientRecordId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 200
    invoke-virtual {p0}, Landroid/health/connect/datatypes/Metadata;->getClientRecordVersion()J

    move-result-wide v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getClientRecordVersion()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_5b

    .line 201
    invoke-virtual {p0}, Landroid/health/connect/datatypes/Metadata;->getRecordingMethod()I

    move-result v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/Metadata;->getRecordingMethod()I

    move-result v4

    if-ne v3, v4, :cond_5b

    goto :goto_5c

    :cond_5b
    move v0, v2

    .line 196
    :goto_5c
    return v0

    .line 203
    .end local v1    # "other":Landroid/health/connect/datatypes/Metadata;
    :cond_5d
    return v2
.end method

.method public whitelist getClientRecordId()Ljava/lang/String;
    .registers 2

    .line 125
    iget-object v0, p0, Landroid/health/connect/datatypes/Metadata;->mClientRecordId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getClientRecordVersion()J
    .registers 3

    .line 132
    iget-wide v0, p0, Landroid/health/connect/datatypes/Metadata;->mClientRecordVersion:J

    return-wide v0
.end method

.method public whitelist getDataOrigin()Landroid/health/connect/datatypes/DataOrigin;
    .registers 2

    .line 141
    iget-object v0, p0, Landroid/health/connect/datatypes/Metadata;->mDataOrigin:Landroid/health/connect/datatypes/DataOrigin;

    return-object v0
.end method

.method public whitelist getDevice()Landroid/health/connect/datatypes/Device;
    .registers 2

    .line 182
    iget-object v0, p0, Landroid/health/connect/datatypes/Metadata;->mDevice:Landroid/health/connect/datatypes/Device;

    return-object v0
.end method

.method public whitelist getId()Ljava/lang/String;
    .registers 2

    .line 149
    iget-object v0, p0, Landroid/health/connect/datatypes/Metadata;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getLastModifiedTime()Ljava/time/Instant;
    .registers 2

    .line 174
    iget-object v0, p0, Landroid/health/connect/datatypes/Metadata;->mLastModifiedTime:Ljava/time/Instant;

    return-object v0
.end method

.method public whitelist getRecordingMethod()I
    .registers 2

    .line 166
    iget v0, p0, Landroid/health/connect/datatypes/Metadata;->mRecordingMethod:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 8

    .line 213
    nop

    .line 214
    invoke-virtual {p0}, Landroid/health/connect/datatypes/Metadata;->getDevice()Landroid/health/connect/datatypes/Device;

    move-result-object v0

    .line 215
    invoke-virtual {p0}, Landroid/health/connect/datatypes/Metadata;->getDataOrigin()Landroid/health/connect/datatypes/DataOrigin;

    move-result-object v1

    .line 216
    invoke-virtual {p0}, Landroid/health/connect/datatypes/Metadata;->getId()Ljava/lang/String;

    move-result-object v2

    .line 217
    invoke-virtual {p0}, Landroid/health/connect/datatypes/Metadata;->getClientRecordId()Ljava/lang/String;

    move-result-object v3

    .line 218
    invoke-virtual {p0}, Landroid/health/connect/datatypes/Metadata;->getClientRecordVersion()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 219
    invoke-virtual {p0}, Landroid/health/connect/datatypes/Metadata;->getLastModifiedTime()Ljava/time/Instant;

    move-result-object v5

    .line 220
    invoke-virtual {p0}, Landroid/health/connect/datatypes/Metadata;->getRecordingMethod()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    .line 213
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist setId(Ljava/lang/String;)V
    .registers 2
    .param p1, "id"    # Ljava/lang/String;

    .line 158
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iput-object p1, p0, Landroid/health/connect/datatypes/Metadata;->mId:Ljava/lang/String;

    .line 161
    return-void
.end method
