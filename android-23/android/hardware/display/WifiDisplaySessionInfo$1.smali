.class final Landroid/hardware/display/WifiDisplaySessionInfo$1;
.super Ljava/lang/Object;
.source "WifiDisplaySessionInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/WifiDisplaySessionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/hardware/display/WifiDisplaySessionInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/display/WifiDisplaySessionInfo;
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/4 v1, 0x1

    #@7
    .line 44
    .local v1, "client":Z
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@a
    move-result v2

    #@b
    .line 45
    .local v2, "session":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@e
    move-result-object v3

    #@f
    .line 46
    .local v3, "group":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@12
    move-result-object v4

    #@13
    .line 47
    .local v4, "pp":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@16
    move-result-object v5

    #@17
    .line 49
    .local v5, "ip":Ljava/lang/String;
    new-instance v0, Landroid/hardware/display/WifiDisplaySessionInfo;

    #@19
    invoke-direct/range {v0 .. v5}, Landroid/hardware/display/WifiDisplaySessionInfo;-><init>(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    return-object v0

    #@1d
    .line 43
    .end local v1    # "client":Z
    .end local v2    # "session":I
    .end local v3    # "group":Ljava/lang/String;
    .end local v4    # "pp":Ljava/lang/String;
    .end local v5    # "ip":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    #@1e
    .restart local v1    # "client":Z
    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 42
    invoke-virtual {p0, p1}, Landroid/hardware/display/WifiDisplaySessionInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/display/WifiDisplaySessionInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/hardware/display/WifiDisplaySessionInfo;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 54
    new-array v0, p1, [Landroid/hardware/display/WifiDisplaySessionInfo;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 53
    invoke-virtual {p0, p1}, Landroid/hardware/display/WifiDisplaySessionInfo$1;->newArray(I)[Landroid/hardware/display/WifiDisplaySessionInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
