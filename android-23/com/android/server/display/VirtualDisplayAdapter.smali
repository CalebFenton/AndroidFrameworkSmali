.class final Lcom/android/server/display/VirtualDisplayAdapter;
.super Lcom/android/server/display/DisplayAdapter;
.source "VirtualDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;,
        Lcom/android/server/display/VirtualDisplayAdapter$Callback;,
        Lcom/android/server/display/VirtualDisplayAdapter$MediaProjectionCallback;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "VirtualDisplayAdapter"

.field private static final UNIQUE_ID_PREFIX:Ljava/lang/String; = "virtual:"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mVirtualDisplayDevices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/android/server/display/VirtualDisplayAdapter;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "appToken"    # Landroid/os/IBinder;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/VirtualDisplayAdapter;->handleBinderDiedLocked(Landroid/os/IBinder;)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/display/VirtualDisplayAdapter;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "appToken"    # Landroid/os/IBinder;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/VirtualDisplayAdapter;->handleMediaProjectionStoppedLocked(Landroid/os/IBinder;)V

    #@3
    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;)V
    .locals 6
    .param p1, "syncRoot"    # Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "listener"    # Lcom/android/server/display/DisplayAdapter$Listener;

    #@0
    .prologue
    .line 59
    const-string/jumbo v5, "VirtualDisplayAdapter"

    #@3
    move-object v0, p0

    #@4
    move-object v1, p1

    #@5
    move-object v2, p2

    #@6
    move-object v3, p3

    #@7
    move-object v4, p4

    #@8
    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Ljava/lang/String;)V

    #@b
    .line 53
    new-instance v0, Landroid/util/ArrayMap;

    #@d
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@10
    .line 52
    iput-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    #@12
    .line 60
    iput-object p3, p0, Lcom/android/server/display/VirtualDisplayAdapter;->mHandler:Landroid/os/Handler;

    #@14
    .line 58
    return-void
.end method

.method private getNextUniqueIndex(Ljava/lang/String;)I
    .locals 4
    .param p1, "uniqueIdPrefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 126
    iget-object v3, p0, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    #@5
    move-result v3

    #@6
    if-eqz v3, :cond_0

    #@8
    .line 127
    const/4 v3, 0x0

    #@9
    return v3

    #@a
    .line 130
    :cond_0
    const/4 v2, 0x0

    #@b
    .line 131
    .local v2, "nextUniqueIndex":I
    iget-object v3, p0, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    #@d
    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@10
    move-result-object v3

    #@11
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v1

    #@15
    .line 132
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;>;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_2

    #@1b
    .line 133
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;

    #@21
    .line 134
    .local v0, "device":Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;
    invoke-virtual {v0}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->getUniqueId()Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@28
    move-result v3

    #@29
    if-eqz v3, :cond_1

    #@2b
    .line 135
    invoke-static {v0}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->-get0(Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;)I

    #@2e
    move-result v3

    #@2f
    if-lt v3, v2, :cond_1

    #@31
    .line 138
    invoke-static {v0}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->-get0(Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;)I

    #@34
    move-result v3

    #@35
    add-int/lit8 v2, v3, 0x1

    #@37
    goto :goto_0

    #@38
    .line 142
    .end local v0    # "device":Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;
    :cond_2
    return v2
.end method

