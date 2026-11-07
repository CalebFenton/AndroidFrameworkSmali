.class Landroid/hardware/display/WifiDisplay$1;
.super Ljava/lang/Object;
.source "WifiDisplay.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/WifiDisplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/display/WifiDisplay;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/hardware/display/WifiDisplay;
    .registers 10
    .param p1, "in"    # Landroid/os/Parcel;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "deviceAddress":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, "deviceName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 49
    .local v3, "deviceAlias":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_16

    move v0, v4

    goto :goto_17

    :cond_16
    move v0, v5

    .line 50
    .local v0, "isAvailable":Z
    :goto_17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1f

    move v6, v4

    goto :goto_20

    :cond_1f
    move v6, v5

    .line 51
    .local v6, "canConnect":Z
    :goto_20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_27

    goto :goto_28

    :cond_27
    move v4, v5

    .line 52
    .local v4, "isRemembered":Z
    :goto_28
    move v5, v6

    move v6, v4

    move v4, v0

    .end local v0    # "isAvailable":Z
    .local v4, "isAvailable":Z
    .local v5, "canConnect":Z
    .local v6, "isRemembered":Z
    new-instance v0, Landroid/hardware/display/WifiDisplay;

    invoke-direct/range {v0 .. v6}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

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

    .line 44
    invoke-virtual {p0, p1}, Landroid/hardware/display/WifiDisplay$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/display/WifiDisplay;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/hardware/display/WifiDisplay;
    .registers 3
    .param p1, "size"    # I

    .line 57
    if-nez p1, :cond_5

    sget-object v0, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    goto :goto_7

    :cond_5
    new-array v0, p1, [Landroid/hardware/display/WifiDisplay;

    :goto_7
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

    .line 44
    invoke-virtual {p0, p1}, Landroid/hardware/display/WifiDisplay$1;->newArray(I)[Landroid/hardware/display/WifiDisplay;

    move-result-object p1

    return-object p1
.end method
