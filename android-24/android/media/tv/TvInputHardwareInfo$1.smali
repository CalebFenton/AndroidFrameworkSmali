.class final Landroid/media/tv/TvInputHardwareInfo$1;
.super Ljava/lang/Object;
.source "TvInputHardwareInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputHardwareInfo;
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
        "Landroid/media/tv/TvInputHardwareInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/media/tv/TvInputHardwareInfo;
    .locals 5
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 52
    :try_start_0
    new-instance v1, Landroid/media/tv/TvInputHardwareInfo;

    #@3
    const/4 v2, 0x0

    #@4
    invoke-direct {v1, v2}, Landroid/media/tv/TvInputHardwareInfo;-><init>(Landroid/media/tv/TvInputHardwareInfo;)V

    #@7
    .line 53
    .local v1, "info":Landroid/media/tv/TvInputHardwareInfo;
    invoke-virtual {v1, p1}, Landroid/media/tv/TvInputHardwareInfo;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 54
    return-object v1

    #@b
    .line 55
    .end local v1    # "info":Landroid/media/tv/TvInputHardwareInfo;
    :catch_0
    move-exception v0

    #@c
    .line 56
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "TvInputHardwareInfo"

    #@f
    const-string/jumbo v3, "Exception creating TvInputHardwareInfo from parcel"

    #@12
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@15
    .line 57
    return-object v4
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 50
    invoke-virtual {p0, p1}, Landroid/media/tv/TvInputHardwareInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/tv/TvInputHardwareInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/media/tv/TvInputHardwareInfo;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 63
    new-array v0, p1, [Landroid/media/tv/TvInputHardwareInfo;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 62
    invoke-virtual {p0, p1}, Landroid/media/tv/TvInputHardwareInfo$1;->newArray(I)[Landroid/media/tv/TvInputHardwareInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
