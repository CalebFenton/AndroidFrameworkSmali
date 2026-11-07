.class Landroid/net/wifi/QosPolicyParams$1;
.super Ljava/lang/Object;
.source "QosPolicyParams.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/QosPolicyParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/QosPolicyParams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 646
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/QosPolicyParams;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 649
    new-instance v0, Landroid/net/wifi/QosPolicyParams;

    invoke-direct {v0, p1}, Landroid/net/wifi/QosPolicyParams;-><init>(Landroid/os/Parcel;)V

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

    .line 646
    invoke-virtual {p0, p1}, Landroid/net/wifi/QosPolicyParams$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/QosPolicyParams;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/wifi/QosPolicyParams;
    .registers 3
    .param p1, "size"    # I

    .line 654
    new-array v0, p1, [Landroid/net/wifi/QosPolicyParams;

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

    .line 646
    invoke-virtual {p0, p1}, Landroid/net/wifi/QosPolicyParams$1;->newArray(I)[Landroid/net/wifi/QosPolicyParams;

    move-result-object p1

    return-object p1
.end method
