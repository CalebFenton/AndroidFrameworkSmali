.class Landroid/service/timezone/TimeZoneProviderStatus$1;
.super Ljava/lang/Object;
.source "TimeZoneProviderStatus.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/timezone/TimeZoneProviderStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/timezone/TimeZoneProviderStatus;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/service/timezone/TimeZoneProviderStatus;
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 251
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 252
    .local v0, "locationDetectionStatus":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 253
    .local v1, "connectivityStatus":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 254
    .local v2, "timeZoneResolutionStatus":I
    new-instance v3, Landroid/service/timezone/TimeZoneProviderStatus;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, v2, v4}, Landroid/service/timezone/TimeZoneProviderStatus;-><init>(IIILandroid/service/timezone/TimeZoneProviderStatus-IA;)V

    return-object v3
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

    .line 248
    invoke-virtual {p0, p1}, Landroid/service/timezone/TimeZoneProviderStatus$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/timezone/TimeZoneProviderStatus;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/service/timezone/TimeZoneProviderStatus;
    .registers 3
    .param p1, "size"    # I

    .line 260
    new-array v0, p1, [Landroid/service/timezone/TimeZoneProviderStatus;

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

    .line 248
    invoke-virtual {p0, p1}, Landroid/service/timezone/TimeZoneProviderStatus$1;->newArray(I)[Landroid/service/timezone/TimeZoneProviderStatus;

    move-result-object p1

    return-object p1
.end method
