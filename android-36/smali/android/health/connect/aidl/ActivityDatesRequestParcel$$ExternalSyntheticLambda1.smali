.class public final synthetic Landroid/health/connect/aidl/ActivityDatesRequestParcel$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/health/connect/aidl/ActivityDatesRequestParcel$$ExternalSyntheticLambda1;->f$0:Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/health/connect/aidl/ActivityDatesRequestParcel$$ExternalSyntheticLambda1;->f$0:Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {v0, p1}, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;->getRecordType(Ljava/lang/Class;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
