.class public final synthetic Landroid/health/connect/aidl/RecordTypeInfoResponseParcel$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;

.field public final synthetic blacklist f$1:Ljava/util/Map;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;Ljava/util/Map;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/health/connect/aidl/RecordTypeInfoResponseParcel$$ExternalSyntheticLambda2;->f$0:Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;

    iput-object p2, p0, Landroid/health/connect/aidl/RecordTypeInfoResponseParcel$$ExternalSyntheticLambda2;->f$1:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/health/connect/aidl/RecordTypeInfoResponseParcel$$ExternalSyntheticLambda2;->f$0:Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;

    iget-object v1, p0, Landroid/health/connect/aidl/RecordTypeInfoResponseParcel$$ExternalSyntheticLambda2;->f$1:Ljava/util/Map;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/util/List;

    invoke-static {v0, v1, p1, p2}, Landroid/health/connect/aidl/RecordTypeInfoResponseParcel;->lambda$getRecordTypeInfoResponses$3(Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;Ljava/util/Map;Ljava/lang/Integer;Ljava/util/List;)V

    return-void
.end method
