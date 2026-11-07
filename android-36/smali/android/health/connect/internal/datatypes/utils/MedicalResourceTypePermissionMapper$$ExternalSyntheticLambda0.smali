.class public final synthetic Landroid/health/connect/internal/datatypes/utils/MedicalResourceTypePermissionMapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 0
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/health/connect/internal/datatypes/utils/MedicalResourceTypePermissionMapper;->lambda$populateMedicalResourceTypeAndReadPermissionMaps$0(Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method
