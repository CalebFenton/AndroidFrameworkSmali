.class Landroid/widget/Magnifier$SurfaceInfo;
.super Ljava/lang/Object;
.source "Magnifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Magnifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SurfaceInfo"
.end annotation


# static fields
.field public static final greylist-max-o NULL:Landroid/widget/Magnifier$SurfaceInfo;


# instance fields
.field private greylist-max-o mHeight:I

.field private blacklist mInsets:Landroid/graphics/Rect;

.field private greylist-max-o mIsMainWindowSurface:Z

.field private greylist-max-o mSurface:Landroid/view/Surface;

.field private blacklist mSurfaceControl:Landroid/view/SurfaceControl;

.field private greylist-max-o mWidth:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHeight(Landroid/widget/Magnifier$SurfaceInfo;)I
    .registers 1

    iget p0, p0, Landroid/widget/Magnifier$SurfaceInfo;->mHeight:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInsets(Landroid/widget/Magnifier$SurfaceInfo;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Landroid/widget/Magnifier$SurfaceInfo;->mInsets:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsMainWindowSurface(Landroid/widget/Magnifier$SurfaceInfo;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/Magnifier$SurfaceInfo;->mIsMainWindowSurface:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSurface(Landroid/widget/Magnifier$SurfaceInfo;)Landroid/view/Surface;
    .registers 1

    iget-object p0, p0, Landroid/widget/Magnifier$SurfaceInfo;->mSurface:Landroid/view/Surface;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSurfaceControl(Landroid/widget/Magnifier$SurfaceInfo;)Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Landroid/widget/Magnifier$SurfaceInfo;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWidth(Landroid/widget/Magnifier$SurfaceInfo;)I
    .registers 1

    iget p0, p0, Landroid/widget/Magnifier$SurfaceInfo;->mWidth:I

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 7

    .line 897
    new-instance v0, Landroid/widget/Magnifier$SurfaceInfo;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/widget/Magnifier$SurfaceInfo;-><init>(Landroid/view/SurfaceControl;Landroid/view/Surface;IILandroid/graphics/Rect;Z)V

    sput-object v0, Landroid/widget/Magnifier$SurfaceInfo;->NULL:Landroid/widget/Magnifier$SurfaceInfo;

    return-void
.end method

.method constructor blacklist <init>(Landroid/view/SurfaceControl;Landroid/view/Surface;IILandroid/graphics/Rect;Z)V
    .registers 7
    .param p1, "surfaceControl"    # Landroid/view/SurfaceControl;
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "insets"    # Landroid/graphics/Rect;
    .param p6, "isMainWindowSurface"    # Z

    .line 908
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 909
    iput-object p1, p0, Landroid/widget/Magnifier$SurfaceInfo;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 910
    iput-object p2, p0, Landroid/widget/Magnifier$SurfaceInfo;->mSurface:Landroid/view/Surface;

    .line 911
    iput p3, p0, Landroid/widget/Magnifier$SurfaceInfo;->mWidth:I

    .line 912
    iput p4, p0, Landroid/widget/Magnifier$SurfaceInfo;->mHeight:I

    .line 913
    iput-object p5, p0, Landroid/widget/Magnifier$SurfaceInfo;->mInsets:Landroid/graphics/Rect;

    .line 914
    iput-boolean p6, p0, Landroid/widget/Magnifier$SurfaceInfo;->mIsMainWindowSurface:Z

    .line 915
    return-void
.end method
