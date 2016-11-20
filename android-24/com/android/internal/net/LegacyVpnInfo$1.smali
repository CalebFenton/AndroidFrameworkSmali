.class final Lcom/android/internal/net/LegacyVpnInfo$1;
.super Ljava/lang/Object;
.source "LegacyVpnInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/LegacyVpnInfo;
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
        "Lcom/android/internal/net/LegacyVpnInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/net/LegacyVpnInfo;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 61
    new-instance v0, Lcom/android/internal/net/LegacyVpnInfo;

    #@2
    invoke-direct {v0}, Lcom/android/internal/net/LegacyVpnInfo;-><init>()V

    #@5
    .line 62
    .local v0, "info":Lcom/android/internal/net/LegacyVpnInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    iput-object v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    #@b
    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@e
    move-result v1

    #@f
    iput v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    #@11
    .line 64
    const/4 v1, 0x0

    #@12
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@15
    move-result-object v1

    #@16
    check-cast v1, Landroid/app/PendingIntent;

    #@18
    iput-object v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->intent:Landroid/app/PendingIntent;

    #@1a
    .line 65
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/android/internal/net/LegacyVpnInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/net/LegacyVpnInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/net/LegacyVpnInfo;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 70
    new-array v0, p1, [Lcom/android/internal/net/LegacyVpnInfo;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/android/internal/net/LegacyVpnInfo$1;->newArray(I)[Lcom/android/internal/net/LegacyVpnInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
