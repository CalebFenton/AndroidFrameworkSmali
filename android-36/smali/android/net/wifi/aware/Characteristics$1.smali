.class Landroid/net/wifi/aware/Characteristics$1;
.super Ljava/lang/Object;
.source "Characteristics.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/aware/Characteristics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/aware/Characteristics;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/aware/Characteristics;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 379
    new-instance v0, Landroid/net/wifi/aware/Characteristics;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/wifi/aware/Characteristics;-><init>(Landroid/os/Bundle;)V

    .line 380
    .local v0, "c":Landroid/net/wifi/aware/Characteristics;
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

    .line 376
    invoke-virtual {p0, p1}, Landroid/net/wifi/aware/Characteristics$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/aware/Characteristics;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/wifi/aware/Characteristics;
    .registers 3
    .param p1, "size"    # I

    .line 385
    new-array v0, p1, [Landroid/net/wifi/aware/Characteristics;

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

    .line 376
    invoke-virtual {p0, p1}, Landroid/net/wifi/aware/Characteristics$1;->newArray(I)[Landroid/net/wifi/aware/Characteristics;

    move-result-object p1

    return-object p1
.end method
