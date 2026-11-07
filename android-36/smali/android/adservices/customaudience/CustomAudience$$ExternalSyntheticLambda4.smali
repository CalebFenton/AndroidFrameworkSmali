.class public final synthetic Landroid/adservices/customaudience/CustomAudience$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/adservices/AdServicesParcelableUtil$ParcelReader;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist read(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {p1}, Landroid/adservices/customaudience/CustomAudience;->lambda$new$0(Landroid/os/Parcel;)Ljava/time/Instant;

    move-result-object p1

    return-object p1
.end method
