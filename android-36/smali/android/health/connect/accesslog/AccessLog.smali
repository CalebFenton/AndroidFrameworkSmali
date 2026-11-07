.class public final Landroid/health/connect/accesslog/AccessLog;
.super Ljava/lang/Object;
.source "AccessLog.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/accesslog/AccessLog$OperationType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/health/connect/accesslog/AccessLog;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAccessTime:Ljava/time/Instant;

.field private blacklist mIsMedicalDataSourceAccessed:Z

.field private blacklist mMedicalResourceTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mOperationType:I

.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mRecordTypesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/health/connect/datatypes/Record;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 146
    new-instance v0, Landroid/health/connect/accesslog/AccessLog$1;

    invoke-direct {v0}, Landroid/health/connect/accesslog/AccessLog$1;-><init>()V

    sput-object v0, Landroid/health/connect/accesslog/AccessLog;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 11
    .param p1, "in"    # Landroid/os/Parcel;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/health/connect/accesslog/AccessLog;->mRecordTypesList:Ljava/util/List;

    .line 60
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/health/connect/accesslog/AccessLog;->mMedicalResourceTypes:Ljava/util/Set;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/health/connect/accesslog/AccessLog;->mIsMedicalDataSourceAccessed:Z

    .line 126
    invoke-static {}, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;->getInstance()Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;

    move-result-object v1

    .line 128
    .local v1, "healthConnectMappings":Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 129
    .local v2, "recordTypes":[I
    array-length v3, v2

    move v4, v0

    :goto_24
    if-ge v4, v3, :cond_3e

    aget v5, v2, v4

    .line 130
    .local v5, "recordType":I
    iget-object v6, p0, Landroid/health/connect/accesslog/AccessLog;->mRecordTypesList:Ljava/util/List;

    .line 131
    invoke-virtual {v1}, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;->getRecordIdToExternalRecordClassMap()Ljava/util/Map;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Class;

    .line 130
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    .end local v5    # "recordType":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .line 133
    :cond_3e
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Landroid/health/connect/accesslog/AccessLog;->mPackageName:Ljava/lang/String;

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v3

    iput-object v3, p0, Landroid/health/connect/accesslog/AccessLog;->mAccessTime:Ljava/time/Instant;

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/health/connect/accesslog/AccessLog;->mOperationType:I

    .line 136
    invoke-static {}, Lcom/android/healthfitness/flags/Flags;->personalHealthRecord()Z

    move-result v3

    if-eqz v3, :cond_81

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 138
    .local v3, "medicalResourceTypes":[I
    array-length v4, v3

    :goto_6b
    if-ge v0, v4, :cond_7b

    aget v5, v3, v0

    .line 139
    .local v5, "medicalResourceType":I
    iget-object v6, p0, Landroid/health/connect/accesslog/AccessLog;->mMedicalResourceTypes:Ljava/util/Set;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 138
    .end local v5    # "medicalResourceType":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_6b

    .line 141
    :cond_7b
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/health/connect/accesslog/AccessLog;->mIsMedicalDataSourceAccessed:Z

    .line 143
    .end local v3    # "medicalResourceTypes":[I
    :cond_81
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/health/connect/accesslog/AccessLog-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/health/connect/accesslog/AccessLog;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;JILjava/util/Set;Z)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "accessTimeInMillis"    # J
    .param p4, "operationType"    # I
    .param p6, "isMedicalDataSourceAccessed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JI",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .line 107
    .local p5, "medicalResourceTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/health/connect/accesslog/AccessLog;->mRecordTypesList:Ljava/util/List;

    .line 60
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/health/connect/accesslog/AccessLog;->mMedicalResourceTypes:Ljava/util/Set;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/health/connect/accesslog/AccessLog;->mIsMedicalDataSourceAccessed:Z

    .line 108
    invoke-static {}, Lcom/android/healthfitness/flags/Flags;->personalHealthRecord()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 112
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-static {p4}, Landroid/health/connect/accesslog/AccessLog$OperationType;->-$$Nest$smvalidateOperationType(I)V

    .line 114
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-interface {p5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 116
    .local v1, "medicalResourceType":I
    invoke-static {v1}, Landroid/health/connect/datatypes/MedicalResource;->validateMedicalResourceType(I)V

    .line 117
    .end local v1    # "medicalResourceType":I
    goto :goto_27

    .line 118
    :cond_3b
    iput-object p1, p0, Landroid/health/connect/accesslog/AccessLog;->mPackageName:Ljava/lang/String;

    .line 119
    invoke-static {p2, p3}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/accesslog/AccessLog;->mAccessTime:Ljava/time/Instant;

    .line 120
    iput p4, p0, Landroid/health/connect/accesslog/AccessLog;->mOperationType:I

    .line 121
    iput-object p5, p0, Landroid/health/connect/accesslog/AccessLog;->mMedicalResourceTypes:Ljava/util/Set;

    .line 122
    iput-boolean p6, p0, Landroid/health/connect/accesslog/AccessLog;->mIsMedicalDataSourceAccessed:Z

    .line 123
    return-void

    .line 109
    :cond_4a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Constructing AccessLog for medical data is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/util/List;JI)V
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "accessTimeInMillis"    # J
    .param p5, "operationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;JI)V"
        }
    .end annotation

    .line 77
    .local p2, "recordTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/health/connect/accesslog/AccessLog;->mRecordTypesList:Ljava/util/List;

    .line 60
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/health/connect/accesslog/AccessLog;->mMedicalResourceTypes:Ljava/util/Set;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/health/connect/accesslog/AccessLog;->mIsMedicalDataSourceAccessed:Z

    .line 78
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iput-object p1, p0, Landroid/health/connect/accesslog/AccessLog;->mPackageName:Ljava/lang/String;

    .line 82
    invoke-static {}, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;->getInstance()Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;

    move-result-object v0

    .line 83
    .local v0, "healthConnectMappings":Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 84
    .local v2, "recordType":I
    iget-object v3, p0, Landroid/health/connect/accesslog/AccessLog;->mRecordTypesList:Ljava/util/List;

    .line 85
    invoke-virtual {v0}, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;->getRecordIdToExternalRecordClassMap()Ljava/util/Map;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 84
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    .end local v2    # "recordType":I
    goto :goto_24

    .line 87
    :cond_48
    invoke-static {p3, p4}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v1

    iput-object v1, p0, Landroid/health/connect/accesslog/AccessLog;->mAccessTime:Ljava/time/Instant;

    .line 88
    iput p5, p0, Landroid/health/connect/accesslog/AccessLog;->mOperationType:I

    .line 89
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 231
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAccessTime()Ljava/time/Instant;
    .registers 2

    .line 174
    iget-object v0, p0, Landroid/health/connect/accesslog/AccessLog;->mAccessTime:Ljava/time/Instant;

    return-object v0
