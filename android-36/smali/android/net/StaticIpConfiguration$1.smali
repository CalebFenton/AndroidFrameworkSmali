.class Landroid/net/StaticIpConfiguration$1;
.super Ljava/lang/Object;
.source "StaticIpConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/StaticIpConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/StaticIpConfiguration;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/StaticIpConfiguration;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 303
    invoke-static {p1}, Landroid/net/StaticIpConfiguration;->readFromParcel(Landroid/os/Parcel;)Landroid/net/StaticIpConfiguration;

    move-result-object v0

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

    .line 301
    invoke-virtual {p0, p1}, Landroid/net/StaticIpConfiguration$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/StaticIpConfiguration;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/StaticIpConfiguration;
    .registers 3
    .param p1, "size"    # I

    .line 307
    new-array v0, p1, [Landroid/net/StaticIpConfiguration;

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

    .line 301
    invoke-virtual {p0, p1}, Landroid/net/StaticIpConfiguration$1;->newArray(I)[Landroid/net/StaticIpConfiguration;

    move-result-object p1

    return-object p1
.end method
