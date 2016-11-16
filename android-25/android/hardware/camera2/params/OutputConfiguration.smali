.class public final Landroid/hardware/camera2/params/OutputConfiguration;
.super Ljava/lang/Object;
.source "OutputConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/params/OutputConfiguration$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final ROTATION_0:I = 0x0

.field public static final ROTATION_180:I = 0x2

.field public static final ROTATION_270:I = 0x3

.field public static final ROTATION_90:I = 0x1

.field public static final SURFACE_GROUP_ID_NONE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "OutputConfiguration"


# instance fields
.field private final SURFACE_TYPE_SURFACE_TEXTURE:I

.field private final SURFACE_TYPE_SURFACE_VIEW:I

.field private final SURFACE_TYPE_UNKNOWN:I

.field private final mConfiguredDataspace:I

.field private final mConfiguredFormat:I

.field private final mConfiguredGenerationId:I

.field private final mConfiguredSize:Landroid/util/Size;

.field private final mIsDeferredConfig:Z

.field private final mRotation:I

.field private mSurface:Landroid/view/Surface;

.field private final mSurfaceGroupId:I

.field private final mSurfaceType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 395
    new-instance v0, Landroid/hardware/camera2/params/OutputConfiguration$1;

    #@2
    invoke-direct {v0}, Landroid/hardware/camera2/params/OutputConfiguration$1;-><init>()V

    #@5
    .line 394
    sput-object v0, Landroid/hardware/camera2/params/OutputConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 43
    return-void
.end method

.method public constructor <init>(ILandroid/view/Surface;)V
    .locals 1
    .param p1, "surfaceGroupId"    # I
    .param p2, "surface"    # Landroid/view/Surface;

    #@0
    .prologue
    .line 146
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(ILandroid/view/Surface;I)V

    #@4
    .line 145
    return-void
.end method