.end method

.method public whitelist getMedicalResourceTypes()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Landroid/health/connect/accesslog/AccessLog;->mMedicalResourceTypes:Ljava/util/Set;

    return-object v0
.end method

.method public whitelist getOperationType()I
    .registers 2

    .line 180
    iget v0, p0, Landroid/health/connect/accesslog/AccessLog;->mOperationType:I

    return v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 2

    .line 168
    iget-object v0, p0, Landroid/health/connect/accesslog/AccessLog;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getRecordTypes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/health/connect/datatypes/Record;",
            ">;>;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Landroid/health/connect/accesslog/AccessLog;->mRecordTypesList:Ljava/util/List;

    return-object v0
.end method

.method public whitelist isMedicalDataSourceAccessed()Z
    .registers 2

    .line 194
    iget-boolean v0, p0, Landroid/health/connect/accesslog/AccessLog;->mIsMedicalDataSourceAccessed:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 8
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 243
    iget-object v0, p0, Landroid/health/connect/accesslog/AccessLog;->mRecordTypesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 244
    .local v0, "recordTypeCount":I
    invoke-static {}, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;->getInstance()Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;

    move-result-object v1

    .line 245
    .local v1, "healthConnectMappings":Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;
    new-array v2, v0, [I

    .line 246
    .local v2, "recordTypes":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d
    if-ge v3, v0, :cond_20

    .line 247
    iget-object v4, p0, Landroid/health/connect/accesslog/AccessLog;->mRecordTypesList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    invoke-virtual {v1, v4}, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;->getRecordType(Ljava/lang/Class;)I

    move-result v4

    aput v4, v2, v3

    .line 246
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 249
    .end local v3    # "i":I
    :cond_20
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 250
    iget-object v3, p0, Landroid/health/connect/accesslog/AccessLog;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 251
    iget-object v3, p0, Landroid/health/connect/accesslog/AccessLog;->mAccessTime:Ljava/time/Instant;

    invoke-virtual {v3}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 252
    iget v3, p0, Landroid/health/connect/accesslog/AccessLog;->mOperationType:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    invoke-static {}, Lcom/android/healthfitness/flags/Flags;->personalHealthRecord()Z

    move-result v3

    if-eqz v3, :cond_57

    .line 254
    iget-object v3, p0, Landroid/health/connect/accesslog/AccessLog;->mMedicalResourceTypes:Ljava/util/Set;

    .line 255
    invoke-interface {v3}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Landroid/health/connect/DeleteMedicalResourcesRequest$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Landroid/health/connect/DeleteMedicalResourcesRequest$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v3

    .line 254
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 256
    iget-boolean v3, p0, Landroid/health/connect/accesslog/AccessLog;->mIsMedicalDataSourceAccessed:Z

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 258
    :cond_57
    return-void
.end method
