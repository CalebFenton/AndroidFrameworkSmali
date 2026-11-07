.class Landroid/adservices/common/AdServicesResponse$1;
.super Ljava/lang/Object;
.source "AdServicesResponse.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/common/AdServicesResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/adservices/common/AdServicesResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/adservices/common/AdServicesResponse;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 40
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    new-instance v0, Landroid/adservices/common/AdServicesResponse;

    invoke-direct {v0, p1}, Landroid/adservices/common/AdServicesResponse;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 37
    invoke-virtual {p0, p1}, Landroid/adservices/common/AdServicesResponse$1;->createFromParcel(Landroid/os/Parcel;)Landroid/adservices/common/AdServicesResponse;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/adservices/common/AdServicesResponse;
    .registers 3
    .param p1, "size"    # I

    .line 46
    new-array v0, p1, [Landroid/adservices/common/AdServicesResponse;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 37
    invoke-virtual {p0, p1}, Landroid/adservices/common/AdServicesResponse$1;->newArray(I)[Landroid/adservices/common/AdServicesResponse;

    move-result-object p1

    return-object p1
.end method
