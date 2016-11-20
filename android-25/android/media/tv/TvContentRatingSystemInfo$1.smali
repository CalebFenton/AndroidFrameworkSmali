.class final Landroid/media/tv/TvContentRatingSystemInfo$1;
.super Ljava/lang/Object;
.source "TvContentRatingSystemInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvContentRatingSystemInfo;
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
        "Landroid/media/tv/TvContentRatingSystemInfo;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/media/tv/TvContentRatingSystemInfo;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 87
    new-instance v0, Landroid/media/tv/TvContentRatingSystemInfo;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p1, v1}, Landroid/media/tv/TvContentRatingSystemInfo;-><init>(Landroid/os/Parcel;Landroid/media/tv/TvContentRatingSystemInfo;)V

    #@6
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 86
    invoke-virtual {p0, p1}, Landroid/media/tv/TvContentRatingSystemInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/tv/TvContentRatingSystemInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/media/tv/TvContentRatingSystemInfo;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 92
    new-array v0, p1, [Landroid/media/tv/TvContentRatingSystemInfo;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 91
    invoke-virtual {p0, p1}, Landroid/media/tv/TvContentRatingSystemInfo$1;->newArray(I)[Landroid/media/tv/TvContentRatingSystemInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
