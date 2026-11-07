.class Landroid/app/time/LocationTimeZoneAlgorithmStatus$1;
.super Ljava/lang/Object;
.source "LocationTimeZoneAlgorithmStatus.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/time/LocationTimeZoneAlgorithmStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/time/LocationTimeZoneAlgorithmStatus;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/time/LocationTimeZoneAlgorithmStatus;
    .registers 8
    .param p1, "in"    # Landroid/os/Parcel;

    .line 266
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 267
    .local v1, "algorithmStatus":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 268
    .local v2, "primaryProviderStatus":I
    nop

    .line 269
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v3, Landroid/service/timezone/TimeZoneProviderStatus;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/service/timezone/TimeZoneProviderStatus;

    .line 270
    .local v3, "primaryProviderReportedStatus":Landroid/service/timezone/TimeZoneProviderStatus;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 271
    .local v4, "secondaryProviderStatus":I
    nop

    .line 272
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v5, Landroid/service/timezone/TimeZoneProviderStatus;

    invoke-virtual {p1, v0, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/service/timezone/TimeZoneProviderStatus;

    .line 273
    .local v5, "secondaryProviderReportedStatus":Landroid/service/timezone/TimeZoneProviderStatus;
    new-instance v0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;

    invoke-direct/range {v0 .. v5}, Landroid/app/time/LocationTimeZoneAlgorithmStatus;-><init>(IILandroid/service/timezone/TimeZoneProviderStatus;ILandroid/service/timezone/TimeZoneProviderStatus;)V

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

    .line 263
    invoke-virtual {p0, p1}, Landroid/app/time/LocationTimeZoneAlgorithmStatus$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/time/LocationTimeZoneAlgorithmStatus;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/app/time/LocationTimeZoneAlgorithmStatus;
    .registers 3
    .param p1, "size"    # I

    .line 280
    new-array v0, p1, [Landroid/app/time/LocationTimeZoneAlgorithmStatus;

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

    .line 263
    invoke-virtual {p0, p1}, Landroid/app/time/LocationTimeZoneAlgorithmStatus$1;->newArray(I)[Landroid/app/time/LocationTimeZoneAlgorithmStatus;

    move-result-object p1

    return-object p1
.end method
