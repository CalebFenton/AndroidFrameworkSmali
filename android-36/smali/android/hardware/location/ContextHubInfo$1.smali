.class Landroid/hardware/location/ContextHubInfo$1;
.super Ljava/lang/Object;
.source "ContextHubInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/ContextHubInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/location/ContextHubInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/hardware/location/ContextHubInfo;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 453
    new-instance v0, Landroid/hardware/location/ContextHubInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/hardware/location/ContextHubInfo;-><init>(Landroid/os/Parcel;Landroid/hardware/location/ContextHubInfo-IA;)V

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

    .line 451
    invoke-virtual {p0, p1}, Landroid/hardware/location/ContextHubInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/location/ContextHubInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/hardware/location/ContextHubInfo;
    .registers 3
    .param p1, "size"    # I

    .line 457
    new-array v0, p1, [Landroid/hardware/location/ContextHubInfo;

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

    .line 451
    invoke-virtual {p0, p1}, Landroid/hardware/location/ContextHubInfo$1;->newArray(I)[Landroid/hardware/location/ContextHubInfo;

    move-result-object p1

    return-object p1
.end method
