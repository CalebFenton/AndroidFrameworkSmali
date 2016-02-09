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

.field private mActiveModeId:I

.field private mActiveModeInvalid:Z

.field private final mBacklight:Lcom/android/server/lights/Light;

.field private mBrightness:I

.field private final mBuiltInDisplayId:I

.field private mDefaultModeId:I

.field private mHavePendingChanges:Z

.field private mInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field private mState:I

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
    .line 142
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
    .line 155
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    #@3
    .line 157
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
    .line 145
    new-instance v1, Landroid/util/SparseArray;

    #@1c
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    #@1f
    iput-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    #@21
    .line 149
    iput v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    #@23
    .line 150
    const/4 v1, -0x1

    #@24
    iput v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBrightness:I

    #@26
    .line 158
    iput p3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBuiltInDisplayId:I

    #@28
    .line 159
    invoke-virtual {p0, p4, p5}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updatePhysicalDisplayInfoLocked([Landroid/view/SurfaceControl$PhysicalDisplayInfo;I)Z

    #@2b
    .line 160
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBuiltInDisplayId:I

    #@2d
    if-nez v1, :cond_0

    #@2f
    .line 161
    const-class v1, Lcom/android/server/lights/LightsManager;

    #@31
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@34
    move-result-object v0

    #@35
    check-cast v0, Lcom/android/server/lights/LightsManager;

    #@37
    .line 162
    .local v0, "lights":Lcom/android/server/lights/LightsManager;
    invoke-virtual {v0, v3}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    #@3a
    move-result-object v1

    #@3b
    iput-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBacklight:Lcom/android/server/lights/Light;

    #@3d
    .line 156
    .end local v0    # "lights":Lcom/android/server/lights/LightsManager;
    :goto_0
    return-void

    #@3e
    .line 164
    :cond_0
    const/4 v1, 0x0

    #@3f
    iput-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBacklight:Lcom/android/server/lights/Light;

    #@41
    goto :goto_0
.end method

.method private findDisplayModeRecord(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    .locals 3
    .param p1, "info"    # Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    #@0
    .prologue
    .line 230
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
    .line 231
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    #@b
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    #@11
    .line 232
    .local v1, "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    iget-object v2, v1, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mPhys:Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    #@13
    invoke-virtual {v2, p1}, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->equals(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_0

    #@19
    .line 233
    return-object v1

    #@1a
    .line 230
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 236
    .end local v1    # "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    :cond_1
    const/4 v2, 0x0

    #@1e
    return-object v2
.end method

.method private updateDeviceInfoLocked()V
    .locals 2

    #@0
    .prologue
    .line 434
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@3
    .line 435
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    #@5
    const/4 v1, 0x2

    #@6
    invoke-virtual {v0, p0, v1}, Lcom/android/server/display/LocalDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    #@9
    .line 433
    return-void
.end method


# virtual methods
.method public applyPendingDisplayDeviceInfoChangesLocked()V
    .locals 1

    #@0
    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHavePendingChanges:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 242
    const/4 v0, 0x0

    #@5
    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@7
    .line 243
    const/4 v0, 0x0

    #@8
    iput-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHavePendingChanges:Z

    #@a
    .line 240
    :cond_0
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 425
    invoke-super {p0, p1}, Lcom/android/server/display/DisplayDevice;->dumpLocked(Ljava/io/PrintWriter;)V

    #@3
    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v1, "mBuiltInDisplayId="

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBuiltInDisplayId:I

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1c
    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v1, "mActiveModeId="

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@35
    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v1, "mState="

    #@3d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v0

    #@41
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    #@43
    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    #@46
    move-result-object v1

    #@47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v0

    #@4b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v0

    #@4f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@52
    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    #@54
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@57
    const-string/jumbo v1, "mBrightness="

    #@5a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v0

    #@5e
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBrightness:I

    #@60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@63
    move-result-object v0

    #@64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v0

    #@68
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6b
    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    #@6d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@70
    const-string/jumbo v1, "mBacklight="

    #@73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v0

    #@77
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBacklight:Lcom/android/server/lights/Light;

    #@79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v0

    #@7d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@80
    move-result-object v0

    #@81
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@84
    .line 424
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
    .line 249
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@5
    if-nez v4, :cond_4

    #@7
    .line 250
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    #@9
    iget v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    #@b
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v4

    #@f
    check-cast v4, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    #@11
    iget-object v1, v4, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mPhys:Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    #@13
    .line 251
    .local v1, "phys":Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    new-instance v4, Lcom/android/server/display/DisplayDeviceInfo;

    #@15
    invoke-direct {v4}, Lcom/android/server/display/DisplayDeviceInfo;-><init>()V

    #@18
    iput-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@1a
    .line 252
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@1c
    iget v5, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->width:I

    #@1e
    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    #@20
    .line 253
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@22
    iget v5, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->height:I

    #@24
    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    #@26
    .line 254
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@28
    iget v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    #@2a
    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->modeId:I

    #@2c
    .line 255
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@2e
    iget v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    #@30
    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->defaultModeId:I

    #@32
    .line 256
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@34
    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    #@36
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    #@39
    move-result v5

    #@3a
    new-array v5, v5, [Landroid/view/Display$Mode;

    #@3c
    iput-object v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    #@3e
    .line 257
    const/4 v0, 0x0

    #@3f
    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    #@41
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    #@44
    move-result v4

    #@45
    if-ge v0, v4, :cond_0

    #@47
    .line 258
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    #@49
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@4c
    move-result-object v2

    #@4d
    check-cast v2, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    #@4f
    .line 259
    .local v2, "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@51
    iget-object v4, v4, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    #@53
    iget-object v5, v2, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    #@55
    aput-object v5, v4, v0

    #@57
    .line 257
    add-int/lit8 v0, v0, 0x1

    #@59
    goto :goto_0

    #@5a
    .line 261
    .end local v2    # "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    :cond_0
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@5c
    iget-wide v6, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->appVsyncOffsetNanos:J

    #@5e
    iput-wide v6, v4, Lcom/android/server/display/DisplayDeviceInfo;->appVsyncOffsetNanos:J

    #@60
    .line 262
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@62
    iget-wide v6, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->presentationDeadlineNanos:J

    #@64
    iput-wide v6, v4, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    #@66
    .line 263
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@68
    iget v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    #@6a
    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    #@6c
    .line 264
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@6e
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getUniqueId()Ljava/lang/String;

    #@71
    move-result-object v5

    #@72
    iput-object v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    #@74
    .line 268
    iget-boolean v4, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->secure:Z

    #@76
    if-eqz v4, :cond_1

    #@78
    .line 269
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@7a
    const/16 v5, 0xc

    #@7c
    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    #@7e
    .line 273
    :cond_1
    iget v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBuiltInDisplayId:I

    #@80
    if-nez v4, :cond_5

    #@82
    .line 274
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    #@84
    invoke-virtual {v4}, Lcom/android/server/display/LocalDisplayAdapter;->getContext()Landroid/content/Context;

    #@87
    move-result-object v4

    #@88
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@8b
    move-result-object v3

    #@8c
    .line 275
    .local v3, "res":Landroid/content/res/Resources;
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@8e
    .line 276
    const v5, 0x10404be

    #@91
    .line 275
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@94
    move-result-object v5

    #@95
    iput-object v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    #@97
    .line 277
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@99
    iget v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    #@9b
    or-int/lit8 v5, v5, 0x3

    #@9d
    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    #@9f
    .line 279
    const v4, 0x112009b

    #@a2
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@a5
    move-result v4

    #@a6
    if-nez v4, :cond_2

    #@a8
    .line 280
    sget-object v4, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    #@aa
    const-string/jumbo v5, "goldfish"

    #@ad
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@b0
    move-result v4

    #@b1
    if-eqz v4, :cond_3

    #@b3
    .line 281
    const-string/jumbo v4, "ro.emulator.circular"

    #@b6
    invoke-static {v4, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@b9
    move-result v4

    #@ba
    .line 279
    if-eqz v4, :cond_3

    #@bc
    .line 282
    :cond_2
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@be
    iget v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    #@c0
    or-int/lit16 v5, v5, 0x100

    #@c2
    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    #@c4
    .line 284
    :cond_3
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@c6
    iput v9, v4, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    #@c8
    .line 285
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@ca
    iget v5, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->density:F

    #@cc
    const/high16 v6, 0x43200000    # 160.0f

    #@ce
    mul-float/2addr v5, v6

    #@cf
    const/high16 v6, 0x3f000000    # 0.5f

    #@d1
    add-float/2addr v5, v6

    #@d2
    float-to-int v5, v5

    #@d3
    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    #@d5
    .line 286
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@d7
    iget v5, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->xDpi:F

    #@d9
    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    #@db
    .line 287
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@dd
    iget v5, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->yDpi:F

    #@df
    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    #@e1
    .line 288
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@e3
    iput v9, v4, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    #@e5
    .line 310
    .end local v0    # "i":I
    .end local v1    # "phys":Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    .end local v3    # "res":Landroid/content/res/Resources;
    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@e7
    return-object v4

    #@e8
    .line 290
    .restart local v0    # "i":I
    .restart local v1    # "phys":Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    :cond_5
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@ea
    iput v10, v4, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    #@ec
    .line 291
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@ee
    iget v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    #@f0
    or-int/lit8 v5, v5, 0x40

    #@f2
    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    #@f4
    .line 292
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@f6
    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    #@f8
    invoke-virtual {v5}, Lcom/android/server/display/LocalDisplayAdapter;->getContext()Landroid/content/Context;

    #@fb
    move-result-object v5

    #@fc
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@ff
    move-result-object v5

    #@100
    .line 293
    const v6, 0x10404bf

    #@103
    .line 292
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@106
    move-result-object v5

    #@107
    iput-object v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    #@109
    .line 294
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@10b
    iput v10, v4, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    #@10d
    .line 295
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@10f
    iget v5, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->width:I

    #@111
    iget v6, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->height:I

    #@113
    invoke-virtual {v4, v5, v6}, Lcom/android/server/display/DisplayDeviceInfo;->setAssumedDensityForExternalDisplay(II)V

    #@116
    .line 299
    const-string/jumbo v4, "portrait"

    #@119
    const-string/jumbo v5, "persist.demo.hdmirotation"

    #@11c
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@11f
    move-result-object v5

    #@120
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@123
    move-result v4

    #@124
    if-eqz v4, :cond_6

    #@126
    .line 300
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@128
    const/4 v5, 0x3

    #@129
    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    #@12b
    .line 305
    :cond_6
    const-string/jumbo v4, "persist.demo.hdmirotates"

    #@12e
    invoke-static {v4, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@131
    move-result v4

    #@132
    if-eqz v4, :cond_4

    #@134
    .line 306
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@136
    iget v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    #@138
    or-int/lit8 v5, v5, 0x2

    #@13a
    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    #@13c
    goto :goto_1
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
    .line 316
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
    .line 318
    :cond_2
    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    #@17
    if-eq v0, p1, :cond_6

    #@19
    const/4 v8, 0x1

    #@1a
    .line 319
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
    .line 320
    .local v4, "brightnessChanged":Z
    :goto_2
    if-nez v8, :cond_3

    #@25
    if-eqz v4, :cond_8

    #@27
    .line 321
    :cond_3
    iget v6, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBuiltInDisplayId:I

    #@29
    .line 322
    .local v6, "displayId":I
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    #@2c
    move-result-object v7

    #@2d
    .line 323
    .local v7, "token":Landroid/os/IBinder;
    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    #@2f
    .line 325
    .local v2, "oldState":I
    if-eqz v8, :cond_4

    #@31
    .line 326
    iput p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    #@33
    .line 327
    invoke-direct {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    #@36
    .line 330
    :cond_4
    if-eqz v4, :cond_5

    #@38
    .line 331
    iput p2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBrightness:I

    #@3a
    .line 337
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
    .line 318
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
    .line 319
    :cond_7
    const/4 v4, 0x0

    #@46
    .restart local v4    # "brightnessChanged":Z
    goto :goto_2

    #@47
    .line 401
    :cond_8
    return-object v5
.end method

.method public requestModeInTransactionLocked(I)V
    .locals 5
    .param p1, "modeId"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 406
    if-nez p1, :cond_2

    #@3
    .line 407
    iget p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    #@5
    .line 413
    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    #@7
    if-ne v1, p1, :cond_1

    #@9
    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeInvalid:Z

    #@b
    if-eqz v1, :cond_3

    #@d
    .line 416
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    #@f
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    #@15
    .line 417
    .local v0, "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    #@18
    move-result-object v1

    #@19
    iget v2, v0, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mPhysIndex:I

    #@1b
    invoke-static {v1, v2}, Landroid/view/SurfaceControl;->setActiveConfig(Landroid/os/IBinder;I)Z

    #@1e
    .line 418
    iput p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    #@20
    .line 419
    iput-boolean v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeInvalid:Z

    #@22
    .line 420
    invoke-direct {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    #@25
    .line 405
    return-void

    #@26
    .line 408
    .end local v0    # "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    :cond_2
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    #@28
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    #@2b
    move-result v1

    #@2c
    if-gez v1, :cond_0

    #@2e
    .line 409
    const-string/jumbo v1, "LocalDisplayAdapter"

    #@31
    new-instance v2, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v3, "Requested mode "

    #@39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v2

    #@3d
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@40
    move-result-object v2

    #@41
    const-string/jumbo v3, " is not supported by this display,"

    #@44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v2

    #@48
    .line 410
    const-string/jumbo v3, " reverting to default display mode."

    #@4b
    .line 409
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v2

    #@4f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v2

    #@53
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@56
    .line 411
    iget p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    #@58
    goto :goto_0

    #@59
    .line 414
    :cond_3
    return-void
.end method

.method public updatePhysicalDisplayInfoLocked([Landroid/view/SurfaceControl$PhysicalDisplayInfo;I)Z
    .locals 11
    .param p1, "physicalDisplayInfos"    # [Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    .param p2, "activeDisplayInfo"    # I

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    .line 171
    const/4 v3, 0x0

    #@3
    .line 172
    .local v3, "modesAdded":Z
    const/4 v0, 0x0

    #@4
    .line 173
    .local v0, "activeRecord":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    new-instance v6, Ljava/util/ArrayList;

    #@6
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@9
    .line 174
    .local v6, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;>;"
    const/4 v1, 0x0

    #@a
    .end local v0    # "activeRecord":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    .local v1, "i":I
    :goto_0
    array-length v7, p1

    #@b
    if-ge v1, v7, :cond_2

    #@d
    .line 175
    aget-object v2, p1, v1

    #@f
    .line 176
    .local v2, "info":Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    invoke-direct {p0, v2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findDisplayModeRecord(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    #@12
    move-result-object v4

    #@13
    .line 177
    .local v4, "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    if-eqz v4, :cond_1

    #@15
    .line 178
    iput v1, v4, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mPhysIndex:I

    #@17
    .line 183
    :goto_1
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1a
    .line 184
    if-ne v1, p2, :cond_0

    #@1c
    .line 185
    move-object v0, v4

    #@1d
    .line 174
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 180
    :cond_1
    new-instance v4, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    #@22
    .end local v4    # "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    invoke-direct {v4, v2, v1}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;-><init>(Landroid/view/SurfaceControl$PhysicalDisplayInfo;I)V

    #@25
    .line 181
    .restart local v4    # "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    const/4 v3, 0x1

    #@26
    goto :goto_1

    #@27
    .line 190
    .end local v2    # "info":Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    .end local v4    # "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    :cond_2
    iget v7, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    #@29
    if-eqz v7, :cond_3

    #@2b
    .line 191
    iget v7, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    #@2d
    iget-object v8, v0, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    #@2f
    invoke-virtual {v8}, Landroid/view/Display$Mode;->getModeId()I

    #@32
    move-result v8

    #@33
    if-eq v7, v8, :cond_3

    #@35
    .line 192
    iput-boolean v10, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeInvalid:Z

    #@37
    .line 193
    iget-object v7, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    #@39
    invoke-virtual {v7}, Lcom/android/server/display/LocalDisplayAdapter;->sendTraversalRequestLocked()V

    #@3c
    .line 198
    :cond_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@3f
    move-result v7

    #@40
    iget-object v8, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    #@42
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    #@45
    move-result v8

    #@46
    if-ne v7, v8, :cond_4

    #@48
    if-eqz v3, :cond_5

    #@4a
    .line 202
    :cond_4
    iput-boolean v10, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHavePendingChanges:Z

    #@4c
    .line 203
    iget-object v7, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    #@4e
    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V

    #@51
    .line 204
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@54
    move-result-object v5

    #@55
    .local v5, "record$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@58
    move-result v7

    #@59
    if-eqz v7, :cond_6

    #@5b
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5e
    move-result-object v4

    #@5f
    check-cast v4, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    #@61
    .line 205
    .restart local v4    # "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    iget-object v7, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    #@63
    iget-object v8, v4, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    #@65
    invoke-virtual {v8}, Landroid/view/Display$Mode;->getModeId()I

    #@68
    move-result v8

    #@69
    invoke-virtual {v7, v8, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@6c
    goto :goto_2

    #@6d
    .line 199
    .end local v4    # "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    .end local v5    # "record$iterator":Ljava/util/Iterator;
    :cond_5
    return v9

    #@6e
    .line 208
    .restart local v5    # "record$iterator":Ljava/util/Iterator;
    :cond_6
    iget-object v7, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    #@70
    iget v8, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    #@72
    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->indexOfKey(I)I

    #@75
    move-result v7

    #@76
    if-gez v7, :cond_8

    #@78
    .line 209
    iget v7, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    #@7a
    if-eqz v7, :cond_7

    #@7c
    .line 210
    const-string/jumbo v7, "LocalDisplayAdapter"

    #@7f
    const-string/jumbo v8, "Default display mode no longer available, using currently active mode as default."

    #@82
    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@85
    .line 213
    :cond_7
    iget-object v7, v0, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    #@87
    invoke-virtual {v7}, Landroid/view/Display$Mode;->getModeId()I

    #@8a
    move-result v7

    #@8b
    iput v7, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    #@8d
    .line 216
    :cond_8
    iget-object v7, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    #@8f
    iget v8, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    #@91
    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->indexOfKey(I)I

    #@94
    move-result v7

    #@95
    if-gez v7, :cond_a

    #@97
    .line 217
    iget v7, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    #@99
    if-eqz v7, :cond_9

    #@9b
    .line 218
    const-string/jumbo v7, "LocalDisplayAdapter"

    #@9e
    const-string/jumbo v8, "Active display mode no longer available, reverting to default mode."

    #@a1
    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@a4
    .line 221
    :cond_9
    iget v7, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    #@a6
    iput v7, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    #@a8
    .line 222
    iput-boolean v10, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeInvalid:Z

    #@aa
    .line 225
    :cond_a
    iget-object v7, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    #@ac
    invoke-virtual {v7}, Lcom/android/server/display/LocalDisplayAdapter;->sendTraversalRequestLocked()V

    #@af
    .line 226
    return v10
.end method
