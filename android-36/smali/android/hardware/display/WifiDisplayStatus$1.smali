.class Landroid/hardware/display/WifiDisplayStatus$1;
.super Ljava/lang/Object;
.source "WifiDisplayStatus.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/WifiDisplayStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/display/WifiDisplayStatus;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/hardware/display/WifiDisplayStatus;
    .registers 9
    .param p1, "in"    # Landroid/os/Parcel;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 76
    .local v1, "featureState":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 77
    .local v2, "scanState":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 79
    .local v3, "activeDisplayState":I
    const/4 v0, 0x0

    .line 80
    .local v0, "activeDisplay":Landroid/hardware/display/WifiDisplay;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1e

    .line 81
    sget-object v4, Landroid/hardware/display/WifiDisplay;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/hardware/display/WifiDisplay;

    move-object v4, v0

    goto :goto_1f

    .line 80
    :cond_1e
    move-object v4, v0

    .line 84
    .end local v0    # "activeDisplay":Landroid/hardware/display/WifiDisplay;
    .local v4, "activeDisplay":Landroid/hardware/display/WifiDisplay;
    :goto_1f
    sget-object v0, Landroid/hardware/display/WifiDisplay;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-interface {v0, v5}, Landroid/os/Parcelable$Creator;->newArray(I)[Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, [Landroid/hardware/display/WifiDisplay;

    .line 85
    .local v5, "displays":[Landroid/hardware/display/WifiDisplay;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2d
    array-length v6, v5

    if-ge v0, v6, :cond_3d

    .line 86
    sget-object v6, Landroid/hardware/display/WifiDisplay;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/display/WifiDisplay;

    aput-object v6, v5, v0

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 89
    .end local v0    # "i":I
    :cond_3d
    sget-object v0, Landroid/hardware/display/WifiDisplaySessionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 90
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/hardware/display/WifiDisplaySessionInfo;

    .line 92
    .local v6, "sessionInfo":Landroid/hardware/display/WifiDisplaySessionInfo;
    new-instance v0, Landroid/hardware/display/WifiDisplayStatus;

    invoke-direct/range {v0 .. v6}, Landroid/hardware/display/WifiDisplayStatus;-><init>(IIILandroid/hardware/display/WifiDisplay;[Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplaySessionInfo;)V

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

    .line 73
    invoke-virtual {p0, p1}, Landroid/hardware/display/WifiDisplayStatus$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/display/WifiDisplayStatus;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/hardware/display/WifiDisplayStatus;
    .registers 3
    .param p1, "size"    # I

    .line 97
    new-array v0, p1, [Landroid/hardware/display/WifiDisplayStatus;

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

    .line 73
    invoke-virtual {p0, p1}, Landroid/hardware/display/WifiDisplayStatus$1;->newArray(I)[Landroid/hardware/display/WifiDisplayStatus;

    move-result-object p1

    return-object p1
.end method
