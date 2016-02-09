.class final Lcom/android/server/display/OverlayDisplayWindow;
.super Ljava/lang/Object;
.source "OverlayDisplayWindow.java"

# interfaces
.implements Lcom/android/internal/util/DumpUtils$Dump;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/OverlayDisplayWindow$Listener;,
        Lcom/android/server/display/OverlayDisplayWindow$1;,
        Lcom/android/server/display/OverlayDisplayWindow$2;,
        Lcom/android/server/display/OverlayDisplayWindow$3;,
        Lcom/android/server/display/OverlayDisplayWindow$4;,
        Lcom/android/server/display/OverlayDisplayWindow$5;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "OverlayDisplayWindow"


# instance fields
.field private final DISABLE_MOVE_AND_RESIZE:Z

.field private final INITIAL_SCALE:F

.field private final MAX_SCALE:F

.field private final MIN_SCALE:F

.field private final WINDOW_ALPHA:F

.field private final mContext:Landroid/content/Context;

.field private final mDefaultDisplay:Landroid/view/Display;

.field private final mDefaultDisplayInfo:Landroid/view/DisplayInfo;

.field private mDensityDpi:I

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mGravity:I

.field private mHeight:I

.field private final mListener:Lcom/android/server/display/OverlayDisplayWindow$Listener;

.field private mLiveScale:F

.field private mLiveTranslationX:F

.field private mLiveTranslationY:F

.field private final mName:Ljava/lang/String;

.field private final mOnGestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field private final mOnScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field private final mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private final mSecure:Z

.field private final mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

.field private mTextureView:Landroid/view/TextureView;

.field private mTitle:Ljava/lang/String;

.field private mTitleTextView:Landroid/widget/TextView;

.field private mWidth:I

.field private mWindowContent:Landroid/view/View;

.field private final mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;

.field private mWindowScale:F

.field private mWindowVisible:Z

.field private mWindowX:I

.field private mWindowY:I


# direct methods
.method static synthetic -get0(Lcom/android/server/display/OverlayDisplayWindow;)Landroid/view/Display;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mDefaultDisplay:Landroid/view/Display;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/display/OverlayDisplayWindow;)Landroid/view/DisplayInfo;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/display/OverlayDisplayWindow;)Landroid/view/GestureDetector;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mGestureDetector:Landroid/view/GestureDetector;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/display/OverlayDisplayWindow;)Lcom/android/server/display/OverlayDisplayWindow$Listener;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mListener:Lcom/android/server/display/OverlayDisplayWindow$Listener;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/display/OverlayDisplayWindow;)F
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mLiveScale:F

    #@2
    return v0
.end method

.method static synthetic -get5(Lcom/android/server/display/OverlayDisplayWindow;)F
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mLiveTranslationX:F

    #@2
    return v0
.end method

.method static synthetic -get6(Lcom/android/server/display/OverlayDisplayWindow;)F
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mLiveTranslationY:F

    #@2
    return v0
.end method

.method static synthetic -get7(Lcom/android/server/display/OverlayDisplayWindow;)Landroid/view/ScaleGestureDetector;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/display/OverlayDisplayWindow;F)F
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mLiveScale:F

    #@2
    return p1
.end method

.method static synthetic -set1(Lcom/android/server/display/OverlayDisplayWindow;F)F
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mLiveTranslationX:F

    #@2
    return p1
.end method

