.class public final synthetic Landroid/health/connect/migration/MigrationEntityParcel$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/health/connect/internal/ParcelUtils$IPutToParcelRunnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/health/connect/migration/MigrationEntityParcel;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/health/connect/migration/MigrationEntityParcel;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/health/connect/migration/MigrationEntityParcel$$ExternalSyntheticLambda0;->f$0:Landroid/health/connect/migration/MigrationEntityParcel;

    return-void
.end method


# virtual methods
.method public final blacklist writeToParcel(Landroid/os/Parcel;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/health/connect/migration/MigrationEntityParcel$$ExternalSyntheticLambda0;->f$0:Landroid/health/connect/migration/MigrationEntityParcel;

    invoke-static {v0, p1}, Landroid/health/connect/migration/MigrationEntityParcel;->$r8$lambda$TebE5l-ueG9EoSzPynlZvRifOm0(Landroid/health/connect/migration/MigrationEntityParcel;Landroid/os/Parcel;)V

    return-void
.end method
