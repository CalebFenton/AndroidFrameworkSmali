.class public final synthetic Landroid/health/connect/MedicalResourceTypeInfo$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/health/connect/internal/ParcelUtils$IPutToParcelRunnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/health/connect/MedicalResourceTypeInfo;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/health/connect/MedicalResourceTypeInfo;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/health/connect/MedicalResourceTypeInfo$$ExternalSyntheticLambda0;->f$0:Landroid/health/connect/MedicalResourceTypeInfo;

    return-void
.end method


# virtual methods
.method public final blacklist writeToParcel(Landroid/os/Parcel;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/health/connect/MedicalResourceTypeInfo$$ExternalSyntheticLambda0;->f$0:Landroid/health/connect/MedicalResourceTypeInfo;

    invoke-static {v0, p1}, Landroid/health/connect/MedicalResourceTypeInfo;->$r8$lambda$7Af3v5jEV-N8Wa85LykmFZL94B8(Landroid/health/connect/MedicalResourceTypeInfo;Landroid/os/Parcel;)V

    return-void
.end method
