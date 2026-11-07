.class public final synthetic Landroid/health/connect/HealthConnectManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Landroid/health/connect/HealthConnectManager;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/health/connect/HealthConnectManager;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/health/connect/HealthConnectManager$$ExternalSyntheticLambda3;->f$0:Landroid/health/connect/HealthConnectManager;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/health/connect/HealthConnectManager$$ExternalSyntheticLambda3;->f$0:Landroid/health/connect/HealthConnectManager;

    check-cast p1, Landroid/health/connect/datatypes/Record;

    invoke-static {v0, p1}, Landroid/health/connect/HealthConnectManager;->$r8$lambda$pU-cyifqmHjXGtaYRk3lzgl91ho(Landroid/health/connect/HealthConnectManager;Landroid/health/connect/datatypes/Record;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object p1

    return-object p1
.end method
