.class public final synthetic Landroid/adservices/adselection/ReportInteractionInput$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/adservices/AdServicesParcelableUtil$ParcelReader;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/Parcel;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/adservices/adselection/ReportInteractionInput$$ExternalSyntheticLambda3;->f$0:Landroid/os/Parcel;

    return-void
.end method


# virtual methods
.method public final blacklist read(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/adservices/adselection/ReportInteractionInput$$ExternalSyntheticLambda3;->f$0:Landroid/os/Parcel;

    invoke-static {v0, p1}, Landroid/adservices/adselection/ReportInteractionInput;->lambda$new$0(Landroid/os/Parcel;Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
