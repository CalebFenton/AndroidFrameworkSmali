.class Lcom/android/server/wm/WindowManagerService$LayoutFields;
.super Ljava/lang/Object;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LayoutFields"
.end annotation


# static fields
.field static final SET_FORCE_HIDING_CHANGED:I = 0x4

.field static final SET_ORIENTATION_CHANGE_COMPLETE:I = 0x8

.field static final SET_TURN_ON_SCREEN:I = 0x10

.field static final SET_UPDATE_ROTATION:I = 0x1

.field static final SET_WALLPAPER_ACTION_PENDING:I = 0x20

.field static final SET_WALLPAPER_MAY_CHANGE:I = 0x2


# instance fields
.field private mButtonBrightness:F

.field mDisplayHasContent:Z

.field private mHoldScreen:Lcom/android/server/wm/Session;

.field mLastWindowFreezeSource:Ljava/lang/Object;

.field mObscureApplicationContentOnSecondaryDisplays:Z

.field private mObscured:Z

.field mOrientationChangeComplete:Z

.field mPreferredModeId:I

.field mPreferredRefreshRate:F

.field private mScreenBrightness:F

.field private mSyswin:Z

.field private mUpdateRotation:Z

.field private mUserActivityTimeout:J

.field mWallpaperActionPending:Z

.field mWallpaperForceHidingChanged:Z

.field mWallpaperMayChange:Z

.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static synthetic -get0(Lcom/android/server/wm/WindowManagerService$LayoutFields;)F
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mButtonBrightness:F

    #@2
    return v0
.end method

.method static synthetic -get1(Lcom/android/server/wm/WindowManagerService$LayoutFields;)Lcom/android/server/wm/Session;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mHoldScreen:Lcom/android/server/wm/Session;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/wm/WindowManagerService$LayoutFields;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mObscured:Z

    #@2
    return v0
.end method

.method static synthetic -get3(Lcom/android/server/wm/WindowManagerService$LayoutFields;)F
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mScreenBrightness:F

    #@2
    return v0
.end method

.method static synthetic -get4(Lcom/android/server/wm/WindowManagerService$LayoutFields;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mSyswin:Z

    #@2
    return v0
.end method

.method static synthetic -get5(Lcom/android/server/wm/WindowManagerService$LayoutFields;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mUpdateRotation:Z

    #@2
    return v0
.end method

.method static synthetic -get6(Lcom/android/server/wm/WindowManagerService$LayoutFields;)J
    .locals 2

    #@0
    iget-wide v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mUserActivityTimeout:J

    #@2
    return-wide v0
.end method

.method static synthetic -set0(Lcom/android/server/wm/WindowManagerService$LayoutFields;F)F
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mButtonBrightness:F

    #@2
    return p1
.end method

.method static synthetic -set1(Lcom/android/server/wm/WindowManagerService$LayoutFields;Lcom/android/server/wm/Session;)Lcom/android/server/wm/Session;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mHoldScreen:Lcom/android/server/wm/Session;

    #@2
    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/wm/WindowManagerService$LayoutFields;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mObscured:Z

    #@2
    return p1
.end method

.method static synthetic -set3(Lcom/android/server/wm/WindowManagerService$LayoutFields;F)F
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mScreenBrightness:F

    #@2
    return p1
.end method

.method static synthetic -set4(Lcom/android/server/wm/WindowManagerService$LayoutFields;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mSyswin:Z

    #@2
    return p1
.end method

.method static synthetic -set5(Lcom/android/server/wm/WindowManagerService$LayoutFields;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mUpdateRotation:Z

    #@2
    return p1
.end method

.method static synthetic -set6(Lcom/android/server/wm/WindowManagerService$LayoutFields;J)J
    .locals 1

    #@0
    iput-wide p1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mUserActivityTimeout:J

    #@2
    return-wide p1
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/server/wm/WindowManagerService;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/high16 v1, -0x40800000    # -1.0f

    #@3
    const/4 v2, 0x0

    #@4
    .line 662
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    .line 670
    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mWallpaperForceHidingChanged:Z

    #@b
    .line 671
    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mWallpaperMayChange:Z

    #@d
    .line 672
    const/4 v0, 0x1

    #@e
    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mOrientationChangeComplete:Z

    #@10
    .line 673
    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mLastWindowFreezeSource:Ljava/lang/Object;

    #@12
    .line 674
    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mHoldScreen:Lcom/android/server/wm/Session;

    #@14
    .line 675
    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mObscured:Z

    #@16
    .line 676
    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mSyswin:Z

    #@18
    .line 677
    iput v1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mScreenBrightness:F

    #@1a
    .line 678
    iput v1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mButtonBrightness:F

    #@1c
    .line 679
    const-wide/16 v0, -0x1

    #@1e
    iput-wide v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mUserActivityTimeout:J

    #@20
    .line 680
    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mUpdateRotation:Z

    #@22
    .line 681
    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mWallpaperActionPending:Z

    #@24
    .line 685
    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mDisplayHasContent:Z

    #@26
    .line 689
    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mObscureApplicationContentOnSecondaryDisplays:Z

    #@28
    .line 691
    const/4 v0, 0x0

    #@29
    iput v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mPreferredRefreshRate:F

    #@2b
    .line 693
    iput v2, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mPreferredModeId:I

    #@2d
    .line 662
    return-void
.end method
