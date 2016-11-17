.class final Lcom/android/internal/net/VpnInfo$1;
.super Ljava/lang/Object;
.source "VpnInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/VpnInfo;
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
        "Lcom/android/internal/net/VpnInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/net/VpnInfo;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 57
    new-instance v0, Lcom/android/internal/net/VpnInfo;

    #@2
    invoke-direct {v0}, Lcom/android/internal/net/VpnInfo;-><init>()V

    #@5
    .line 58
    .local v0, "info":Lcom/android/internal/net/VpnInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8
    move-result v1

    #@9
    iput v1, v0, Lcom/android/internal/net/VpnInfo;->ownerUid:I

    #@b
    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    iput-object v1, v0, Lcom/android/internal/net/VpnInfo;->vpnIface:Ljava/lang/String;

    #@11
    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    iput-object v1, v0, Lcom/android/internal/net/VpnInfo;->primaryUnderlyingIface:Ljava/lang/String;

    #@17
    .line 61
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/android/internal/net/VpnInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/net/VpnInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/net/VpnInfo;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 66
    new-array v0, p1, [Lcom/android/internal/net/VpnInfo;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/android/internal/net/VpnInfo$1;->newArray(I)[Lcom/android/internal/net/VpnInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
