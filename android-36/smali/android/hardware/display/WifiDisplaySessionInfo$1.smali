.class Landroid/hardware/display/WifiDisplaySessionInfo$1;
.super Ljava/lang/Object;
.source "WifiDisplaySessionInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/WifiDisplaySessionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/display/WifiDisplaySessionInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/hardware/display/WifiDisplaySessionInfo;
    .registers 9
    .param p1, "in"    # Landroid/os/Parcel;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    move v2, v0

    .line 44
    .local v2, "client":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 45
    .local v3, "session":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 46
    .local v4, "group":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 47
    .local v5, "pp":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 49
    .local v6, "ip":Ljava/lang/String;
    new-instance v1, Landroid/hardware/display/WifiDisplaySessionInfo;

    invoke-direct/range {v1 .. v6}, Landroid/hardware/display/WifiDisplaySessionInfo;-><init>(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
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

    .line 40
    invoke-virtual {p0, p1}, Landroid/hardware/display/WifiDisplaySessionInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/display/WifiDisplaySessionInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/hardware/display/WifiDisplaySessionInfo;
    .registers 3
    .param p1, "size"    # I

    .line 54
    new-array v0, p1, [Landroid/hardware/display/WifiDisplaySessionInfo;

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

    .line 40
    invoke-virtual {p0, p1}, Landroid/hardware/display/WifiDisplaySessionInfo$1;->newArray(I)[Landroid/hardware/display/WifiDisplaySessionInfo;

    move-result-object p1

    return-object p1
.end method
