.class public final Landroid/health/connect/HealthPermissions;
.super Ljava/lang/Object;
.source "HealthPermissions.java"


# static fields
.field public static final whitelist HEALTH_PERMISSION_GROUP:Ljava/lang/String; = "android.permission-group.HEALTH"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MANAGE_HEALTH_DATA_PERMISSION:Ljava/lang/String; = "android.permission.MANAGE_HEALTH_DATA"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MANAGE_HEALTH_PERMISSIONS:Ljava/lang/String; = "android.permission.MANAGE_HEALTH_PERMISSIONS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist READ_ACTIVE_CALORIES_BURNED:Ljava/lang/String; = "android.permission.health.READ_ACTIVE_CALORIES_BURNED"

.field public static final whitelist READ_ACTIVITY_INTENSITY:Ljava/lang/String; = "android.permission.health.READ_ACTIVITY_INTENSITY"

.field public static final whitelist READ_BASAL_BODY_TEMPERATURE:Ljava/lang/String; = "android.permission.health.READ_BASAL_BODY_TEMPERATURE"

.field public static final whitelist READ_BASAL_METABOLIC_RATE:Ljava/lang/String; = "android.permission.health.READ_BASAL_METABOLIC_RATE"

.field public static final whitelist READ_BLOOD_GLUCOSE:Ljava/lang/String; = "android.permission.health.READ_BLOOD_GLUCOSE"

.field public static final whitelist READ_BLOOD_PRESSURE:Ljava/lang/String; = "android.permission.health.READ_BLOOD_PRESSURE"

.field public static final whitelist READ_BODY_FAT:Ljava/lang/String; = "android.permission.health.READ_BODY_FAT"

.field public static final whitelist READ_BODY_TEMPERATURE:Ljava/lang/String; = "android.permission.health.READ_BODY_TEMPERATURE"

.field public static final whitelist READ_BODY_WATER_MASS:Ljava/lang/String; = "android.permission.health.READ_BODY_WATER_MASS"

.field public static final whitelist READ_BONE_MASS:Ljava/lang/String; = "android.permission.health.READ_BONE_MASS"

.field public static final whitelist READ_CERVICAL_MUCUS:Ljava/lang/String; = "android.permission.health.READ_CERVICAL_MUCUS"

.field public static final whitelist READ_DISTANCE:Ljava/lang/String; = "android.permission.health.READ_DISTANCE"

.field public static final whitelist READ_ELEVATION_GAINED:Ljava/lang/String; = "android.permission.health.READ_ELEVATION_GAINED"

.field public static final whitelist READ_EXERCISE:Ljava/lang/String; = "android.permission.health.READ_EXERCISE"

.field public static final blacklist READ_EXERCISE_ROUTE:Ljava/lang/String; = "android.permission.health.READ_EXERCISE_ROUTE"

.field public static final whitelist READ_EXERCISE_ROUTES:Ljava/lang/String; = "android.permission.health.READ_EXERCISE_ROUTES"

.field public static final whitelist READ_FLOORS_CLIMBED:Ljava/lang/String; = "android.permission.health.READ_FLOORS_CLIMBED"

.field public static final whitelist READ_HEALTH_DATA_HISTORY:Ljava/lang/String; = "android.permission.health.READ_HEALTH_DATA_HISTORY"

.field public static final whitelist READ_HEALTH_DATA_IN_BACKGROUND:Ljava/lang/String; = "android.permission.health.READ_HEALTH_DATA_IN_BACKGROUND"

.field public static final whitelist READ_HEART_RATE:Ljava/lang/String; = "android.permission.health.READ_HEART_RATE"

.field public static final whitelist READ_HEART_RATE_VARIABILITY:Ljava/lang/String; = "android.permission.health.READ_HEART_RATE_VARIABILITY"

.field public static final whitelist READ_HEIGHT:Ljava/lang/String; = "android.permission.health.READ_HEIGHT"

.field public static final whitelist READ_HYDRATION:Ljava/lang/String; = "android.permission.health.READ_HYDRATION"

.field public static final whitelist READ_INTERMENSTRUAL_BLEEDING:Ljava/lang/String; = "android.permission.health.READ_INTERMENSTRUAL_BLEEDING"

.field public static final whitelist READ_LEAN_BODY_MASS:Ljava/lang/String; = "android.permission.health.READ_LEAN_BODY_MASS"

.field public static final whitelist READ_MEDICAL_DATA_ALLERGIES_INTOLERANCES:Ljava/lang/String; = "android.permission.health.READ_MEDICAL_DATA_ALLERGIES_INTOLERANCES"

.field public static final whitelist READ_MEDICAL_DATA_CONDITIONS:Ljava/lang/String; = "android.permission.health.READ_MEDICAL_DATA_CONDITIONS"

.field public static final whitelist READ_MEDICAL_DATA_LABORATORY_RESULTS:Ljava/lang/String; = "android.permission.health.READ_MEDICAL_DATA_LABORATORY_RESULTS"

.field public static final whitelist READ_MEDICAL_DATA_MEDICATIONS:Ljava/lang/String; = "android.permission.health.READ_MEDICAL_DATA_MEDICATIONS"

.field public static final whitelist READ_MEDICAL_DATA_PERSONAL_DETAILS:Ljava/lang/String; = "android.permission.health.READ_MEDICAL_DATA_PERSONAL_DETAILS"

.field public static final whitelist READ_MEDICAL_DATA_PRACTITIONER_DETAILS:Ljava/lang/String; = "android.permission.health.READ_MEDICAL_DATA_PRACTITIONER_DETAILS"

.field public static final whitelist READ_MEDICAL_DATA_PREGNANCY:Ljava/lang/String; = "android.permission.health.READ_MEDICAL_DATA_PREGNANCY"

.field public static final whitelist READ_MEDICAL_DATA_PROCEDURES:Ljava/lang/String; = "android.permission.health.READ_MEDICAL_DATA_PROCEDURES"

.field public static final whitelist READ_MEDICAL_DATA_SOCIAL_HISTORY:Ljava/lang/String; = "android.permission.health.READ_MEDICAL_DATA_SOCIAL_HISTORY"

.field public static final whitelist READ_MEDICAL_DATA_VACCINES:Ljava/lang/String; = "android.permission.health.READ_MEDICAL_DATA_VACCINES"

.field public static final whitelist READ_MEDICAL_DATA_VISITS:Ljava/lang/String; = "android.permission.health.READ_MEDICAL_DATA_VISITS"

.field public static final whitelist READ_MEDICAL_DATA_VITAL_SIGNS:Ljava/lang/String; = "android.permission.health.READ_MEDICAL_DATA_VITAL_SIGNS"

.field public static final whitelist READ_MENSTRUATION:Ljava/lang/String; = "android.permission.health.READ_MENSTRUATION"

.field public static final whitelist READ_MINDFULNESS:Ljava/lang/String; = "android.permission.health.READ_MINDFULNESS"

