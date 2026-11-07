.class public final synthetic Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/util/ArrayMap;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/util/ArrayMap;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings$$ExternalSyntheticLambda2;->f$0:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings$$ExternalSyntheticLambda2;->f$0:Landroid/util/ArrayMap;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/util/Set;

    invoke-static {v0, p1, p2}, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;->lambda$getDataCategoryToWritePermissionsMap$0(Landroid/util/ArrayMap;Ljava/lang/Integer;Ljava/util/Set;)V

    return-void
.end method
