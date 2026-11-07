.class public final Landroid/health/connect/internal/datatypes/utils/MedicalResourceTypePermissionMapper;
.super Ljava/lang/Object;
.source "MedicalResourceTypePermissionMapper.java"


# static fields
.field private static final blacklist sMedicalResourceReadPermissionToTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sMedicalResourceTypeToReadPermissionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 44
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/health/connect/internal/datatypes/utils/MedicalResourceTypePermissionMapper;->sMedicalResourceTypeToReadPermissionMap:Ljava/util/Map;

    .line 46
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/health/connect/internal/datatypes/utils/MedicalResourceTypePermissionMapper;->sMedicalResourceReadPermissionToTypeMap:Ljava/util/Map;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getMedicalReadPermission(I)Ljava/lang/String;
    .registers 5
    .param p0, "resourceType"    # I

    .line 106
    invoke-static {}, Landroid/health/connect/internal/datatypes/utils/MedicalResourceTypePermissionMapper;->populateMedicalResourceTypeAndReadPermissionMaps()V

    .line 108
    sget-object v0, Landroid/health/connect/internal/datatypes/utils/MedicalResourceTypePermissionMapper;->sMedicalResourceTypeToReadPermissionMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 109
    .local v0, "medicalReadPermission":Ljava/lang/String;
    if-eqz v0, :cond_12

    .line 110
    return-object v0

    .line 113
    :cond_12
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Medical read permission not found for the Medical Resource Type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist getMedicalResourceType(Ljava/lang/String;)I
    .registers 4
    .param p0, "readPermission"    # Ljava/lang/String;

    .line 125
    invoke-static {}, Landroid/health/connect/internal/datatypes/utils/MedicalResourceTypePermissionMapper;->populateMedicalResourceTypeAndReadPermissionMaps()V

    .line 127
    sget-object v0, Landroid/health/connect/internal/datatypes/utils/MedicalResourceTypePermissionMapper;->sMedicalResourceReadPermissionToTypeMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 128
    sget-object v0, Landroid/health/connect/internal/datatypes/utils/MedicalResourceTypePermissionMapper;->sMedicalResourceReadPermissionToTypeMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 131
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Medical Resource Type not found for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic blacklist lambda$populateMedicalResourceTypeAndReadPermissionMaps$0(Ljava/lang/Integer;Ljava/lang/String;)V
    .registers 3
    .param p0, "key"    # Ljava/lang/Integer;
    .param p1, "value"    # Ljava/lang/String;

    .line 95
    sget-object v0, Landroid/health/connect/internal/datatypes/utils/MedicalResourceTypePermissionMapper;->sMedicalResourceReadPermissionToTypeMap:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    return-void
.end method

