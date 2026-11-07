.class Landroid/net/wifi/hotspot2/pps/Credential$UserCredential$1;
.super Ljava/lang/Object;
.source "Credential.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 445
    new-instance v0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;-><init>()V

    .line 446
    .local v0, "userCredential":Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setUsername(Ljava/lang/String;)V

    .line 447
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setPassword(Ljava/lang/String;)V

    .line 448
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1d

    move v1, v2

    goto :goto_1e

    :cond_1d
    move v1, v3

    :goto_1e
    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setMachineManaged(Z)V

    .line 449
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setSoftTokenApp(Ljava/lang/String;)V

    .line 450
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2f

    goto :goto_30

    :cond_2f
    move v2, v3

    :goto_30
    invoke-virtual {v0, v2}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setAbleToShare(Z)V

    .line 451
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setEapType(I)V

    .line 452
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setNonEapInnerMethod(Ljava/lang/String;)V

    .line 453
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

    .line 442
    invoke-virtual {p0, p1}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;
    .registers 3
    .param p1, "size"    # I

    .line 458
    new-array v0, p1, [Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

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

    .line 442
    invoke-virtual {p0, p1}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential$1;->newArray(I)[Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    move-result-object p1

    return-object p1
.end method
