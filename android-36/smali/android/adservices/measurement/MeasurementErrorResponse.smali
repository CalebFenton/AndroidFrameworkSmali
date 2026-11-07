.class public final Landroid/adservices/measurement/MeasurementErrorResponse;
.super Landroid/adservices/common/AdServicesResponse;
.source "MeasurementErrorResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/measurement/MeasurementErrorResponse$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/measurement/MeasurementErrorResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 37
    new-instance v0, Landroid/adservices/measurement/MeasurementErrorResponse$1;

    invoke-direct {v0}, Landroid/adservices/measurement/MeasurementErrorResponse$1;-><init>()V

    sput-object v0, Landroid/adservices/measurement/MeasurementErrorResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/adservices/measurement/MeasurementErrorResponse$Builder;)V
    .registers 4
    .param p1, "builder"    # Landroid/adservices/measurement/MeasurementErrorResponse$Builder;

    .line 52
    invoke-static {p1}, Landroid/adservices/measurement/MeasurementErrorResponse$Builder;->-$$Nest$fgetmStatusCode(Landroid/adservices/measurement/MeasurementErrorResponse$Builder;)I

    move-result v0

    invoke-static {p1}, Landroid/adservices/measurement/MeasurementErrorResponse$Builder;->-$$Nest$fgetmErrorMessage(Landroid/adservices/measurement/MeasurementErrorResponse$Builder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/adservices/common/AdServicesResponse;-><init>(ILjava/lang/String;)V

    .line 53
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 56
    invoke-direct {p0, p1}, Landroid/adservices/common/AdServicesResponse;-><init>(Landroid/os/Parcel;)V

    .line 57
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 67
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget v0, p0, Landroid/adservices/measurement/MeasurementErrorResponse;->mStatusCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget-object v0, p0, Landroid/adservices/measurement/MeasurementErrorResponse;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    return-void
.end method
