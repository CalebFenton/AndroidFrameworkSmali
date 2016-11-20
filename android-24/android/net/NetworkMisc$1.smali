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
    .line 84
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
    .line 87
    new-instance v0, Landroid/net/NetworkMisc;

    #@4
    invoke-direct {v0}, Landroid/net/NetworkMisc;-><init>()V

    #@7
    .line 88
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
    .line 89
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
    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result v1

    #@1d
    if-eqz v1, :cond_2

    #@1f
    :goto_2
    iput-boolean v2, v0, Landroid/net/NetworkMisc;->acceptUnvalidated:Z

    #@21
    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    iput-object v1, v0, Landroid/net/NetworkMisc;->subscriberId:Ljava/lang/String;

    #@27
    .line 92
    return-object v0

    #@28
    :cond_0
    move v1, v3

    #@29
    .line 88
    goto :goto_0

    #@2a
    :cond_1
    move v1, v3

    #@2b
    .line 89
    goto :goto_1

    #@2c
    :cond_2
    move v2, v3

    #@2d
    .line 90
    goto :goto_2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 86
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
    .line 97
    new-array v0, p1, [Landroid/net/NetworkMisc;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/NetworkMisc$1;->newArray(I)[Landroid/net/NetworkMisc;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
