.class public final synthetic Landroid/adservices/adselection/GetAdSelectionDataInput$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/adservices/AdServicesParcelableUtil$ParcelReader;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/Parcelable$Creator;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/Parcelable$Creator;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/adservices/adselection/GetAdSelectionDataInput$$ExternalSyntheticLambda2;->f$0:Landroid/os/Parcelable$Creator;

    return-void
.end method


# virtual methods
.method public final blacklist read(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/adservices/adselection/GetAdSelectionDataInput$$ExternalSyntheticLambda2;->f$0:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/adservices/adselection/SellerConfiguration;

    return-object p1
.end method