.field public static final whitelist READ_NUTRITION:Ljava/lang/String; = "android.permission.health.READ_NUTRITION"

.field public static final whitelist READ_OVULATION_TEST:Ljava/lang/String; = "android.permission.health.READ_OVULATION_TEST"

.field public static final whitelist READ_OXYGEN_SATURATION:Ljava/lang/String; = "android.permission.health.READ_OXYGEN_SATURATION"

.field public static final whitelist READ_PLANNED_EXERCISE:Ljava/lang/String; = "android.permission.health.READ_PLANNED_EXERCISE"

.field public static final whitelist READ_POWER:Ljava/lang/String; = "android.permission.health.READ_POWER"

.field public static final whitelist READ_RESPIRATORY_RATE:Ljava/lang/String; = "android.permission.health.READ_RESPIRATORY_RATE"

.field public static final whitelist READ_RESTING_HEART_RATE:Ljava/lang/String; = "android.permission.health.READ_RESTING_HEART_RATE"

.field public static final whitelist READ_SEXUAL_ACTIVITY:Ljava/lang/String; = "android.permission.health.READ_SEXUAL_ACTIVITY"

.field public static final whitelist READ_SKIN_TEMPERATURE:Ljava/lang/String; = "android.permission.health.READ_SKIN_TEMPERATURE"

.field public static final whitelist READ_SLEEP:Ljava/lang/String; = "android.permission.health.READ_SLEEP"

.field public static final whitelist READ_SPEED:Ljava/lang/String; = "android.permission.health.READ_SPEED"

.field public static final whitelist READ_STEPS:Ljava/lang/String; = "android.permission.health.READ_STEPS"

.field public static final whitelist READ_TOTAL_CALORIES_BURNED:Ljava/lang/String; = "android.permission.health.READ_TOTAL_CALORIES_BURNED"

.field public static final whitelist READ_VO2_MAX:Ljava/lang/String; = "android.permission.health.READ_VO2_MAX"

.field public static final whitelist READ_WEIGHT:Ljava/lang/String; = "android.permission.health.READ_WEIGHT"

.field public static final whitelist READ_WHEELCHAIR_PUSHES:Ljava/lang/String; = "android.permission.health.READ_WHEELCHAIR_PUSHES"

.field public static final blacklist START_ONBOARDING:Ljava/lang/String; = "android.permission.health.START_ONBOARDING"

.field public static final whitelist WRITE_ACTIVE_CALORIES_BURNED:Ljava/lang/String; = "android.permission.health.WRITE_ACTIVE_CALORIES_BURNED"

.field public static final whitelist WRITE_ACTIVITY_INTENSITY:Ljava/lang/String; = "android.permission.health.WRITE_ACTIVITY_INTENSITY"

.field public static final whitelist WRITE_BASAL_BODY_TEMPERATURE:Ljava/lang/String; = "android.permission.health.WRITE_BASAL_BODY_TEMPERATURE"

.field public static final whitelist WRITE_BASAL_METABOLIC_RATE:Ljava/lang/String; = "android.permission.health.WRITE_BASAL_METABOLIC_RATE"

.field public static final whitelist WRITE_BLOOD_GLUCOSE:Ljava/lang/String; = "android.permission.health.WRITE_BLOOD_GLUCOSE"

.field public static final whitelist WRITE_BLOOD_PRESSURE:Ljava/lang/String; = "android.permission.health.WRITE_BLOOD_PRESSURE"

.field public static final whitelist WRITE_BODY_FAT:Ljava/lang/String; = "android.permission.health.WRITE_BODY_FAT"

.field public static final whitelist WRITE_BODY_TEMPERATURE:Ljava/lang/String; = "android.permission.health.WRITE_BODY_TEMPERATURE"

.field public static final whitelist WRITE_BODY_WATER_MASS:Ljava/lang/String; = "android.permission.health.WRITE_BODY_WATER_MASS"

.field public static final whitelist WRITE_BONE_MASS:Ljava/lang/String; = "android.permission.health.WRITE_BONE_MASS"

.field public static final whitelist WRITE_CERVICAL_MUCUS:Ljava/lang/String; = "android.permission.health.WRITE_CERVICAL_MUCUS"

.field public static final whitelist WRITE_DISTANCE:Ljava/lang/String; = "android.permission.health.WRITE_DISTANCE"

.field public static final whitelist WRITE_ELEVATION_GAINED:Ljava/lang/String; = "android.permission.health.WRITE_ELEVATION_GAINED"

.field public static final whitelist WRITE_EXERCISE:Ljava/lang/String; = "android.permission.health.WRITE_EXERCISE"

.field public static final whitelist WRITE_EXERCISE_ROUTE:Ljava/lang/String; = "android.permission.health.WRITE_EXERCISE_ROUTE"

.field public static final whitelist WRITE_FLOORS_CLIMBED:Ljava/lang/String; = "android.permission.health.WRITE_FLOORS_CLIMBED"

.field public static final whitelist WRITE_HEART_RATE:Ljava/lang/String; = "android.permission.health.WRITE_HEART_RATE"

.field public static final whitelist WRITE_HEART_RATE_VARIABILITY:Ljava/lang/String; = "android.permission.health.WRITE_HEART_RATE_VARIABILITY"

.field public static final whitelist WRITE_HEIGHT:Ljava/lang/String; = "android.permission.health.WRITE_HEIGHT"

.field public static final whitelist WRITE_HYDRATION:Ljava/lang/String; = "android.permission.health.WRITE_HYDRATION"

.field public static final whitelist WRITE_INTERMENSTRUAL_BLEEDING:Ljava/lang/String; = "android.permission.health.WRITE_INTERMENSTRUAL_BLEEDING"

.field public static final whitelist WRITE_LEAN_BODY_MASS:Ljava/lang/String; = "android.permission.health.WRITE_LEAN_BODY_MASS"

.field public static final whitelist WRITE_MEDICAL_DATA:Ljava/lang/String; = "android.permission.health.WRITE_MEDICAL_DATA"

.field public static final whitelist WRITE_MENSTRUATION:Ljava/lang/String; = "android.permission.health.WRITE_MENSTRUATION"

.field public static final whitelist WRITE_MINDFULNESS:Ljava/lang/String; = "android.permission.health.WRITE_MINDFULNESS"

.field public static final whitelist WRITE_NUTRITION:Ljava/lang/String; = "android.permission.health.WRITE_NUTRITION"

.field public static final whitelist WRITE_OVULATION_TEST:Ljava/lang/String; = "android.permission.health.WRITE_OVULATION_TEST"

.field public static final whitelist WRITE_OXYGEN_SATURATION:Ljava/lang/String; = "android.permission.health.WRITE_OXYGEN_SATURATION"

.field public static final whitelist WRITE_PLANNED_EXERCISE:Ljava/lang/String; = "android.permission.health.WRITE_PLANNED_EXERCISE"

.field public static final whitelist WRITE_POWER:Ljava/lang/String; = "android.permission.health.WRITE_POWER"

