.class public final synthetic Landroid/adservices/customaudience/PartialCustomAudience$$ExternalSyntheticLambda3;
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
    check-cast p2, Ljava/time/Instant;

    invoke-static {p1, p2}, Landroid/adservices/customaudience/PartialCustomAudience;->lambda$writeToParcel$3(Landroid/os/Parcel;Ljava/time/Instant;)V

    return-void
.end method
