.class public final Landroid/media/projection/MediaProjection;
.super Ljava/lang/Object;
.source "MediaProjection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/projection/MediaProjection$Callback;,
        Landroid/media/projection/MediaProjection$MediaProjectionCallback;,
        Landroid/media/projection/MediaProjection$CallbackRecord;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaProjection"


# instance fields
.field private final mCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/media/projection/MediaProjection$Callback;",
            "Landroid/media/projection/MediaProjection$CallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mImpl:Landroid/media/projection/IMediaProjection;


# direct methods
.method static synthetic -get0(Landroid/media/projection/MediaProjection;)Ljava/util/Map;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/projection/MediaProjection;->mCallbacks:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/projection/IMediaProjection;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "impl"    # Landroid/media/projection/IMediaProjection;

    #@0
    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 55
    new-instance v1, Landroid/util/ArrayMap;

    #@5
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    #@8
    iput-object v1, p0, Landroid/media/projection/MediaProjection;->mCallbacks:Ljava/util/Map;

    #@a
    .line 56
    iput-object p1, p0, Landroid/media/projection/MediaProjection;->mContext:Landroid/content/Context;

    #@c
    .line 57
    iput-object p2, p0, Landroid/media/projection/MediaProjection;->mImpl:Landroid/media/projection/IMediaProjection;

    #@e
    .line 59
    :try_start_0
    iget-object v1, p0, Landroid/media/projection/MediaProjection;->mImpl:Landroid/media/projection/IMediaProjection;

    #@10
    new-instance v2, Landroid/media/projection/MediaProjection$MediaProjectionCallback;

    #@12
    const/4 v3, 0x0

    #@13
    invoke-direct {v2, p0, v3}, Landroid/media/projection/MediaProjection$MediaProjectionCallback;-><init>(Landroid/media/projection/MediaProjection;Landroid/media/projection/MediaProjection$MediaProjectionCallback;)V

    #@16
    invoke-interface {v1, v2}, Landroid/media/projection/IMediaProjection;->start(Landroid/media/projection/IMediaProjectionCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    .line 54
    return-void

    #@1a
    .line 60
    :catch_0
    move-exception v0

    #@1b
    .line 61
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@1d
    const-string/jumbo v2, "Failed to start media projection"

    #@20
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@23
    throw v1
.end method


# virtual methods
.method public createAudioRecord(IIII)Landroid/media/AudioRecord;
    .locals 1
    .param p1, "sampleRateInHz"    # I
    .param p2, "channelConfig"    # I
    .param p3, "audioFormat"    # I
    .param p4, "bufferSizeInBytes"    # I

    #@0
    .prologue
    .line 148
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public createVirtualDisplay(Ljava/lang/String;IIIILandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "dpi"    # I
    .param p5, "flags"    # I
    .param p6, "surface"    # Landroid/view/Surface;
    .param p7, "callback"    # Landroid/hardware/display/VirtualDisplay$Callback;
    .param p8, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 136
    iget-object v1, p0, Landroid/media/projection/MediaProjection;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "display"

    #@5
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/hardware/display/DisplayManager;

    #@b
    .local v0, "dm":Landroid/hardware/display/DisplayManager;
    move-object v1, p0

    #@c
    move-object v2, p1

    #@d
    move v3, p2

    #@e
    move v4, p3

    #@f
    move v5, p4

    #@10
    move-object/from16 v6, p6

    #@12
    move v7, p5

    #@13
    move-object/from16 v8, p7

    #@15
    move-object/from16 v9, p8

    #@17
    .line 137
    invoke-virtual/range {v0 .. v9}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Landroid/media/projection/MediaProjection;Ljava/lang/String;IIILandroid/view/Surface;ILandroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    #@1a
    move-result-object v1

    #@1b
    return-object v1
.end method

.method public createVirtualDisplay(Ljava/lang/String;IIIZLandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;
    .locals 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "dpi"    # I
    .param p5, "isSecure"    # Z
    .param p6, "surface"    # Landroid/view/Surface;
    .param p7, "callback"    # Landroid/hardware/display/VirtualDisplay$Callback;
    .param p8, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 103
    iget-object v1, p0, Landroid/media/projection/MediaProjection;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "display"

    #@5
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/hardware/display/DisplayManager;

    #@b
    .line 104
    .local v0, "dm":Landroid/hardware/display/DisplayManager;
    if-eqz p5, :cond_0

    #@d
    const/4 v10, 0x4

    #@e
    .line 106
    .local v10, "flags":I
    :goto_0
    or-int/lit8 v1, v10, 0x10

    #@10
    or-int/lit8 v7, v1, 0x2

    #@12
    move-object v1, p0

    #@13
    move-object v2, p1

    #@14
    move v3, p2

    #@15
    move v4, p3

    #@16
    move v5, p4

    #@17
    move-object/from16 v6, p6

    #@19
    move-object/from16 v8, p7

    #@1b
    move-object/from16 v9, p8

    #@1d
    .line 105
    invoke-virtual/range {v0 .. v9}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Landroid/media/projection/MediaProjection;Ljava/lang/String;IIILandroid/view/Surface;ILandroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    #@20
    move-result-object v1

    #@21
    return-object v1

    #@22
    .line 104
    .end local v10    # "flags":I
    :cond_0
    const/4 v10, 0x0

    #@23
    .restart local v10    # "flags":I
    goto :goto_0
.end method

.method public getProjection()Landroid/media/projection/IMediaProjection;
    .locals 1

    #@0
    .prologue
    .line 167
    iget-object v0, p0, Landroid/media/projection/MediaProjection;->mImpl:Landroid/media/projection/IMediaProjection;

    #@2
    return-object v0
.end method

.method public registerCallback(Landroid/media/projection/MediaProjection$Callback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "callback"    # Landroid/media/projection/MediaProjection$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 75
    if-nez p1, :cond_0

    #@2
    .line 76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "callback should not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 78
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 79
    new-instance p2, Landroid/os/Handler;

    #@f
    .end local p2    # "handler":Landroid/os/Handler;
    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    #@12
    .line 81
    .restart local p2    # "handler":Landroid/os/Handler;
    :cond_1
    iget-object v0, p0, Landroid/media/projection/MediaProjection;->mCallbacks:Ljava/util/Map;

    #@14
    new-instance v1, Landroid/media/projection/MediaProjection$CallbackRecord;

    #@16
    invoke-direct {v1, p1, p2}, Landroid/media/projection/MediaProjection$CallbackRecord;-><init>(Landroid/media/projection/MediaProjection$Callback;Landroid/os/Handler;)V

    #@19
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    .line 74
    return-void
.end method

.method public stop()V
    .locals 3

    #@0
    .prologue
    .line 156
    :try_start_0
    iget-object v1, p0, Landroid/media/projection/MediaProjection;->mImpl:Landroid/media/projection/IMediaProjection;

    #@2
    invoke-interface {v1}, Landroid/media/projection/IMediaProjection;->stop()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 154
    :goto_0
    return-void

    #@6
    .line 157
    :catch_0
    move-exception v0

    #@7
    .line 158
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaProjection"

    #@a
    const-string/jumbo v2, "Unable to stop projection"

    #@d
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    goto :goto_0
.end method

.method public unregisterCallback(Landroid/media/projection/MediaProjection$Callback;)V
    .locals 2
    .param p1, "callback"    # Landroid/media/projection/MediaProjection$Callback;

    #@0
    .prologue
    .line 91
    if-nez p1, :cond_0

    #@2
    .line 92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "callback should not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 94
    :cond_0
    iget-object v0, p0, Landroid/media/projection/MediaProjection;->mCallbacks:Ljava/util/Map;

    #@d
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    .line 90
    return-void
.end method
