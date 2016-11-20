.class final Landroid/media/VolumePolicy$1;
.super Ljava/lang/Object;
.source "VolumePolicy.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/VolumePolicy;
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
        "Landroid/media/VolumePolicy;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/media/VolumePolicy;
    .locals 6
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 91
    new-instance v4, Landroid/media/VolumePolicy;

    #@4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    move v0, v1

    #@b
    .line 92
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_1

    #@11
    move v3, v1

    #@12
    .line 93
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@15
    move-result v5

    #@16
    if-eqz v5, :cond_2

    #@18
    .line 94
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1b
    move-result v2

    #@1c
    .line 91
    invoke-direct {v4, v0, v3, v1, v2}, Landroid/media/VolumePolicy;-><init>(ZZZI)V

    #@1f
    return-object v4

    #@20
    :cond_0
    move v0, v2

    #@21
    goto :goto_0

    #@22
    :cond_1
    move v3, v2

    #@23
    .line 92
    goto :goto_1

    #@24
    :cond_2
    move v1, v2

    #@25
    .line 93
    goto :goto_2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 90
    invoke-virtual {p0, p1}, Landroid/media/VolumePolicy$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/VolumePolicy;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/media/VolumePolicy;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 99
    new-array v0, p1, [Landroid/media/VolumePolicy;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 98
    invoke-virtual {p0, p1}, Landroid/media/VolumePolicy$1;->newArray(I)[Landroid/media/VolumePolicy;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
