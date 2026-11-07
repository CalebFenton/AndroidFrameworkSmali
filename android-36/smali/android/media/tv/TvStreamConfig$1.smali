.class Landroid/media/tv/TvStreamConfig$1;
.super Ljava/lang/Object;
.source "TvStreamConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvStreamConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/tv/TvStreamConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/media/tv/TvStreamConfig;
    .registers 5
    .param p1, "source"    # Landroid/os/Parcel;

    .line 54
    :try_start_0
    new-instance v0, Landroid/media/tv/TvStreamConfig$Builder;

    invoke-direct {v0}, Landroid/media/tv/TvStreamConfig$Builder;-><init>()V

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/tv/TvStreamConfig$Builder;->streamId(I)Landroid/media/tv/TvStreamConfig$Builder;

    move-result-object v0

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/tv/TvStreamConfig$Builder;->type(I)Landroid/media/tv/TvStreamConfig$Builder;

    move-result-object v0

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/tv/TvStreamConfig$Builder;->maxWidth(I)Landroid/media/tv/TvStreamConfig$Builder;

    move-result-object v0

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/tv/TvStreamConfig$Builder;->maxHeight(I)Landroid/media/tv/TvStreamConfig$Builder;

    move-result-object v0

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/tv/TvStreamConfig$Builder;->generation(I)Landroid/media/tv/TvStreamConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/tv/TvStreamConfig$Builder;->build()Landroid/media/tv/TvStreamConfig;

    move-result-object v0
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_31} :catch_32

    .line 54
    return-object v0

    .line 60
    :catch_32
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/media/tv/TvStreamConfig;->TAG:Ljava/lang/String;

    const-string v2, "Exception creating TvStreamConfig from parcel"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    const/4 v1, 0x0

    return-object v1
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 50
    invoke-virtual {p0, p1}, Landroid/media/tv/TvStreamConfig$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/tv/TvStreamConfig;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/media/tv/TvStreamConfig;
    .registers 3
    .param p1, "size"    # I

    .line 68
    new-array v0, p1, [Landroid/media/tv/TvStreamConfig;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 50
    invoke-virtual {p0, p1}, Landroid/media/tv/TvStreamConfig$1;->newArray(I)[Landroid/media/tv/TvStreamConfig;

    move-result-object p1

    return-object p1
.end method
