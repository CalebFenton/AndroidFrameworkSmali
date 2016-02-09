.class final Lcom/android/internal/net/VpnProfile$1;
.super Ljava/lang/Object;
.source "VpnProfile.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/VpnProfile;
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
        "Lcom/android/internal/net/VpnProfile;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/net/VpnProfile;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 202
    new-instance v0, Lcom/android/internal/net/VpnProfile;

    #@2
    invoke-direct {v0, p1}, Lcom/android/internal/net/VpnProfile;-><init>(Landroid/os/Parcel;)V

    #@5
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 201
    invoke-virtual {p0, p1}, Lcom/android/internal/net/VpnProfile$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/net/VpnProfile;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/net/VpnProfile;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 207
    new-array v0, p1, [Lcom/android/internal/net/VpnProfile;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 206
    invoke-virtual {p0, p1}, Lcom/android/internal/net/VpnProfile$1;->newArray(I)[Lcom/android/internal/net/VpnProfile;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