.method public constructor <init>(ILandroid/view/Surface;I)V
    .locals 4
    .param p1, "surfaceGroupId"    # I
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "rotation"    # I

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 102
    iput v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_UNKNOWN:I

    #@7
    .line 107
    iput v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_SURFACE_VIEW:I

    #@9
    .line 112
    const/4 v0, 0x1

    #@a
    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_SURFACE_TEXTURE:I

    #@c
    .line 196
    const-string/jumbo v0, "Surface must not be null"

    #@f
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    .line 197
    const-string/jumbo v0, "Rotation constant"

    #@15
    const/4 v1, 0x3

    #@16
    invoke-static {p3, v2, v1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    #@19
    .line 198
    iput p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    #@1b
    .line 199
    iput v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    #@1d
    .line 200
    iput-object p2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurface:Landroid/view/Surface;

    #@1f
    .line 201
    iput p3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    #@21
    .line 202
    invoke-static {p2}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    #@24
    move-result-object v0

    #@25
    iput-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    #@27
    .line 203
    invoke-static {p2}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    #@2a
    move-result v0

    #@2b
    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    #@2d
    .line 204
    invoke-static {p2}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceDataspace(Landroid/view/Surface;)I

    #@30
    move-result v0

    #@31
    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    #@33
    .line 205
    invoke-virtual {p2}, Landroid/view/Surface;->getGenerationId()I

    #@36
    move-result v0

    #@37
    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    #@39
    .line 206
    iput-boolean v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    #@3b
    .line 195
    return-void
.end method

.method public constructor <init>(Landroid/hardware/camera2/params/OutputConfiguration;)V
    .locals 2
    .param p1, "other"    # Landroid/hardware/camera2/params/OutputConfiguration;

    #@0
    .prologue
    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 102
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_UNKNOWN:I

    #@6
    .line 107
    const/4 v0, 0x0

    #@7
    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_SURFACE_VIEW:I

    #@9
    .line 112
    const/4 v0, 0x1

    #@a
    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_SURFACE_TEXTURE:I

    #@c
    .line 314
    if-nez p1, :cond_0

    #@e
    .line 315
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@10
    const-string/jumbo v1, "OutputConfiguration shouldn\'t be null"

    #@13
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0

    #@17
    .line 318
    :cond_0
    iget-object v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mSurface:Landroid/view/Surface;

    #@19
    iput-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurface:Landroid/view/Surface;

    #@1b
    .line 319
    iget v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    #@1d
    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    #@1f
    .line 320
    iget v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    #@21
    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    #@23
    .line 321
    iget v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    #@25
    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    #@27
    .line 322
    iget v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    #@29
    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    #@2b
    .line 323
    iget v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    #@2d
    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    #@2f
    .line 324
    iget-object v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    #@31
    iput-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    #@33
    .line 325
    iget v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    #@35
    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    #@37
    .line 326
    iget-boolean v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    #@39
    iput-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    #@3b
    .line 313
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 12
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/16 v11, 0x22

    #@2
    const/4 v10, 0x1

    #@3
    const/4 v9, -0x1

    #@4
    const/4 v8, 0x0

    #@5
    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@8
    .line 102
    iput v9, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_UNKNOWN:I

    #@a
    .line 107
    iput v8, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_SURFACE_VIEW:I

    #@c
    .line 112
    iput v10, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_SURFACE_TEXTURE:I

    #@e
    .line 333
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@11
    move-result v1

    #@12
    .line 334
    .local v1, "rotation":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@15
    move-result v3

    #@16
    .line 335
    .local v3, "surfaceSetId":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v4

    #@1a
    .line 336
    .local v4, "surfaceType":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v5

    #@1e
    .line 337
    .local v5, "width":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@21
    move-result v0

    #@22
    .line 338
    .local v0, "height":I
    sget-object v6, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    #@24
    invoke-interface {v6, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@27
    move-result-object v2

    #@28
    check-cast v2, Landroid/view/Surface;

    #@2a
    .line 339
    .local v2, "surface":Landroid/view/Surface;
    const-string/jumbo v6, "Rotation constant"

    #@2d
    const/4 v7, 0x3

    #@2e
    invoke-static {v1, v8, v7, v6}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    #@31
    .line 340
    iput v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    #@33
    .line 341
    iput-object v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurface:Landroid/view/Surface;

    #@35
    .line 342
    iput v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    #@37
    .line 343
    if-eqz v2, :cond_0

    #@39
    .line 344
    iput v9, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    #@3b
    .line 345
    iget-object v6, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurface:Landroid/view/Surface;

    #@3d
    invoke-static {v6}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    #@40
    move-result-object v6

    #@41
    iput-object v6, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    #@43
    .line 346
    iget-object v6, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurface:Landroid/view/Surface;

    #@45
    invoke-static {v6}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    #@48
    move-result v6

    #@49
    iput v6, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    #@4b
    .line 347
    iget-object v6, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurface:Landroid/view/Surface;

    #@4d
    invoke-static {v6}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceDataspace(Landroid/view/Surface;)I

    #@50
    move-result v6

    #@51
    iput v6, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    #@53
    .line 348
    iget-object v6, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurface:Landroid/view/Surface;

    #@55
    invoke-virtual {v6}, Landroid/view/Surface;->getGenerationId()I

    #@58
    move-result v6

    #@59
    iput v6, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    #@5b
    .line 349
    iput-boolean v10, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    #@5d
    .line 332
    :goto_0
    return-void

    #@5e
    .line 351
    :cond_0
    iput v4, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    #@60
    .line 352
    new-instance v6, Landroid/util/Size;

    #@62
    invoke-direct {v6, v5, v0}, Landroid/util/Size;-><init>(II)V

    #@65
    iput-object v6, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    #@67
    .line 353
    invoke-static {v11}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToInternal(I)I

    #@6a
    move-result v6

    #@6b
    iput v6, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    #@6d
    .line 354
    iput v8, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    #@6f
    .line 356
    invoke-static {v11}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToDataspace(I)I

    #@72
    move-result v6

    #@73
    .line 355
    iput v6, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    #@75
    .line 357
    iput-boolean v8, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    #@77
    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/camera2/params/OutputConfiguration;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/util/Size;Ljava/lang/Class;)V
    .locals 5
    .param p1, "surfaceSize"    # Landroid/util/Size;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/Size;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/16 v4, 0x22

    #@2
    const/4 v3, 0x1

    #@3
    const/4 v2, -0x1

    #@4
    const/4 v1, 0x0

    #@5
    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@8
    .line 102
    iput v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_UNKNOWN:I

    #@a
    .line 107
    iput v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_SURFACE_VIEW:I

    #@c
    .line 112
    iput v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_SURFACE_TEXTURE:I

    #@e
    .line 235
    const-string/jumbo v0, "surfaceSize must not be null"

    #@11
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    .line 236
    const-string/jumbo v0, "klass must not be null"

    #@17
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    .line 237
    const-class v0, Landroid/view/SurfaceHolder;

    #@1c
    if-ne p2, v0, :cond_0

    #@1e
    .line 238
    iput v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    #@20
    .line 246
    :goto_0
    iput v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    #@22
    .line 247
    const/4 v0, 0x0

    #@23
    iput-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurface:Landroid/view/Surface;

    #@25
    .line 248
    iput v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    #@27
    .line 249
    iput-object p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    #@29
    .line 250
    invoke-static {v4}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToInternal(I)I

    #@2c
    move-result v0

    #@2d
    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    #@2f
    .line 251
    invoke-static {v4}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToDataspace(I)I

    #@32
    move-result v0

    #@33
    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    #@35
    .line 252
    iput v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    #@37
    .line 253
    iput-boolean v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    #@39
    .line 234
    return-void

    #@3a
    .line 239
    :cond_0
    const-class v0, Landroid/graphics/SurfaceTexture;

    #@3c
    if-ne p2, v0, :cond_1

    #@3e
    .line 240
    iput v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    #@40
    goto :goto_0

    #@41
    .line 242
    :cond_1
    iput v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    #@43
    .line 243
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@45
    const-string/jumbo v1, "Unknow surface source class type"

    #@48
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4b
    throw v0
.end method

.method public constructor <init>(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    #@0
    .prologue
    .line 96
    const/4 v0, -0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-direct {p0, v0, p1, v1}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(ILandroid/view/Surface;I)V

    #@5
    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/view/Surface;I)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "rotation"    # I

    #@0
    .prologue
    .line 169
    const/4 v0, -0x1

    #@1
    invoke-direct {p0, v0, p1, p2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(ILandroid/view/Surface;I)V

    #@4
    .line 168
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 415
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 444
    if-nez p1, :cond_0

    #@4
    .line 445
    return v3

    #@5
    .line 446
    :cond_0
    if-ne p0, p1, :cond_1

    #@7
    .line 447
    return v2

    #@8
    .line 448
    :cond_1
    instance-of v4, p1, Landroid/hardware/camera2/params/OutputConfiguration;

    #@a
    if-eqz v4, :cond_7

    #@c
    move-object v1, p1

    #@d
    .line 449
    check-cast v1, Landroid/hardware/camera2/params/OutputConfiguration;

    #@f
    .line 450
    .local v1, "other":Landroid/hardware/camera2/params/OutputConfiguration;
    iget-object v4, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurface:Landroid/view/Surface;

    #@11
    iget-object v5, v1, Landroid/hardware/camera2/params/OutputConfiguration;->mSurface:Landroid/view/Surface;

    #@13
    if-ne v4, v5, :cond_4

    #@15
    .line 451
    iget v4, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    #@17
    iget v5, v1, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    #@19
    if-ne v4, v5, :cond_3

    #@1b
    const/4 v0, 0x1

    #@1c
    .line 452
    .local v0, "iSSurfaceEqual":Z
    :goto_0
    iget-boolean v4, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    #@1e
    if-eqz v4, :cond_2

    #@20
    .line 453
    const-string/jumbo v4, "OutputConfiguration"

    #@23
    const-string/jumbo v5, "deferred config has the same surface"

    #@26
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 454
    const/4 v0, 0x1

    #@2a
    .line 456
    :cond_2
    iget v4, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    #@2c
    iget v5, v1, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    #@2e
    if-ne v4, v5, :cond_6

    #@30
    if-eqz v0, :cond_6

    #@32
    .line 458
    iget-object v4, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    #@34
    iget-object v5, v1, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    #@36
    invoke-virtual {v4, v5}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    #@39
    move-result v4

    #@3a
    .line 456
    if-eqz v4, :cond_6

    #@3c
    .line 459
    iget v4, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    #@3e
    iget v5, v1, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    #@40
    if-ne v4, v5, :cond_6

    #@42
    .line 460
    iget v4, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    #@44
    iget v5, v1, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    #@46
    if-ne v4, v5, :cond_6

    #@48
    .line 461
    iget v4, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    #@4a
    iget v5, v1, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    #@4c
    if-ne v4, v5, :cond_6

    #@4e
    .line 462
    iget v4, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    #@50
    iget v5, v1, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    #@52
    if-ne v4, v5, :cond_6

    #@54
    .line 463
    iget-boolean v4, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    #@56
    iget-boolean v5, v1, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    #@58
    if-ne v4, v5, :cond_5

    #@5a
    .line 456
    :goto_1
    return v2

    #@5b
    .line 451
    .end local v0    # "iSSurfaceEqual":Z
    :cond_3
    const/4 v0, 0x0

    #@5c
    .restart local v0    # "iSSurfaceEqual":Z
    goto :goto_0

    #@5d
    .line 450
    .end local v0    # "iSSurfaceEqual":Z
    :cond_4
    const/4 v0, 0x0

    #@5e
    .restart local v0    # "iSSurfaceEqual":Z
    goto :goto_0

    #@5f
    :cond_5
    move v2, v3

    #@60
    .line 463
    goto :goto_1

    #@61
    :cond_6
    move v2, v3

    #@62
    .line 456
    goto :goto_1

    #@63
    .line 465
    .end local v0    # "iSSurfaceEqual":Z
    .end local v1    # "other":Landroid/hardware/camera2/params/OutputConfiguration;
    :cond_7
    return v3
.end method

.method public getRotation()I
    .locals 1

    #@0
    .prologue
    .line 381
    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    #@2
    return v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    #@0
    .prologue
    .line 368
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurface:Landroid/view/Surface;

    #@2
    return-object v0
.end method

.method public getSurfaceGroupId()I
    .locals 1

    #@0
    .prologue
    .line 391
    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x4

    #@1
    const/4 v5, 0x3

    #@2
    const/4 v4, 0x2

    #@3
    const/4 v3, 0x1

    #@4
    const/4 v2, 0x0

    #@5
    .line 476
    iget-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 477
    const/4 v0, 0x6

    #@a
    new-array v0, v0, [I

    #@c
    .line 478
    iget v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    #@e
    aput v1, v0, v2

    #@10
    iget-object v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    #@12
    invoke-virtual {v1}, Landroid/util/Size;->hashCode()I

    #@15
    move-result v1

    #@16
    aput v1, v0, v3

    #@18
    iget v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    #@1a
    aput v1, v0, v4

    #@1c
    iget v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    #@1e
    aput v1, v0, v5

    #@20
    .line 479
    iget v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    #@22
    aput v1, v0, v6

    #@24
    iget v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    #@26
    const/4 v2, 0x5

    #@27
    aput v1, v0, v2

    #@29
    .line 477
    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    #@2c
    move-result v0

    #@2d
    return v0

    #@2e
    .line 482
    :cond_0
    const/4 v0, 0x7

    #@2f
    new-array v0, v0, [I

    #@31
    .line 483
    iget v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    #@33
    aput v1, v0, v2

    #@35
    iget-object v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurface:Landroid/view/Surface;

    #@37
    invoke-virtual {v1}, Landroid/view/Surface;->hashCode()I

    #@3a
    move-result v1

    #@3b
    aput v1, v0, v3

    #@3d
    iget v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    #@3f
    aput v1, v0, v4

    #@41
    .line 484
    iget-object v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    #@43
    invoke-virtual {v1}, Landroid/util/Size;->hashCode()I

    #@46
    move-result v1

    #@47
    aput v1, v0, v5

    #@49
    iget v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    #@4b
    aput v1, v0, v6

    #@4d
    iget v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    #@4f
    const/4 v2, 0x5

    #@50
    aput v1, v0, v2

    #@52
    iget v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    #@54
    const/4 v2, 0x6

    #@55
    aput v1, v0, v2

    #@57
    .line 482
    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    #@5a
    move-result v0

    #@5b
    return v0
.end method

.method public isDeferredConfiguration()Z
    .locals 1

    #@0
    .prologue
    .line 266
    iget-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    #@2
    return v0
.end method

.method public setDeferredSurface(Landroid/view/Surface;)V
    .locals 4
    .param p1, "surface"    # Landroid/view/Surface;

    #@0
    .prologue
    .line 289
    const-string/jumbo v1, "Surface must not be null"

    #@3
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 290
    iget-object v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurface:Landroid/view/Surface;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 291
    new-instance v1, Ljava/lang/IllegalStateException;

    #@c
    const-string/jumbo v2, "Deferred surface is already set!"

    #@f
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@12
    throw v1

    #@13
    .line 295
    :cond_0
    invoke-static {p1}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    #@16
    move-result-object v0

    #@17
    .line 296
    .local v0, "surfaceSize":Landroid/util/Size;
    iget-object v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    #@19
    invoke-virtual {v0, v1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v1

    #@1d
    if-nez v1, :cond_1

    #@1f
    .line 297
    const-string/jumbo v1, "OutputConfiguration"

    #@22
    new-instance v2, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v3, "Deferred surface size "

    #@2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    .line 298
    const-string/jumbo v3, " is different with pre-configured size "

    #@35
    .line 297
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v2

    #@39
    .line 298
    iget-object v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    #@3b
    .line 297
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v2

    #@3f
    .line 299
    const-string/jumbo v3, ", the pre-configured size will be used."

    #@42
    .line 297
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v2

    #@46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v2

    #@4a
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4d
    .line 302
    :cond_1
    iput-object p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurface:Landroid/view/Surface;

    #@4f
    .line 288
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 420
    if-nez p1, :cond_0

    #@2
    .line 421
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "dest must not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 423
    :cond_0
    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    #@d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 424
    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    #@12
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 425
    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    #@17
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 426
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    #@1c
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    #@1f
    move-result v0

    #@20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    .line 427
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    #@25
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    #@28
    move-result v0

    #@29
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2c
    .line 428
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurface:Landroid/view/Surface;

    #@2e
    if-eqz v0, :cond_1

    #@30
    .line 429
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurface:Landroid/view/Surface;

    #@32
    invoke-virtual {v0, p1, p2}, Landroid/view/Surface;->writeToParcel(Landroid/os/Parcel;I)V

    #@35
    .line 419
    :cond_1
    return-void
.end method
