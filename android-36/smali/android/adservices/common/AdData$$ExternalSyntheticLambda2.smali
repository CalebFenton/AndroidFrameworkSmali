.class public final synthetic Landroid/adservices/common/AdData$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/adservices/AdServicesParcelableUtil$ParcelWriter;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist write(Landroid/os/Parcel;Ljava/lang/Object;)V
    .registers 3

    .line 0
    check-cast p2, Ljava/util/Set;

    invoke-static {p1, p2}, Lcom/android/adservices/AdServicesParcelableUtil;->writeIntegerSetToParcel(Landroid/os/Parcel;Ljava/util/Set;)V

    return-void
.end method
