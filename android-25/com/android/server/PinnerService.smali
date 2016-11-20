.class public final Lcom/android/server/PinnerService;
.super Lcom/android/server/SystemService;
.source "PinnerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PinnerService$BinderService;,
        Lcom/android/server/PinnerService$PinnedFile;,
        Lcom/android/server/PinnerService$PinnerHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "PinnerService"


# instance fields
.field private final MAX_CAMERA_PIN_SIZE:J

.field private mBinderService:Lcom/android/server/PinnerService$BinderService;

.field private final mContext:Landroid/content/Context;

.field private final mPinnedCameraFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/PinnerService$PinnedFile;",
            ">;"
        }
    .end annotation
.end field

.field private final mPinnedFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/PinnerService$PinnedFile;",
            ">;"
        }
    .end annotation
.end field

.field private mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

.field private final mShouldPinCamera:Z


# direct methods
.method static synthetic -get0(Lcom/android/server/PinnerService;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/PinnerService;)Ljava/util/ArrayList;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnedCameraFiles:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/PinnerService;)Ljava/util/ArrayList;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnedFiles:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/PinnerService;I)V
    .locals 0
    .param p1, "userHandle"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/PinnerService;->handlePinCamera(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/PinnerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/PinnerService;->handlePinOnStart()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    #@3
    .line 60
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/PinnerService;->mPinnedFiles:Ljava/util/ArrayList;

    #@a
    .line 61
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/server/PinnerService;->mPinnedCameraFiles:Ljava/util/ArrayList;

    #@11
    .line 66
    const-wide/32 v0, 0x3200000

    #@14
    iput-wide v0, p0, Lcom/android/server/PinnerService;->MAX_CAMERA_PIN_SIZE:J

    #@16
    .line 68
    const/4 v0, 0x0

    #@17
    iput-object v0, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    #@19
    .line 74
    iput-object p1, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    #@1b
    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1e
    move-result-object v0

    #@1f
    .line 76
    const v1, 0x11200b2

    #@22
    .line 75
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@25
    move-result v0

    #@26
    iput-boolean v0, p0, Lcom/android/server/PinnerService;->mShouldPinCamera:Z

    #@28
    .line 77
    new-instance v0, Lcom/android/server/PinnerService$PinnerHandler;

    #@2a
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    #@31
    move-result-object v1

    #@32
    invoke-direct {v0, p0, v1}, Lcom/android/server/PinnerService$PinnerHandler;-><init>(Lcom/android/server/PinnerService;Landroid/os/Looper;)V

    #@35
    iput-object v0, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    #@37
    .line 71
    return-void
.end method

.method private alreadyPinned(I)Z
    .locals 5
    .param p1, "userHandle"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 149
    invoke-direct {p0, p1}, Lcom/android/server/PinnerService;->getCameraInfo(I)Landroid/content/pm/ApplicationInfo;

    #@4
    move-result-object v0

    #@5
    .line 150
    .local v0, "cameraInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_0

    #@7
    .line 151
    return v4

    #@8
    .line 153
    :cond_0
    const/4 v1, 0x0

    #@9
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/PinnerService;->mPinnedCameraFiles:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@e
    move-result v2

    #@f
    if-ge v1, v2, :cond_2

    #@11
    .line 154
    iget-object v2, p0, Lcom/android/server/PinnerService;->mPinnedCameraFiles:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    check-cast v2, Lcom/android/server/PinnerService$PinnedFile;

    #@19
    iget-object v2, v2, Lcom/android/server/PinnerService$PinnedFile;->mFilename:Ljava/lang/String;

    #@1b
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_1

    #@23
    .line 158
    const/4 v2, 0x1

    #@24
    return v2

    #@25
    .line 153
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@27
    goto :goto_0

    #@28
    .line 161
    :cond_2
    return v4
.end method

.method private getCameraInfo(I)Landroid/content/pm/ApplicationInfo;
    .locals 5
    .param p1, "userHandle"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 179
    new-instance v0, Landroid/content/Intent;

    #@3
    const-string/jumbo v3, "android.media.action.STILL_IMAGE_CAMERA"

    #@6
    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@9
    .line 180
    .local v0, "cameraIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    #@b
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@e
    move-result-object v2

    #@f
    .line 182
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/high16 v3, 0xd0000

    #@11
    .line 181
    invoke-virtual {v2, v0, v3, p1}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    #@14
    move-result-object v1

    #@15
    .line 185
    .local v1, "cameraResolveInfo":Landroid/content/pm/ResolveInfo;
    if-nez v1, :cond_0

    #@17
    .line 190
    return-object v4

    #@18
    .line 193
    :cond_0
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@1a
    invoke-direct {p0, v3}, Lcom/android/server/PinnerService;->isResolverActivity(Landroid/content/pm/ActivityInfo;)Z

    #@1d
    move-result v3

    #@1e
    if-eqz v3, :cond_1

    #@20
    .line 195
    return-object v4

    #@21
    .line 198
    :cond_1
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@23
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@25
    return-object v3
.end method

.method private handlePinCamera(I)V
    .locals 2
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 131
    iget-boolean v1, p0, Lcom/android/server/PinnerService;->mShouldPinCamera:Z

    #@2
    if-eqz v1, :cond_1

    #@4
    .line 132
    monitor-enter p0

    #@5
    .line 133
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/PinnerService;->pinCamera(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v0

    #@9
    .line 134
    .local v0, "success":Z
    if-nez v0, :cond_0

    #@b
    :cond_0
    monitor-exit p0

    #@c
    .line 130
    .end local v0    # "success":Z
    :cond_1
    return-void

    #@d
    .line 132
    :catchall_0
    move-exception v1

    #@e
    monitor-exit p0

    #@f
    throw v1
.end method

.method private handlePinOnStart()V
    .locals 10

    #@0
    .prologue
    .line 109
    iget-object v1, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v1

    #@6
    .line 110
    const v2, 0x1070049

    #@9
    .line 109
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 111
    .local v0, "filesToPin":[Ljava/lang/String;
    monitor-enter p0

    #@e
    .line 113
    const/4 v8, 0x0

    #@f
    .local v8, "i":I
    :goto_0
    :try_start_0
    array-length v1, v0

    #@10
    if-ge v8, v1, :cond_1

    #@12
    .line 114
    aget-object v1, v0, v8

    #@14
    const-wide/16 v2, 0x0

    #@16
    const-wide/16 v4, 0x0

    #@18
    const-wide/16 v6, 0x0

    #@1a
    invoke-static/range {v1 .. v7}, Lcom/android/server/PinnerService;->pinFile(Ljava/lang/String;JJJ)Lcom/android/server/PinnerService$PinnedFile;

    #@1d
    move-result-object v9

    #@1e
    .line 115
    .local v9, "pf":Lcom/android/server/PinnerService$PinnedFile;
    if-eqz v9, :cond_0

    #@20
    .line 116
    iget-object v1, p0, Lcom/android/server/PinnerService;->mPinnedFiles:Ljava/util/ArrayList;

    #@22
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@25
    .line 113
    :goto_1
    add-int/lit8 v8, v8, 0x1

    #@27
    goto :goto_0

    #@28
    .line 121
    :cond_0
    const-string/jumbo v1, "PinnerService"

    #@2b
    new-instance v2, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v3, "Failed to pin file = "

    #@33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v2

    #@37
    aget-object v3, v0, v8

    #@39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v2

    #@3d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v2

    #@41
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@44
    goto :goto_1

    #@45
    .line 111
    .end local v9    # "pf":Lcom/android/server/PinnerService$PinnedFile;
    :catchall_0
    move-exception v1

    #@46
    monitor-exit p0

    #@47
    throw v1

    #@48
    :cond_1
    monitor-exit p0

    #@49
    .line 107
    return-void
.end method

.method private isResolverActivity(Landroid/content/pm/ActivityInfo;)Z
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    #@0
    .prologue
    .line 172
    const-class v0, Lcom/android/internal/app/ResolverActivity;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method private pinCamera(I)Z
    .locals 14
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 204
    invoke-direct {p0, p1}, Lcom/android/server/PinnerService;->alreadyPinned(I)Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 205
    const/4 v2, 0x1

    #@7
    return v2

    #@8
    .line 208
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/PinnerService;->getCameraInfo(I)Landroid/content/pm/ApplicationInfo;

    #@b
    move-result-object v11

    #@c
    .line 209
    .local v11, "cameraInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v11, :cond_1

    #@e
    .line 210
    const/4 v2, 0x0

    #@f
    return v2

    #@10
    .line 216
    :cond_1
    invoke-direct {p0}, Lcom/android/server/PinnerService;->unpinCameraApp()V

    #@13
    .line 219
    iget-object v1, v11, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    #@15
    .line 220
    .local v1, "camAPK":Ljava/lang/String;
    const-wide/16 v2, 0x0

    #@17
    const-wide/16 v4, 0x0

    #@19
    const-wide/32 v6, 0x3200000

    #@1c
    invoke-static/range {v1 .. v7}, Lcom/android/server/PinnerService;->pinFile(Ljava/lang/String;JJJ)Lcom/android/server/PinnerService$PinnedFile;

    #@1f
    move-result-object v13

    #@20
    .line 221
    .local v13, "pf":Lcom/android/server/PinnerService$PinnedFile;
    if-nez v13, :cond_2

    #@22
    .line 222
    const-string/jumbo v2, "PinnerService"

    #@25
    new-instance v4, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v5, "Failed to pin "

    #@2d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v4

    #@31
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v4

    #@35
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v4

    #@39
    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3c
    .line 223
    const/4 v2, 0x0

    #@3d
    return v2

    #@3e
    .line 228
    :cond_2
    iget-object v2, p0, Lcom/android/server/PinnerService;->mPinnedCameraFiles:Ljava/util/ArrayList;

    #@40
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@43
    .line 231
    const-string/jumbo v0, "arm"

    #@46
    .line 232
    .local v0, "arch":Ljava/lang/String;
    iget-object v2, v11, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    #@48
    if-eqz v2, :cond_4

    #@4a
    .line 233
    iget-object v2, v11, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    #@4c
    invoke-static {v2}, Ldalvik/system/VMRuntime;->is64BitAbi(Ljava/lang/String;)Z

    #@4f
    move-result v2

    #@50
    .line 232
    if-eqz v2, :cond_4

    #@52
    .line 234
    new-instance v2, Ljava/lang/StringBuilder;

    #@54
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@57
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v2

    #@5b
    const-string/jumbo v4, "64"

    #@5e
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v2

    #@62
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v0

    #@66
    .line 242
    :cond_3
    :goto_0
    invoke-virtual {v11}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    #@69
    move-result-object v10

    #@6a
    .line 243
    .local v10, "baseCodePath":Ljava/lang/String;
    const/4 v3, 0x0

    #@6b
    .line 245
    .local v3, "odex":Ljava/lang/String;
    :try_start_0
    invoke-static {v10, v0}, Ldalvik/system/DexFile;->getDexFileOutputPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@6e
    move-result-object v3

    #@6f
    .line 247
    .end local v3    # "odex":Ljava/lang/String;
    :goto_1
    if-nez v3, :cond_5

    #@71
    .line 248
    const/4 v2, 0x1

    #@72
    return v2

    #@73
    .line 236
    .end local v10    # "baseCodePath":Ljava/lang/String;
    :cond_4
    sget-object v2, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    #@75
    const/4 v4, 0x0

    #@76
    aget-object v2, v2, v4

    #@78
    invoke-static {v2}, Ldalvik/system/VMRuntime;->is64BitAbi(Ljava/lang/String;)Z

    #@7b
    move-result v2

    #@7c
    if-eqz v2, :cond_3

    #@7e
    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    #@80
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@83
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v2

    #@87
    const-string/jumbo v4, "64"

    #@8a
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v2

    #@8e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@91
    move-result-object v0

    #@92
    goto :goto_0

    #@93
    .line 246
    .restart local v3    # "odex":Ljava/lang/String;
    .restart local v10    # "baseCodePath":Ljava/lang/String;
    :catch_0
    move-exception v12

    #@94
    .local v12, "ioe":Ljava/io/IOException;
    goto :goto_1

    #@95
    .line 252
    .end local v3    # "odex":Ljava/lang/String;
    .end local v12    # "ioe":Ljava/io/IOException;
    :cond_5
    const-wide/16 v4, 0x0

    #@97
    const-wide/16 v6, 0x0

    #@99
    const-wide/32 v8, 0x3200000

    #@9c
    invoke-static/range {v3 .. v9}, Lcom/android/server/PinnerService;->pinFile(Ljava/lang/String;JJJ)Lcom/android/server/PinnerService$PinnedFile;

    #@9f
    move-result-object v13

    #@a0
    .line 253
    if-eqz v13, :cond_6

    #@a2
    .line 254
    iget-object v2, p0, Lcom/android/server/PinnerService;->mPinnedCameraFiles:Ljava/util/ArrayList;

    #@a4
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@a7
    .line 260
    :cond_6
    const/4 v2, 0x1

    #@a8
    return v2
.end method

.method private static pinFile(Ljava/lang/String;JJJ)Lcom/android/server/PinnerService$PinnedFile;
    .locals 19
    .param p0, "fileToPin"    # Ljava/lang/String;
    .param p1, "offset"    # J
    .param p3, "length"    # J
    .param p5, "maxSize"    # J

    #@0
    .prologue
    .line 269
    new-instance v8, Ljava/io/FileDescriptor;

    #@2
    invoke-direct {v8}, Ljava/io/FileDescriptor;-><init>()V

    #@5
    .line 272
    .local v8, "fd":Ljava/io/FileDescriptor;
    :try_start_0
    sget v2, Landroid/system/OsConstants;->O_RDONLY:I

    #@7
    sget v3, Landroid/system/OsConstants;->O_CLOEXEC:I

    #@9
    or-int/2addr v2, v3

    #@a
    sget v3, Landroid/system/OsConstants;->O_NOFOLLOW:I

    #@c
    or-int/2addr v2, v3

    #@d
    .line 273
    sget v3, Landroid/system/OsConstants;->O_RDONLY:I

    #@f
    .line 271
    move-object/from16 v0, p0

    #@11
    invoke-static {v0, v2, v3}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    #@14
    move-result-object v8

    #@15
    .line 275
    invoke-static {v8}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    #@18
    move-result-object v17

    #@19
    .line 277
    .local v17, "sb":Landroid/system/StructStat;
    add-long v2, p1, p3

    #@1b
    move-object/from16 v0, v17

    #@1d
    iget-wide v4, v0, Landroid/system/StructStat;->st_size:J

    #@1f
    cmp-long v2, v2, v4

    #@21
    if-lez v2, :cond_0

    #@23
    .line 278
    invoke-static {v8}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    #@26
    .line 279
    const-string/jumbo v2, "PinnerService"

    #@29
    new-instance v3, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v4, "Failed to pin file "

    #@31
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v3

    #@35
    move-object/from16 v0, p0

    #@37
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v3

    #@3b
    .line 280
    const-string/jumbo v4, ", request extends beyond end of file.  offset + length =  "

    #@3e
    .line 279
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v3

    #@42
    .line 281
    add-long v4, p1, p3

    #@44
    .line 279
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@47
    move-result-object v3

    #@48
    .line 281
    const-string/jumbo v4, ", file length = "

    #@4b
    .line 279
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v3

    #@4f
    .line 281
    move-object/from16 v0, v17

    #@51
    iget-wide v4, v0, Landroid/system/StructStat;->st_size:J

    #@53
    .line 279
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@56
    move-result-object v3

    #@57
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v3

    #@5b
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@5e
    .line 282
    const/4 v2, 0x0

    #@5f
    return-object v2

    #@60
    .line 285
    :cond_0
    const-wide/16 v2, 0x0

    #@62
    cmp-long v2, p3, v2

    #@64
    if-nez v2, :cond_1

    #@66
    .line 286
    move-object/from16 v0, v17

    #@68
    iget-wide v2, v0, Landroid/system/StructStat;->st_size:J

    #@6a
    sub-long p3, v2, p1

    #@6c
    .line 289
    :cond_1
    const-wide/16 v2, 0x0

    #@6e
    cmp-long v2, p5, v2

    #@70
    if-lez v2, :cond_2

    #@72
    cmp-long v2, p3, p5

    #@74
    if-lez v2, :cond_2

    #@76
    .line 290
    const-string/jumbo v2, "PinnerService"

    #@79
    new-instance v3, Ljava/lang/StringBuilder;

    #@7b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@7e
    const-string/jumbo v4, "Could not pin file "

    #@81
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v3

    #@85
    move-object/from16 v0, p0

    #@87
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v3

    #@8b
    .line 291
    const-string/jumbo v4, ", size = "

    #@8e
    .line 290
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v3

    #@92
    move-wide/from16 v0, p3

    #@94
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@97
    move-result-object v3

    #@98
    .line 291
    const-string/jumbo v4, ", maxSize = "

    #@9b
    .line 290
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v3

    #@9f
    move-wide/from16 v0, p5

    #@a1
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v3

    #@a5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a8
    move-result-object v3

    #@a9
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@ac
    .line 292
    invoke-static {v8}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    #@af
    .line 293
    const/4 v2, 0x0

    #@b0
    return-object v2

    #@b1
    .line 296
    :cond_2
    const-wide/16 v2, 0x0

    #@b3
    sget v6, Landroid/system/OsConstants;->PROT_READ:I

    #@b5
    .line 297
    sget v7, Landroid/system/OsConstants;->MAP_PRIVATE:I

    #@b7
    move-wide/from16 v4, p3

    #@b9
    move-wide/from16 v9, p1

    #@bb
    .line 296
    invoke-static/range {v2 .. v10}, Landroid/system/Os;->mmap(JJIILjava/io/FileDescriptor;J)J

    #@be
    move-result-wide v10

    #@bf
    .line 298
    .local v10, "address":J
    invoke-static {v8}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    #@c2
    .line 300
    move-wide/from16 v0, p3

    #@c4
    invoke-static {v10, v11, v0, v1}, Landroid/system/Os;->mlock(JJ)V

    #@c7
    .line 302
    new-instance v9, Lcom/android/server/PinnerService$PinnedFile;

    #@c9
    move-wide/from16 v12, p3

    #@cb
    move-object/from16 v14, p0

    #@cd
    invoke-direct/range {v9 .. v14}, Lcom/android/server/PinnerService$PinnedFile;-><init>(JJLjava/lang/String;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@d0
    return-object v9

    #@d1
    .line 303
    .end local v10    # "address":J
    .end local v17    # "sb":Landroid/system/StructStat;
    :catch_0
    move-exception v15

    #@d2
    .line 304
    .local v15, "e":Landroid/system/ErrnoException;
    const-string/jumbo v2, "PinnerService"

    #@d5
    new-instance v3, Ljava/lang/StringBuilder;

    #@d7
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@da
    const-string/jumbo v4, "Could not pin file "

    #@dd
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e0
    move-result-object v3

    #@e1
    move-object/from16 v0, p0

    #@e3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e6
    move-result-object v3

    #@e7
    const-string/jumbo v4, " with error "

    #@ea
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ed
    move-result-object v3

    #@ee
    invoke-virtual {v15}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    #@f1
    move-result-object v4

    #@f2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v3

    #@f6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f9
    move-result-object v3

    #@fa
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@fd
    .line 305
    invoke-virtual {v8}, Ljava/io/FileDescriptor;->valid()Z

    #@100
    move-result v2

    #@101
    if-eqz v2, :cond_3

    #@103
    .line 307
    :try_start_1
    invoke-static {v8}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_1

    #@106
    .line 313
    :cond_3
    :goto_0
    const/4 v2, 0x0

    #@107
    return-object v2

    #@108
    .line 309
    :catch_1
    move-exception v16

    #@109
    .line 310
    .local v16, "eClose":Landroid/system/ErrnoException;
    const-string/jumbo v2, "PinnerService"

    #@10c
    new-instance v3, Ljava/lang/StringBuilder;

    #@10e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@111
    const-string/jumbo v4, "Failed to close fd, error = "

    #@114
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@117
    move-result-object v3

    #@118
    invoke-virtual/range {v16 .. v16}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    #@11b
    move-result-object v4

    #@11c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11f
    move-result-object v3

    #@120
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@123
    move-result-object v3

    #@124
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@127
    goto :goto_0
.end method

.method private unpinCameraApp()V
    .locals 2

    #@0
    .prologue
    .line 165
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/PinnerService;->mPinnedCameraFiles:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v1

    #@7
    if-ge v0, v1, :cond_0

    #@9
    .line 166
    iget-object v1, p0, Lcom/android/server/PinnerService;->mPinnedCameraFiles:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Lcom/android/server/PinnerService$PinnedFile;

    #@11
    invoke-static {v1}, Lcom/android/server/PinnerService;->unpinFile(Lcom/android/server/PinnerService$PinnedFile;)Z

    #@14
    .line 165
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 168
    :cond_0
    iget-object v1, p0, Lcom/android/server/PinnerService;->mPinnedCameraFiles:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    #@1c
    .line 164
    return-void
.end method

.method private static unpinFile(Lcom/android/server/PinnerService$PinnedFile;)Z
    .locals 6
    .param p0, "pf"    # Lcom/android/server/PinnerService$PinnedFile;

    #@0
    .prologue
    .line 319
    :try_start_0
    iget-wide v2, p0, Lcom/android/server/PinnerService$PinnedFile;->mAddress:J

    #@2
    iget-wide v4, p0, Lcom/android/server/PinnerService$PinnedFile;->mLength:J

    #@4
    invoke-static {v2, v3, v4, v5}, Landroid/system/Os;->munlock(JJ)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 327
    const/4 v1, 0x1

    #@8
    return v1

    #@9
    .line 320
    :catch_0
    move-exception v0

    #@a
    .line 321
    .local v0, "e":Landroid/system/ErrnoException;
    const-string/jumbo v1, "PinnerService"

    #@d
    new-instance v2, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v3, "Failed to unpin file "

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    iget-object v3, p0, Lcom/android/server/PinnerService$PinnedFile;->mFilename:Ljava/lang/String;

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    const-string/jumbo v3, " with error "

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v0}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@35
    .line 322
    const/4 v1, 0x0

    #@36
    return v1
.end method


# virtual methods
.method public onStart()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 85
    new-instance v0, Lcom/android/server/PinnerService$BinderService;

    #@3
    const/4 v1, 0x0

    #@4
    invoke-direct {v0, p0, v1}, Lcom/android/server/PinnerService$BinderService;-><init>(Lcom/android/server/PinnerService;Lcom/android/server/PinnerService$BinderService;)V

    #@7
    iput-object v0, p0, Lcom/android/server/PinnerService;->mBinderService:Lcom/android/server/PinnerService$BinderService;

    #@9
    .line 86
    const-string/jumbo v0, "pinner"

    #@c
    iget-object v1, p0, Lcom/android/server/PinnerService;->mBinderService:Lcom/android/server/PinnerService$BinderService;

    #@e
    invoke-virtual {p0, v0, v1}, Lcom/android/server/PinnerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@11
    .line 88
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    #@13
    const/16 v1, 0xfa1

    #@15
    invoke-virtual {v0, v1}, Lcom/android/server/PinnerService$PinnerHandler;->obtainMessage(I)Landroid/os/Message;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@1c
    .line 89
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    #@1e
    const/16 v1, 0xfa0

    #@20
    invoke-virtual {v0, v1, v2, v2}, Lcom/android/server/PinnerService$PinnerHandler;->obtainMessage(III)Landroid/os/Message;

    #@23
    move-result-object v0

    #@24
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@27
    .line 81
    return-void
.end method

.method public onSwitchUser(I)V
    .locals 3
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    #@2
    const/16 v1, 0xfa0

    #@4
    const/4 v2, 0x0

    #@5
    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/PinnerService$PinnerHandler;->obtainMessage(III)Landroid/os/Message;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@c
    .line 100
    return-void
.end method
