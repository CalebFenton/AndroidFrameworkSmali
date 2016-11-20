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
.field private final mConfiguredDataspace:I

.field private final mConfiguredFormat:I

.field private final mConfiguredGenerationId:I

.field private final mConfiguredSize:Landroid/util/Size;

.field private final mRotation:I

.field private final mSurface:Landroid/view/Surface;

.field private mSurfaceGroupId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 264
    new-instance v0, Landroid/hardware/camera2/params/OutputConfiguration$1;

    #@2
    invoke-direct {v0}, Landroid/hardware/camera2/params/OutputConfiguration$1;-><init>()V

    #@5
    .line 263
    sput-object v0, Landroid/hardware/camera2/params/OutputConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 41
    return-void
.end method

.method public constructor <init>(ILandroid/view/Surface;)V
    .locals 1
    .param p1, "surfaceGroupId"    # I
    .param p2, "surface"    # Landroid/view/Surface;

    #@0
    .prologue
    .line 129
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(ILandroid/view/Surface;I)V

    #@4
    .line 128
    return-void
.end method

.method public constructor <init>(ILandroid/view/Surface;I)V
    .locals 3
    .param p1, "surfaceGroupId"    # I
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "rotation"    # I

    #@0
    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 179
    const-string/jumbo v0, "Surface must not be null"

    #@6
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 180
    const-string/jumbo v0, "Rotation constant"

    #@c
    const/4 v1, 0x0

    #@d
    const/4 v2, 0x3

    #@e
    invoke-static {p3, v1, v2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    #@11
    .line 181
    iput p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    #@13
    .line 182
    iput-object p2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurface:Landroid/view/Surface;

    #@15
    .line 183
    iput p3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    #@17
    .line 184
    invoke-static {p2}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    #@1a
    move-result-object v0

    #@1b
    iput-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    #@1d
    .line 185
    invoke-static {p2}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    #@20
    move-result v0

    #@21
    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    #@23
    .line 186
    invoke-static {p2}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceDataspace(Landroid/view/Surface;)I

    #@26
    move-result v0

    #@27
    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    #@29
    .line 187
    invoke-virtual {p2}, Landroid/view/Surface;->getGenerationId()I

    #@2c
    move-result v0

    #@2d
    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    #@2f
    .line 178
    return-void
.end method

.method public constructor <init>(Landroid/hardware/camera2/params/OutputConfiguration;)V
    .locals 2
    .param p1, "other"    # Landroid/hardware/camera2/params/OutputConfiguration;

    #@0
    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 199
    if-nez p1, :cond_0

    #@5
    .line 200
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "OutputConfiguration shouldn\'t be null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 203
    :cond_0
    iget-object v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mSurface:Landroid/view/Surface;

    #@10
    iput-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurface:Landroid/view/Surface;

    #@12
    .line 204
    iget v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    #@14
    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    #@16
    .line 205
    iget v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    #@18
    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    #@1a
    .line 206
    iget v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    #@1c
    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    #@1e
    .line 207
    iget v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    #@20
    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    #@22
    .line 208
    iget-object v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    #@24
    iput-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    #@26
    .line 209
    iget v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    #@28
    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    #@2a
    .line 198
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    .line 217
    .local v0, "rotation":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@a
    move-result v2

    #@b
    .line 218
    .local v2, "surfaceSetId":I
    sget-object v3, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    #@d
    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Landroid/view/Surface;

    #@13
    .line 219
    .local v1, "surface":Landroid/view/Surface;
    const-string/jumbo v3, "Surface must not be null"

    #@16
    invoke-static {v1, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    .line 220
    const-string/jumbo v3, "Rotation constant"

    #@1c
    const/4 v4, 0x0

    #@1d
    const/4 v5, 0x3

    #@1e
    invoke-static {v0, v4, v5, v3}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    #@21
    .line 221
    iput v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    #@23
    .line 222
    iput-object v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurface:Landroid/view/Surface;

    #@25
    .line 223
    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    #@27
    .line 224
    iget-object v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurface:Landroid/view/Surface;

    #@29
    invoke-static {v3}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    #@2c
    move-result-object v3

    #@2d
    iput-object v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    #@2f
    .line 225
    iget-object v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurface:Landroid/view/Surface;

    #@31
    invoke-static {v3}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    #@34
    move-result v3

    #@35
    iput v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    #@37
    .line 226
    iget-object v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurface:Landroid/view/Surface;

    #@39
    invoke-static {v3}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceDataspace(Landroid/view/Surface;)I

    #@3c
    move-result v3

    #@3d
    iput v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    #@3f
    .line 227
    iget-object v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurface:Landroid/view/Surface;

    #@41
    invoke-virtual {v3}, Landroid/view/Surface;->getGenerationId()I

    #@44
    move-result v3

    #@45
    iput v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    #@47
    .line 215
    return-void
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

.method public constructor <init>(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    #@0
    .prologue
    .line 94
    const/4 v0, -0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-direct {p0, v0, p1, v1}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(ILandroid/view/Surface;I)V

    #@5
    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/view/Surface;I)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "rotation"    # I

    #@0
    .prologue
    .line 152
    const/4 v0, -0x1

    #@1
    invoke-direct {p0, v0, p1, p2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(ILandroid/view/Surface;I)V

    #@4
    .line 151
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 284
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 308
    if-nez p1, :cond_0

    #@4
    .line 309
    return v2

    #@5
    .line 310
    :cond_0
    if-ne p0, p1, :cond_1

    #@7
    .line 311
    return v1

    #@8
    .line 312
    :cond_1
    instance-of v3, p1, Landroid/hardware/camera2/params/OutputConfiguration;

    #@a
    if-eqz v3, :cond_4

    #@c
    move-object v0, p1

    #@d
    .line 313
    check-cast v0, Landroid/hardware/camera2/params/OutputConfiguration;

    #@f
    .line 314
    .local v0, "other":Landroid/hardware/camera2/params/OutputConfiguration;
    iget v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    #@11
    iget v4, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    #@13
    if-ne v3, v4, :cond_3

    #@15
    .line 315
    iget-object v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurface:Landroid/view/Surface;

    #@17
    iget-object v4, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurface:Landroid/view/Surface;

    #@19
    if-ne v3, v4, :cond_3

    #@1b
    .line 316
    iget v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    #@1d
    iget v4, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    #@1f
    if-ne v3, v4, :cond_3

    #@21
    .line 317
    iget-object v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    #@23
    iget-object v4, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    #@25
    invoke-virtual {v3, v4}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v3

    #@29
    .line 314
    if-eqz v3, :cond_3

    #@2b
    .line 318
    iget v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    #@2d
    iget v4, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    #@2f
    if-ne v3, v4, :cond_3

    #@31
    .line 319
    iget v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    #@33
    iget v4, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    #@35
    if-ne v3, v4, :cond_3

    #@37
    .line 320
    iget v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    #@39
    iget v4, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    #@3b
    if-ne v3, v4, :cond_2

    #@3d
    .line 314
    :goto_0
    return v1

    #@3e
    :cond_2
    move v1, v2

    #@3f
    .line 320
    goto :goto_0

    #@40
    :cond_3
    move v1, v2

    #@41
    .line 314
    goto :goto_0

    #@42
    .line 322
    .end local v0    # "other":Landroid/hardware/camera2/params/OutputConfiguration;
    :cond_4
    return v2
.end method

.method public getRotation()I
    .locals 1

    #@0
    .prologue
    .line 250
    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    #@2
    return v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    #@0
    .prologue
    .line 237
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurface:Landroid/view/Surface;

    #@2
    return-object v0
.end method

.method public getSurfaceGroupId()I
    .locals 1

    #@0
    .prologue
    .line 260
    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 330
    const/4 v0, 0x7

    #@1
    new-array v0, v0, [I

    #@3
    .line 331
    iget v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    #@5
    const/4 v2, 0x0

    #@6
    aput v1, v0, v2

    #@8
    iget-object v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurface:Landroid/view/Surface;

    #@a
    invoke-virtual {v1}, Landroid/view/Surface;->hashCode()I

    #@d
    move-result v1

    #@e
    const/4 v2, 0x1

    #@f
    aput v1, v0, v2

    #@11
    iget v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    #@13
    const/4 v2, 0x2

    #@14
    aput v1, v0, v2

    #@16
    .line 332
    iget-object v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    #@18
    invoke-virtual {v1}, Landroid/util/Size;->hashCode()I

    #@1b
    move-result v1

    #@1c
    const/4 v2, 0x3

    #@1d
    aput v1, v0, v2

    #@1f
    iget v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    #@21
    const/4 v2, 0x4

    #@22
    aput v1, v0, v2

    #@24
    iget v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    #@26
    const/4 v2, 0x5

    #@27
    aput v1, v0, v2

    #@29
    iget v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    #@2b
    const/4 v2, 0x6

    #@2c
    aput v1, v0, v2

    #@2e
    .line 330
    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    #@31
    move-result v0

    #@32
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 289
    if-nez p1, :cond_0

    #@2
    .line 290
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "dest must not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 292
    :cond_0
    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    #@d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 293
    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    #@12
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 294
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurface:Landroid/view/Surface;

    #@17
    invoke-virtual {v0, p1, p2}, Landroid/view/Surface;->writeToParcel(Landroid/os/Parcel;I)V

    #@1a
    .line 288
    return-void
.end method
