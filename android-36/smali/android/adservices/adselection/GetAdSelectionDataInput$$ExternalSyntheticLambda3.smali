.class public final synthetic Landroid/adservices/adselection/GetAdSelectionDataInput$$ExternalSyntheticLambda3;
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

    iput p1, p0, Landroid/adservices/adselection/GetAdSelectionDataInput$$ExternalSyntheticLambda3;->f$0:I

    return-void
.end method


# virtual methods
.method public final blacklist write(Landroid/os/Parcel;Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget v0, p0, Landroid/adservices/adselection/GetAdSelectionDataInput$$ExternalSyntheticLambda3;->f$0:I

    check-cast p2, Landroid/adservices/common/AdTechIdentifier;

    invoke-static {v0, p1, p2}, Landroid/adservices/adselection/GetAdSelectionDataInput;->lambda$writeToParcel$0(ILandroid/os/Parcel;Landroid/adservices/common/AdTechIdentifier;)V

    return-void
.end method