.field public static final whitelist WRITE_RESPIRATORY_RATE:Ljava/lang/String; = "android.permission.health.WRITE_RESPIRATORY_RATE"

.field public static final whitelist WRITE_RESTING_HEART_RATE:Ljava/lang/String; = "android.permission.health.WRITE_RESTING_HEART_RATE"

.field public static final whitelist WRITE_SEXUAL_ACTIVITY:Ljava/lang/String; = "android.permission.health.WRITE_SEXUAL_ACTIVITY"

.field public static final whitelist WRITE_SKIN_TEMPERATURE:Ljava/lang/String; = "android.permission.health.WRITE_SKIN_TEMPERATURE"

.field public static final whitelist WRITE_SLEEP:Ljava/lang/String; = "android.permission.health.WRITE_SLEEP"

.field public static final whitelist WRITE_SPEED:Ljava/lang/String; = "android.permission.health.WRITE_SPEED"

.field public static final whitelist WRITE_STEPS:Ljava/lang/String; = "android.permission.health.WRITE_STEPS"

.field public static final whitelist WRITE_TOTAL_CALORIES_BURNED:Ljava/lang/String; = "android.permission.health.WRITE_TOTAL_CALORIES_BURNED"

.field public static final whitelist WRITE_VO2_MAX:Ljava/lang/String; = "android.permission.health.WRITE_VO2_MAX"

.field public static final whitelist WRITE_WEIGHT:Ljava/lang/String; = "android.permission.health.WRITE_WEIGHT"

.field public static final whitelist WRITE_WHEELCHAIR_PUSHES:Ljava/lang/String; = "android.permission.health.WRITE_WHEELCHAIR_PUSHES"