.method private handleBinderDiedLocked(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "appToken"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 146
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;

    #@8
    .line 147
    .local v0, "device":Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;
    if-eqz v0, :cond_0

    #@a
    .line 148
    const-string/jumbo v1, "VirtualDisplayAdapter"

    #@d
    new-instance v2, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v3, "Virtual display device released because application token died: "

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    .line 149
    iget-object v3, v0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mOwnerPackageName:Ljava/lang/String;

    #@1b
    .line 148
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 150
    const/4 v1, 0x0

    #@27
    invoke-virtual {v0, v1}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->destroyLocked(Z)V

    #@2a
    .line 151
    const/4 v1, 0x3

    #@2b
    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/VirtualDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    #@2e
    .line 145
    :cond_0
    return-void
.end method

.method private handleMediaProjectionStoppedLocked(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "appToken"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 156
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;

    #@8
    .line 157
    .local v0, "device":Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;
    if-eqz v0, :cond_0

    #@a
    .line 158
    const-string/jumbo v1, "VirtualDisplayAdapter"

    #@d
    new-instance v2, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v3, "Virtual display device released because media projection stopped: "

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    .line 159
    iget-object v3, v0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mName:Ljava/lang/String;

    #@1b
    .line 158
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 160
    invoke-virtual {v0}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->stopLocked()V

    #@29
    .line 155
    :cond_0
    return-void
.end method


# virtual methods
.method public createVirtualDisplayLocked(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;ILjava/lang/String;Ljava/lang/String;IIILandroid/view/Surface;I)Lcom/android/server/display/DisplayDevice;
    .locals 20
    .param p1, "callback"    # Landroid/hardware/display/IVirtualDisplayCallback;
    .param p2, "projection"    # Landroid/media/projection/IMediaProjection;
    .param p3, "ownerUid"    # I
    .param p4, "ownerPackageName"    # Ljava/lang/String;
    .param p5, "name"    # Ljava/lang/String;
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "densityDpi"    # I
    .param p9, "surface"    # Landroid/view/Surface;
    .param p10, "flags"    # I

    #@0
    .prologue
    .line 66
    and-int/lit8 v3, p10, 0x4

    #@2
    if-eqz v3, :cond_1

    #@4
    const/16 v19, 0x1

    #@6
    .line 67
    .local v19, "secure":Z
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/hardware/display/IVirtualDisplayCallback;->asBinder()Landroid/os/IBinder;

    #@9
    move-result-object v5

    #@a
    .line 68
    .local v5, "appToken":Landroid/os/IBinder;
    move-object/from16 v0, p5

    #@c
    move/from16 v1, v19

    #@e
    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->createDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;

    #@11
    move-result-object v4

    #@12
    .line 70
    .local v4, "displayToken":Landroid/os/IBinder;
    new-instance v3, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v6, "virtual:"

    #@1a
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    move-object/from16 v0, p4

    #@20
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    const-string/jumbo v6, ","

    #@27
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v3

    #@2b
    move/from16 v0, p3

    #@2d
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v3

    #@31
    const-string/jumbo v6, ","

    #@34
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v3

    #@38
    move-object/from16 v0, p5

    #@3a
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v3

    #@3e
    const-string/jumbo v6, ","

    #@41
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v3

    #@45
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v17

    #@49
    .line 71
    .local v17, "baseUniqueId":Ljava/lang/String;
    move-object/from16 v0, p0

    #@4b
    move-object/from16 v1, v17

    #@4d
    invoke-direct {v0, v1}, Lcom/android/server/display/VirtualDisplayAdapter;->getNextUniqueIndex(Ljava/lang/String;)I

    #@50
    move-result v16

    #@51
    .line 72
    .local v16, "uniqueIndex":I
    new-instance v2, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;

    #@53
    .line 74
    new-instance v14, Lcom/android/server/display/VirtualDisplayAdapter$Callback;

    #@55
    move-object/from16 v0, p0

    #@57
    iget-object v3, v0, Lcom/android/server/display/VirtualDisplayAdapter;->mHandler:Landroid/os/Handler;

    #@59
    move-object/from16 v0, p1

    #@5b
    invoke-direct {v14, v0, v3}, Lcom/android/server/display/VirtualDisplayAdapter$Callback;-><init>(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/os/Handler;)V

    #@5e
    new-instance v3, Ljava/lang/StringBuilder;

    #@60
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@63
    move-object/from16 v0, v17

    #@65
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v3

    #@69
    move/from16 v0, v16

    #@6b
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v3

    #@6f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72
    move-result-object v15

    #@73
    move-object/from16 v3, p0

    #@75
    move/from16 v6, p3

    #@77
    move-object/from16 v7, p4

    #@79
    move-object/from16 v8, p5

    #@7b
    move/from16 v9, p6

    #@7d
    move/from16 v10, p7

    #@7f
    move/from16 v11, p8

    #@81
    move-object/from16 v12, p9

    #@83
    move/from16 v13, p10

    #@85
    .line 72
    invoke-direct/range {v2 .. v16}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;-><init>(Lcom/android/server/display/VirtualDisplayAdapter;Landroid/os/IBinder;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IIILandroid/view/Surface;ILcom/android/server/display/VirtualDisplayAdapter$Callback;Ljava/lang/String;I)V

    #@88
    .line 76
    .local v2, "device":Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;
    move-object/from16 v0, p0

    #@8a
    iget-object v3, v0, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    #@8c
    invoke-virtual {v3, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8f
    .line 79
    if-eqz p2, :cond_0

    #@91
    .line 80
    :try_start_0
    new-instance v3, Lcom/android/server/display/VirtualDisplayAdapter$MediaProjectionCallback;

    #@93
    move-object/from16 v0, p0

    #@95
    invoke-direct {v3, v0, v5}, Lcom/android/server/display/VirtualDisplayAdapter$MediaProjectionCallback;-><init>(Lcom/android/server/display/VirtualDisplayAdapter;Landroid/os/IBinder;)V

    #@98
    move-object/from16 v0, p2

    #@9a
    invoke-interface {v0, v3}, Landroid/media/projection/IMediaProjection;->registerCallback(Landroid/media/projection/IMediaProjectionCallback;)V

    #@9d
    .line 82
    :cond_0
    const/4 v3, 0x0

    #@9e
    invoke-interface {v5, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a1
    .line 91
    return-object v2

    #@a2
    .line 66
    .end local v2    # "device":Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;
    .end local v4    # "displayToken":Landroid/os/IBinder;
    .end local v5    # "appToken":Landroid/os/IBinder;
    .end local v16    # "uniqueIndex":I
    .end local v17    # "baseUniqueId":Ljava/lang/String;
    .end local v19    # "secure":Z
    :cond_1
    const/16 v19, 0x0

    #@a4
    .restart local v19    # "secure":Z
    goto/16 :goto_0

    #@a6
    .line 83
    .restart local v2    # "device":Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;
    .restart local v4    # "displayToken":Landroid/os/IBinder;
    .restart local v5    # "appToken":Landroid/os/IBinder;
    .restart local v16    # "uniqueIndex":I
    .restart local v17    # "baseUniqueId":Ljava/lang/String;
    :catch_0
    move-exception v18

    #@a7
    .line 84
    .local v18, "ex":Landroid/os/RemoteException;
    move-object/from16 v0, p0

    #@a9
    iget-object v3, v0, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    #@ab
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@ae
    .line 85
    const/4 v3, 0x0

    #@af
    invoke-virtual {v2, v3}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->destroyLocked(Z)V

    #@b2
    .line 86
    const/4 v3, 0x0

    #@b3
    return-object v3
.end method

.method public releaseVirtualDisplayLocked(Landroid/os/IBinder;)Lcom/android/server/display/DisplayDevice;
    .locals 2
    .param p1, "appToken"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 111
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;

    #@8
    .line 112
    .local v0, "device":Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;
    if-eqz v0, :cond_0

    #@a
    .line 113
    const/4 v1, 0x1

    #@b
    invoke-virtual {v0, v1}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->destroyLocked(Z)V

    #@e
    .line 114
    const/4 v1, 0x0

    #@f
    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    #@12
    .line 119
    :cond_0
    return-object v0
.end method

.method public resizeVirtualDisplayLocked(Landroid/os/IBinder;III)V
    .locals 2
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "densityDpi"    # I

    #@0
    .prologue
    .line 96
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;

    #@8
    .line 97
    .local v0, "device":Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;
    if-eqz v0, :cond_0

    #@a
    .line 98
    invoke-virtual {v0, p2, p3, p4}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->resizeLocked(III)V

    #@d
    .line 95
    :cond_0
    return-void
.end method

.method public setVirtualDisplaySurfaceLocked(Landroid/os/IBinder;Landroid/view/Surface;)V
    .locals 2
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "surface"    # Landroid/view/Surface;

    #@0
    .prologue
    .line 104
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;

    #@8
    .line 105
    .local v0, "device":Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;
    if-eqz v0, :cond_0

    #@a
    .line 106
    invoke-virtual {v0, p2}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->setSurfaceLocked(Landroid/view/Surface;)V

    #@d
    .line 103
    :cond_0
    return-void
.end method