.method static synthetic -set2(Lcom/android/server/display/OverlayDisplayWindow;F)F
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mLiveTranslationY:F

    #@2
    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/display/OverlayDisplayWindow;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/display/OverlayDisplayWindow;->updateDefaultDisplayInfo()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/display/OverlayDisplayWindow;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/display/OverlayDisplayWindow;->saveWindowParams()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IIIIZLcom/android/server/display/OverlayDisplayWindow$Listener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "densityDpi"    # I
    .param p6, "gravity"    # I
    .param p7, "secure"    # Z
    .param p8, "listener"    # Lcom/android/server/display/OverlayDisplayWindow$Listener;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/high16 v1, 0x3f800000    # 1.0f

    #@3
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 51
    const/high16 v0, 0x3f000000    # 0.5f

    #@8
    iput v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->INITIAL_SCALE:F

    #@a
    .line 52
    const v0, 0x3e99999a    # 0.3f

    #@d
    iput v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->MIN_SCALE:F

    #@f
    .line 53
    iput v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->MAX_SCALE:F

    #@11
    .line 54
    const v0, 0x3f4ccccd    # 0.8f

    #@14
    iput v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->WINDOW_ALPHA:F

    #@16
    .line 59
    iput-boolean v2, p0, Lcom/android/server/display/OverlayDisplayWindow;->DISABLE_MOVE_AND_RESIZE:Z

    #@18
    .line 76
    new-instance v0, Landroid/view/DisplayInfo;

    #@1a
    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    #@1d
    iput-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    #@1f
    .line 93
    iput v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mLiveScale:F

    #@21
    .line 287
    new-instance v0, Lcom/android/server/display/OverlayDisplayWindow$1;

    #@23
    invoke-direct {v0, p0}, Lcom/android/server/display/OverlayDisplayWindow$1;-><init>(Lcom/android/server/display/OverlayDisplayWindow;)V

    #@26
    .line 286
    iput-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    #@28
    .line 313
    new-instance v0, Lcom/android/server/display/OverlayDisplayWindow$2;

    #@2a
    invoke-direct {v0, p0}, Lcom/android/server/display/OverlayDisplayWindow$2;-><init>(Lcom/android/server/display/OverlayDisplayWindow;)V

    #@2d
    .line 312
    iput-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    #@2f
    .line 338
    new-instance v0, Lcom/android/server/display/OverlayDisplayWindow$3;

    #@31
    invoke-direct {v0, p0}, Lcom/android/server/display/OverlayDisplayWindow$3;-><init>(Lcom/android/server/display/OverlayDisplayWindow;)V

    #@34
    iput-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    #@36
    .line 363
    new-instance v0, Lcom/android/server/display/OverlayDisplayWindow$4;

    #@38
    invoke-direct {v0, p0}, Lcom/android/server/display/OverlayDisplayWindow$4;-><init>(Lcom/android/server/display/OverlayDisplayWindow;)V

    #@3b
    .line 362
    iput-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mOnGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    #@3d
    .line 375
    new-instance v0, Lcom/android/server/display/OverlayDisplayWindow$5;

    #@3f
    invoke-direct {v0, p0}, Lcom/android/server/display/OverlayDisplayWindow$5;-><init>(Lcom/android/server/display/OverlayDisplayWindow;)V

    #@42
    .line 374
    iput-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mOnScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    #@44
    .line 98
    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mContext:Landroid/content/Context;

    #@46
    .line 99
    iput-object p2, p0, Lcom/android/server/display/OverlayDisplayWindow;->mName:Ljava/lang/String;

    #@48
    .line 100
    iput p6, p0, Lcom/android/server/display/OverlayDisplayWindow;->mGravity:I

    #@4a
    .line 101
    iput-boolean p7, p0, Lcom/android/server/display/OverlayDisplayWindow;->mSecure:Z

    #@4c
    .line 102
    iput-object p8, p0, Lcom/android/server/display/OverlayDisplayWindow;->mListener:Lcom/android/server/display/OverlayDisplayWindow$Listener;

    #@4e
    .line 105
    const-string/jumbo v0, "display"

    #@51
    .line 104
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@54
    move-result-object v0

    #@55
    check-cast v0, Landroid/hardware/display/DisplayManager;

    #@57
    iput-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    #@59
    .line 107
    const-string/jumbo v0, "window"

    #@5c
    .line 106
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@5f
    move-result-object v0

    #@60
    check-cast v0, Landroid/view/WindowManager;

    #@62
    iput-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowManager:Landroid/view/WindowManager;

    #@64
    .line 109
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowManager:Landroid/view/WindowManager;

    #@66
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    #@69
    move-result-object v0

    #@6a
    iput-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mDefaultDisplay:Landroid/view/Display;

    #@6c
    .line 110
    invoke-direct {p0}, Lcom/android/server/display/OverlayDisplayWindow;->updateDefaultDisplayInfo()Z

    #@6f
    .line 112
    invoke-direct {p0, p3, p4, p5, v2}, Lcom/android/server/display/OverlayDisplayWindow;->resize(IIIZ)V

    #@72
    .line 114
    invoke-direct {p0}, Lcom/android/server/display/OverlayDisplayWindow;->createWindow()V

    #@75
    .line 97
    return-void
