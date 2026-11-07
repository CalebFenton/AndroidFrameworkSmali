.class Landroid/net/wifi/usd/PublishConfig$1;
.super Ljava/lang/Object;
.source "PublishConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/usd/PublishConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/usd/PublishConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/usd/PublishConfig;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 61
    new-instance v0, Landroid/net/wifi/usd/PublishConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/net/wifi/usd/PublishConfig;-><init>(Landroid/os/Parcel;Landroid/net/wifi/usd/PublishConfig-IA;)V

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

    .line 57
    invoke-virtual {p0, p1}, Landroid/net/wifi/usd/PublishConfig$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/usd/PublishConfig;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/wifi/usd/PublishConfig;
    .registers 3
    .param p1, "size"    # I

    .line 66
    new-array v0, p1, [Landroid/net/wifi/usd/PublishConfig;

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

    .line 57
    invoke-virtual {p0, p1}, Landroid/net/wifi/usd/PublishConfig$1;->newArray(I)[Landroid/net/wifi/usd/PublishConfig;

    move-result-object p1

    return-object p1
.end method
