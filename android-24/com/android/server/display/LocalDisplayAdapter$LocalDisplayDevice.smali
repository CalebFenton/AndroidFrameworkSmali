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

.field private mActiveColorTransformId:I

.field private mActiveColorTransformInvalid:Z

.field private mActiveModeId:I

.field private mActiveModeInvalid:Z

.field private mActivePhysIndex:I

.field private final mBacklight:Lcom/android/server/lights/Light;

.field private mBrightness:I

.field private final mBuiltInDisplayId:I

.field private mDefaultColorTransformId:I

.field private mDefaultModeId:I

.field private mDisplayInfos:[Landroid/view/SurfaceControl$PhysicalDisplayInfo;

.field private mHavePendingChanges:Z

.field private mHdrCapabilities:Landroid/view/Display$HdrCapabilities;

.field private mInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field private mState:I

.field private final mSupportedColorTransforms:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/Display$ColorTransform;",
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
    .line 143
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/server/display/LocalDisplayAdapter;Landroid/os/IBinder;I[Landroid/view/SurfaceControl$PhysicalDisplayInfo;I)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/server/display/LocalDisplayAdapter;
    .param p2, "displayToken"    # Landroid/os/IBinder;
    .param p3, "builtInDisplayId"    # I
    .param p4, "physicalDisplayInfos"    # [Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    .param p5, "activeDisplayInfo"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 165
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    #@3
    .line 167
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
    .line 146
    new-instance v1, Landroid/util/SparseArray;

    #@1c
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    #@1f
    iput-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    #@21
    .line 148
    new-instance v1, Landroid/util/SparseArray;

    #@23
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    #@26
    .line 147
    iput-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorTransforms:Landroid/util/SparseArray;

    #@28
    .line 152
    iput v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    #@2a
    .line 153
    const/4 v1, -0x1

    #@2b
    iput v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBrightness:I

    #@2d
    .line 168
    iput p3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBuiltInDisplayId:I

    #@2f
    .line 169
    invoke-virtual {p0, p4, p5}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updatePhysicalDisplayInfoLocked([Landroid/view/SurfaceControl$PhysicalDisplayInfo;I)Z

    #@32
    .line 170
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBuiltInDisplayId:I

    #@34
    if-nez v1, :cond_0

    #@36
    .line 171
    const-class v1, Lcom/android/server/lights/LightsManager;

    #@38
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@3b
    move-result-object v0

    #@3c
    check-cast v0, Lcom/android/server/lights/LightsManager;

    #@3e
    .line 172
    .local v0, "lights":Lcom/android/server/lights/LightsManager;
    invoke-virtual {v0, v3}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    #@41
    move-result-object v1

    #@42
    iput-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBacklight:Lcom/android/server/lights/Light;

    #@44
    .line 176
    .end local v0    # "lights":Lcom/android/server/lights/LightsManager;
    :goto_0
    invoke-static {p2}, Landroid/view/SurfaceControl;->getHdrCapabilities(Landroid/os/IBinder;)Landroid/view/Display$HdrCapabilities;

    #@47
    move-result-object v1

    #@48
    iput-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHdrCapabilities:Landroid/view/Display$HdrCapabilities;

    #@4a
    .line 166
    return-void

    #@4b
    .line 174
    :cond_0
    const/4 v1, 0x0

    #@4c
    iput-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBacklight:Lcom/android/server/lights/Light;

    #@4e
    goto :goto_0
.end method

.method private findColorTransform(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Landroid/view/Display$ColorTransform;
    .locals 4
    .param p1, "info"    # Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    #@0
    .prologue
    .line 335
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorTransforms:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    #@6
    move-result v2

    #@7
    if-ge v0, v2, :cond_1

    #@9
    .line 336
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorTransforms:Landroid/util/SparseArray;

    #@b
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroid/view/Display$ColorTransform;

    #@11
    .line 337
    .local v1, "transform":Landroid/view/Display$ColorTransform;
    invoke-virtual {v1}, Landroid/view/Display$ColorTransform;->getColorTransform()I

    #@14
    move-result v2

    #@15
    iget v3, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->colorTransform:I

    #@17
    if-ne v2, v3, :cond_0

    #@19
    .line 338
    return-object v1

    #@1a
    .line 335
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 341
    .end local v1    # "transform":Landroid/view/Display$ColorTransform;
    :cond_1
    const/4 v2, 0x0

    #@1e
    return-object v2
.end method

.method private findDisplayInfoIndexLocked(II)I
    .locals 6
    .param p1, "colorTransformId"    # I
    .param p2, "modeId"    # I

    #@0
    .prologue
    .line 595
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    check-cast v2, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    #@8
    .line 596
    .local v2, "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorTransforms:Landroid/util/SparseArray;

    #@a
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@d
    move-result-object v3

    #@e
    check-cast v3, Landroid/view/Display$ColorTransform;

    #@10
    .line 597
    .local v3, "transform":Landroid/view/Display$ColorTransform;
    if-eqz v2, :cond_1

    #@12
    if-eqz v3, :cond_1

    #@14
    .line 598
    const/4 v0, 0x0

    #@15
    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayInfos:[Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    #@17
    array-length v4, v4

    #@18
    if-ge v0, v4, :cond_1

    #@1a
    .line 599
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayInfos:[Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    #@1c
    aget-object v1, v4, v0

    #@1e
    .line 600
    .local v1, "info":Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    iget v4, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->colorTransform:I

    #@20
    invoke-virtual {v3}, Landroid/view/Display$ColorTransform;->getColorTransform()I

    #@23
    move-result v5

    #@24
    if-ne v4, v5, :cond_0

    #@26
    .line 601
    invoke-virtual {v2, v1}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->hasMatchingMode(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Z

    #@29
    move-result v4

    #@2a
    .line 600
    if-eqz v4, :cond_0

    #@2c
    .line 602
    return v0

    #@2d
    .line 598
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 606
    .end local v0    # "i":I
    .end local v1    # "info":Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    :cond_1
    const/4 v4, -0x1

    #@31
    return v4
.end method

.method private findDisplayModeRecord(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    .locals 3
    .param p1, "info"    # Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    #@0
    .prologue
    .line 325
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
    .line 326
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    #@b
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    #@11
    .line 327
    .local v1, "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    invoke-virtual {v1, p1}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->hasMatchingMode(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_0

    #@17
    .line 328
    return-object v1

    #@18
    .line 325
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 331
    .end local v1    # "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    :cond_1
    const/4 v2, 0x0

    #@1c
    return-object v2
.end method

.method private updateDeviceInfoLocked()V
    .locals 2

    #@0
    .prologue
    .line 610
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@3
    .line 611
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    #@5
    const/4 v1, 0x2

    #@6
    invoke-virtual {v0, p0, v1}, Lcom/android/server/display/LocalDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    #@9
    .line 609
    return-void
.end method


# virtual methods
.method public applyPendingDisplayDeviceInfoChangesLocked()V
    .locals 1

    #@0
    .prologue
    .line 346
    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHavePendingChanges:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 347
    const/4 v0, 0x0

    #@5
    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@7
    .line 348
    const/4 v0, 0x0

    #@8
    iput-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHavePendingChanges:Z

    #@a
    .line 345
    :cond_0
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 568
    invoke-super {p0, p1}, Lcom/android/server/display/DisplayDevice;->dumpLocked(Ljava/io/PrintWriter;)V

    #@3
    .line 569
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
    .line 570
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
    .line 571
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
    .line 572
    new-instance v1, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    const-string/jumbo v2, "mActiveColorTransformId="

    #@56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v1

    #@5a
    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorTransformId:I

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
    .line 573
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
    .line 574
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
    .line 575
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
    .line 576
    const-string/jumbo v1, "mDisplayInfos="

    #@b9
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@bc
    .line 577
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
    .line 578
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
    .line 577
    add-int/lit8 v0, v0, 0x1

    #@df
    goto :goto_0

    #@e0
    .line 580
    :cond_0
    const-string/jumbo v1, "mSupportedModes="

    #@e3
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@e6
    .line 581
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
    .line 582
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
    .line 581
    add-int/lit8 v0, v0, 0x1

    #@10e
    goto :goto_1

    #@10f
    .line 584
    :cond_1
    const-string/jumbo v1, "mSupportedColorTransforms=["

    #@112
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@115
    .line 585
    const/4 v0, 0x0

    #@116
    :goto_2
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorTransforms:Landroid/util/SparseArray;

    #@118
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    #@11b
    move-result v1

    #@11c
    if-ge v0, v1, :cond_3

    #@11e
    .line 586
    if-eqz v0, :cond_2

    #@120
    .line 587
    const-string/jumbo v1, ", "

    #@123
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@126
    .line 589
    :cond_2
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorTransforms:Landroid/util/SparseArray;

    #@128
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@12b
    move-result-object v1

    #@12c
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@12f
    .line 585
    add-int/lit8 v0, v0, 0x1

    #@131
    goto :goto_2

    #@132
    .line 591
    :cond_3
    const-string/jumbo v1, "]"

    #@135
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@138
    .line 567
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
    .line 354
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@5
    if-nez v4, :cond_5

    #@7
    .line 355
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayInfos:[Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    #@9
    iget v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActivePhysIndex:I

    #@b
    aget-object v1, v4, v5

    #@d
    .line 356
    .local v1, "phys":Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    new-instance v4, Lcom/android/server/display/DisplayDeviceInfo;

    #@f
    invoke-direct {v4}, Lcom/android/server/display/DisplayDeviceInfo;-><init>()V

    #@12
    iput-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@14
    .line 357
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@16
    iget v5, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->width:I

    #@18
    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    #@1a
    .line 358
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@1c
    iget v5, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->height:I

    #@1e
    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    #@20
    .line 359
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@22
    iget v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    #@24
    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->modeId:I

    #@26
    .line 360
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@28
    iget v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    #@2a
    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->defaultModeId:I

    #@2c
    .line 361
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
    .line 362
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
    .line 363
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    #@43
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@46
    move-result-object v2

    #@47
    check-cast v2, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    #@49
    .line 364
    .local v2, "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@4b
    iget-object v4, v4, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    #@4d
    iget-object v5, v2, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    #@4f
    aput-object v5, v4, v0

    #@51
    .line 362
    add-int/lit8 v0, v0, 0x1

    #@53
    goto :goto_0

    #@54
    .line 366
    .end local v2    # "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    :cond_0
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@56
    iget v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorTransformId:I

    #@58
    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->colorTransformId:I

    #@5a
    .line 367
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@5c
    iget v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultColorTransformId:I

    #@5e
    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->defaultColorTransformId:I

    #@60
    .line 368
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@62
    .line 369
    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorTransforms:Landroid/util/SparseArray;

    #@64
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    #@67
    move-result v5

    #@68
    new-array v5, v5, [Landroid/view/Display$ColorTransform;

    #@6a
    .line 368
    iput-object v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorTransforms:[Landroid/view/Display$ColorTransform;

    #@6c
    .line 370
    const/4 v0, 0x0

    #@6d
    :goto_1
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorTransforms:Landroid/util/SparseArray;

    #@6f
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    #@72
    move-result v4

    #@73
    if-ge v0, v4, :cond_1

    #@75
    .line 371
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@77
    iget-object v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorTransforms:[Landroid/view/Display$ColorTransform;

    #@79
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorTransforms:Landroid/util/SparseArray;

    #@7b
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@7e
    move-result-object v4

    #@7f
    check-cast v4, Landroid/view/Display$ColorTransform;

    #@81
    aput-object v4, v5, v0

    #@83
    .line 370
    add-int/lit8 v0, v0, 0x1

    #@85
    goto :goto_1

    #@86
    .line 373
    :cond_1
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@88
    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHdrCapabilities:Landroid/view/Display$HdrCapabilities;

    #@8a
    iput-object v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    #@8c
    .line 374
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@8e
    iget-wide v6, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->appVsyncOffsetNanos:J

    #@90
    iput-wide v6, v4, Lcom/android/server/display/DisplayDeviceInfo;->appVsyncOffsetNanos:J

    #@92
    .line 375
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@94
    iget-wide v6, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->presentationDeadlineNanos:J

    #@96
    iput-wide v6, v4, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    #@98
    .line 376
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@9a
    iget v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    #@9c
    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    #@9e
    .line 377
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@a0
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getUniqueId()Ljava/lang/String;

    #@a3
    move-result-object v5

    #@a4
    iput-object v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    #@a6
    .line 381
    iget-boolean v4, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->secure:Z

    #@a8
    if-eqz v4, :cond_2

    #@aa
    .line 382
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@ac
    const/16 v5, 0xc

    #@ae
    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    #@b0
    .line 386
    :cond_2
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    #@b2
    invoke-virtual {v4}, Lcom/android/server/display/LocalDisplayAdapter;->getContext()Landroid/content/Context;

    #@b5
    move-result-object v4

    #@b6
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@b9
    move-result-object v3

    #@ba
    .line 387
    .local v3, "res":Landroid/content/res/Resources;
    iget v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBuiltInDisplayId:I

    #@bc
    if-nez v4, :cond_6

    #@be
    .line 388
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@c0
    .line 389
    const v5, 0x10404f9

    #@c3
    .line 388
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@c6
    move-result-object v5

    #@c7
    iput-object v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    #@c9
    .line 390
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@cb
    iget v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    #@cd
    or-int/lit8 v5, v5, 0x3

    #@cf
    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    #@d1
    .line 392
    const v4, 0x11200a2

    #@d4
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@d7
    move-result v4

    #@d8
    if-nez v4, :cond_3

    #@da
    .line 393
    sget-boolean v4, Landroid/os/Build;->IS_EMULATOR:Z

    #@dc
    if-eqz v4, :cond_4

    #@de
    .line 394
    const-string/jumbo v4, "ro.emulator.circular"

    #@e1
    invoke-static {v4, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@e4
    move-result v4

    #@e5
    .line 392
    if-eqz v4, :cond_4

    #@e7
    .line 395
    :cond_3
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@e9
    iget v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    #@eb
    or-int/lit16 v5, v5, 0x100

    #@ed
    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    #@ef
    .line 397
    :cond_4
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@f1
    iput v9, v4, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    #@f3
    .line 398
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@f5
    iget v5, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->density:F

    #@f7
    const/high16 v6, 0x43200000    # 160.0f

    #@f9
    mul-float/2addr v5, v6

    #@fa
    const/high16 v6, 0x3f000000    # 0.5f

    #@fc
    add-float/2addr v5, v6

    #@fd
    float-to-int v5, v5

    #@fe
    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    #@100
    .line 399
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@102
    iget v5, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->xDpi:F

    #@104
    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    #@106
    .line 400
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@108
    iget v5, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->yDpi:F

    #@10a
    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    #@10c
    .line 401
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@10e
    iput v9, v4, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    #@110
    .line 428
    .end local v0    # "i":I
    .end local v1    # "phys":Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    .end local v3    # "res":Landroid/content/res/Resources;
    :cond_5
    :goto_2
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@112
    return-object v4

    #@113
    .line 403
    .restart local v0    # "i":I
    .restart local v1    # "phys":Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    .restart local v3    # "res":Landroid/content/res/Resources;
    :cond_6
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@115
    iput v10, v4, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    #@117
    .line 404
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@119
    iget v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    #@11b
    or-int/lit8 v5, v5, 0x40

    #@11d
    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    #@11f
    .line 405
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@121
    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    #@123
    invoke-virtual {v5}, Lcom/android/server/display/LocalDisplayAdapter;->getContext()Landroid/content/Context;

    #@126
    move-result-object v5

    #@127
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@12a
    move-result-object v5

    #@12b
    .line 406
    const v6, 0x10404fa

    #@12e
    .line 405
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@131
    move-result-object v5

    #@132
    iput-object v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    #@134
    .line 407
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@136
    iput v10, v4, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    #@138
    .line 408
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@13a
    iget v5, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->width:I

    #@13c
    iget v6, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->height:I

    #@13e
    invoke-virtual {v4, v5, v6}, Lcom/android/server/display/DisplayDeviceInfo;->setAssumedDensityForExternalDisplay(II)V

    #@141
    .line 412
    const-string/jumbo v4, "portrait"

    #@144
    const-string/jumbo v5, "persist.demo.hdmirotation"

    #@147
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@14a
    move-result-object v5

    #@14b
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14e
    move-result v4

    #@14f
    if-eqz v4, :cond_7

    #@151
    .line 413
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@153
    const/4 v5, 0x3

    #@154
    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    #@156
    .line 418
    :cond_7
    const-string/jumbo v4, "persist.demo.hdmirotates"

    #@159
    invoke-static {v4, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@15c
    move-result v4

    #@15d
    if-eqz v4, :cond_8

    #@15f
    .line 419
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@161
    iget v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    #@163
    or-int/lit8 v5, v5, 0x2

    #@165
    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    #@167
    .line 423
    :cond_8
    const v4, 0x1120077

    #@16a
    .line 422
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@16d
    move-result v4

    #@16e
    if-nez v4, :cond_5

    #@170
    .line 424
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@172
    iget v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    #@174
    or-int/lit16 v5, v5, 0x80

    #@176
    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    #@178
    goto :goto_2
.end method

.method public requestColorTransformAndModeInTransactionLocked(II)V
    .locals 5
    .param p1, "colorTransformId"    # I
    .param p2, "modeId"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 525
    if-nez p2, :cond_3

    #@3
    .line 526
    iget p2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    #@5
    .line 533
    :cond_0
    :goto_0
    if-nez p1, :cond_4

    #@7
    .line 534
    iget p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultColorTransformId:I

    #@9
    .line 540
    :cond_1
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findDisplayInfoIndexLocked(II)I

    #@c
    move-result v0

    #@d
    .line 541
    .local v0, "physIndex":I
    if-gez v0, :cond_2

    #@f
    .line 542
    const-string/jumbo v1, "LocalDisplayAdapter"

    #@12
    new-instance v2, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v3, "Requested color transform, mode ID pair ("

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    const-string/jumbo v3, ", "

    #@25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    .line 543
    const-string/jumbo v3, ") not available, trying color transform with default mode ID"

    #@30
    .line 542
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v2

    #@38
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3b
    .line 544
    iget p2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    #@3d
    .line 545
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findDisplayInfoIndexLocked(II)I

    #@40
    move-result v0

    #@41
    .line 546
    if-gez v0, :cond_2

    #@43
    .line 547
    const-string/jumbo v1, "LocalDisplayAdapter"

    #@46
    const-string/jumbo v2, "Requested color transform with default mode ID still not available, falling back to default color transform with default mode."

    #@49
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4c
    .line 550
    iget p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultColorTransformId:I

    #@4e
    .line 551
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findDisplayInfoIndexLocked(II)I

    #@51
    move-result v0

    #@52
    .line 554
    :cond_2
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActivePhysIndex:I

    #@54
    if-ne v1, v0, :cond_5

    #@56
    .line 555
    return-void

    #@57
    .line 527
    .end local v0    # "physIndex":I
    :cond_3
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    #@59
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    #@5c
    move-result v1

    #@5d
    if-gez v1, :cond_0

    #@5f
    .line 528
    const-string/jumbo v1, "LocalDisplayAdapter"

    #@62
    new-instance v2, Ljava/lang/StringBuilder;

    #@64
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@67
    const-string/jumbo v3, "Requested mode "

    #@6a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v2

    #@6e
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@71
    move-result-object v2

    #@72
    const-string/jumbo v3, " is not supported by this display,"

    #@75
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v2

    #@79
    .line 529
    const-string/jumbo v3, " reverting to default display mode."

    #@7c
    .line 528
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v2

    #@80
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@83
    move-result-object v2

    #@84
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@87
    .line 530
    iget p2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    #@89
    goto/16 :goto_0

    #@8b
    .line 535
    :cond_4
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorTransforms:Landroid/util/SparseArray;

    #@8d
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    #@90
    move-result v1

    #@91
    if-gez v1, :cond_1

    #@93
    .line 536
    const-string/jumbo v1, "LocalDisplayAdapter"

    #@96
    new-instance v2, Ljava/lang/StringBuilder;

    #@98
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@9b
    const-string/jumbo v3, "Requested color transform "

    #@9e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v2

    #@a2
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v2

    #@a6
    const-string/jumbo v3, " is not supported"

    #@a9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v2

    #@ad
    .line 537
    const-string/jumbo v3, " by this display, reverting to the default color transform"

    #@b0
    .line 536
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v2

    #@b4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b7
    move-result-object v2

    #@b8
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@bb
    .line 538
    iget p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultColorTransformId:I

    #@bd
    goto/16 :goto_1

    #@bf
    .line 557
    .restart local v0    # "physIndex":I
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    #@c2
    move-result-object v1

    #@c3
    invoke-static {v1, v0}, Landroid/view/SurfaceControl;->setActiveConfig(Landroid/os/IBinder;I)Z

    #@c6
    .line 558
    iput v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActivePhysIndex:I

    #@c8
    .line 559
    iput p2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    #@ca
    .line 560
    iput-boolean v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeInvalid:Z

    #@cc
    .line 561
    iput p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorTransformId:I

    #@ce
    .line 562
    iput-boolean v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorTransformInvalid:Z

    #@d0
    .line 563
    invoke-direct {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    #@d3
    .line 524
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

.method public updatePhysicalDisplayInfoLocked([Landroid/view/SurfaceControl$PhysicalDisplayInfo;I)Z
    .locals 21
    .param p1, "physicalDisplayInfos"    # [Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    .param p2, "activeDisplayInfo"    # I

    #@0
    .prologue
    .line 181
    move-object/from16 v0, p1

    #@2
    array-length v0, v0

    #@3
    move/from16 v19, v0

    #@5
    move-object/from16 v0, p1

    #@7
    move/from16 v1, v19

    #@9
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@c
    move-result-object v19

    #@d
    check-cast v19, [Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    #@f
    move-object/from16 v0, v19

    #@11
    move-object/from16 v1, p0

    #@13
    iput-object v0, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayInfos:[Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    #@15
    .line 182
    move/from16 v0, p2

    #@17
    move-object/from16 v1, p0

    #@19
    iput v0, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActivePhysIndex:I

    #@1b
    .line 183
    new-instance v7, Ljava/util/ArrayList;

    #@1d
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    #@20
    .line 186
    .local v7, "colorTransforms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/Display$ColorTransform;>;"
    const/4 v8, 0x0

    #@21
    .line 187
    .local v8, "colorTransformsAdded":Z
    const/4 v3, 0x0

    #@22
    .line 188
    .local v3, "activeColorTransform":Landroid/view/Display$ColorTransform;
    const/4 v11, 0x0

    #@23
    .end local v3    # "activeColorTransform":Landroid/view/Display$ColorTransform;
    .local v11, "i":I
    :goto_0
    move-object/from16 v0, p1

    #@25
    array-length v0, v0

    #@26
    move/from16 v19, v0

    #@28
    move/from16 v0, v19

    #@2a
    if-ge v11, v0, :cond_5

    #@2c
    .line 189
    aget-object v12, p1, v11

    #@2e
    .line 191
    .local v12, "info":Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    const/4 v10, 0x0

    #@2f
    .line 192
    .local v10, "existingMode":Z
    const/4 v13, 0x0

    #@30
    .local v13, "j":I
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@33
    move-result v19

    #@34
    move/from16 v0, v19

    #@36
    if-ge v13, v0, :cond_0

    #@38
    .line 193
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3b
    move-result-object v19

    #@3c
    check-cast v19, Landroid/view/Display$ColorTransform;

    #@3e
    invoke-virtual/range {v19 .. v19}, Landroid/view/Display$ColorTransform;->getColorTransform()I

    #@41
    move-result v19

    #@42
    iget v0, v12, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->colorTransform:I

    #@44
    move/from16 v20, v0

    #@46
    move/from16 v0, v19

    #@48
    move/from16 v1, v20

    #@4a
    if-ne v0, v1, :cond_2

    #@4c
    .line 194
    const/4 v10, 0x1

    #@4d
    .line 198
    :cond_0
    if-eqz v10, :cond_3

    #@4f
    .line 188
    :cond_1
    :goto_2
    add-int/lit8 v11, v11, 0x1

    #@51
    goto :goto_0

    #@52
    .line 192
    :cond_2
    add-int/lit8 v13, v13, 0x1

    #@54
    goto :goto_1

    #@55
    .line 201
    :cond_3
    move-object/from16 v0, p0

    #@57
    invoke-direct {v0, v12}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findColorTransform(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Landroid/view/Display$ColorTransform;

    #@5a
    move-result-object v5

    #@5b
    .line 202
    .local v5, "colorTransform":Landroid/view/Display$ColorTransform;
    if-nez v5, :cond_4

    #@5d
    .line 203
    iget v0, v12, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->colorTransform:I

    #@5f
    move/from16 v19, v0

    #@61
    invoke-static/range {v19 .. v19}, Lcom/android/server/display/LocalDisplayAdapter;->createColorTransform(I)Landroid/view/Display$ColorTransform;

    #@64
    move-result-object v5

    #@65
    .line 204
    const/4 v8, 0x1

    #@66
    .line 206
    :cond_4
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@69
    .line 207
    move/from16 v0, p2

    #@6b
    if-ne v11, v0, :cond_1

    #@6d
    .line 208
    move-object v3, v5

    #@6e
    .local v3, "activeColorTransform":Landroid/view/Display$ColorTransform;
    goto :goto_2

    #@6f
    .line 213
    .end local v3    # "activeColorTransform":Landroid/view/Display$ColorTransform;
    .end local v5    # "colorTransform":Landroid/view/Display$ColorTransform;
    .end local v10    # "existingMode":Z
    .end local v12    # "info":Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    .end local v13    # "j":I
    :cond_5
    new-instance v17, Ljava/util/ArrayList;

    #@71
    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    #@74
    .line 214
    .local v17, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;>;"
    const/4 v14, 0x0

    #@75
    .line 215
    .local v14, "modesAdded":Z
    const/4 v11, 0x0

    #@76
    :goto_3
    move-object/from16 v0, p1

    #@78
    array-length v0, v0

    #@79
    move/from16 v19, v0

    #@7b
    move/from16 v0, v19

    #@7d
    if-ge v11, v0, :cond_a

    #@7f
    .line 216
    aget-object v12, p1, v11

    #@81
    .line 220
    .restart local v12    # "info":Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    const/4 v10, 0x0

    #@82
    .line 221
    .restart local v10    # "existingMode":Z
    const/4 v13, 0x0

    #@83
    .restart local v13    # "j":I
    :goto_4
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    #@86
    move-result v19

    #@87
    move/from16 v0, v19

    #@89
    if-ge v13, v0, :cond_6

    #@8b
    .line 222
    move-object/from16 v0, v17

    #@8d
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@90
    move-result-object v19

    #@91
    check-cast v19, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    #@93
    move-object/from16 v0, v19

    #@95
    invoke-virtual {v0, v12}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->hasMatchingMode(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Z

    #@98
    move-result v19

    #@99
    if-eqz v19, :cond_7

    #@9b
    .line 223
    const/4 v10, 0x1

    #@9c
    .line 227
    :cond_6
    if-eqz v10, :cond_8

    #@9e
    .line 215
    :goto_5
    add-int/lit8 v11, v11, 0x1

    #@a0
    goto :goto_3

    #@a1
    .line 221
    :cond_7
    add-int/lit8 v13, v13, 0x1

    #@a3
    goto :goto_4

    #@a4
    .line 233
    :cond_8
    move-object/from16 v0, p0

    #@a6
    invoke-direct {v0, v12}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findDisplayModeRecord(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    #@a9
    move-result-object v15

    #@aa
    .line 234
    .local v15, "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    if-nez v15, :cond_9

    #@ac
    .line 235
    new-instance v15, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    #@ae
    .end local v15    # "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    invoke-direct {v15, v12}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;-><init>(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)V

    #@b1
    .line 236
    .restart local v15    # "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    const/4 v14, 0x1

    #@b2
    .line 238
    :cond_9
    move-object/from16 v0, v17

    #@b4
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@b7
    goto :goto_5

    #@b8
    .line 242
    .end local v10    # "existingMode":Z
    .end local v12    # "info":Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    .end local v13    # "j":I
    .end local v15    # "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    :cond_a
    const/4 v4, 0x0

    #@b9
    .line 243
    .local v4, "activeRecord":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    const/4 v11, 0x0

    #@ba
    :goto_6
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    #@bd
    move-result v19

    #@be
    move/from16 v0, v19

    #@c0
    if-ge v11, v0, :cond_b

    #@c2
    .line 244
    move-object/from16 v0, v17

    #@c4
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@c7
    move-result-object v15

    #@c8
    check-cast v15, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    #@ca
    .line 245
    .restart local v15    # "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    aget-object v19, p1, p2

    #@cc
    move-object/from16 v0, v19

    #@ce
    invoke-virtual {v15, v0}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->hasMatchingMode(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Z

    #@d1
    move-result v19

    #@d2
    if-eqz v19, :cond_f

    #@d4
    .line 246
    move-object v4, v15

    #@d5
    .line 252
    .end local v4    # "activeRecord":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    .end local v15    # "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    :cond_b
    move-object/from16 v0, p0

    #@d7
    iget v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    #@d9
    move/from16 v19, v0

    #@db
    if-eqz v19, :cond_c

    #@dd
    .line 253
    move-object/from16 v0, p0

    #@df
    iget v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    #@e1
    move/from16 v19, v0

    #@e3
    iget-object v0, v4, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    #@e5
    move-object/from16 v20, v0

    #@e7
    invoke-virtual/range {v20 .. v20}, Landroid/view/Display$Mode;->getModeId()I

    #@ea
    move-result v20

    #@eb
    move/from16 v0, v19

    #@ed
    move/from16 v1, v20

    #@ef
    if-eq v0, v1, :cond_c

    #@f1
    .line 254
    const/16 v19, 0x1

    #@f3
    move/from16 v0, v19

    #@f5
    move-object/from16 v1, p0

    #@f7
    iput-boolean v0, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeInvalid:Z

    #@f9
    .line 255
    move-object/from16 v0, p0

    #@fb
    iget-object v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    #@fd
    move-object/from16 v19, v0

    #@ff
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/display/LocalDisplayAdapter;->sendTraversalRequestLocked()V

    #@102
    .line 259
    :cond_c
    move-object/from16 v0, p0

    #@104
    iget v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorTransformId:I

    #@106
    move/from16 v19, v0

    #@108
    if-eqz v19, :cond_d

    #@10a
    .line 260
    move-object/from16 v0, p0

    #@10c
    iget v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorTransformId:I

    #@10e
    move/from16 v19, v0

    #@110
    invoke-virtual {v3}, Landroid/view/Display$ColorTransform;->getId()I

    #@113
    move-result v20

    #@114
    move/from16 v0, v19

    #@116
    move/from16 v1, v20

    #@118
    if-eq v0, v1, :cond_d

    #@11a
    .line 261
    const/16 v19, 0x1

    #@11c
    move/from16 v0, v19

    #@11e
    move-object/from16 v1, p0

    #@120
    iput-boolean v0, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorTransformInvalid:Z

    #@122
    .line 262
    move-object/from16 v0, p0

    #@124
    iget-object v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    #@126
    move-object/from16 v19, v0

    #@128
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/display/LocalDisplayAdapter;->sendTraversalRequestLocked()V

    #@12b
    .line 266
    :cond_d
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@12e
    move-result v19

    #@12f
    move-object/from16 v0, p0

    #@131
    iget-object v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorTransforms:Landroid/util/SparseArray;

    #@133
    move-object/from16 v20, v0

    #@135
    invoke-virtual/range {v20 .. v20}, Landroid/util/SparseArray;->size()I

    #@138
    move-result v20

    #@139
    move/from16 v0, v19

    #@13b
    move/from16 v1, v20

    #@13d
    if-ne v0, v1, :cond_10

    #@13f
    .line 267
    move v9, v8

    #@140
    .line 268
    :goto_7
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    #@143
    move-result v19

    #@144
    move-object/from16 v0, p0

    #@146
    iget-object v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    #@148
    move-object/from16 v20, v0

    #@14a
    invoke-virtual/range {v20 .. v20}, Landroid/util/SparseArray;->size()I

    #@14d
    move-result v20

    #@14e
    move/from16 v0, v19

    #@150
    move/from16 v1, v20

    #@152
    if-ne v0, v1, :cond_11

    #@154
    move/from16 v18, v14

    #@156
    .line 271
    .local v18, "recordsChanged":Z
    :goto_8
    if-nez v18, :cond_e

    #@158
    if-eqz v9, :cond_12

    #@15a
    .line 275
    :cond_e
    const/16 v19, 0x1

    #@15c
    move/from16 v0, v19

    #@15e
    move-object/from16 v1, p0

    #@160
    iput-boolean v0, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHavePendingChanges:Z

    #@162
    .line 277
    move-object/from16 v0, p0

    #@164
    iget-object v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    #@166
    move-object/from16 v19, v0

    #@168
    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseArray;->clear()V

    #@16b
    .line 278
    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@16e
    move-result-object v16

    #@16f
    .local v16, "record$iterator":Ljava/util/Iterator;
    :goto_9
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    #@172
    move-result v19

    #@173
    if-eqz v19, :cond_13

    #@175
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@178
    move-result-object v15

    #@179
    check-cast v15, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    #@17b
    .line 279
    .restart local v15    # "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    move-object/from16 v0, p0

    #@17d
    iget-object v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    #@17f
    move-object/from16 v19, v0

    #@181
    iget-object v0, v15, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    #@183
    move-object/from16 v20, v0

    #@185
    invoke-virtual/range {v20 .. v20}, Landroid/view/Display$Mode;->getModeId()I

    #@188
    move-result v20

    #@189
    move-object/from16 v0, v19

    #@18b
    move/from16 v1, v20

    #@18d
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@190
    goto :goto_9

    #@191
    .line 243
    .end local v16    # "record$iterator":Ljava/util/Iterator;
    .end local v18    # "recordsChanged":Z
    .restart local v4    # "activeRecord":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    :cond_f
    add-int/lit8 v11, v11, 0x1

    #@193
    goto/16 :goto_6

    #@195
    .line 266
    .end local v4    # "activeRecord":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    .end local v15    # "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    :cond_10
    const/4 v9, 0x1

    #@196
    .local v9, "colorTransformsChanged":Z
    goto :goto_7

    #@197
    .line 268
    .end local v9    # "colorTransformsChanged":Z
    :cond_11
    const/16 v18, 0x1

    #@199
    goto :goto_8

    #@19a
    .line 272
    .restart local v18    # "recordsChanged":Z
    :cond_12
    const/16 v19, 0x0

    #@19c
    return v19

    #@19d
    .line 281
    .restart local v16    # "record$iterator":Ljava/util/Iterator;
    :cond_13
    move-object/from16 v0, p0

    #@19f
    iget-object v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorTransforms:Landroid/util/SparseArray;

    #@1a1
    move-object/from16 v19, v0

    #@1a3
    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseArray;->clear()V

    #@1a6
    .line 282
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1a9
    move-result-object v6

    #@1aa
    .local v6, "colorTransform$iterator":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@1ad
    move-result v19

    #@1ae
    if-eqz v19, :cond_14

    #@1b0
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b3
    move-result-object v5

    #@1b4
    check-cast v5, Landroid/view/Display$ColorTransform;

    #@1b6
    .line 283
    .restart local v5    # "colorTransform":Landroid/view/Display$ColorTransform;
    move-object/from16 v0, p0

    #@1b8
    iget-object v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorTransforms:Landroid/util/SparseArray;

    #@1ba
    move-object/from16 v19, v0

    #@1bc
    invoke-virtual {v5}, Landroid/view/Display$ColorTransform;->getId()I

    #@1bf
    move-result v20

    #@1c0
    move-object/from16 v0, v19

    #@1c2
    move/from16 v1, v20

    #@1c4
    invoke-virtual {v0, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@1c7
    goto :goto_a

    #@1c8
    .line 288
    .end local v5    # "colorTransform":Landroid/view/Display$ColorTransform;
    :cond_14
    move-object/from16 v0, p0

    #@1ca
    iget v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultColorTransformId:I

    #@1cc
    move/from16 v19, v0

    #@1ce
    move-object/from16 v0, p0

    #@1d0
    iget v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    #@1d2
    move/from16 v20, v0

    #@1d4
    move-object/from16 v0, p0

    #@1d6
    move/from16 v1, v19

    #@1d8
    move/from16 v2, v20

    #@1da
    invoke-direct {v0, v1, v2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findDisplayInfoIndexLocked(II)I

    #@1dd
    move-result v19

    #@1de
    if-gez v19, :cond_17

    #@1e0
    .line 289
    move-object/from16 v0, p0

    #@1e2
    iget v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    #@1e4
    move/from16 v19, v0

    #@1e6
    if-eqz v19, :cond_15

    #@1e8
    .line 290
    const-string/jumbo v19, "LocalDisplayAdapter"

    #@1eb
    const-string/jumbo v20, "Default display mode no longer available, using currently active mode as default."

    #@1ee
    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1f1
    .line 293
    :cond_15
    iget-object v0, v4, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    #@1f3
    move-object/from16 v19, v0

    #@1f5
    invoke-virtual/range {v19 .. v19}, Landroid/view/Display$Mode;->getModeId()I

    #@1f8
    move-result v19

    #@1f9
    move/from16 v0, v19

    #@1fb
    move-object/from16 v1, p0

    #@1fd
    iput v0, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    #@1ff
    .line 294
    move-object/from16 v0, p0

    #@201
    iget v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultColorTransformId:I

    #@203
    move/from16 v19, v0

    #@205
    if-eqz v19, :cond_16

    #@207
    .line 295
    const-string/jumbo v19, "LocalDisplayAdapter"

    #@20a
    const-string/jumbo v20, "Default color transform no longer available, using currently active color transform as default"

    #@20d
    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@210
    .line 298
    :cond_16
    invoke-virtual {v3}, Landroid/view/Display$ColorTransform;->getId()I

    #@213
    move-result v19

    #@214
    move/from16 v0, v19

    #@216
    move-object/from16 v1, p0

    #@218
    iput v0, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultColorTransformId:I

    #@21a
    .line 301
    :cond_17
    move-object/from16 v0, p0

    #@21c
    iget-object v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    #@21e
    move-object/from16 v19, v0

    #@220
    move-object/from16 v0, p0

    #@222
    iget v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    #@224
    move/from16 v20, v0

    #@226
    invoke-virtual/range {v19 .. v20}, Landroid/util/SparseArray;->indexOfKey(I)I

    #@229
    move-result v19

    #@22a
    if-gez v19, :cond_19

    #@22c
    .line 302
    move-object/from16 v0, p0

    #@22e
    iget v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    #@230
    move/from16 v19, v0

    #@232
    if-eqz v19, :cond_18

    #@234
    .line 303
    const-string/jumbo v19, "LocalDisplayAdapter"

    #@237
    const-string/jumbo v20, "Active display mode no longer available, reverting to default mode."

    #@23a
    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@23d
    .line 306
    :cond_18
    move-object/from16 v0, p0

    #@23f
    iget v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    #@241
    move/from16 v19, v0

    #@243
    move/from16 v0, v19

    #@245
    move-object/from16 v1, p0

    #@247
    iput v0, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    #@249
    .line 307
    const/16 v19, 0x1

    #@24b
    move/from16 v0, v19

    #@24d
    move-object/from16 v1, p0

    #@24f
    iput-boolean v0, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeInvalid:Z

    #@251
    .line 311
    :cond_19
    move-object/from16 v0, p0

    #@253
    iget-object v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorTransforms:Landroid/util/SparseArray;

    #@255
    move-object/from16 v19, v0

    #@257
    move-object/from16 v0, p0

    #@259
    iget v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorTransformId:I

    #@25b
    move/from16 v20, v0

    #@25d
    invoke-virtual/range {v19 .. v20}, Landroid/util/SparseArray;->indexOfKey(I)I

    #@260
    move-result v19

    #@261
    if-gez v19, :cond_1b

    #@263
    .line 312
    move-object/from16 v0, p0

    #@265
    iget v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorTransformId:I

    #@267
    move/from16 v19, v0

    #@269
    if-eqz v19, :cond_1a

    #@26b
    .line 313
    const-string/jumbo v19, "LocalDisplayAdapter"

    #@26e
    const-string/jumbo v20, "Active color transform no longer available, reverting to default transform."

    #@271
    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@274
    .line 316
    :cond_1a
    move-object/from16 v0, p0

    #@276
    iget v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultColorTransformId:I

    #@278
    move/from16 v19, v0

    #@27a
    move/from16 v0, v19

    #@27c
    move-object/from16 v1, p0

    #@27e
    iput v0, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorTransformId:I

    #@280
    .line 317
    const/16 v19, 0x1

    #@282
    move/from16 v0, v19

    #@284
    move-object/from16 v1, p0

    #@286
    iput-boolean v0, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorTransformInvalid:Z

    #@288
    .line 320
    :cond_1b
    move-object/from16 v0, p0

    #@28a
    iget-object v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    #@28c
    move-object/from16 v19, v0

    #@28e
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/display/LocalDisplayAdapter;->sendTraversalRequestLocked()V

    #@291
    .line 321
    const/16 v19, 0x1

    #@293
    return v19
.end method
