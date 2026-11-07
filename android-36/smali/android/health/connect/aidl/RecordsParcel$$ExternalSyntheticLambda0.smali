.class public final synthetic Landroid/health/connect/aidl/RecordsParcel$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/health/connect/internal/ParcelUtils$IPutToParcelRunnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/health/connect/aidl/RecordsParcel;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/health/connect/aidl/RecordsParcel;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/health/connect/aidl/RecordsParcel$$ExternalSyntheticLambda0;->f$0:Landroid/health/connect/aidl/RecordsParcel;

    return-void
.end method


# virtual methods
.method public final blacklist writeToParcel(Landroid/os/Parcel;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/health/connect/aidl/RecordsParcel$$ExternalSyntheticLambda0;->f$0:Landroid/health/connect/aidl/RecordsParcel;

    invoke-static {v0, p1}, Landroid/health/connect/aidl/RecordsParcel;->$r8$lambda$VvH3okxfnq8GMFxlaKcXpt8GfCg(Landroid/health/connect/aidl/RecordsParcel;Landroid/os/Parcel;)V

    return-void
.end method
