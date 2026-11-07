.class public final Landroid/media/MediaTranscodingManager$VideoTranscodingRequest$Builder;
.super Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;
.source "MediaTranscodingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaTranscodingManager$VideoTranscodingRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder<",
        "Landroid/media/MediaTranscodingManager$VideoTranscodingRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mAudioTrackFormat:Landroid/media/MediaFormat;

.field private blacklist mVideoTrackFormat:Landroid/media/MediaFormat;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAudioTrackFormat(Landroid/media/MediaTranscodingManager$VideoTranscodingRequest$Builder;)Landroid/media/MediaFormat;
    .registers 1

    .line 0
    iget-object p0, p0, Landroid/media/MediaTranscodingManager$VideoTranscodingRequest$Builder;->mAudioTrackFormat:Landroid/media/MediaFormat;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVideoTrackFormat(Landroid/media/MediaTranscodingManager$VideoTranscodingRequest$Builder;)Landroid/media/MediaFormat;
    .registers 1

    .line 0
    iget-object p0, p0, Landroid/media/MediaTranscodingManager$VideoTranscodingRequest$Builder;->mVideoTrackFormat:Landroid/media/MediaFormat;

    return-object p0
.end method

.method public constructor whitelist <init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/media/MediaFormat;)V
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1189
    invoke-direct {p0, v0, p1, p2, v1}, Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;-><init>(ILandroid/net/Uri;Landroid/net/Uri;Landroid/media/MediaTranscodingManager-IA;)V

    .line 1164
    iput-object v1, p0, Landroid/media/MediaTranscodingManager$VideoTranscodingRequest$Builder;->mVideoTrackFormat:Landroid/media/MediaFormat;

    .line 1171
    iput-object v1, p0, Landroid/media/MediaTranscodingManager$VideoTranscodingRequest$Builder;->mAudioTrackFormat:Landroid/media/MediaFormat;

    .line 1190
    invoke-direct {p0, p3}, Landroid/media/MediaTranscodingManager$VideoTranscodingRequest$Builder;->setVideoTrackFormat(Landroid/media/MediaFormat;)V

    return-void
.end method

.method private blacklist setVideoTrackFormat(Landroid/media/MediaFormat;)V
    .registers 4

    if-eqz p1, :cond_25

    .line 1227
    const-string v0, "mime"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1228
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    if-eqz v0, :cond_1d

    .line 1229
    const-string v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1233
    iput-object p1, p0, Landroid/media/MediaTranscodingManager$VideoTranscodingRequest$Builder;->mVideoTrackFormat:Landroid/media/MediaFormat;

    return-void

    .line 1230
    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid video format: wrong mime type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1223
    :cond_25
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "videoFormat must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public whitelist build()Landroid/media/MediaTranscodingManager$VideoTranscodingRequest;
    .registers 3

    .line 1246
    new-instance v0, Landroid/media/MediaTranscodingManager$VideoTranscodingRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/MediaTranscodingManager$VideoTranscodingRequest;-><init>(Landroid/media/MediaTranscodingManager$VideoTranscodingRequest$Builder;Landroid/media/MediaTranscodingManager-IA;)V

    return-object v0
.end method

.method bridge synthetic blacklist self()Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;
    .registers 1

    .line 1157
    invoke-virtual {p0}, Landroid/media/MediaTranscodingManager$VideoTranscodingRequest$Builder;->self()Landroid/media/MediaTranscodingManager$VideoTranscodingRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method blacklist self()Landroid/media/MediaTranscodingManager$VideoTranscodingRequest$Builder;
    .registers 1

    .line 0
    return-object p0
.end method

.method public bridge synthetic blacklist setClientPid(I)Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1157
    invoke-virtual {p0, p1}, Landroid/media/MediaTranscodingManager$VideoTranscodingRequest$Builder;->setClientPid(I)Landroid/media/MediaTranscodingManager$VideoTranscodingRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public whitelist setClientPid(I)Landroid/media/MediaTranscodingManager$VideoTranscodingRequest$Builder;
    .registers 2

    .line 1203
    invoke-super {p0, p1}, Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;->setClientPid(I)Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;

    .line 1204
    invoke-virtual {p0}, Landroid/media/MediaTranscodingManager$VideoTranscodingRequest$Builder;->self()Landroid/media/MediaTranscodingManager$VideoTranscodingRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic blacklist setClientUid(I)Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1157
    invoke-virtual {p0, p1}, Landroid/media/MediaTranscodingManager$VideoTranscodingRequest$Builder;->setClientUid(I)Landroid/media/MediaTranscodingManager$VideoTranscodingRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public whitelist setClientUid(I)Landroid/media/MediaTranscodingManager$VideoTranscodingRequest$Builder;
    .registers 2

    .line 1196
    invoke-super {p0, p1}, Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;->setClientUid(I)Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;

    .line 1197
    invoke-virtual {p0}, Landroid/media/MediaTranscodingManager$VideoTranscodingRequest$Builder;->self()Landroid/media/MediaTranscodingManager$VideoTranscodingRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic blacklist setDestinationFileDescriptor(Landroid/os/ParcelFileDescriptor;)Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1157
    invoke-virtual {p0, p1}, Landroid/media/MediaTranscodingManager$VideoTranscodingRequest$Builder;->setDestinationFileDescriptor(Landroid/os/ParcelFileDescriptor;)Landroid/media/MediaTranscodingManager$VideoTranscodingRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public whitelist setDestinationFileDescriptor(Landroid/os/ParcelFileDescriptor;)Landroid/media/MediaTranscodingManager$VideoTranscodingRequest$Builder;
    .registers 2

    .line 1217
    invoke-super {p0, p1}, Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;->setDestinationFileDescriptor(Landroid/os/ParcelFileDescriptor;)Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;

    .line 1218
    invoke-virtual {p0}, Landroid/media/MediaTranscodingManager$VideoTranscodingRequest$Builder;->self()Landroid/media/MediaTranscodingManager$VideoTranscodingRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic blacklist setPriority(I)Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1157
    invoke-super {p0, p1}, Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;->setPriority(I)Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic blacklist setSourceFileDescriptor(Landroid/os/ParcelFileDescriptor;)Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1157
    invoke-virtual {p0, p1}, Landroid/media/MediaTranscodingManager$VideoTranscodingRequest$Builder;->setSourceFileDescriptor(Landroid/os/ParcelFileDescriptor;)Landroid/media/MediaTranscodingManager$VideoTranscodingRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public whitelist setSourceFileDescriptor(Landroid/os/ParcelFileDescriptor;)Landroid/media/MediaTranscodingManager$VideoTranscodingRequest$Builder;
    .registers 2

    .line 1210
    invoke-super {p0, p1}, Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;->setSourceFileDescriptor(Landroid/os/ParcelFileDescriptor;)Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;

    .line 1211
    invoke-virtual {p0}, Landroid/media/MediaTranscodingManager$VideoTranscodingRequest$Builder;->self()Landroid/media/MediaTranscodingManager$VideoTranscodingRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic blacklist setTestConfig(Landroid/media/TranscodingTestConfig;)Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1157
    invoke-super {p0, p1}, Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;->setTestConfig(Landroid/media/TranscodingTestConfig;)Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;

    move-result-object p0

    return-object p0
.end method
