.class public final Landroid/health/connect/internal/datatypes/utils/FhirResourceTypeStringToIntMapper;
.super Ljava/lang/Object;
.source "FhirResourceTypeStringToIntMapper.java"


# static fields
.field private static final blacklist FHIR_RESOURCE_TYPE_ALLERGY_INTOLERANCE_STR:Ljava/lang/String; = "ALLERGYINTOLERANCE"

.field private static final blacklist FHIR_RESOURCE_TYPE_CONDITION_STR:Ljava/lang/String; = "CONDITION"

.field private static final blacklist FHIR_RESOURCE_TYPE_ENCOUNTER_STR:Ljava/lang/String; = "ENCOUNTER"

.field private static final blacklist FHIR_RESOURCE_TYPE_IMMUNIZATION_STR:Ljava/lang/String; = "IMMUNIZATION"

.field private static final blacklist FHIR_RESOURCE_TYPE_LOCATION_STR:Ljava/lang/String; = "LOCATION"

.field private static final blacklist FHIR_RESOURCE_TYPE_MEDICATION_REQUEST_STR:Ljava/lang/String; = "MEDICATIONREQUEST"

.field private static final blacklist FHIR_RESOURCE_TYPE_MEDICATION_STATEMENT_STR:Ljava/lang/String; = "MEDICATIONSTATEMENT"

.field private static final blacklist FHIR_RESOURCE_TYPE_MEDICATION_STR:Ljava/lang/String; = "MEDICATION"

.field private static final blacklist FHIR_RESOURCE_TYPE_OBSERVATION_STR:Ljava/lang/String; = "OBSERVATION"

.field private static final blacklist FHIR_RESOURCE_TYPE_ORGANIZATION_STR:Ljava/lang/String; = "ORGANIZATION"

.field private static final blacklist FHIR_RESOURCE_TYPE_PATIENT_STR:Ljava/lang/String; = "PATIENT"

.field private static final blacklist FHIR_RESOURCE_TYPE_PRACTITIONER_ROLE_STR:Ljava/lang/String; = "PRACTITIONERROLE"

.field private static final blacklist FHIR_RESOURCE_TYPE_PRACTITIONER_STR:Ljava/lang/String; = "PRACTITIONER"

.field private static final blacklist FHIR_RESOURCE_TYPE_PROCEDURE_STR:Ljava/lang/String; = "PROCEDURE"

.field private static final blacklist sFhirResourceTypeStringToIntMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/health/connect/internal/datatypes/utils/FhirResourceTypeStringToIntMapper;->sFhirResourceTypeStringToIntMap:Ljava/util/Map;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getFhirResourceTypeInt(Ljava/lang/String;)I
    .registers 5
    .param p0, "fhirResourceType"    # Ljava/lang/String;

    .line 55
    invoke-static {}, Lcom/android/healthfitness/flags/AconfigFlagHelper;->isPersonalHealthRecordEnabled()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 59
    invoke-static {}, Landroid/health/connect/internal/datatypes/utils/FhirResourceTypeStringToIntMapper;->populateFhirResourceTypeStringToIntMap()V

    .line 61
    sget-object v0, Landroid/health/connect/internal/datatypes/utils/FhirResourceTypeStringToIntMapper;->sFhirResourceTypeStringToIntMap:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 62
    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 63
    .local v0, "fhirResourceTypeInt":Ljava/lang/Integer;
    if-eqz v0, :cond_1e

    .line 68
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 64
    :cond_1e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported FHIR resource type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 56
    .end local v0    # "fhirResourceTypeInt":Ljava/lang/Integer;
    :cond_37
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getFhirResourceTypeInt is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist populateFhirResourceTypeStringToIntMap()V
    .registers 3

    .line 73
    invoke-static {}, Lcom/android/healthfitness/flags/AconfigFlagHelper;->isPersonalHealthRecordEnabled()Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 78
    sget-object v0, Landroid/health/connect/internal/datatypes/utils/FhirResourceTypeStringToIntMapper;->sFhirResourceTypeStringToIntMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 79
    return-void

    .line 82
    :cond_f
    sget-object v0, Landroid/health/connect/internal/datatypes/utils/FhirResourceTypeStringToIntMapper;->sFhirResourceTypeStringToIntMap:Ljava/util/Map;

    .line 84
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 82
    const-string v2, "ALLERGYINTOLERANCE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Landroid/health/connect/internal/datatypes/utils/FhirResourceTypeStringToIntMapper;->sFhirResourceTypeStringToIntMap:Ljava/util/Map;

    .line 86
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 85
    const-string v2, "IMMUNIZATION"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Landroid/health/connect/internal/datatypes/utils/FhirResourceTypeStringToIntMapper;->sFhirResourceTypeStringToIntMap:Ljava/util/Map;

    .line 88
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 87
    const-string v2, "OBSERVATION"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Landroid/health/connect/internal/datatypes/utils/FhirResourceTypeStringToIntMapper;->sFhirResourceTypeStringToIntMap:Ljava/util/Map;

    .line 90
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 89
    const-string v2, "CONDITION"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Landroid/health/connect/internal/datatypes/utils/FhirResourceTypeStringToIntMapper;->sFhirResourceTypeStringToIntMap:Ljava/util/Map;

    .line 92
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 91
    const-string v2, "PROCEDURE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Landroid/health/connect/internal/datatypes/utils/FhirResourceTypeStringToIntMapper;->sFhirResourceTypeStringToIntMap:Ljava/util/Map;

    .line 94
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 93
    const-string v2, "MEDICATION"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Landroid/health/connect/internal/datatypes/utils/FhirResourceTypeStringToIntMapper;->sFhirResourceTypeStringToIntMap:Ljava/util/Map;

    .line 97
    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 95
    const-string v2, "MEDICATIONREQUEST"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Landroid/health/connect/internal/datatypes/utils/FhirResourceTypeStringToIntMapper;->sFhirResourceTypeStringToIntMap:Ljava/util/Map;

    .line 100
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 98
    const-string v2, "MEDICATIONSTATEMENT"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Landroid/health/connect/internal/datatypes/utils/FhirResourceTypeStringToIntMapper;->sFhirResourceTypeStringToIntMap:Ljava/util/Map;

    .line 102
    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 101
    const-string v2, "PATIENT"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Landroid/health/connect/internal/datatypes/utils/FhirResourceTypeStringToIntMapper;->sFhirResourceTypeStringToIntMap:Ljava/util/Map;

    .line 104
    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 103
    const-string v2, "PRACTITIONER"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Landroid/health/connect/internal/datatypes/utils/FhirResourceTypeStringToIntMapper;->sFhirResourceTypeStringToIntMap:Ljava/util/Map;

    .line 107
    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 105
    const-string v2, "PRACTITIONERROLE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Landroid/health/connect/internal/datatypes/utils/FhirResourceTypeStringToIntMapper;->sFhirResourceTypeStringToIntMap:Ljava/util/Map;

    .line 109
    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 108
    const-string v2, "ENCOUNTER"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Landroid/health/connect/internal/datatypes/utils/FhirResourceTypeStringToIntMapper;->sFhirResourceTypeStringToIntMap:Ljava/util/Map;

    .line 111
    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 110
    const-string v2, "LOCATION"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Landroid/health/connect/internal/datatypes/utils/FhirResourceTypeStringToIntMapper;->sFhirResourceTypeStringToIntMap:Ljava/util/Map;

    .line 113
    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 112
    const-string v2, "ORGANIZATION"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    return-void

    .line 74
    :cond_bf
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "populateFhirResourceTypeStringToIntMap is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
