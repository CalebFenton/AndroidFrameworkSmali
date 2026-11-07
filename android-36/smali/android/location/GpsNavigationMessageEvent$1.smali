.class Landroid/location/GpsNavigationMessageEvent$1;
.super Ljava/lang/Object;
.source "GpsNavigationMessageEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GpsNavigationMessageEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/GpsNavigationMessageEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/location/GpsNavigationMessageEvent;
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 94
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 95
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    const-class v1, Landroid/location/GpsNavigationMessage;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/GpsNavigationMessage;

    .line 96
    .local v1, "navigationMessage":Landroid/location/GpsNavigationMessage;
    new-instance v2, Landroid/location/GpsNavigationMessageEvent;

    invoke-direct {v2, v1}, Landroid/location/GpsNavigationMessageEvent;-><init>(Landroid/location/GpsNavigationMessage;)V

    return-object v2
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

    .line 91
    invoke-virtual {p0, p1}, Landroid/location/GpsNavigationMessageEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GpsNavigationMessageEvent;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/location/GpsNavigationMessageEvent;
    .registers 3
    .param p1, "size"    # I

    .line 101
    new-array v0, p1, [Landroid/location/GpsNavigationMessageEvent;

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

    .line 91
    invoke-virtual {p0, p1}, Landroid/location/GpsNavigationMessageEvent$1;->newArray(I)[Landroid/location/GpsNavigationMessageEvent;

    move-result-object p1

    return-object p1
.end method
