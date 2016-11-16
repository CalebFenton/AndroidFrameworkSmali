.class final Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
.super Lcom/android/server/display/DisplayDevice;
.source "LocalDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/LocalDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalDisplayDevice"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field final synthetic $assertionsDisabled:Z

.field private mActiveColorMode:I

.field private mActiveColorModeInvalid:Z

.field private mActiveModeId:I

.field private mActiveModeInvalid:Z

.field private mActivePhysIndex:I

.field private final mBacklight:Lcom/android/server/lights/Light;

.field private mBrightness:I

.field private final mBuiltInDisplayId:I

.field private mDefaultModeId:I

.field private mDisplayInfos:[Landroid/view/SurfaceControl$PhysicalDisplayInfo;

.field private mHavePendingChanges:Z

.field private mHdrCapabilities:Landroid/view/Display$HdrCapabilities;

.field private mInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field private mState:I

.field private final mSupportedColorModes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSupportedModes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/display/LocalDisplayAdapter;


# direct methods
.method static synthetic -get0(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Lcom/android/server/lights/Light;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBacklight:Lcom/android/server/lights/Light;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->-assertionsDisabled:Z

    #@b
    .line 156
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/server/display/LocalDisplayAdapter;Landroid/os/IBinder;I[Landroid/view/SurfaceControl$PhysicalDisplayInfo;I[II)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/server/display/LocalDisplayAdapter;
    .param p2, "displayToken"    # Landroid/os/IBinder;
    .param p3, "builtInDisplayId"    # I
    .param p4, "physicalDisplayInfos"    # [Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    .param p5, "activeDisplayInfo"    # I
    .param p6, "colorModes"    # [I
    .param p7, "activeColorMode"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 176
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    #@3
    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "local:"

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/display/DisplayDevice;-><init>(Lcom/android/server/display/DisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;)V

    #@1a
    .line 159
    new-instance v1, Landroid/util/SparseArray;

    #@1c
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    #@1f
    iput-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    #@21
    .line 160
    new-instance v1, Ljava/util/ArrayList;

    #@23
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@26
    iput-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    #@28
    .line 164
    iput v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    #@2a
    .line 165
    const/4 v1, -0x1

    #@2b
    iput v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBrightness:I

    #@2d
    .line 180
    iput p3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBuiltInDisplayId:I

    #@2f
    .line 181
    invoke-virtual {p0, p4, p5, p6, p7}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updatePhysicalDisplayInfoLocked([Landroid/view/SurfaceControl$PhysicalDisplayInfo;I[II)Z

    #@32
    .line 183
    invoke-direct {p0, p6, p7}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateColorModesLocked([II)Z

    #@35
    .line 184
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBuiltInDisplayId:I

    #@37
    if-nez v1, :cond_0

    #@39
    .line 185
    const-class v1, Lcom/android/server/lights/LightsManager;

    #@3b
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@3e
    move-result-object v0

    #@3f
    check-cast v0, Lcom/android/server/lights/LightsManager;

    #@41
    .line 186
    .local v0, "lights":Lcom/android/server/lights/LightsManager;
    invoke-virtual {v0, v3}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    #@44
    move-result-object v1

    #@45
    iput-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBacklight:Lcom/android/server/lights/Light;

    #@47
    .line 190
    .end local v0    # "lights":Lcom/android/server/lights/LightsManager;
    :goto_0
    invoke-static {p2}, Landroid/view/SurfaceControl;->getHdrCapabilities(Landroid/os/IBinder;)Landroid/view/Display$HdrCapabilities;

    #@4a
    move-result-object v1

    #@4b
    iput-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHdrCapabilities:Landroid/view/Display$HdrCapabilities;

    #@4d
    .line 178
    return-void

    #@4e
    .line 188
    :cond_0
    const/4 v1, 0x0

    #@4f
    iput-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBacklight:Lcom/android/server/lights/Light;

    #@51
    goto :goto_0
.end method

.method private findDisplayInfoIndexLocked(I)I
    .locals 4
    .param p1, "modeId"    # I

    #@0
    .prologue
    .line 601
    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    check-cast v2, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    #@8
    .line 602
    .local v2, "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    if-eqz v2, :cond_1

    #@a
    .line 603
    const/4 v0, 0x0

    #@b
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayInfos:[Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    #@d
    array-length v3, v3

    #@e
    if-ge v0, v3, :cond_1

    #@10
    .line 604
    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayInfos:[Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    #@12
    aget-object v1, v3, v0

    #@14
    .line 605
    .local v1, "info":Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    invoke-virtual {v2, v1}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->hasMatchingMode(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Z

    #@17
    move-result v3

    #@18
    if-eqz v3, :cond_0

    #@1a
    .line 606
    return v0

    #@1b
    .line 603
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 610
    .end local v0    # "i":I
    .end local v1    # "info":Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    :cond_1
    const/4 v3, -0x1

    #@1f
    return v3
.end method

.method private findDisplayModeRecord(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    .locals 3
    .param p1, "info"    # Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    #@0
    .prologue
    .line 336
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    #@6
    move-result v2

    #@7
    if-ge v0, v2, :cond_1

    #@9
    .line 337
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    #@b
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    #@11
    .line 338
    .local v1, "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    invoke-virtual {v1, p1}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->hasMatchingMode(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_0

    #@17
    .line 339
    return-object v1

    #@18
    .line 336
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 342
    .end local v1    # "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    :cond_1
    const/4 v2, 0x0

    #@1c
    return-object v2
.end method

.method private updateColorModesLocked([II)Z
    .locals 10
    .param p1, "colorModes"    # [I
    .param p2, "activeColorMode"    # I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 286
    new-instance v3, Ljava/util/ArrayList;

    #@4
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@7
    .line 289
    .local v3, "pendingColorModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    #@8
    .line 290
    .local v1, "colorModesAdded":Z
    array-length v7, p1

    #@9
    move v4, v6

    #@a
    :goto_0
    if-ge v4, v7, :cond_1

    #@c
    aget v0, p1, v4

    #@e
    .line 291
    .local v0, "colorMode":I
    iget-object v8, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    #@10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@13
    move-result-object v9

    #@14
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@17
    move-result v8

    #@18
    if-nez v8, :cond_0

    #@1a
    .line 292
    const/4 v1, 0x1

    #@1b
    .line 294
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1e
    move-result-object v8

    #@1f
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@22
    .line 290
    add-int/lit8 v4, v4, 0x1

    #@24
    goto :goto_0

    #@25
    .line 298
    .end local v0    # "colorMode":I
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@28
    move-result v4

    #@29
    iget-object v7, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    #@2b
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@2e
    move-result v7

    #@2f
    if-ne v4, v7, :cond_2

    #@31
    move v2, v1

    #@32
    .line 302
    .local v2, "colorModesChanged":Z
    :goto_1
    if-nez v2, :cond_3

    #@34
    .line 303
    return v6

    #@35
    .end local v2    # "colorModesChanged":Z
    :cond_2
    move v2, v5

    #@36
    .line 298
    goto :goto_1

    #@37
    .line 306
    .restart local v2    # "colorModesChanged":Z
    :cond_3
    iput-boolean v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHavePendingChanges:Z

    #@39
    .line 308
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    #@3b
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    #@3e
    .line 309
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    #@40
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@43
    .line 310
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    #@45
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    #@48
    .line 313
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    #@4a
    iget v7, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    #@4c
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4f
    move-result-object v7

    #@50
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@53
    move-result v4

    #@54
    if-nez v4, :cond_4

    #@56
    .line 314
    iget v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    #@58
    if-eqz v4, :cond_5

    #@5a
    .line 315
    const-string/jumbo v4, "LocalDisplayAdapter"

    #@5d
    const-string/jumbo v7, "Active color mode no longer available, reverting to default mode."

    #@60
    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@63
    .line 317
    iput v6, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    #@65
    .line 318
    iput-boolean v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorModeInvalid:Z

    #@67
    .line 332
    :cond_4
    :goto_2
    return v5

    #@68
    .line 320
    :cond_5
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    #@6a
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    #@6d
    move-result v4

    #@6e
    if-nez v4, :cond_6

    #@70
    .line 322
    const-string/jumbo v4, "LocalDisplayAdapter"

    #@73
    const-string/jumbo v7, "Default and active color mode is no longer available! Reverting to first available mode."

    #@76
    invoke-static {v4, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@79
    .line 324
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    #@7b
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@7e
    move-result-object v4

    #@7f
    check-cast v4, Ljava/lang/Integer;

    #@81
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@84
    move-result v4

    #@85
    iput v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    #@87
    .line 325
    iput-boolean v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorModeInvalid:Z

    #@89
    goto :goto_2

    #@8a
    .line 328
    :cond_6
    const-string/jumbo v4, "LocalDisplayAdapter"

    #@8d
    const-string/jumbo v6, "No color modes available!"

    #@90
    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@93
    goto :goto_2
.end method

.method private updateDeviceInfoLocked()V
    .locals 2

    #@0
    .prologue
    .line 614
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@3
    .line 615
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    #@5
    const/4 v1, 0x2

    #@6
    invoke-virtual {v0, p0, v1}, Lcom/android/server/display/LocalDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    #@9
    .line 613
    return-void
.end method


# virtual methods
.method public applyPendingDisplayDeviceInfoChangesLocked()V
    .locals 1

    #@0
    .prologue
    .line 347
    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHavePendingChanges:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 348
    const/4 v0, 0x0

    #@5
    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@7
    .line 349
    const/4 v0, 0x0

    #@8
    iput-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHavePendingChanges:Z

    #@a
    .line 346
    :cond_0
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 574
    invoke-super {p0, p1}, Lcom/android/server/display/DisplayDevice;->dumpLocked(Ljava/io/PrintWriter;)V

    #@3
    .line 575
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "mBuiltInDisplayId="

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBuiltInDisplayId:I

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1c
    .line 576
    new-instance v1, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v2, "mActivePhysIndex="

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActivePhysIndex:I

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@35
    .line 577
    new-instance v1, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v2, "mActiveModeId="

    #@3d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v1

    #@41
    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    #@43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@46
    move-result-object v1

    #@47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v1

    #@4b
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4e
    .line 578
    new-instance v1, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    const-string/jumbo v2, "mActiveColorMode="

    #@56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v1

    #@5a
    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    #@5c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v1

    #@60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v1

    #@64
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@67
    .line 579
    new-instance v1, Ljava/lang/StringBuilder;

    #@69
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6c
    const-string/jumbo v2, "mState="

    #@6f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v1

    #@73
    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    #@75
    invoke-static {v2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    #@78
    move-result-object v2

    #@79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v1

    #@7d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@80
    move-result-object v1

    #@81
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@84
    .line 580
    new-instance v1, Ljava/lang/StringBuilder;

    #@86
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@89
    const-string/jumbo v2, "mBrightness="

    #@8c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v1

    #@90
    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBrightness:I

    #@92
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@95
    move-result-object v1

    #@96
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@99
    move-result-object v1

    #@9a
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@9d
    .line 581
    new-instance v1, Ljava/lang/StringBuilder;

    #@9f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a2
    const-string/jumbo v2, "mBacklight="

    #@a5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v1

    #@a9
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBacklight:Lcom/android/server/lights/Light;

    #@ab
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v1

    #@af
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b2
    move-result-object v1

    #@b3
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@b6
    .line 582
    const-string/jumbo v1, "mDisplayInfos="

    #@b9
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@bc
    .line 583
    const/4 v0, 0x0

    #@bd
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayInfos:[Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    #@bf
    array-length v1, v1

    #@c0
    if-ge v0, v1, :cond_0

    #@c2
    .line 584
    new-instance v1, Ljava/lang/StringBuilder;

    #@c4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c7
    const-string/jumbo v2, "  "

    #@ca
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v1

    #@ce
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayInfos:[Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    #@d0
    aget-object v2, v2, v0

    #@d2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v1

    #@d6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d9
    move-result-object v1

    #@da
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@dd
    .line 583
    add-int/lit8 v0, v0, 0x1

    #@df
    goto :goto_0

    #@e0
    .line 586
    :cond_0
    const-string/jumbo v1, "mSupportedModes="

    #@e3
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@e6
    .line 587
    const/4 v0, 0x0

    #@e7
    :goto_1
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    #@e9
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    #@ec
    move-result v1

    #@ed
    if-ge v0, v1, :cond_1

    #@ef
    .line 588
    new-instance v1, Ljava/lang/StringBuilder;

    #@f1
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f4
    const-string/jumbo v2, "  "

    #@f7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fa
    move-result-object v1

    #@fb
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    #@fd
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@100
    move-result-object v2

    #@101
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@104
    move-result-object v1

    #@105
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@108
    move-result-object v1

    #@109
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@10c
    .line 587
    add-int/lit8 v0, v0, 0x1

    #@10e
    goto :goto_1

    #@10f
    .line 590
    :cond_1
    const-string/jumbo v1, "mSupportedColorModes=["

    #@112
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@115
    .line 591
    const/4 v0, 0x0

    #@116
    :goto_2
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    #@118
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@11b
    move-result v1

    #@11c
    if-ge v0, v1, :cond_3

    #@11e
    .line 592
    if-eqz v0, :cond_2

    #@120
    .line 593
    const-string/jumbo v1, ", "

    #@123
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@126
    .line 595
    :cond_2
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    #@128
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12b
    move-result-object v1

    #@12c
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@12f
    .line 591
    add-int/lit8 v0, v0, 0x1

    #@131
    goto :goto_2

    #@132
    .line 597
    :cond_3
    const-string/jumbo v1, "]"

    #@135
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@138
    .line 573
    return-void
.end method

.method public getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;
    .locals 11

    #@0
    .prologue
    const/4 v10, 0x2

    #@1
    const/4 v9, 0x1

    #@2
    const/4 v8, 0x0

    #@3
    .line 355
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@5
    if-nez v4, :cond_5

    #@7
    .line 356
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayInfos:[Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    #@9
    iget v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActivePhysIndex:I

    #@b
    aget-object v1, v4, v5

    #@d
    .line 357
    .local v1, "phys":Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    new-instance v4, Lcom/android/server/display/DisplayDeviceInfo;

    #@f
    invoke-direct {v4}, Lcom/android/server/display/DisplayDeviceInfo;-><init>()V

    #@12
    iput-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@14
    .line 358
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@16
    iget v5, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->width:I

    #@18
    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    #@1a
    .line 359
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@1c
    iget v5, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->height:I

    #@1e
    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    #@20
    .line 360
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@22
    iget v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    #@24
    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->modeId:I

    #@26
    .line 361
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@28
    iget v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    #@2a
    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->defaultModeId:I

    #@2c
    .line 362
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@2e
    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    #@30
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    #@33
    move-result v5

    #@34
    new-array v5, v5, [Landroid/view/Display$Mode;

    #@36
    iput-object v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    #@38
    .line 363
    const/4 v0, 0x0

    #@39
    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    #@3b
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    #@3e
    move-result v4

    #@3f
    if-ge v0, v4, :cond_0

    #@41
    .line 364
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    #@43
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@46
    move-result-object v2

    #@47
    check-cast v2, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    #@49
    .line 365
    .local v2, "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@4b
    iget-object v4, v4, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    #@4d
    iget-object v5, v2, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    #@4f
    aput-object v5, v4, v0

    #@51
    .line 363
    add-int/lit8 v0, v0, 0x1

    #@53
    goto :goto_0

    #@54
    .line 367
    .end local v2    # "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    :cond_0
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@56
    iget v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    #@58
    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->colorMode:I

    #@5a
    .line 368
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@5c
    .line 369
    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    #@5e
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@61
    move-result v5

    #@62
    new-array v5, v5, [I

    #@64
    .line 368
    iput-object v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorModes:[I

    #@66
    .line 370
    const/4 v0, 0x0

    #@67
    :goto_1
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    #@69
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@6c
    move-result v4

    #@6d
    if-ge v0, v4, :cond_1

    #@6f
    .line 371
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@71
    iget-object v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorModes:[I

    #@73
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    #@75
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@78
    move-result-object v4

    #@79
    check-cast v4, Ljava/lang/Integer;

    #@7b
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@7e
    move-result v4

    #@7f
    aput v4, v5, v0

    #@81
    .line 370
    add-int/lit8 v0, v0, 0x1

    #@83
    goto :goto_1

    #@84
    .line 373
    :cond_1
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@86
    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHdrCapabilities:Landroid/view/Display$HdrCapabilities;

    #@88
    iput-object v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    #@8a
    .line 374
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@8c
    iget-wide v6, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->appVsyncOffsetNanos:J

    #@8e
    iput-wide v6, v4, Lcom/android/server/display/DisplayDeviceInfo;->appVsyncOffsetNanos:J

    #@90
    .line 375
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@92
    iget-wide v6, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->presentationDeadlineNanos:J

    #@94
    iput-wide v6, v4, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    #@96
    .line 376
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@98
    iget v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    #@9a
    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    #@9c
    .line 377
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@9e
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getUniqueId()Ljava/lang/String;

    #@a1
    move-result-object v5

    #@a2
    iput-object v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    #@a4
    .line 381
    iget-boolean v4, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->secure:Z

    #@a6
    if-eqz v4, :cond_2

    #@a8
    .line 382
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@aa
    const/16 v5, 0xc

    #@ac
    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    #@ae
    .line 386
    :cond_2
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    #@b0
    invoke-virtual {v4}, Lcom/android/server/display/LocalDisplayAdapter;->getContext()Landroid/content/Context;

    #@b3
    move-result-object v4

    #@b4
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@b7
    move-result-object v3

    #@b8
    .line 387
    .local v3, "res":Landroid/content/res/Resources;
    iget v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBuiltInDisplayId:I

    #@ba
    if-nez v4, :cond_6

    #@bc
    .line 388
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@be
    .line 389
    const v5, 0x1040507

    #@c1
    .line 388
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@c4
    move-result-object v5

    #@c5
    iput-object v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    #@c7
    .line 390
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@c9
    iget v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    #@cb
    or-int/lit8 v5, v5, 0x3

    #@cd
    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    #@cf
    .line 392
    const v4, 0x11200a4

    #@d2
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@d5
    move-result v4

    #@d6
    if-nez v4, :cond_3

    #@d8
    .line 393
    sget-boolean v4, Landroid/os/Build;->IS_EMULATOR:Z

    #@da
    if-eqz v4, :cond_4

    #@dc
    .line 394
    const-string/jumbo v4, "ro.emulator.circular"

    #@df
    invoke-static {v4, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@e2
    move-result v4

    #@e3
    .line 392
    if-eqz v4, :cond_4

    #@e5
    .line 395
    :cond_3
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@e7
    iget v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    #@e9
    or-int/lit16 v5, v5, 0x100

    #@eb
    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    #@ed
    .line 397
    :cond_4
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@ef
    iput v9, v4, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    #@f1
    .line 398
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@f3
    iget v5, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->density:F

    #@f5
    const/high16 v6, 0x43200000    # 160.0f

    #@f7
    mul-float/2addr v5, v6

    #@f8
    const/high16 v6, 0x3f000000    # 0.5f

    #@fa
    add-float/2addr v5, v6

    #@fb
    float-to-int v5, v5

    #@fc
    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    #@fe
    .line 399
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@100
    iget v5, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->xDpi:F

    #@102
    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    #@104
    .line 400
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@106
    iget v5, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->yDpi:F

    #@108
    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    #@10a
    .line 401
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@10c
    iput v9, v4, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    #@10e
    .line 428
    .end local v0    # "i":I
    .end local v1    # "phys":Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    .end local v3    # "res":Landroid/content/res/Resources;
    :cond_5
    :goto_2
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@110
    return-object v4

    #@111
    .line 403
    .restart local v0    # "i":I
    .restart local v1    # "phys":Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    .restart local v3    # "res":Landroid/content/res/Resources;
    :cond_6
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@113
    iput v10, v4, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    #@115
    .line 404
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@117
    iget v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    #@119
    or-int/lit8 v5, v5, 0x40

    #@11b
    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    #@11d
    .line 405
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@11f
    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    #@121
    invoke-virtual {v5}, Lcom/android/server/display/LocalDisplayAdapter;->getContext()Landroid/content/Context;

    #@124
    move-result-object v5

    #@125
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@128
    move-result-object v5

    #@129
    .line 406
    const v6, 0x1040508

    #@12c
    .line 405
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@12f
    move-result-object v5

    #@130
    iput-object v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    #@132
    .line 407
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@134
    iput v10, v4, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    #@136
    .line 408
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@138
    iget v5, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->width:I

    #@13a
    iget v6, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->height:I

    #@13c
    invoke-virtual {v4, v5, v6}, Lcom/android/server/display/DisplayDeviceInfo;->setAssumedDensityForExternalDisplay(II)V

    #@13f
    .line 412
    const-string/jumbo v4, "portrait"

    #@142
    const-string/jumbo v5, "persist.demo.hdmirotation"

    #@145
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@148
    move-result-object v5

    #@149
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14c
    move-result v4

    #@14d
    if-eqz v4, :cond_7

    #@14f
    .line 413
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@151
    const/4 v5, 0x3

    #@152
    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    #@154
    .line 418
    :cond_7
    const-string/jumbo v4, "persist.demo.hdmirotates"

    #@157
    invoke-static {v4, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@15a
    move-result v4

    #@15b
    if-eqz v4, :cond_8

    #@15d
    .line 419
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@15f
    iget v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    #@161
    or-int/lit8 v5, v5, 0x2

    #@163
    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    #@165
    .line 423
    :cond_8
    const v4, 0x1120078

    #@168
    .line 422
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@16b
    move-result v4

    #@16c
    if-nez v4, :cond_5

    #@16e
    .line 424
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@170
    iget v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    #@172
    or-int/lit16 v5, v5, 0x80

    #@174
    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    #@176
    goto :goto_2
.end method

.method public hasStableUniqueId()Z
    .locals 1

    #@0
    .prologue
    .line 195
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public requestColorModeInTransactionLocked(I)Z
    .locals 4
    .param p1, "colorMode"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 558
    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    #@3
    if-ne v0, p1, :cond_0

    #@5
    .line 559
    return v3

    #@6
    .line 561
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    #@8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_1

    #@12
    .line 562
    const-string/jumbo v0, "LocalDisplayAdapter"

    #@15
    new-instance v1, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v2, "Unable to find color mode "

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    .line 563
    const-string/jumbo v2, ", ignoring request."

    #@28
    .line 562
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@33
    .line 564
    return v3

    #@34
    .line 566
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    #@37
    move-result-object v0

    #@38
    invoke-static {v0, p1}, Landroid/view/SurfaceControl;->setActiveColorMode(Landroid/os/IBinder;I)Z

    #@3b
    .line 567
    iput p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    #@3d
    .line 568
    iput-boolean v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorModeInvalid:Z

    #@3f
    .line 569
    const/4 v0, 0x1

    #@40
    return v0
.end method

.method public requestDisplayModesInTransactionLocked(II)V
    .locals 1
    .param p1, "colorMode"    # I
    .param p2, "modeId"    # I

    #@0
    .prologue
    .line 525
    invoke-virtual {p0, p2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->requestModeInTransactionLocked(I)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 526
    invoke-virtual {p0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->requestColorModeInTransactionLocked(I)Z

    #@9
    move-result v0

    #@a
    .line 525
    if-eqz v0, :cond_1

    #@c
    .line 527
    :cond_0
    invoke-direct {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    #@f
    .line 524
    :cond_1
    return-void
.end method

.method public requestDisplayStateLocked(II)Ljava/lang/Runnable;
    .locals 9
    .param p1, "state"    # I
    .param p2, "brightness"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    const/4 v0, 0x1

    #@3
    .line 434
    sget-boolean v3, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->-assertionsDisabled:Z

    #@5
    if-nez v3, :cond_2

    #@7
    if-ne p1, v0, :cond_0

    #@9
    if-nez p2, :cond_1

    #@b
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    #@d
    new-instance v0, Ljava/lang/AssertionError;

    #@f
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@12
    throw v0

    #@13
    :cond_1
    move v0, v1

    #@14
    goto :goto_0

    #@15
    .line 436
    :cond_2
    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    #@17
    if-eq v0, p1, :cond_6

    #@19
    const/4 v8, 0x1

    #@1a
    .line 437
    .local v8, "stateChanged":Z
    :goto_1
    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBrightness:I

    #@1c
    if-eq v0, p2, :cond_7

    #@1e
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBacklight:Lcom/android/server/lights/Light;

    #@20
    if-eqz v0, :cond_7

    #@22
    const/4 v4, 0x1

    #@23
    .line 438
    .local v4, "brightnessChanged":Z
    :goto_2
    if-nez v8, :cond_3

    #@25
    if-eqz v4, :cond_8

    #@27
    .line 439
    :cond_3
    iget v6, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBuiltInDisplayId:I

    #@29
    .line 440
    .local v6, "displayId":I
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    #@2c
    move-result-object v7

    #@2d
    .line 441
    .local v7, "token":Landroid/os/IBinder;
    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    #@2f
    .line 443
    .local v2, "oldState":I
    if-eqz v8, :cond_4

    #@31
    .line 444
    iput p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    #@33
    .line 445
    invoke-direct {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    #@36
    .line 448
    :cond_4
    if-eqz v4, :cond_5

    #@38
    .line 449
    iput p2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBrightness:I

    #@3a
    .line 455
    :cond_5
    new-instance v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;

    #@3c
    move-object v1, p0

    #@3d
    move v3, p1

    #@3e
    move v5, p2

    #@3f
    invoke-direct/range {v0 .. v7}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;-><init>(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;IIZIILandroid/os/IBinder;)V

    #@42
    return-object v0

    #@43
    .line 436
    .end local v2    # "oldState":I
    .end local v4    # "brightnessChanged":Z
    .end local v6    # "displayId":I
    .end local v7    # "token":Landroid/os/IBinder;
    .end local v8    # "stateChanged":Z
    :cond_6
    const/4 v8, 0x0

    #@44
    .restart local v8    # "stateChanged":Z
    goto :goto_1

    #@45
    .line 437
    :cond_7
    const/4 v4, 0x0

    #@46
    .restart local v4    # "brightnessChanged":Z
    goto :goto_2

    #@47
    .line 519
    :cond_8
    return-object v5
.end method

.method public requestModeInTransactionLocked(I)Z
    .locals 5
    .param p1, "modeId"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 532
    if-nez p1, :cond_2

    #@3
    .line 533
    iget p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    #@5
    .line 540
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findDisplayInfoIndexLocked(I)I

    #@8
    move-result v0

    #@9
    .line 541
    .local v0, "physIndex":I
    if-gez v0, :cond_1

    #@b
    .line 542
    const-string/jumbo v1, "LocalDisplayAdapter"

    #@e
    new-instance v2, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v3, "Requested mode ID "

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    const-string/jumbo v3, " not available,"

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    .line 543
    const-string/jumbo v3, " trying with default mode ID"

    #@28
    .line 542
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@33
    .line 544
    iget p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    #@35
    .line 545
    invoke-direct {p0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findDisplayInfoIndexLocked(I)I

    #@38
    move-result v0

    #@39
    .line 547
    :cond_1
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActivePhysIndex:I

    #@3b
    if-ne v1, v0, :cond_3

    #@3d
    .line 548
    return v4

    #@3e
    .line 534
    .end local v0    # "physIndex":I
    :cond_2
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    #@40
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    #@43
    move-result v1

    #@44
    if-gez v1, :cond_0

    #@46
    .line 535
    const-string/jumbo v1, "LocalDisplayAdapter"

    #@49
    new-instance v2, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    const-string/jumbo v3, "Requested mode "

    #@51
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v2

    #@55
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@58
    move-result-object v2

    #@59
    const-string/jumbo v3, " is not supported by this display,"

    #@5c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v2

    #@60
    .line 536
    const-string/jumbo v3, " reverting to default display mode."

    #@63
    .line 535
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v2

    #@67
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v2

    #@6b
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@6e
    .line 537
    iget p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    #@70
    goto :goto_0

    #@71
    .line 550
    .restart local v0    # "physIndex":I
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    #@74
    move-result-object v1

    #@75
    invoke-static {v1, v0}, Landroid/view/SurfaceControl;->setActiveConfig(Landroid/os/IBinder;I)Z

    #@78
    .line 551
    iput v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActivePhysIndex:I

    #@7a
    .line 552
    iput p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    #@7c
    .line 553
    iput-boolean v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeInvalid:Z

    #@7e
    .line 554
    const/4 v1, 0x1

    #@7f
    return v1
.end method

.method public updatePhysicalDisplayInfoLocked([Landroid/view/SurfaceControl$PhysicalDisplayInfo;I[II)Z
    .locals 12
    .param p1, "physicalDisplayInfos"    # [Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    .param p2, "activeDisplayInfo"    # I
    .param p3, "colorModes"    # [I
    .param p4, "activeColorMode"    # I

    #@0
    .prologue
    .line 201
    array-length v10, p1

    #@1
    invoke-static {p1, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@4
    move-result-object v10

    #@5
    check-cast v10, [Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    #@7
    iput-object v10, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayInfos:[Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    #@9
    .line 202
    iput p2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActivePhysIndex:I

    #@b
    .line 204
    new-instance v8, Ljava/util/ArrayList;

    #@d
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    #@10
    .line 205
    .local v8, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;>;"
    const/4 v5, 0x0

    #@11
    .line 206
    .local v5, "modesAdded":Z
    const/4 v2, 0x0

    #@12
    .local v2, "i":I
    :goto_0
    array-length v10, p1

    #@13
    if-ge v2, v10, :cond_4

    #@15
    .line 207
    aget-object v3, p1, v2

    #@17
    .line 211
    .local v3, "info":Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    const/4 v1, 0x0

    #@18
    .line 212
    .local v1, "existingMode":Z
    const/4 v4, 0x0

    #@19
    .local v4, "j":I
    :goto_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@1c
    move-result v10

    #@1d
    if-ge v4, v10, :cond_0

    #@1f
    .line 213
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@22
    move-result-object v10

    #@23
    check-cast v10, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    #@25
    invoke-virtual {v10, v3}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->hasMatchingMode(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Z

    #@28
    move-result v10

    #@29
    if-eqz v10, :cond_1

    #@2b
    .line 214
    const/4 v1, 0x1

    #@2c
    .line 218
    :cond_0
    if-eqz v1, :cond_2

    #@2e
    .line 206
    :goto_2
    add-int/lit8 v2, v2, 0x1

    #@30
    goto :goto_0

    #@31
    .line 212
    :cond_1
    add-int/lit8 v4, v4, 0x1

    #@33
    goto :goto_1

    #@34
    .line 224
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findDisplayModeRecord(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    #@37
    move-result-object v6

    #@38
    .line 225
    .local v6, "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    if-nez v6, :cond_3

    #@3a
    .line 226
    new-instance v6, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    #@3c
    .end local v6    # "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    invoke-direct {v6, v3}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;-><init>(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)V

    #@3f
    .line 227
    .restart local v6    # "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    const/4 v5, 0x1

    #@40
    .line 229
    :cond_3
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@43
    goto :goto_2

    #@44
    .line 233
    .end local v1    # "existingMode":Z
    .end local v3    # "info":Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    .end local v4    # "j":I
    .end local v6    # "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    :cond_4
    const/4 v0, 0x0

    #@45
    .line 234
    .local v0, "activeRecord":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    const/4 v2, 0x0

    #@46
    :goto_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@49
    move-result v10

    #@4a
    if-ge v2, v10, :cond_5

    #@4c
    .line 235
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4f
    move-result-object v6

    #@50
    check-cast v6, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    #@52
    .line 236
    .restart local v6    # "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    aget-object v10, p1, p2

    #@54
    invoke-virtual {v6, v10}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->hasMatchingMode(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Z

    #@57
    move-result v10

    #@58
    if-eqz v10, :cond_7

    #@5a
    .line 237
    move-object v0, v6

    #@5b
    .line 243
    .end local v0    # "activeRecord":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    .end local v6    # "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    :cond_5
    iget v10, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    #@5d
    if-eqz v10, :cond_6

    #@5f
    .line 244
    iget v10, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    #@61
    iget-object v11, v0, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    #@63
    invoke-virtual {v11}, Landroid/view/Display$Mode;->getModeId()I

    #@66
    move-result v11

    #@67
    if-eq v10, v11, :cond_6

    #@69
    .line 245
    const/4 v10, 0x1

    #@6a
    iput-boolean v10, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeInvalid:Z

    #@6c
    .line 246
    iget-object v10, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    #@6e
    invoke-virtual {v10}, Lcom/android/server/display/LocalDisplayAdapter;->sendTraversalRequestLocked()V

    #@71
    .line 249
    :cond_6
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@74
    move-result v10

    #@75
    iget-object v11, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    #@77
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    #@7a
    move-result v11

    #@7b
    if-ne v10, v11, :cond_8

    #@7d
    move v9, v5

    #@7e
    .line 251
    .local v9, "recordsChanged":Z
    :goto_4
    if-nez v9, :cond_9

    #@80
    .line 252
    const/4 v10, 0x0

    #@81
    return v10

    #@82
    .line 234
    .end local v9    # "recordsChanged":Z
    .restart local v0    # "activeRecord":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    .restart local v6    # "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    :cond_7
    add-int/lit8 v2, v2, 0x1

    #@84
    goto :goto_3

    #@85
    .line 249
    .end local v0    # "activeRecord":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    .end local v6    # "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    :cond_8
    const/4 v9, 0x1

    #@86
    goto :goto_4

    #@87
    .line 255
    .restart local v9    # "recordsChanged":Z
    :cond_9
    const/4 v10, 0x1

    #@88
    iput-boolean v10, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHavePendingChanges:Z

    #@8a
    .line 257
    iget-object v10, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    #@8c
    invoke-virtual {v10}, Landroid/util/SparseArray;->clear()V

    #@8f
    .line 258
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@92
    move-result-object v7

    #@93
    .local v7, "record$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@96
    move-result v10

    #@97
    if-eqz v10, :cond_a

    #@99
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@9c
    move-result-object v6

    #@9d
    check-cast v6, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    #@9f
    .line 259
    .restart local v6    # "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    iget-object v10, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    #@a1
    iget-object v11, v6, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    #@a3
    invoke-virtual {v11}, Landroid/view/Display$Mode;->getModeId()I

    #@a6
    move-result v11

    #@a7
    invoke-virtual {v10, v11, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@aa
    goto :goto_5

    #@ab
    .line 262
    .end local v6    # "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    :cond_a
    iget v10, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    #@ad
    invoke-direct {p0, v10}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findDisplayInfoIndexLocked(I)I

    #@b0
    move-result v10

    #@b1
    if-gez v10, :cond_c

    #@b3
    .line 263
    iget v10, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    #@b5
    if-eqz v10, :cond_b

    #@b7
    .line 264
    const-string/jumbo v10, "LocalDisplayAdapter"

    #@ba
    const-string/jumbo v11, "Default display mode no longer available, using currently active mode as default."

    #@bd
    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@c0
    .line 267
    :cond_b
    iget-object v10, v0, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    #@c2
    invoke-virtual {v10}, Landroid/view/Display$Mode;->getModeId()I

    #@c5
    move-result v10

    #@c6
    iput v10, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    #@c8
    .line 270
    :cond_c
    iget-object v10, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    #@ca
    iget v11, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    #@cc
    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->indexOfKey(I)I

    #@cf
    move-result v10

    #@d0
    if-gez v10, :cond_e

    #@d2
    .line 271
    iget v10, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    #@d4
    if-eqz v10, :cond_d

    #@d6
    .line 272
    const-string/jumbo v10, "LocalDisplayAdapter"

    #@d9
    const-string/jumbo v11, "Active display mode no longer available, reverting to default mode."

    #@dc
    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@df
    .line 275
    :cond_d
    iget v10, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    #@e1
    iput v10, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    #@e3
    .line 276
    const/4 v10, 0x1

    #@e4
    iput-boolean v10, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeInvalid:Z

    #@e6
    .line 280
    :cond_e
    iget-object v10, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    #@e8
    invoke-virtual {v10}, Lcom/android/server/display/LocalDisplayAdapter;->sendTraversalRequestLocked()V

    #@eb
    .line 281
    const/4 v10, 0x1

    #@ec
    return v10
.end method