.field private static final blacklist sDataCategoryToWritePermissionsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sHealthCategoryToReadPermissionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sHealthCategoryToWritePermissionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sWriteHealthPermissionToHealthDataCategoryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sWritePermissionsSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 39

    .line 922
    new-instance v0, Landroid/util/ArraySet;

    const-string v37, "android.permission.health.WRITE_PLANNED_EXERCISE"

    const-string v38, "android.permission.health.WRITE_MINDFULNESS"

    const-string v1, "android.permission.health.WRITE_ACTIVE_CALORIES_BURNED"

    const-string v2, "android.permission.health.WRITE_DISTANCE"

    const-string v3, "android.permission.health.WRITE_ELEVATION_GAINED"

    const-string v4, "android.permission.health.WRITE_EXERCISE"

    const-string v5, "android.permission.health.WRITE_FLOORS_CLIMBED"

    const-string v6, "android.permission.health.WRITE_STEPS"

    const-string v7, "android.permission.health.WRITE_TOTAL_CALORIES_BURNED"

    const-string v8, "android.permission.health.WRITE_VO2_MAX"

    const-string v9, "android.permission.health.WRITE_WHEELCHAIR_PUSHES"

    const-string v10, "android.permission.health.WRITE_POWER"

    const-string v11, "android.permission.health.WRITE_SPEED"

    const-string v12, "android.permission.health.WRITE_BASAL_METABOLIC_RATE"

    const-string v13, "android.permission.health.WRITE_BODY_FAT"

    const-string v14, "android.permission.health.WRITE_BODY_WATER_MASS"

    const-string v15, "android.permission.health.WRITE_BONE_MASS"

    const-string v16, "android.permission.health.WRITE_HEIGHT"

    const-string v17, "android.permission.health.WRITE_LEAN_BODY_MASS"

    const-string v18, "android.permission.health.WRITE_WEIGHT"

    const-string v19, "android.permission.health.WRITE_CERVICAL_MUCUS"

    const-string v20, "android.permission.health.WRITE_MENSTRUATION"

    const-string v21, "android.permission.health.WRITE_INTERMENSTRUAL_BLEEDING"

    const-string v22, "android.permission.health.WRITE_OVULATION_TEST"

    const-string v23, "android.permission.health.WRITE_SEXUAL_ACTIVITY"

    const-string v24, "android.permission.health.WRITE_HYDRATION"

    const-string v25, "android.permission.health.WRITE_NUTRITION"

    const-string v26, "android.permission.health.WRITE_SLEEP"

    const-string v27, "android.permission.health.WRITE_BASAL_BODY_TEMPERATURE"

    const-string v28, "android.permission.health.WRITE_BLOOD_GLUCOSE"

    const-string v29, "android.permission.health.WRITE_BLOOD_PRESSURE"

    const-string v30, "android.permission.health.WRITE_BODY_TEMPERATURE"

    const-string v31, "android.permission.health.WRITE_HEART_RATE"

    const-string v32, "android.permission.health.WRITE_HEART_RATE_VARIABILITY"

    const-string v33, "android.permission.health.WRITE_OXYGEN_SATURATION"

    const-string v34, "android.permission.health.WRITE_RESPIRATORY_RATE"

    const-string v35, "android.permission.health.WRITE_RESTING_HEART_RATE"

    const-string v36, "android.permission.health.WRITE_SKIN_TEMPERATURE"

    filled-new-array/range {v1 .. v38}, [Ljava/lang/String;

    move-result-object v1

    .line 924
    invoke-static {v1}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/health/connect/HealthPermissions;->sWritePermissionsSet:Ljava/util/Set;

    .line 964
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/health/connect/HealthPermissions;->sWriteHealthPermissionToHealthDataCategoryMap:Ljava/util/Map;

    .line 966
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToReadPermissionMap:Ljava/util/Map;

    .line 967
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToWritePermissionMap:Ljava/util/Map;

    .line 970
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/health/connect/HealthPermissions;->sDataCategoryToWritePermissionsMap:Ljava/util/Map;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 973
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getAllMedicalPermissions()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1060
    invoke-static {}, Lcom/android/healthfitness/flags/AconfigFlagHelper;->isPersonalHealthRecordEnabled()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 1064
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1065
    .local v0, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v1, "android.permission.health.WRITE_MEDICAL_DATA"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1066
    const-string v1, "android.permission.health.READ_MEDICAL_DATA_ALLERGIES_INTOLERANCES"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1067
    const-string v1, "android.permission.health.READ_MEDICAL_DATA_CONDITIONS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1068
    const-string v1, "android.permission.health.READ_MEDICAL_DATA_LABORATORY_RESULTS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1069
    const-string v1, "android.permission.health.READ_MEDICAL_DATA_MEDICATIONS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1070
    const-string v1, "android.permission.health.READ_MEDICAL_DATA_PERSONAL_DETAILS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1071
    const-string v1, "android.permission.health.READ_MEDICAL_DATA_PRACTITIONER_DETAILS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1072
    const-string v1, "android.permission.health.READ_MEDICAL_DATA_PREGNANCY"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1073
    const-string v1, "android.permission.health.READ_MEDICAL_DATA_PROCEDURES"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1074
    const-string v1, "android.permission.health.READ_MEDICAL_DATA_SOCIAL_HISTORY"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1075
    const-string v1, "android.permission.health.READ_MEDICAL_DATA_VACCINES"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1076
    const-string v1, "android.permission.health.READ_MEDICAL_DATA_VISITS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1077
    const-string v1, "android.permission.health.READ_MEDICAL_DATA_VITAL_SIGNS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1078
    return-object v0

    .line 1061
    .end local v0    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4d
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getAllMedicalPermissions is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getDataCategoriesWithWritePermissionsForPackage(Landroid/content/pm/PackageInfo;Landroid/content/Context;)Ljava/util/Set;
    .registers 7
    .param p0, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfo;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1090
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1092
    .local v0, "dataCategoriesWithPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2f

    .line 1093
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v2, v2, v1

    .line 1094
    .local v2, "currPerm":Ljava/lang/String;
    invoke-static {p1, v2}, Landroid/health/connect/HealthConnectManager;->isHealthPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_16

    .line 1095
    goto :goto_2c

    .line 1097
    :cond_16
    iget-object v3, p0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v3, v3, v1

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_1f

    .line 1100
    goto :goto_2c

    .line 1103
    :cond_1f
    invoke-static {v2}, Landroid/health/connect/HealthPermissions;->getHealthDataCategoryForWritePermission(Ljava/lang/String;)I

    move-result v3

    .line 1104
    .local v3, "dataCategory":I
    if-ltz v3, :cond_2c

    .line 1105
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1092
    .end local v2    # "currPerm":Ljava/lang/String;
    .end local v3    # "dataCategory":I
    :cond_2c
    :goto_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1109
    .end local v1    # "i":I
    :cond_2f
    return-object v0
.end method

.method public static blacklist getHealthDataCategoryForWritePermission(Ljava/lang/String;)I
    .registers 3
    .param p0, "permissionName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 996
    sget-object v0, Landroid/health/connect/HealthPermissions;->sWriteHealthPermissionToHealthDataCategoryMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 997
    invoke-static {}, Landroid/health/connect/HealthPermissions;->populateWriteHealthPermissionToHealthDataCategoryMap()V

    .line 1000
    :cond_b
    sget-object v0, Landroid/health/connect/HealthPermissions;->sWriteHealthPermissionToHealthDataCategoryMap:Ljava/util/Map;

    .line 1001
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1000
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static blacklist getHealthReadPermission(I)Ljava/lang/String;
    .registers 3
    .param p0, "permissionCategory"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1027
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToReadPermissionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1028
    invoke-static {}, Landroid/health/connect/HealthPermissions;->populateHealthPermissionToHealthPermissionCategoryMap()V

    .line 1031
    :cond_b
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToReadPermissionMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static blacklist getHealthWritePermission(I)Ljava/lang/String;
    .registers 4
    .param p0, "permissionCategory"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1041
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToWritePermissionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1042
    invoke-static {}, Landroid/health/connect/HealthPermissions;->populateHealthPermissionToHealthPermissionCategoryMap()V

    .line 1045
    :cond_b
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToWritePermissionMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1046
    .local v0, "healthWritePermission":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Health write permission not found for PermissionCategory : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1051
    return-object v0
.end method

.method public static blacklist getPackageHasWriteHealthPermissionsForCategory(Landroid/content/pm/PackageInfo;ILandroid/content/Context;)Z
    .registers 5
    .param p0, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p1, "dataCategory"    # I
    .param p2, "context"    # Landroid/content/Context;

    .line 1121
    invoke-static {p0, p2}, Landroid/health/connect/HealthPermissions;->getDataCategoriesWithWritePermissionsForPackage(Landroid/content/pm/PackageInfo;Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 1122
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 1121
    return v0
.end method

.method public static blacklist getWriteHealthPermissionsFor(I)[Ljava/lang/String;
    .registers 4
    .param p0, "dataCategory"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1012
    sget-object v0, Landroid/health/connect/HealthPermissions;->sDataCategoryToWritePermissionsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1013
    invoke-static {}, Landroid/health/connect/HealthPermissions;->populateWriteHealthPermissionToHealthDataCategoryMap()V

    .line 1016
    :cond_b
    sget-object v0, Landroid/health/connect/HealthPermissions;->sDataCategoryToWritePermissionsMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method static blacklist isPermissionEnabled(Ljava/lang/String;)Z
    .registers 3
    .param p0, "permission"    # Ljava/lang/String;

    .line 1134
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_28

    :cond_8
    goto :goto_1d

    :sswitch_9
    const-string v0, "android.permission.health.READ_ACTIVITY_INTENSITY"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_1e

    :sswitch_13
    const-string v0, "android.permission.health.WRITE_ACTIVITY_INTENSITY"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_1e

    :goto_1d
    const/4 v0, -0x1

    :goto_1e
    packed-switch v0, :pswitch_data_32

    .line 1136
    goto :goto_26

    .line 1135
    :pswitch_22
    invoke-static {}, Lcom/android/healthfitness/flags/Flags;->activityIntensity()Z

    move-result v1

    .line 1134
    :goto_26
    return v1

    nop

    :sswitch_data_28
    .sparse-switch
        0x1ee80f75 -> :sswitch_13
        0x65ef8dda -> :sswitch_9
    .end sparse-switch

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_22
        :pswitch_22
    .end packed-switch
.end method

.method public static blacklist isValidHealthPermission(Landroid/content/pm/PermissionInfo;)Z
    .registers 3
    .param p0, "permissionInfo"    # Landroid/content/pm/PermissionInfo;

    .line 1127
    const-string v0, "android.permission-group.HEALTH"

    iget-object v1, p0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 1128
    invoke-static {v0}, Landroid/health/connect/HealthPermissions;->isPermissionEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 1127
    :goto_15
    return v0
.end method

.method public static blacklist isWritePermission(Ljava/lang/String;)Z
    .registers 2
    .param p0, "permissionName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 982
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    sget-object v0, Landroid/health/connect/HealthPermissions;->sWritePermissionsSet:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static declared-synchronized blacklist populateHealthPermissionToHealthPermissionCategoryMap()V
    .registers 26

    const-class v1, Landroid/health/connect/HealthPermissions;

    monitor-enter v1

    .line 1141
    :try_start_3
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToWritePermissionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_3cc

    if-nez v0, :cond_d

    .line 1142
    monitor-exit v1

    return-void

    .line 1146
    :cond_d
    :try_start_d
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToWritePermissionMap:Ljava/util/Map;

    .line 1147
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "android.permission.health.WRITE_ACTIVE_CALORIES_BURNED"

    .line 1146
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1148
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToWritePermissionMap:Ljava/util/Map;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "android.permission.health.WRITE_DISTANCE"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1149
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToWritePermissionMap:Ljava/util/Map;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "android.permission.health.WRITE_ELEVATION_GAINED"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1150
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToWritePermissionMap:Ljava/util/Map;

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "android.permission.health.WRITE_EXERCISE"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1151
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToWritePermissionMap:Ljava/util/Map;

    const/4 v6, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "android.permission.health.WRITE_FLOORS_CLIMBED"

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1152
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToWritePermissionMap:Ljava/util/Map;

    const/4 v7, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "android.permission.health.WRITE_STEPS"

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1153
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToWritePermissionMap:Ljava/util/Map;

    const/16 v8, 0x23

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "android.permission.health.WRITE_TOTAL_CALORIES_BURNED"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1154
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToWritePermissionMap:Ljava/util/Map;

    const/4 v9, 0x7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "android.permission.health.WRITE_VO2_MAX"

    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1155
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToWritePermissionMap:Ljava/util/Map;

    const/16 v10, 0x8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "android.permission.health.WRITE_WHEELCHAIR_PUSHES"

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1156
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToWritePermissionMap:Ljava/util/Map;

    const/16 v11, 0x24

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "android.permission.health.WRITE_POWER"

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1157
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToWritePermissionMap:Ljava/util/Map;

    const/16 v12, 0x25

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "android.permission.health.WRITE_SPEED"

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1158
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToWritePermissionMap:Ljava/util/Map;

    const/16 v13, 0x9

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "android.permission.health.WRITE_BASAL_METABOLIC_RATE"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1159
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToWritePermissionMap:Ljava/util/Map;

    const/16 v14, 0xa

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move/from16 v16, v2

    const-string v2, "android.permission.health.WRITE_BODY_FAT"

    invoke-interface {v0, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1160
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToWritePermissionMap:Ljava/util/Map;

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move/from16 v17, v2

    const-string v2, "android.permission.health.WRITE_BODY_WATER_MASS"

    invoke-interface {v0, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1161
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToWritePermissionMap:Ljava/util/Map;

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move/from16 v18, v2

    const-string v2, "android.permission.health.WRITE_BONE_MASS"

    invoke-interface {v0, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1162
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToWritePermissionMap:Ljava/util/Map;

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move/from16 v19, v2

    const-string v2, "android.permission.health.WRITE_HEIGHT"

    invoke-interface {v0, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1163
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToWritePermissionMap:Ljava/util/Map;

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move/from16 v20, v2

    const-string v2, "android.permission.health.WRITE_LEAN_BODY_MASS"

    invoke-interface {v0, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1164
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToWritePermissionMap:Ljava/util/Map;

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move/from16 v21, v2

    const-string v2, "android.permission.health.WRITE_WEIGHT"

    invoke-interface {v0, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1165
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToWritePermissionMap:Ljava/util/Map;

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move/from16 v22, v2

    const-string v2, "android.permission.health.WRITE_CERVICAL_MUCUS"

    invoke-interface {v0, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1166
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToWritePermissionMap:Ljava/util/Map;

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move/from16 v23, v2

    const-string v2, "android.permission.health.WRITE_MENSTRUATION"

    invoke-interface {v0, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1167
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToWritePermissionMap:Ljava/util/Map;

    .line 1168
    const/16 v2, 0x26

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move/from16 v24, v2

    const-string v2, "android.permission.health.WRITE_INTERMENSTRUAL_BLEEDING"

    .line 1167
    invoke-interface {v0, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1169
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToWritePermissionMap:Ljava/util/Map;

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move/from16 v25, v2

    const-string v2, "android.permission.health.WRITE_OVULATION_TEST"

    invoke-interface {v0, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1170
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToWritePermissionMap:Ljava/util/Map;

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v15, "android.permission.health.WRITE_SEXUAL_ACTIVITY"

    invoke-interface {v0, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1171
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToWritePermissionMap:Ljava/util/Map;

    const/16 v2, 0x17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v15, "android.permission.health.WRITE_HYDRATION"

    invoke-interface {v0, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1172
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToWritePermissionMap:Ljava/util/Map;

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v15, "android.permission.health.WRITE_NUTRITION"

    invoke-interface {v0, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1173
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToWritePermissionMap:Ljava/util/Map;

    const/16 v2, 0x19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v15, "android.permission.health.WRITE_SLEEP"

    invoke-interface {v0, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1174
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToWritePermissionMap:Ljava/util/Map;

    .line 1175
    const/16 v2, 0x21

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v15, "android.permission.health.WRITE_BASAL_BODY_TEMPERATURE"

    .line 1174
    invoke-interface {v0, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1176
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToWritePermissionMap:Ljava/util/Map;

    const/16 v2, 0x1a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v15, "android.permission.health.WRITE_BLOOD_GLUCOSE"

    invoke-interface {v0, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1177
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToWritePermissionMap:Ljava/util/Map;

    const/16 v2, 0x1b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v15, "android.permission.health.WRITE_BLOOD_PRESSURE"

    invoke-interface {v0, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1178
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToWritePermissionMap:Ljava/util/Map;

    const/16 v2, 0x1c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v15, "android.permission.health.WRITE_BODY_TEMPERATURE"

    invoke-interface {v0, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1179
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToWritePermissionMap:Ljava/util/Map;

    const/16 v2, 0x1d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v15, "android.permission.health.WRITE_HEART_RATE"

    invoke-interface {v0, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1180
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToWritePermissionMap:Ljava/util/Map;

    .line 1181
    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v15, "android.permission.health.WRITE_HEART_RATE_VARIABILITY"

    .line 1180
    invoke-interface {v0, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1182
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToWritePermissionMap:Ljava/util/Map;

    const/16 v2, 0x1f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v15, "android.permission.health.WRITE_OXYGEN_SATURATION"

    invoke-interface {v0, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1183
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToWritePermissionMap:Ljava/util/Map;

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v15, "android.permission.health.WRITE_RESPIRATORY_RATE"

    invoke-interface {v0, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1184
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToWritePermissionMap:Ljava/util/Map;

    const/16 v2, 0x22

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v15, "android.permission.health.WRITE_RESTING_HEART_RATE"

    invoke-interface {v0, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1185
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToWritePermissionMap:Ljava/util/Map;

    const/16 v2, 0x27

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v15, "android.permission.health.WRITE_SKIN_TEMPERATURE"

    invoke-interface {v0, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1186
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToWritePermissionMap:Ljava/util/Map;

    const/16 v2, 0x28

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v15, "android.permission.health.WRITE_PLANNED_EXERCISE"

    invoke-interface {v0, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1187
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToWritePermissionMap:Ljava/util/Map;

    const/16 v2, 0x29

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v15, "android.permission.health.WRITE_MINDFULNESS"

    invoke-interface {v0, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1190
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToReadPermissionMap:Ljava/util/Map;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v15, "android.permission.health.READ_ACTIVE_CALORIES_BURNED"

    invoke-interface {v0, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1191
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToReadPermissionMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android.permission.health.READ_DISTANCE"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1192
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToReadPermissionMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android.permission.health.READ_ELEVATION_GAINED"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1193
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToReadPermissionMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android.permission.health.READ_EXERCISE"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1194
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToReadPermissionMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android.permission.health.READ_FLOORS_CLIMBED"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1195
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToReadPermissionMap:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android.permission.health.READ_STEPS"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1196
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToReadPermissionMap:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android.permission.health.READ_TOTAL_CALORIES_BURNED"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1197
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToReadPermissionMap:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android.permission.health.READ_VO2_MAX"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1198
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToReadPermissionMap:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android.permission.health.READ_WHEELCHAIR_PUSHES"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1199
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToReadPermissionMap:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android.permission.health.READ_POWER"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1200
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToReadPermissionMap:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android.permission.health.READ_SPEED"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1201
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToReadPermissionMap:Ljava/util/Map;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android.permission.health.READ_BASAL_METABOLIC_RATE"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1202
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToReadPermissionMap:Ljava/util/Map;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android.permission.health.READ_BODY_FAT"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1203
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToReadPermissionMap:Ljava/util/Map;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android.permission.health.READ_BODY_WATER_MASS"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1204
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToReadPermissionMap:Ljava/util/Map;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android.permission.health.READ_BONE_MASS"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1205
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToReadPermissionMap:Ljava/util/Map;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android.permission.health.READ_HEIGHT"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1206
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToReadPermissionMap:Ljava/util/Map;

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android.permission.health.READ_LEAN_BODY_MASS"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1207
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToReadPermissionMap:Ljava/util/Map;

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android.permission.health.READ_WEIGHT"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1208
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToReadPermissionMap:Ljava/util/Map;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android.permission.health.READ_CERVICAL_MUCUS"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1209
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToReadPermissionMap:Ljava/util/Map;

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android.permission.health.READ_MENSTRUATION"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1210
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToReadPermissionMap:Ljava/util/Map;

    .line 1211
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android.permission.health.READ_INTERMENSTRUAL_BLEEDING"

    .line 1210
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1212
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToReadPermissionMap:Ljava/util/Map;

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android.permission.health.READ_OVULATION_TEST"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1213
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToReadPermissionMap:Ljava/util/Map;

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android.permission.health.READ_SEXUAL_ACTIVITY"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1214
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToReadPermissionMap:Ljava/util/Map;

    const/16 v2, 0x17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android.permission.health.READ_HYDRATION"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1215
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToReadPermissionMap:Ljava/util/Map;

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android.permission.health.READ_NUTRITION"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1216
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToReadPermissionMap:Ljava/util/Map;

    const/16 v2, 0x19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android.permission.health.READ_SLEEP"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1217
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToReadPermissionMap:Ljava/util/Map;

    const/16 v2, 0x21

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android.permission.health.READ_BASAL_BODY_TEMPERATURE"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1218
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToReadPermissionMap:Ljava/util/Map;

    const/16 v2, 0x1a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android.permission.health.READ_BLOOD_GLUCOSE"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1219
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToReadPermissionMap:Ljava/util/Map;

    const/16 v2, 0x1b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android.permission.health.READ_BLOOD_PRESSURE"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1220
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToReadPermissionMap:Ljava/util/Map;

    const/16 v2, 0x1c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android.permission.health.READ_BODY_TEMPERATURE"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1221
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToReadPermissionMap:Ljava/util/Map;

    const/16 v2, 0x1d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android.permission.health.READ_HEART_RATE"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1222
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToReadPermissionMap:Ljava/util/Map;

    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android.permission.health.READ_HEART_RATE_VARIABILITY"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1223
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToReadPermissionMap:Ljava/util/Map;

    const/16 v2, 0x1f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android.permission.health.READ_OXYGEN_SATURATION"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1224
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToReadPermissionMap:Ljava/util/Map;

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android.permission.health.READ_RESPIRATORY_RATE"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1225
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToReadPermissionMap:Ljava/util/Map;

    const/16 v2, 0x22

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android.permission.health.READ_RESTING_HEART_RATE"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1226
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToReadPermissionMap:Ljava/util/Map;

    const/16 v2, 0x27

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android.permission.health.READ_SKIN_TEMPERATURE"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1227
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToReadPermissionMap:Ljava/util/Map;

    const/16 v2, 0x28

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android.permission.health.READ_PLANNED_EXERCISE"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1228
    sget-object v0, Landroid/health/connect/HealthPermissions;->sHealthCategoryToReadPermissionMap:Ljava/util/Map;

    const/16 v2, 0x29

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android.permission.health.READ_MINDFULNESS"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3ca
    .catchall {:try_start_d .. :try_end_3ca} :catchall_3cc

    .line 1229
    monitor-exit v1

    return-void

    .line 1140
    :catchall_3cc
    move-exception v0

    :try_start_3cd
    monitor-exit v1
    :try_end_3ce
    .catchall {:try_start_3cd .. :try_end_3ce} :catchall_3cc

    throw v0
.end method

.method private static declared-synchronized blacklist populateWriteHealthPermissionToHealthDataCategoryMap()V
    .registers 22

    const-class v1, Landroid/health/connect/HealthPermissions;

    monitor-enter v1

    .line 1232
    :try_start_3
    sget-object v0, Landroid/health/connect/HealthPermissions;->sWriteHealthPermissionToHealthDataCategoryMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_265

    if-nez v0, :cond_d

    .line 1233
    monitor-exit v1

    return-void

    .line 1237
    :cond_d
    :try_start_d
    sget-object v0, Landroid/health/connect/HealthPermissions;->sWriteHealthPermissionToHealthDataCategoryMap:Ljava/util/Map;

    const-string v2, "android.permission.health.WRITE_ACTIVE_CALORIES_BURNED"

    .line 1238
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1237
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1239
    sget-object v0, Landroid/health/connect/HealthPermissions;->sWriteHealthPermissionToHealthDataCategoryMap:Ljava/util/Map;

    const-string v2, "android.permission.health.WRITE_DISTANCE"

    .line 1240
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1239
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1241
    sget-object v0, Landroid/health/connect/HealthPermissions;->sWriteHealthPermissionToHealthDataCategoryMap:Ljava/util/Map;

    const-string v2, "android.permission.health.WRITE_ELEVATION_GAINED"

    .line 1242
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1241
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1243
    sget-object v0, Landroid/health/connect/HealthPermissions;->sWriteHealthPermissionToHealthDataCategoryMap:Ljava/util/Map;

    const-string v2, "android.permission.health.WRITE_EXERCISE"

    .line 1244
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1243
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1245
    sget-object v0, Landroid/health/connect/HealthPermissions;->sWriteHealthPermissionToHealthDataCategoryMap:Ljava/util/Map;

    const-string v2, "android.permission.health.WRITE_PLANNED_EXERCISE"

    .line 1246
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1245
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1247
    sget-object v0, Landroid/health/connect/HealthPermissions;->sWriteHealthPermissionToHealthDataCategoryMap:Ljava/util/Map;

    const-string v2, "android.permission.health.WRITE_FLOORS_CLIMBED"

    .line 1248
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1247
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1249
    sget-object v0, Landroid/health/connect/HealthPermissions;->sWriteHealthPermissionToHealthDataCategoryMap:Ljava/util/Map;

    const-string v2, "android.permission.health.WRITE_STEPS"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1250
    sget-object v0, Landroid/health/connect/HealthPermissions;->sWriteHealthPermissionToHealthDataCategoryMap:Ljava/util/Map;

    const-string v2, "android.permission.health.WRITE_TOTAL_CALORIES_BURNED"

    .line 1251
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1250
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1252
    sget-object v0, Landroid/health/connect/HealthPermissions;->sWriteHealthPermissionToHealthDataCategoryMap:Ljava/util/Map;

    const-string v2, "android.permission.health.WRITE_VO2_MAX"

    .line 1253
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1252
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1254
    sget-object v0, Landroid/health/connect/HealthPermissions;->sWriteHealthPermissionToHealthDataCategoryMap:Ljava/util/Map;

    const-string v2, "android.permission.health.WRITE_WHEELCHAIR_PUSHES"

    .line 1255
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1254
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1256
    sget-object v0, Landroid/health/connect/HealthPermissions;->sWriteHealthPermissionToHealthDataCategoryMap:Ljava/util/Map;

    const-string v2, "android.permission.health.WRITE_POWER"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1257
    sget-object v0, Landroid/health/connect/HealthPermissions;->sWriteHealthPermissionToHealthDataCategoryMap:Ljava/util/Map;

    const-string v2, "android.permission.health.WRITE_SPEED"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1259
    sget-object v0, Landroid/health/connect/HealthPermissions;->sWriteHealthPermissionToHealthDataCategoryMap:Ljava/util/Map;

    const-string v2, "android.permission.health.WRITE_BASAL_METABOLIC_RATE"

    .line 1260
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1259
    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1261
    sget-object v0, Landroid/health/connect/HealthPermissions;->sWriteHealthPermissionToHealthDataCategoryMap:Ljava/util/Map;

    const-string v2, "android.permission.health.WRITE_BODY_FAT"

    .line 1262
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1261
    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1263
    sget-object v0, Landroid/health/connect/HealthPermissions;->sWriteHealthPermissionToHealthDataCategoryMap:Ljava/util/Map;

    const-string v2, "android.permission.health.WRITE_BODY_WATER_MASS"

    .line 1264
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1263
    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1265
    sget-object v0, Landroid/health/connect/HealthPermissions;->sWriteHealthPermissionToHealthDataCategoryMap:Ljava/util/Map;

    const-string v2, "android.permission.health.WRITE_BONE_MASS"

    .line 1266
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1265
    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1267
    sget-object v0, Landroid/health/connect/HealthPermissions;->sWriteHealthPermissionToHealthDataCategoryMap:Ljava/util/Map;

    const-string v2, "android.permission.health.WRITE_HEIGHT"

    .line 1268
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1267
    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1269
    sget-object v0, Landroid/health/connect/HealthPermissions;->sWriteHealthPermissionToHealthDataCategoryMap:Ljava/util/Map;

    const-string v2, "android.permission.health.WRITE_LEAN_BODY_MASS"

    .line 1270
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1269
    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1271
    sget-object v0, Landroid/health/connect/HealthPermissions;->sWriteHealthPermissionToHealthDataCategoryMap:Ljava/util/Map;

    const-string v2, "android.permission.health.WRITE_WEIGHT"

    .line 1272
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1271
    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1274
    sget-object v0, Landroid/health/connect/HealthPermissions;->sWriteHealthPermissionToHealthDataCategoryMap:Ljava/util/Map;

    const-string v2, "android.permission.health.WRITE_CERVICAL_MUCUS"

    .line 1275
    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1274
    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1276
    sget-object v0, Landroid/health/connect/HealthPermissions;->sWriteHealthPermissionToHealthDataCategoryMap:Ljava/util/Map;

    const-string v2, "android.permission.health.WRITE_MENSTRUATION"

    .line 1277
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1276
    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1278
    sget-object v0, Landroid/health/connect/HealthPermissions;->sWriteHealthPermissionToHealthDataCategoryMap:Ljava/util/Map;

    const-string v2, "android.permission.health.WRITE_OVULATION_TEST"

    .line 1279
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1278
    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1280
    sget-object v0, Landroid/health/connect/HealthPermissions;->sWriteHealthPermissionToHealthDataCategoryMap:Ljava/util/Map;

    const-string v2, "android.permission.health.WRITE_SEXUAL_ACTIVITY"

    .line 1281
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1280
    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1282
    sget-object v0, Landroid/health/connect/HealthPermissions;->sWriteHealthPermissionToHealthDataCategoryMap:Ljava/util/Map;

    const-string v2, "android.permission.health.WRITE_INTERMENSTRUAL_BLEEDING"

    .line 1283
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1282
    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1285
    sget-object v0, Landroid/health/connect/HealthPermissions;->sWriteHealthPermissionToHealthDataCategoryMap:Ljava/util/Map;

    const-string v2, "android.permission.health.WRITE_HYDRATION"

    .line 1286
    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 1285
    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1287
    sget-object v0, Landroid/health/connect/HealthPermissions;->sWriteHealthPermissionToHealthDataCategoryMap:Ljava/util/Map;

    const-string v2, "android.permission.health.WRITE_NUTRITION"

    .line 1288
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 1287
    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1289
    sget-object v0, Landroid/health/connect/HealthPermissions;->sWriteHealthPermissionToHealthDataCategoryMap:Ljava/util/Map;

    const-string v2, "android.permission.health.WRITE_SLEEP"

    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1291
    sget-object v0, Landroid/health/connect/HealthPermissions;->sWriteHealthPermissionToHealthDataCategoryMap:Ljava/util/Map;

    const-string v2, "android.permission.health.WRITE_BASAL_BODY_TEMPERATURE"

    .line 1292
    const/4 v8, 0x6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1291
    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1293
    sget-object v0, Landroid/health/connect/HealthPermissions;->sWriteHealthPermissionToHealthDataCategoryMap:Ljava/util/Map;

    const-string v2, "android.permission.health.WRITE_SKIN_TEMPERATURE"

    .line 1294
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1293
    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1295
    sget-object v0, Landroid/health/connect/HealthPermissions;->sWriteHealthPermissionToHealthDataCategoryMap:Ljava/util/Map;

    const-string v2, "android.permission.health.WRITE_BLOOD_GLUCOSE"

    .line 1296
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1295
    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1297
    sget-object v0, Landroid/health/connect/HealthPermissions;->sWriteHealthPermissionToHealthDataCategoryMap:Ljava/util/Map;

    const-string v2, "android.permission.health.WRITE_BLOOD_PRESSURE"

    .line 1298
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1297
    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1299
    sget-object v0, Landroid/health/connect/HealthPermissions;->sWriteHealthPermissionToHealthDataCategoryMap:Ljava/util/Map;

    const-string v2, "android.permission.health.WRITE_BODY_TEMPERATURE"

    .line 1300
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1299
    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1301
    sget-object v0, Landroid/health/connect/HealthPermissions;->sWriteHealthPermissionToHealthDataCategoryMap:Ljava/util/Map;

    const-string v2, "android.permission.health.WRITE_HEART_RATE"

    .line 1302
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1301
    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1303
    sget-object v0, Landroid/health/connect/HealthPermissions;->sWriteHealthPermissionToHealthDataCategoryMap:Ljava/util/Map;

    const-string v2, "android.permission.health.WRITE_HEART_RATE_VARIABILITY"

    .line 1304
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1303
    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1305
    sget-object v0, Landroid/health/connect/HealthPermissions;->sWriteHealthPermissionToHealthDataCategoryMap:Ljava/util/Map;

    const-string v2, "android.permission.health.WRITE_OXYGEN_SATURATION"

    .line 1306
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1305
    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1307
    sget-object v0, Landroid/health/connect/HealthPermissions;->sWriteHealthPermissionToHealthDataCategoryMap:Ljava/util/Map;

    const-string v2, "android.permission.health.WRITE_RESPIRATORY_RATE"

    .line 1308
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1307
    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1309
    sget-object v0, Landroid/health/connect/HealthPermissions;->sWriteHealthPermissionToHealthDataCategoryMap:Ljava/util/Map;

    const-string v2, "android.permission.health.WRITE_RESTING_HEART_RATE"

    .line 1310
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1309
    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1312
    sget-object v0, Landroid/health/connect/HealthPermissions;->sWriteHealthPermissionToHealthDataCategoryMap:Ljava/util/Map;

    const-string v2, "android.permission.health.WRITE_MINDFULNESS"

    .line 1313
    const/4 v9, 0x7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 1312
    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1315
    sget-object v0, Landroid/health/connect/HealthPermissions;->sDataCategoryToWritePermissionsMap:Ljava/util/Map;

    .line 1316
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v10, "android.permission.health.WRITE_ACTIVE_CALORIES_BURNED"

    const-string v11, "android.permission.health.WRITE_DISTANCE"

    const-string v12, "android.permission.health.WRITE_ELEVATION_GAINED"

    const-string v13, "android.permission.health.WRITE_EXERCISE"

    const-string v14, "android.permission.health.WRITE_PLANNED_EXERCISE"

    const-string v15, "android.permission.health.WRITE_FLOORS_CLIMBED"

    const-string v16, "android.permission.health.WRITE_STEPS"

    const-string v17, "android.permission.health.WRITE_TOTAL_CALORIES_BURNED"

    const-string v18, "android.permission.health.WRITE_VO2_MAX"

    const-string v19, "android.permission.health.WRITE_WHEELCHAIR_PUSHES"

    const-string v20, "android.permission.health.WRITE_POWER"

    const-string v21, "android.permission.health.WRITE_SPEED"

    filled-new-array/range {v10 .. v21}, [Ljava/lang/String;

    move-result-object v3

    .line 1315
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1332
    sget-object v0, Landroid/health/connect/HealthPermissions;->sDataCategoryToWritePermissionsMap:Ljava/util/Map;

    .line 1333
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v10, "android.permission.health.WRITE_BASAL_METABOLIC_RATE"

    const-string v11, "android.permission.health.WRITE_BODY_FAT"

    const-string v12, "android.permission.health.WRITE_BODY_WATER_MASS"

    const-string v13, "android.permission.health.WRITE_BONE_MASS"

    const-string v14, "android.permission.health.WRITE_HEIGHT"

    const-string v15, "android.permission.health.WRITE_LEAN_BODY_MASS"

    const-string v16, "android.permission.health.WRITE_WEIGHT"

    filled-new-array/range {v10 .. v16}, [Ljava/lang/String;

    move-result-object v3

    .line 1332
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1344
    sget-object v0, Landroid/health/connect/HealthPermissions;->sDataCategoryToWritePermissionsMap:Ljava/util/Map;

    .line 1345
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android.permission.health.WRITE_CERVICAL_MUCUS"

    const-string v4, "android.permission.health.WRITE_MENSTRUATION"

    const-string v5, "android.permission.health.WRITE_OVULATION_TEST"

    const-string v10, "android.permission.health.WRITE_SEXUAL_ACTIVITY"

    const-string v11, "android.permission.health.WRITE_INTERMENSTRUAL_BLEEDING"

    filled-new-array {v3, v4, v5, v10, v11}, [Ljava/lang/String;

    move-result-object v3

    .line 1344
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1354
    sget-object v0, Landroid/health/connect/HealthPermissions;->sDataCategoryToWritePermissionsMap:Ljava/util/Map;

    .line 1355
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android.permission.health.WRITE_HYDRATION"

    const-string v4, "android.permission.health.WRITE_NUTRITION"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    .line 1354
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1357
    sget-object v0, Landroid/health/connect/HealthPermissions;->sDataCategoryToWritePermissionsMap:Ljava/util/Map;

    .line 1358
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android.permission.health.WRITE_SLEEP"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 1357
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1360
    sget-object v0, Landroid/health/connect/HealthPermissions;->sDataCategoryToWritePermissionsMap:Ljava/util/Map;

    .line 1361
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v10, "android.permission.health.WRITE_BASAL_BODY_TEMPERATURE"

    const-string v11, "android.permission.health.WRITE_BLOOD_GLUCOSE"

    const-string v12, "android.permission.health.WRITE_BLOOD_PRESSURE"

    const-string v13, "android.permission.health.WRITE_BODY_TEMPERATURE"

    const-string v14, "android.permission.health.WRITE_HEART_RATE"

    const-string v15, "android.permission.health.WRITE_HEART_RATE_VARIABILITY"

    const-string v16, "android.permission.health.WRITE_OXYGEN_SATURATION"

    const-string v17, "android.permission.health.WRITE_RESPIRATORY_RATE"

    const-string v18, "android.permission.health.WRITE_RESTING_HEART_RATE"

    const-string v19, "android.permission.health.WRITE_SKIN_TEMPERATURE"

    filled-new-array/range {v10 .. v19}, [Ljava/lang/String;

    move-result-object v3

    .line 1360
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1375
    invoke-static {}, Lcom/android/healthfitness/flags/Flags;->mindfulness()Z

    move-result v0

    if-eqz v0, :cond_263

    .line 1376
    sget-object v0, Landroid/health/connect/HealthPermissions;->sDataCategoryToWritePermissionsMap:Ljava/util/Map;

    .line 1377
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android.permission.health.WRITE_MINDFULNESS"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 1376
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_263
    .catchall {:try_start_d .. :try_end_263} :catchall_265

    .line 1379
    :cond_263
    monitor-exit v1

    return-void

    .line 1231
    :catchall_265
    move-exception v0

    :try_start_266
    monitor-exit v1
    :try_end_267
    .catchall {:try_start_266 .. :try_end_267} :catchall_265

    throw v0
.end method
