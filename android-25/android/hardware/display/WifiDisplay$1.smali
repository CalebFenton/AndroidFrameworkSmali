.class final Landroid/hardware/display/WifiDisplay$1;
.super Ljava/lang/Object;
.source "WifiDisplay.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/WifiDisplay;
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
        "Landroid/hardware/display/WifiDisplay;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/display/WifiDisplay;
    .locals 7
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 45
    .local v1, "deviceAddress":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    .line 46
    .local v2, "deviceName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@b
    move-result-object v3

    #@c
    .line 47
    .local v3, "deviceAlias":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_0

    #@12
    const/4 v4, 0x1

    #@13
    .line 48
    .local v4, "isAvailable":Z
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_1

    #@19
    const/4 v5, 0x1

    #@1a
    .line 49
    .local v5, "canConnect":Z
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_2

    #@20
    const/4 v6, 0x1

    #@21
    .line 50
    .local v6, "isRemembered":Z
    :goto_2
    new-instance v0, Landroid/hardware/display/WifiDisplay;

    #@23
    invoke-direct/range {v0 .. v6}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    #@26
    return-object v0

    #@27
    .line 47
    .end local v4    # "isAvailable":Z
    .end local v5    # "canConnect":Z
    .end local v6    # "isRemembered":Z
    :cond_0
    const/4 v4, 0x0

    #@28
    .restart local v4    # "isAvailable":Z
    goto :goto_0

    #@29
    .line 48
    :cond_1
    const/4 v5, 0x0

    #@2a
    .restart local v5    # "canConnect":Z
    goto :goto_1

    #@2b
    .line 49
    :cond_2
    const/4 v6, 0x0

    #@2c
    .restart local v6    # "isRemembered":Z
    goto :goto_2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 43
    invoke-virtual {p0, p1}, Landroid/hardware/display/WifiDisplay$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/display/WifiDisplay;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/hardware/display/WifiDisplay;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 55
    if-nez p1, :cond_0

    #@2
    sget-object v0, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    #@4
    :goto_0
    return-object v0

    #@5
    :cond_0
    new-array v0, p1, [Landroid/hardware/display/WifiDisplay;

    #@7
    goto :goto_0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 54
    invoke-virtual {p0, p1}, Landroid/hardware/display/WifiDisplay$1;->newArray(I)[Landroid/hardware/display/WifiDisplay;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
