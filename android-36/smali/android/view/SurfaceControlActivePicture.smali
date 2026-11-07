.class public Landroid/view/SurfaceControlActivePicture;
.super Ljava/lang/Object;
.source "SurfaceControlActivePicture.java"


# instance fields
.field private final blacklist mLayerId:I

.field private final blacklist mOwnerUid:I

.field private final blacklist mPictureProfileHandle:Landroid/media/quality/PictureProfileHandle;


# direct methods
.method private constructor blacklist <init>(IILandroid/media/quality/PictureProfileHandle;)V
    .registers 4
    .param p1, "layerId"    # I
    .param p2, "ownerUid"    # I
    .param p3, "handle"    # Landroid/media/quality/PictureProfileHandle;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Landroid/view/SurfaceControlActivePicture;->mLayerId:I

    .line 40
    iput p2, p0, Landroid/view/SurfaceControlActivePicture;->mOwnerUid:I

    .line 41
    iput-object p3, p0, Landroid/view/SurfaceControlActivePicture;->mPictureProfileHandle:Landroid/media/quality/PictureProfileHandle;

    .line 42
    return-void
.end method


# virtual methods
.method public blacklist getLayerId()I
    .registers 2

    .line 46
    iget v0, p0, Landroid/view/SurfaceControlActivePicture;->mLayerId:I

    return v0
.end method

.method public blacklist getOwnerUid()I
    .registers 2

    .line 51
    iget v0, p0, Landroid/view/SurfaceControlActivePicture;->mOwnerUid:I

    return v0
.end method

.method public blacklist getPictureProfileHandle()Landroid/media/quality/PictureProfileHandle;
    .registers 2

    .line 56
    iget-object v0, p0, Landroid/view/SurfaceControlActivePicture;->mPictureProfileHandle:Landroid/media/quality/PictureProfileHandle;

    return-object v0
.end method