.method private static declared-synchronized blacklist populateMedicalResourceTypeAndReadPermissionMaps()V
    .registers 4

    const-class v0, Landroid/health/connect/internal/datatypes/utils/MedicalResourceTypePermissionMapper;

    monitor-enter v0

    .line 52
    :try_start_3
    invoke-static {}, Lcom/android/healthfitness/flags/AconfigFlagHelper;->isPersonalHealthRecordEnabled()Z

    move-result v1

    if-eqz v1, :cond_b4

    .line 57
    sget-object v1, Landroid/health/connect/internal/datatypes/utils/MedicalResourceTypePermissionMapper;->sMedicalResourceTypeToReadPermissionMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_bc

    if-nez v1, :cond_13

    .line 58
    monitor-exit v0

    return-void

    .line 62
    :cond_13
    :try_start_13
    sget-object v1, Landroid/health/connect/internal/datatypes/utils/MedicalResourceTypePermissionMapper;->sMedicalResourceTypeToReadPermissionMap:Ljava/util/Map;

    .line 63
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android.permission.health.READ_MEDICAL_DATA_ALLERGIES_INTOLERANCES"

    .line 62
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v1, Landroid/health/connect/internal/datatypes/utils/MedicalResourceTypePermissionMapper;->sMedicalResourceTypeToReadPermissionMap:Ljava/util/Map;

    .line 66
    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android.permission.health.READ_MEDICAL_DATA_CONDITIONS"

    .line 65
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v1, Landroid/health/connect/internal/datatypes/utils/MedicalResourceTypePermissionMapper;->sMedicalResourceTypeToReadPermissionMap:Ljava/util/Map;

    .line 68
    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android.permission.health.READ_MEDICAL_DATA_LABORATORY_RESULTS"

    .line 67
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v1, Landroid/health/connect/internal/datatypes/utils/MedicalResourceTypePermissionMapper;->sMedicalResourceTypeToReadPermissionMap:Ljava/util/Map;

    .line 71
    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android.permission.health.READ_MEDICAL_DATA_MEDICATIONS"

    .line 70
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v1, Landroid/health/connect/internal/datatypes/utils/MedicalResourceTypePermissionMapper;->sMedicalResourceTypeToReadPermissionMap:Ljava/util/Map;

    .line 73
    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android.permission.health.READ_MEDICAL_DATA_PERSONAL_DETAILS"

    .line 72
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v1, Landroid/health/connect/internal/datatypes/utils/MedicalResourceTypePermissionMapper;->sMedicalResourceTypeToReadPermissionMap:Ljava/util/Map;

    .line 76
    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android.permission.health.READ_MEDICAL_DATA_PRACTITIONER_DETAILS"

    .line 75
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v1, Landroid/health/connect/internal/datatypes/utils/MedicalResourceTypePermissionMapper;->sMedicalResourceTypeToReadPermissionMap:Ljava/util/Map;

    .line 79
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android.permission.health.READ_MEDICAL_DATA_PREGNANCY"

    .line 78
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v1, Landroid/health/connect/internal/datatypes/utils/MedicalResourceTypePermissionMapper;->sMedicalResourceTypeToReadPermissionMap:Ljava/util/Map;

    .line 81
    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android.permission.health.READ_MEDICAL_DATA_PROCEDURES"

    .line 80
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v1, Landroid/health/connect/internal/datatypes/utils/MedicalResourceTypePermissionMapper;->sMedicalResourceTypeToReadPermissionMap:Ljava/util/Map;

    .line 83
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android.permission.health.READ_MEDICAL_DATA_SOCIAL_HISTORY"

    .line 82
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v1, Landroid/health/connect/internal/datatypes/utils/MedicalResourceTypePermissionMapper;->sMedicalResourceTypeToReadPermissionMap:Ljava/util/Map;

    .line 86
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android.permission.health.READ_MEDICAL_DATA_VACCINES"

    .line 85
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v1, Landroid/health/connect/internal/datatypes/utils/MedicalResourceTypePermissionMapper;->sMedicalResourceTypeToReadPermissionMap:Ljava/util/Map;

    .line 88
    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android.permission.health.READ_MEDICAL_DATA_VISITS"

    .line 87
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v1, Landroid/health/connect/internal/datatypes/utils/MedicalResourceTypePermissionMapper;->sMedicalResourceTypeToReadPermissionMap:Ljava/util/Map;

    .line 90
    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android.permission.health.READ_MEDICAL_DATA_VITAL_SIGNS"

    .line 89
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v1, Landroid/health/connect/internal/datatypes/utils/MedicalResourceTypePermissionMapper;->sMedicalResourceTypeToReadPermissionMap:Ljava/util/Map;

    new-instance v2, Landroid/health/connect/internal/datatypes/utils/MedicalResourceTypePermissionMapper$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/health/connect/internal/datatypes/utils/MedicalResourceTypePermissionMapper$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V
    :try_end_b2
    .catchall {:try_start_13 .. :try_end_b2} :catchall_bc

    .line 97
    monitor-exit v0

    return-void

    .line 53
    :cond_b4
    :try_start_b4
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "populateMedicalResourceTypeToPermissionMap is not supported"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 51
    :catchall_bc
    move-exception v1

    monitor-exit v0
    :try_end_be
    .catchall {:try_start_b4 .. :try_end_be} :catchall_bc

    throw v1
.end method
