.class public final synthetic Landroid/adservices/common/AdFilters$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/adservices/AdServicesParcelableUtil$ParcelWriter;


# instance fields
.field public final synthetic blacklist f$0:I


# direct methods
.method public synthetic constructor blacklist <init>(I)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/adservices/common/AdFilters$$ExternalSyntheticLambda1;->f$0:I

    return-void
.end method


# virtual methods
.method public final blacklist write(Landroid/os/Parcel;Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget v0, p0, Landroid/adservices/common/AdFilters$$ExternalSyntheticLambda1;->f$0:I

    check-cast p2, Landroid/adservices/common/AppInstallFilters;

    invoke-static {v0, p1, p2}, Landroid/adservices/common/AdFilters;->lambda$writeToParcel$1(ILandroid/os/Parcel;Landroid/adservices/common/AppInstallFilters;)V

    return-void
.end method
