.class Landroid/net/TetheringInterface$1;
.super Ljava/lang/Object;
.source "TetheringInterface.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/TetheringInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/TetheringInterface;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/TetheringInterface;
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 119
    new-instance v0, Landroid/net/TetheringInterface;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/net/wifi/SoftApConfiguration;

    .line 120
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/SoftApConfiguration;

    invoke-direct {v0, v1, v2, v3}, Landroid/net/TetheringInterface;-><init>(ILjava/lang/String;Landroid/net/wifi/SoftApConfiguration;)V

    .line 119
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

    .line 114
    invoke-virtual {p0, p1}, Landroid/net/TetheringInterface$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/TetheringInterface;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/TetheringInterface;
    .registers 3
    .param p1, "size"    # I

    .line 127
    new-array v0, p1, [Landroid/net/TetheringInterface;

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

    .line 114
    invoke-virtual {p0, p1}, Landroid/net/TetheringInterface$1;->newArray(I)[Landroid/net/TetheringInterface;

    move-result-object p1

    return-object p1
.end method