.end method

.method private clearLiveState()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 281
    iput v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mLiveTranslationX:F

    #@3
    .line 282
    iput v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mLiveTranslationY:F

    #@5
    .line 283
    const/high16 v0, 0x3f800000    # 1.0f

    #@7
    iput v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mLiveScale:F

    #@9
    .line 280
    return-void
.end method

.method private createWindow()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 193
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mContext:Landroid/content/Context;

    #@4
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@7
    move-result-object v0

    #@8
    .line 196
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x1090097

    #@b
    const/4 v3, 0x0

    #@c
    .line 195
    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@f
    move-result-object v1

    #@10
    iput-object v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowContent:Landroid/view/View;

    #@12
    .line 197
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowContent:Landroid/view/View;

    #@14
    iget-object v3, p0, Lcom/android/server/display/OverlayDisplayWindow;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    #@16
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    #@19
    .line 199
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowContent:Landroid/view/View;

    #@1b
    .line 200
    const v3, 0x1020384

    #@1e
    .line 199
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@21
    move-result-object v1

    #@22
    check-cast v1, Landroid/view/TextureView;

    #@24
    iput-object v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    #@26
    .line 201
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    #@28
    invoke-virtual {v1, v4}, Landroid/view/TextureView;->setPivotX(F)V

    #@2b
    .line 202
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    #@2d
    invoke-virtual {v1, v4}, Landroid/view/TextureView;->setPivotY(F)V

    #@30
    .line 203
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    #@32
    invoke-virtual {v1}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@35
    move-result-object v1

    #@36
    iget v3, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWidth:I

    #@38
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@3a
    .line 204
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    #@3c
    invoke-virtual {v1}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3f
    move-result-object v1

    #@40
    iget v3, p0, Lcom/android/server/display/OverlayDisplayWindow;->mHeight:I

    #@42
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@44
    .line 205
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    #@46
    invoke-virtual {v1, v2}, Landroid/view/TextureView;->setOpaque(Z)V

    #@49
    .line 206
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    #@4b
    iget-object v3, p0, Lcom/android/server/display/OverlayDisplayWindow;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    #@4d
    invoke-virtual {v1, v3}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    #@50
    .line 208
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowContent:Landroid/view/View;

    #@52
    .line 209
    const v3, 0x1020385

    #@55
    .line 208
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@58
    move-result-object v1

    #@59
    check-cast v1, Landroid/widget/TextView;

    #@5b
    iput-object v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mTitleTextView:Landroid/widget/TextView;

    #@5d
    .line 210
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mTitleTextView:Landroid/widget/TextView;

    #@5f
    iget-object v3, p0, Lcom/android/server/display/OverlayDisplayWindow;->mTitle:Ljava/lang/String;

    #@61
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@64
    .line 212
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    #@66
    .line 213
    const/16 v3, 0x7ea

    #@68
    .line 212
    invoke-direct {v1, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(I)V

    #@6b
    iput-object v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    #@6d
    .line 214
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    #@6f
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@71
    const v4, 0x1000328

    #@74
    or-int/2addr v3, v4

    #@75
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@77
    .line 219
    iget-boolean v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mSecure:Z

    #@79
    if-eqz v1, :cond_0

    #@7b
    .line 220
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    #@7d
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@7f
    or-int/lit16 v3, v3, 0x2000

    #@81
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@83
    .line 225
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    #@85
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@87
    or-int/lit8 v3, v3, 0x2

    #@89
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@8b
    .line 227
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    #@8d
    const v3, 0x3f4ccccd    # 0.8f

    #@90
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    #@92
    .line 228
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    #@94
    const/16 v3, 0x33

    #@96
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    #@98
    .line 229
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    #@9a
    iget-object v3, p0, Lcom/android/server/display/OverlayDisplayWindow;->mTitle:Ljava/lang/String;

    #@9c
    invoke-virtual {v1, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    #@9f
    .line 231
    new-instance v1, Landroid/view/GestureDetector;

    #@a1
    iget-object v3, p0, Lcom/android/server/display/OverlayDisplayWindow;->mContext:Landroid/content/Context;

    #@a3
    iget-object v4, p0, Lcom/android/server/display/OverlayDisplayWindow;->mOnGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    #@a5
    invoke-direct {v1, v3, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    #@a8
    iput-object v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mGestureDetector:Landroid/view/GestureDetector;

    #@aa
    .line 232
    new-instance v1, Landroid/view/ScaleGestureDetector;

    #@ac
    iget-object v3, p0, Lcom/android/server/display/OverlayDisplayWindow;->mContext:Landroid/content/Context;

    #@ae
    iget-object v4, p0, Lcom/android/server/display/OverlayDisplayWindow;->mOnScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    #@b0
    invoke-direct {v1, v3, v4}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    #@b3
    iput-object v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    #@b5
    .line 236
    iget v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mGravity:I

    #@b7
    and-int/lit8 v1, v1, 0x3

    #@b9
    const/4 v3, 0x3

    #@ba
    if-ne v1, v3, :cond_1

    #@bc
    move v1, v2

    #@bd
    :goto_0
    iput v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowX:I

    #@bf
    .line 238
    iget v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mGravity:I

    #@c1
    and-int/lit8 v1, v1, 0x30

    #@c3
    const/16 v3, 0x30

    #@c5
    if-ne v1, v3, :cond_2

    #@c7
    :goto_1
    iput v2, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowY:I

    #@c9
    .line 240
    const/high16 v1, 0x3f000000    # 0.5f

    #@cb
    iput v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowScale:F

    #@cd
    .line 192
    return-void

    #@ce
    .line 237
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    #@d0
    iget v1, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    #@d2
    goto :goto_0

    #@d3
    .line 239
    :cond_2
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    #@d5
    iget v2, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    #@d7
    goto :goto_1
.end method

.method private resize(IIIZ)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "densityDpi"    # I
    .param p4, "doLayout"    # Z

    #@0
    .prologue
    .line 145
    iput p1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWidth:I

    #@2
    .line 146
    iput p2, p0, Lcom/android/server/display/OverlayDisplayWindow;->mHeight:I

    #@4
    .line 147
    iput p3, p0, Lcom/android/server/display/OverlayDisplayWindow;->mDensityDpi:I

    #@6
    .line 148
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mContext:Landroid/content/Context;

    #@8
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@b
    move-result-object v0

    #@c
    const/4 v1, 0x4

    #@d
    new-array v1, v1, [Ljava/lang/Object;

    #@f
    .line 150
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayWindow;->mName:Ljava/lang/String;

    #@11
    const/4 v3, 0x0

    #@12
    aput-object v2, v1, v3

    #@14
    iget v2, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWidth:I

    #@16
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@19
    move-result-object v2

    #@1a
    const/4 v3, 0x1

    #@1b
    aput-object v2, v1, v3

    #@1d
    iget v2, p0, Lcom/android/server/display/OverlayDisplayWindow;->mHeight:I

    #@1f
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@22
    move-result-object v2

    #@23
    const/4 v3, 0x2

    #@24
    aput-object v2, v1, v3

    #@26
    iget v2, p0, Lcom/android/server/display/OverlayDisplayWindow;->mDensityDpi:I

    #@28
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2b
    move-result-object v2

    #@2c
    const/4 v3, 0x3

    #@2d
    aput-object v2, v1, v3

    #@2f
    .line 149
    const v2, 0x10404c1

    #@32
    .line 148
    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    iput-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mTitle:Ljava/lang/String;

    #@38
    .line 151
    iget-boolean v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mSecure:Z

    #@3a
    if-eqz v0, :cond_0

    #@3c
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mTitle:Ljava/lang/String;

    #@43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v0

    #@47
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mContext:Landroid/content/Context;

    #@49
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@4c
    move-result-object v1

    #@4d
    .line 153
    const v2, 0x10404c2

    #@50
    .line 152
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@53
    move-result-object v1

    #@54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v0

    #@58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v0

    #@5c
    iput-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mTitle:Ljava/lang/String;

    #@5e
    .line 155
    :cond_0
    if-eqz p4, :cond_1

    #@60
    .line 156
    invoke-virtual {p0}, Lcom/android/server/display/OverlayDisplayWindow;->relayout()V

    #@63
    .line 144
    :cond_1
    return-void
.end method

.method private saveWindowParams()V
    .locals 1

    #@0
    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    #@2
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    #@4
    iput v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowX:I

    #@6
    .line 275
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    #@8
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    #@a
    iput v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowY:I

    #@c
    .line 276
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    #@e
    invoke-virtual {v0}, Landroid/view/TextureView;->getScaleX()F

    #@11
    move-result v0

    #@12
    iput v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowScale:F

    #@14
    .line 277
    invoke-direct {p0}, Lcom/android/server/display/OverlayDisplayWindow;->clearLiveState()V

    #@17
    .line 273
    return-void
.end method

.method private updateDefaultDisplayInfo()Z
    .locals 2

    #@0
    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mDefaultDisplay:Landroid/view/Display;

    #@2
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    #@4
    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_0

    #@a
    .line 185
    const-string/jumbo v0, "OverlayDisplayWindow"

    #@d
    const-string/jumbo v1, "Cannot show overlay display because there is no default display upon which to show it."

    #@10
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    .line 187
    const/4 v0, 0x0

    #@14
    return v0

    #@15
    .line 189
    :cond_0
    const/4 v0, 0x1

    #@16
    return v0
.end method

.method private updateWindowParams()V
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/high16 v8, 0x3f800000    # 1.0f

    #@3
    .line 244
    iget v6, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowScale:F

    #@5
    iget v7, p0, Lcom/android/server/display/OverlayDisplayWindow;->mLiveScale:F

    #@7
    mul-float v2, v6, v7

    #@9
    .line 245
    .local v2, "scale":F
    iget-object v6, p0, Lcom/android/server/display/OverlayDisplayWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    #@b
    iget v6, v6, Landroid/view/DisplayInfo;->logicalWidth:I

    #@d
    int-to-float v6, v6

    #@e
    iget v7, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWidth:I

    #@10
    int-to-float v7, v7

    #@11
    div-float/2addr v6, v7

    #@12
    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    #@15
    move-result v2

    #@16
    .line 246
    iget-object v6, p0, Lcom/android/server/display/OverlayDisplayWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    #@18
    iget v6, v6, Landroid/view/DisplayInfo;->logicalHeight:I

    #@1a
    int-to-float v6, v6

    #@1b
    iget v7, p0, Lcom/android/server/display/OverlayDisplayWindow;->mHeight:I

    #@1d
    int-to-float v7, v7

    #@1e
    div-float/2addr v6, v7

    #@1f
    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    #@22
    move-result v2

    #@23
    .line 247
    invoke-static {v8, v2}, Ljava/lang/Math;->min(FF)F

    #@26
    move-result v6

    #@27
    const v7, 0x3e99999a    # 0.3f

    #@2a
    invoke-static {v7, v6}, Ljava/lang/Math;->max(FF)F

    #@2d
    move-result v2

    #@2e
    .line 249
    iget v6, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowScale:F

    #@30
    div-float v6, v2, v6

    #@32
    sub-float/2addr v6, v8

    #@33
    const/high16 v7, 0x3f000000    # 0.5f

    #@35
    mul-float v1, v6, v7

    #@37
    .line 250
    .local v1, "offsetScale":F
    iget v6, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWidth:I

    #@39
    int-to-float v6, v6

    #@3a
    mul-float/2addr v6, v2

    #@3b
    float-to-int v3, v6

    #@3c
    .line 251
    .local v3, "width":I
    iget v6, p0, Lcom/android/server/display/OverlayDisplayWindow;->mHeight:I

    #@3e
    int-to-float v6, v6

    #@3f
    mul-float/2addr v6, v2

    #@40
    float-to-int v0, v6

    #@41
    .line 252
    .local v0, "height":I
    iget v6, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowX:I

    #@43
    int-to-float v6, v6

    #@44
    iget v7, p0, Lcom/android/server/display/OverlayDisplayWindow;->mLiveTranslationX:F

    #@46
    add-float/2addr v6, v7

    #@47
    int-to-float v7, v3

    #@48
    mul-float/2addr v7, v1

    #@49
    sub-float/2addr v6, v7

    #@4a
    float-to-int v4, v6

    #@4b
    .line 253
    .local v4, "x":I
    iget v6, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowY:I

    #@4d
    int-to-float v6, v6

    #@4e
    iget v7, p0, Lcom/android/server/display/OverlayDisplayWindow;->mLiveTranslationY:F

    #@50
    add-float/2addr v6, v7

    #@51
    int-to-float v7, v0

    #@52
    mul-float/2addr v7, v1

    #@53
    sub-float/2addr v6, v7

    #@54
    float-to-int v5, v6

    #@55
    .line 254
    .local v5, "y":I
    iget-object v6, p0, Lcom/android/server/display/OverlayDisplayWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    #@57
    iget v6, v6, Landroid/view/DisplayInfo;->logicalWidth:I

    #@59
    sub-int/2addr v6, v3

    #@5a
    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    #@5d
    move-result v6

    #@5e
    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    #@61
    move-result v4

    #@62
    .line 255
    iget-object v6, p0, Lcom/android/server/display/OverlayDisplayWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    #@64
    iget v6, v6, Landroid/view/DisplayInfo;->logicalHeight:I

    #@66
    sub-int/2addr v6, v0

    #@67
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    #@6a
    move-result v6

    #@6b
    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    #@6e
    move-result v5

    #@6f
    .line 264
    iget-object v6, p0, Lcom/android/server/display/OverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    #@71
    invoke-virtual {v6, v2}, Landroid/view/TextureView;->setScaleX(F)V

    #@74
    .line 265
    iget-object v6, p0, Lcom/android/server/display/OverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    #@76
    invoke-virtual {v6, v2}, Landroid/view/TextureView;->setScaleY(F)V

    #@79
    .line 267
    iget-object v6, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    #@7b
    iput v4, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    #@7d
    .line 268
    iget-object v6, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    #@7f
    iput v5, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    #@81
    .line 269
    iget-object v6, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    #@83
    iput v3, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    #@85
    .line 270
    iget-object v6, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    #@87
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    #@89
    .line 243
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    #@0
    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowVisible:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 134
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    #@6
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    #@8
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    #@b
    .line 135
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowManager:Landroid/view/WindowManager;

    #@d
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowContent:Landroid/view/View;

    #@f
    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    #@12
    .line 136
    const/4 v0, 0x0

    #@13
    iput-boolean v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowVisible:Z

    #@15
    .line 132
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "mWindowVisible="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-boolean v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowVisible:Z

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@19
    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v1, "mWindowX="

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    iget v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowX:I

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@32
    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v1, "mWindowY="

    #@3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v0

    #@3e
    iget v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowY:I

    #@40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43
    move-result-object v0

    #@44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v0

    #@48
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4b
    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string/jumbo v1, "mWindowScale="

    #@53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v0

    #@57
    iget v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowScale:F

    #@59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v0

    #@5d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v0

    #@61
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@64
    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    #@66
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@69
    const-string/jumbo v1, "mWindowParams="

    #@6c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v0

    #@70
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    #@72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v0

    #@76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@79
    move-result-object v0

    #@7a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7d
    .line 174
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    #@7f
    if-eqz v0, :cond_0

    #@81
    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    #@83
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@86
    const-string/jumbo v1, "mTextureView.getScaleX()="

    #@89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v0

    #@8d
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    #@8f
    invoke-virtual {v1}, Landroid/view/TextureView;->getScaleX()F

    #@92
    move-result v1

    #@93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@96
    move-result-object v0

    #@97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9a
    move-result-object v0

    #@9b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@9e
    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    #@a0
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a3
    const-string/jumbo v1, "mTextureView.getScaleY()="

    #@a6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v0

    #@aa
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    #@ac
    invoke-virtual {v1}, Landroid/view/TextureView;->getScaleY()F

    #@af
    move-result v1

    #@b0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v0

    #@b4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b7
    move-result-object v0

    #@b8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@bb
    .line 178
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@bd
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@c0
    const-string/jumbo v1, "mLiveTranslationX="

    #@c3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v0

    #@c7
    iget v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mLiveTranslationX:F

    #@c9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v0

    #@cd
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d0
    move-result-object v0

    #@d1
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@d4
    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    #@d6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@d9
    const-string/jumbo v1, "mLiveTranslationY="

    #@dc
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@df
    move-result-object v0

    #@e0
    iget v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mLiveTranslationY:F

    #@e2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v0

    #@e6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e9
    move-result-object v0

    #@ea
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ed
    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    #@ef
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@f2
    const-string/jumbo v1, "mLiveScale="

    #@f5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f8
    move-result-object v0

    #@f9
    iget v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mLiveScale:F

    #@fb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@fe
    move-result-object v0

    #@ff
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@102
    move-result-object v0

    #@103
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@106
    .line 168
    return-void
.end method

.method public relayout()V
    .locals 3

    #@0
    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowVisible:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 162
    invoke-direct {p0}, Lcom/android/server/display/OverlayDisplayWindow;->updateWindowParams()V

    #@7
    .line 163
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowManager:Landroid/view/WindowManager;

    #@9
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowContent:Landroid/view/View;

    #@b
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    #@d
    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@10
    .line 160
    :cond_0
    return-void
.end method

.method public resize(III)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "densityDpi"    # I

    #@0
    .prologue
    .line 141
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/display/OverlayDisplayWindow;->resize(IIIZ)V

    #@4
    .line 140
    return-void
.end method

.method public show()V
    .locals 3

    #@0
    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowVisible:Z

    #@2
    if-nez v0, :cond_1

    #@4
    .line 119
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    #@6
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    #@8
    const/4 v2, 0x0

    #@9
    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    #@c
    .line 120
    invoke-direct {p0}, Lcom/android/server/display/OverlayDisplayWindow;->updateDefaultDisplayInfo()Z

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_0

    #@12
    .line 121
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    #@14
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    #@16
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    #@19
    .line 122
    return-void

    #@1a
    .line 125
    :cond_0
    invoke-direct {p0}, Lcom/android/server/display/OverlayDisplayWindow;->clearLiveState()V

    #@1d
    .line 126
    invoke-direct {p0}, Lcom/android/server/display/OverlayDisplayWindow;->updateWindowParams()V

    #@20
    .line 127
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowManager:Landroid/view/WindowManager;

    #@22
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowContent:Landroid/view/View;

    #@24
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    #@26
    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@29
    .line 128
    const/4 v0, 0x1

    #@2a
    iput-boolean v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowVisible:Z

    #@2c
    .line 117
    :cond_1
    return-void
.end method
