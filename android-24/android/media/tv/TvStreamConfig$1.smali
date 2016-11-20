.class final Landroid/media/tv/TvStreamConfig$1;
.super Ljava/lang/Object;
.source "TvStreamConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvStreamConfig;
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
        "Landroid/media/tv/TvStreamConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/media/tv/TvStreamConfig;
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 50
    :try_start_0
    new-instance v1, Landroid/media/tv/TvStreamConfig$Builder;

    #@2
    invoke-direct {v1}, Landroid/media/tv/TvStreamConfig$Builder;-><init>()V

    #@5
    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8
    move-result v2

    #@9
    .line 50
    invoke-virtual {v1, v2}, Landroid/media/tv/TvStreamConfig$Builder;->streamId(I)Landroid/media/tv/TvStreamConfig$Builder;

    #@c
    move-result-object v1

    #@d
    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@10
    move-result v2

    #@11
    .line 50
    invoke-virtual {v1, v2}, Landroid/media/tv/TvStreamConfig$Builder;->type(I)Landroid/media/tv/TvStreamConfig$Builder;

    #@14
    move-result-object v1

    #@15
    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@18
    move-result v2

    #@19
    .line 50
    invoke-virtual {v1, v2}, Landroid/media/tv/TvStreamConfig$Builder;->maxWidth(I)Landroid/media/tv/TvStreamConfig$Builder;

    #@1c
    move-result-object v1

    #@1d
    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@20
    move-result v2

    #@21
    .line 50
    invoke-virtual {v1, v2}, Landroid/media/tv/TvStreamConfig$Builder;->maxHeight(I)Landroid/media/tv/TvStreamConfig$Builder;

    #@24
    move-result-object v1

    #@25
    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@28
    move-result v2

    #@29
    .line 50
    invoke-virtual {v1, v2}, Landroid/media/tv/TvStreamConfig$Builder;->generation(I)Landroid/media/tv/TvStreamConfig$Builder;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1}, Landroid/media/tv/TvStreamConfig$Builder;->build()Landroid/media/tv/TvStreamConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@30
    move-result-object v1

    #@31
    return-object v1

    #@32
    .line 56
    :catch_0
    move-exception v0

    #@33
    .line 57
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/media/tv/TvStreamConfig;->TAG:Ljava/lang/String;

    #@35
    const-string/jumbo v2, "Exception creating TvStreamConfig from parcel"

    #@38
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3b
    .line 58
    const/4 v1, 0x0

    #@3c
    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 48
    invoke-virtual {p0, p1}, Landroid/media/tv/TvStreamConfig$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/tv/TvStreamConfig;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/media/tv/TvStreamConfig;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 64
    new-array v0, p1, [Landroid/media/tv/TvStreamConfig;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/media/tv/TvStreamConfig$1;->newArray(I)[Landroid/media/tv/TvStreamConfig;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
