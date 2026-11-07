.class public final synthetic Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput$$ExternalSyntheticLambda5;
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

    iput p1, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput$$ExternalSyntheticLambda5;->f$0:I

    return-void
.end method


# virtual methods
.method public final blacklist write(Landroid/os/Parcel;Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget v0, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput$$ExternalSyntheticLambda5;->f$0:I

    check-cast p2, Landroid/adservices/common/AdSelectionSignals;

    invoke-static {v0, p1, p2}, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput;->lambda$writeToParcel$5(ILandroid/os/Parcel;Landroid/adservices/common/AdSelectionSignals;)V

    return-void
.end method
