.class public final synthetic Landroid/adservices/adselection/SellerConfiguration$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/adservices/AdServicesParcelableUtil$ParcelWriter;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/Parcel;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/adservices/adselection/SellerConfiguration$$ExternalSyntheticLambda0;->f$0:Landroid/os/Parcel;

    return-void
.end method


# virtual methods
.method public final blacklist write(Landroid/os/Parcel;Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/adservices/adselection/SellerConfiguration$$ExternalSyntheticLambda0;->f$0:Landroid/os/Parcel;

    check-cast p2, Ljava/util/Set;

    invoke-static {v0, p1, p2}, Landroid/adservices/adselection/SellerConfiguration;->lambda$writeToParcel$1(Landroid/os/Parcel;Landroid/os/Parcel;Ljava/util/Set;)V

    return-void
.end method
