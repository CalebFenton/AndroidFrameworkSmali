.class final Landroid/net/NetworkMisc$1;
.super Ljava/lang/Object;
.source "NetworkMisc.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkMisc;
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
        "Landroid/net/NetworkMisc;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/NetworkMisc;
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 98
    new-instance v0, Landroid/net/NetworkMisc;

    #@4
    invoke-direct {v0}, Landroid/net/NetworkMisc;-><init>()V

    #@7
    .line 99
    .local v0, "networkMisc":Landroid/net/NetworkMisc;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    move v1, v2

    #@e
    :goto_0
    iput-boolean v1, v0, Landroid/net/NetworkMisc;->allowBypass:Z

    #@10
    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_1

    #@16
    move v1, v2

    #@17
    :goto_1
    iput-boolean v1, v0, Landroid/net/NetworkMisc;->explicitlySelected:Z

    #@19
    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result v1

    #@1d
    if-eqz v1, :cond_2

    #@1f
    move v1, v2

    #@20
    :goto_2
    iput-boolean v1, v0, Landroid/net/NetworkMisc;->acceptUnvalidated:Z

    #@22
    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    iput-object v1, v0, Landroid/net/NetworkMisc;->subscriberId:Ljava/lang/String;

    #@28
    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2b
    move-result v1

    #@2c
    if-eqz v1, :cond_3

    #@2e
    :goto_3
    iput-boolean v2, v0, Landroid/net/NetworkMisc;->provisioningNotificationDisabled:Z

    #@30
    .line 104
    return-object v0

    #@31
    :cond_0
    move v1, v3

    #@32
    .line 99
    goto :goto_0

    #@33
    :cond_1
    move v1, v3

    #@34
    .line 100
    goto :goto_1

    #@35
    :cond_2
    move v1, v3

    #@36
    .line 101
    goto :goto_2

    #@37
    :cond_3
    move v2, v3

    #@38
    .line 103
    goto :goto_3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 97
    invoke-virtual {p0, p1}, Landroid/net/NetworkMisc$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/NetworkMisc;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/net/NetworkMisc;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 109
    new-array v0, p1, [Landroid/net/NetworkMisc;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 108
    invoke-virtual {p0, p1}, Landroid/net/NetworkMisc$1;->newArray(I)[Landroid/net/NetworkMisc;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
