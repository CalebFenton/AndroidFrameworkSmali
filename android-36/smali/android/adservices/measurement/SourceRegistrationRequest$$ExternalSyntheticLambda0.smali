.class public final synthetic Landroid/adservices/measurement/SourceRegistrationRequest$$ExternalSyntheticLambda0;
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

    iput p1, p0, Landroid/adservices/measurement/SourceRegistrationRequest$$ExternalSyntheticLambda0;->f$0:I

    return-void
.end method


# virtual methods
.method public final blacklist write(Landroid/os/Parcel;Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget v0, p0, Landroid/adservices/measurement/SourceRegistrationRequest$$ExternalSyntheticLambda0;->f$0:I

    check-cast p2, Landroid/view/InputEvent;

    invoke-static {v0, p1, p2}, Landroid/adservices/measurement/SourceRegistrationRequest;->lambda$writeToParcel$0(ILandroid/os/Parcel;Landroid/view/InputEvent;)V

    return-void
.end method
