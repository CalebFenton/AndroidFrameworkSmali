.class public Landroid/window/SplashScreenView$Builder;
.super Ljava/lang/Object;
.source "SplashScreenView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/SplashScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private blacklist mAllowHandleSolidColor:Z

.field private blacklist mBackgroundColor:I

.field private blacklist mBrandingDrawable:Landroid/graphics/drawable/Drawable;

.field private blacklist mBrandingImageHeight:I

.field private blacklist mBrandingImageWidth:I

.field private blacklist mClientCallback:Landroid/os/RemoteCallback;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mIconAnimationDuration:Ljava/time/Duration;

.field private blacklist mIconAnimationStart:Ljava/time/Instant;

.field private blacklist mIconBackground:Landroid/graphics/drawable/Drawable;

.field private blacklist mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private blacklist mIconSize:I

.field private blacklist mOverlayDrawable:Landroid/graphics/drawable/Drawable;

.field private blacklist mParceledBrandingBitmap:Landroid/graphics/Bitmap;

.field private blacklist mParceledIconBackgroundBitmap:Landroid/graphics/Bitmap;

.field private blacklist mParceledIconBitmap:Landroid/graphics/Bitmap;

.field private blacklist mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

.field private blacklist mUiThreadInitTask:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$bvL0QznbxexxTyiVrdA2OsMAFh8(Landroid/window/SplashScreenView$Builder;Landroid/window/SplashScreenView;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/window/SplashScreenView$Builder;->lambda$build$0(Landroid/window/SplashScreenView;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 119
    const-class v0, Landroid/window/SplashScreenView;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/window/SplashScreenView$Builder;->mAllowHandleSolidColor:Z

    .line 141
    iput-object p1, p0, Landroid/window/SplashScreenView$Builder;->mContext:Landroid/content/Context;

    .line 142
    return-void
.end method

.method private blacklist createSurfaceView(Landroid/window/SplashScreenView;)Landroid/view/SurfaceView;
    .registers 16
    .param p1, "view"    # Landroid/window/SplashScreenView;

    .line 326
    const-string v0, "SplashScreenView#createSurfaceView"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 327
    invoke-virtual {p1}, Landroid/window/SplashScreenView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 328
    .local v0, "viewContext":Landroid/content/Context;
    new-instance v3, Landroid/view/SurfaceView;

    invoke-direct {v3, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 329
    .local v3, "surfaceView":Landroid/view/SurfaceView;
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/view/SurfaceView;->setPadding(IIII)V

    .line 330
    iget-object v4, p0, Landroid/window/SplashScreenView$Builder;->mIconBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/view/SurfaceView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 331
    iget-object v4, p0, Landroid/window/SplashScreenView$Builder;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    if-nez v4, :cond_90

    .line 332
    invoke-static {}, Landroid/window/SplashScreenView;->-$$Nest$sfgetDEBUG()Z

    move-result v4

    if-eqz v4, :cond_45

    .line 333
    invoke-static {}, Landroid/window/SplashScreenView;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SurfaceControlViewHost created on thread "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 335
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 333
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_45
    invoke-virtual {v3}, Landroid/view/SurfaceView;->getRootSurfaceControl()Landroid/view/AttachedSurfaceControl;

    move-result-object v4

    .line 339
    .local v4, "attachedSurfaceControl":Landroid/view/AttachedSurfaceControl;
    new-instance v5, Landroid/view/SurfaceControlViewHost;

    .line 340
    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v6

    .line 341
    if-nez v4, :cond_53

    const/4 v7, 0x0

    goto :goto_57

    .line 342
    :cond_53
    invoke-interface {v4}, Landroid/view/AttachedSurfaceControl;->getInputTransferToken()Landroid/window/InputTransferToken;

    move-result-object v7

    :goto_57
    const-string v8, "SplashScreenView"

    invoke-direct {v5, v0, v6, v7, v8}, Landroid/view/SurfaceControlViewHost;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/window/InputTransferToken;Ljava/lang/String;)V

    .line 344
    .local v5, "viewHost":Landroid/view/SurfaceControlViewHost;
    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 345
    .local v6, "imageView":Landroid/widget/ImageView;
    iget-object v7, p0, Landroid/window/SplashScreenView$Builder;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 346
    const v7, 0x20018

    .line 349
    .local v7, "windowFlag":I
    new-instance v8, Landroid/view/WindowManager$LayoutParams;

    iget v9, p0, Landroid/window/SplashScreenView$Builder;->mIconSize:I

    iget v10, p0, Landroid/window/SplashScreenView$Builder;->mIconSize:I

    const v12, 0x20018

    const/4 v13, -0x2

    const/4 v11, 0x2

    invoke-direct/range {v8 .. v13}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 353
    .local v8, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v5, v6, v8}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 354
    invoke-virtual {v5}, Landroid/view/SurfaceControlViewHost;->getSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;

    move-result-object v9

    .line 355
    .local v9, "surfacePackage":Landroid/view/SurfaceControlViewHost$SurfacePackage;
    invoke-virtual {v3, v9}, Landroid/view/SurfaceView;->setChildSurfacePackage(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    .line 356
    invoke-static {p1, v9}, Landroid/window/SplashScreenView;->-$$Nest$fputmSurfacePackage(Landroid/window/SplashScreenView;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    .line 357
    invoke-static {p1, v5}, Landroid/window/SplashScreenView;->-$$Nest$fputmSurfaceHost(Landroid/window/SplashScreenView;Landroid/view/SurfaceControlViewHost;)V

    .line 358
    new-instance v10, Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-direct {v10, v9}, Landroid/view/SurfaceControlViewHost$SurfacePackage;-><init>(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    invoke-static {p1, v10}, Landroid/window/SplashScreenView;->-$$Nest$fputmSurfacePackageCopy(Landroid/window/SplashScreenView;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    .line 360
    .end local v4    # "attachedSurfaceControl":Landroid/view/AttachedSurfaceControl;
    .end local v5    # "viewHost":Landroid/view/SurfaceControlViewHost;
    .end local v6    # "imageView":Landroid/widget/ImageView;
    .end local v7    # "windowFlag":I
    .end local v8    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v9    # "surfacePackage":Landroid/view/SurfaceControlViewHost$SurfacePackage;
    goto :goto_a4

    .line 361
    :cond_90
    invoke-static {}, Landroid/window/SplashScreenView;->-$$Nest$sfgetDEBUG()Z

    move-result v4

    if-eqz v4, :cond_9f

    .line 362
    invoke-static {}, Landroid/window/SplashScreenView;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Using copy of SurfacePackage in the client"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_9f
    iget-object v4, p0, Landroid/window/SplashScreenView$Builder;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-static {p1, v4}, Landroid/window/SplashScreenView;->-$$Nest$fputmSurfacePackage(Landroid/window/SplashScreenView;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    .line 366
    :goto_a4
    iget v4, p0, Landroid/window/SplashScreenView$Builder;->mIconSize:I

    if-eqz v4, :cond_da

    .line 367
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    iget v5, p0, Landroid/window/SplashScreenView$Builder;->mIconSize:I

    iget v6, p0, Landroid/window/SplashScreenView$Builder;->mIconSize:I

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 368
    .local v4, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v5, 0x11

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 369
    invoke-virtual {v3, v4}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 370
    invoke-static {}, Landroid/window/SplashScreenView;->-$$Nest$sfgetDEBUG()Z

    move-result v5

    if-eqz v5, :cond_da

    .line 371
    invoke-static {}, Landroid/window/SplashScreenView;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Icon size "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/window/SplashScreenView$Builder;->mIconSize:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    .end local v4    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_da
    invoke-virtual {v3}, Landroid/view/SurfaceView;->setUseAlpha()V

    .line 377
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 378
    invoke-virtual {v3}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v4

    const/4 v5, -0x3

    invoke-interface {v4, v5}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 380
    invoke-virtual {p1, v3}, Landroid/window/SplashScreenView;->addView(Landroid/view/View;)V

    .line 381
    invoke-static {p1, v3}, Landroid/window/SplashScreenView;->-$$Nest$fputmSurfaceView(Landroid/window/SplashScreenView;Landroid/view/SurfaceView;)V

    .line 382
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 383
    return-object v3
.end method

.method private synthetic blacklist lambda$build$0(Landroid/window/SplashScreenView;)V
    .registers 3
    .param p1, "view"    # Landroid/window/SplashScreenView;

    .line 269
    invoke-direct {p0, p1}, Landroid/window/SplashScreenView$Builder;->createSurfaceView(Landroid/window/SplashScreenView;)Landroid/view/SurfaceView;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/window/SplashScreenView;->-$$Nest$fputmIconView(Landroid/window/SplashScreenView;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/window/SplashScreenView;
    .registers 10

    .line 249
    const-string v0, "SplashScreenView#build"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 250
    iget-object v0, p0, Landroid/window/SplashScreenView$Builder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 251
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    nop

    .line 252
    const v3, 0x1090156

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/window/SplashScreenView;

    .line 253
    .local v3, "view":Landroid/window/SplashScreenView;
    iget v4, p0, Landroid/window/SplashScreenView$Builder;->mBackgroundColor:I

    invoke-static {v3, v4}, Landroid/window/SplashScreenView;->-$$Nest$fputmInitBackgroundColor(Landroid/window/SplashScreenView;I)V

    .line 254
    iget-object v4, p0, Landroid/window/SplashScreenView$Builder;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_28

    .line 255
    iget-object v4, p0, Landroid/window/SplashScreenView$Builder;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/window/SplashScreenView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2d

    .line 257
    :cond_28
    iget v4, p0, Landroid/window/SplashScreenView$Builder;->mBackgroundColor:I

    invoke-virtual {v3, v4}, Landroid/window/SplashScreenView;->setBackgroundColor(I)V

    .line 259
    :goto_2d
    iget-object v4, p0, Landroid/window/SplashScreenView$Builder;->mClientCallback:Landroid/os/RemoteCallback;

    invoke-static {v3, v4}, Landroid/window/SplashScreenView;->-$$Nest$fputmClientCallback(Landroid/window/SplashScreenView;Landroid/os/RemoteCallback;)V

    .line 261
    const v4, 0x1020541

    invoke-virtual {v3, v4}, Landroid/window/SplashScreenView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/window/SplashScreenView;->-$$Nest$fputmBrandingImageView(Landroid/window/SplashScreenView;Landroid/view/View;)V

    .line 263
    const/4 v4, 0x0

    .line 265
    .local v4, "hasIcon":Z
    iget-object v5, p0, Landroid/window/SplashScreenView$Builder;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v5, v5, Landroid/window/SplashScreenView$IconAnimateListener;

    if-nez v5, :cond_7c

    iget-object v5, p0, Landroid/window/SplashScreenView$Builder;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    if-eqz v5, :cond_48

    goto :goto_7c

    .line 276
    :cond_48
    iget v5, p0, Landroid/window/SplashScreenView$Builder;->mIconSize:I

    if-eqz v5, :cond_a2

    .line 277
    const v5, 0x1020542

    invoke-virtual {v3, v5}, Landroid/window/SplashScreenView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 278
    .local v5, "imageView":Landroid/widget/ImageView;
    nop

    .line 280
    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 281
    .local v6, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v7, p0, Landroid/window/SplashScreenView$Builder;->mIconSize:I

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 282
    iget v7, p0, Landroid/window/SplashScreenView$Builder;->mIconSize:I

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 283
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 284
    iget-object v7, p0, Landroid/window/SplashScreenView$Builder;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_6e

    .line 285
    iget-object v7, p0, Landroid/window/SplashScreenView$Builder;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 287
    :cond_6e
    iget-object v7, p0, Landroid/window/SplashScreenView$Builder;->mIconBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_77

    .line 288
    iget-object v7, p0, Landroid/window/SplashScreenView$Builder;->mIconBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 290
    :cond_77
    const/4 v4, 0x1

    .line 291
    invoke-static {v3, v5}, Landroid/window/SplashScreenView;->-$$Nest$fputmIconView(Landroid/window/SplashScreenView;Landroid/view/View;)V

    goto :goto_a2

    .line 267
    .end local v5    # "imageView":Landroid/widget/ImageView;
    .end local v6    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_7c
    :goto_7c
    const/4 v4, 0x1

    .line 268
    iget-object v5, p0, Landroid/window/SplashScreenView$Builder;->mUiThreadInitTask:Ljava/util/function/Consumer;

    if-eqz v5, :cond_8c

    .line 269
    iget-object v5, p0, Landroid/window/SplashScreenView$Builder;->mUiThreadInitTask:Ljava/util/function/Consumer;

    new-instance v6, Landroid/window/SplashScreenView$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0, v3}, Landroid/window/SplashScreenView$Builder$$ExternalSyntheticLambda0;-><init>(Landroid/window/SplashScreenView$Builder;Landroid/window/SplashScreenView;)V

    invoke-interface {v5, v6}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_93

    .line 271
    :cond_8c
    invoke-direct {p0, v3}, Landroid/window/SplashScreenView$Builder;->createSurfaceView(Landroid/window/SplashScreenView;)Landroid/view/SurfaceView;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/window/SplashScreenView;->-$$Nest$fputmIconView(Landroid/window/SplashScreenView;Landroid/view/View;)V

    .line 273
    :goto_93
    iget-object v5, p0, Landroid/window/SplashScreenView$Builder;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v5}, Landroid/window/SplashScreenView;->initIconAnimation(Landroid/graphics/drawable/Drawable;)V

    .line 274
    iget-object v5, p0, Landroid/window/SplashScreenView$Builder;->mIconAnimationStart:Ljava/time/Instant;

    invoke-static {v3, v5}, Landroid/window/SplashScreenView;->-$$Nest$fputmIconAnimationStart(Landroid/window/SplashScreenView;Ljava/time/Instant;)V

    .line 275
    iget-object v5, p0, Landroid/window/SplashScreenView$Builder;->mIconAnimationDuration:Ljava/time/Duration;

    invoke-static {v3, v5}, Landroid/window/SplashScreenView;->-$$Nest$fputmIconAnimationDuration(Landroid/window/SplashScreenView;Ljava/time/Duration;)V

    .line 293
    :cond_a2
    :goto_a2
    iget-object v5, p0, Landroid/window/SplashScreenView$Builder;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_ac

    if-nez v4, :cond_af

    iget-boolean v5, p0, Landroid/window/SplashScreenView$Builder;->mAllowHandleSolidColor:Z

    if-nez v5, :cond_af

    .line 294
    :cond_ac
    invoke-virtual {v3}, Landroid/window/SplashScreenView;->setNotCopyable()V

    .line 297
    :cond_af
    iget-object v5, p0, Landroid/window/SplashScreenView$Builder;->mParceledIconBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-static {v3, v5}, Landroid/window/SplashScreenView;->-$$Nest$fputmParceledIconBackgroundBitmap(Landroid/window/SplashScreenView;Landroid/graphics/Bitmap;)V

    .line 298
    iget-object v5, p0, Landroid/window/SplashScreenView$Builder;->mParceledIconBitmap:Landroid/graphics/Bitmap;

    invoke-static {v3, v5}, Landroid/window/SplashScreenView;->-$$Nest$fputmParceledIconBitmap(Landroid/window/SplashScreenView;Landroid/graphics/Bitmap;)V

    .line 301
    iget v5, p0, Landroid/window/SplashScreenView$Builder;->mBrandingImageHeight:I

    if-lez v5, :cond_e6

    iget v5, p0, Landroid/window/SplashScreenView$Builder;->mBrandingImageWidth:I

    if-lez v5, :cond_e6

    iget-object v5, p0, Landroid/window/SplashScreenView$Builder;->mBrandingDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_e6

    .line 302
    invoke-static {v3}, Landroid/window/SplashScreenView;->-$$Nest$fgetmBrandingImageView(Landroid/window/SplashScreenView;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 303
    .local v5, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v6, p0, Landroid/window/SplashScreenView$Builder;->mBrandingImageWidth:I

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 304
    iget v6, p0, Landroid/window/SplashScreenView$Builder;->mBrandingImageHeight:I

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 305
    invoke-static {v3}, Landroid/window/SplashScreenView;->-$$Nest$fgetmBrandingImageView(Landroid/window/SplashScreenView;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 306
    invoke-static {v3}, Landroid/window/SplashScreenView;->-$$Nest$fgetmBrandingImageView(Landroid/window/SplashScreenView;)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Landroid/window/SplashScreenView$Builder;->mBrandingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 307
    .end local v5    # "params":Landroid/view/ViewGroup$LayoutParams;
    goto :goto_ef

    .line 308
    :cond_e6
    invoke-static {v3}, Landroid/window/SplashScreenView;->-$$Nest$fgetmBrandingImageView(Landroid/window/SplashScreenView;)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 310
    :goto_ef
    iget-object v5, p0, Landroid/window/SplashScreenView$Builder;->mParceledBrandingBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_f8

    .line 311
    iget-object v5, p0, Landroid/window/SplashScreenView$Builder;->mParceledBrandingBitmap:Landroid/graphics/Bitmap;

    invoke-static {v3, v5}, Landroid/window/SplashScreenView;->-$$Nest$fputmParceledBrandingBitmap(Landroid/window/SplashScreenView;Landroid/graphics/Bitmap;)V

    .line 313
    :cond_f8
    invoke-static {}, Landroid/window/SplashScreenView;->-$$Nest$sfgetDEBUG()Z

    move-result v5

    if-eqz v5, :cond_16e

    .line 314
    invoke-static {}, Landroid/window/SplashScreenView;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Build "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\nIcon: view: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Landroid/window/SplashScreenView;->-$$Nest$fgetmIconView(Landroid/window/SplashScreenView;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " drawable: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Landroid/window/SplashScreenView$Builder;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " size: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p0, Landroid/window/SplashScreenView$Builder;->mIconSize:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\nBranding: view: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Landroid/window/SplashScreenView;->-$$Nest$fgetmBrandingImageView(Landroid/window/SplashScreenView;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/window/SplashScreenView$Builder;->mBrandingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " size w: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/window/SplashScreenView$Builder;->mBrandingImageWidth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " h: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/window/SplashScreenView$Builder;->mBrandingImageHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_16e
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 322
    return-object v3
.end method

.method public blacklist createFromParcel(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)Landroid/window/SplashScreenView$Builder;
    .registers 5
    .param p1, "parcelable"    # Landroid/window/SplashScreenView$SplashScreenViewParcelable;

    .line 149
    invoke-virtual {p1}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->getIconSize()I

    move-result v0

    iput v0, p0, Landroid/window/SplashScreenView$Builder;->mIconSize:I

    .line 150
    invoke-virtual {p1}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->getBackgroundColor()I

    move-result v0

    iput v0, p0, Landroid/window/SplashScreenView$Builder;->mBackgroundColor:I

    .line 151
    invoke-static {p1}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->-$$Nest$fgetmSurfacePackage(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)Landroid/view/SurfaceControlViewHost$SurfacePackage;

    move-result-object v0

    iput-object v0, p0, Landroid/window/SplashScreenView$Builder;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 152
    iget-object v0, p0, Landroid/window/SplashScreenView$Builder;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    if-nez v0, :cond_33

    invoke-static {p1}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->-$$Nest$fgetmIconBitmap(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 155
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Landroid/window/SplashScreenView$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->-$$Nest$fgetmIconBitmap(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Landroid/window/SplashScreenView$Builder;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 156
    invoke-static {p1}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->-$$Nest$fgetmIconBitmap(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/window/SplashScreenView$Builder;->mParceledIconBitmap:Landroid/graphics/Bitmap;

    .line 158
    :cond_33
    invoke-static {p1}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->-$$Nest$fgetmIconBackground(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 159
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Landroid/window/SplashScreenView$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->-$$Nest$fgetmIconBackground(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Landroid/window/SplashScreenView$Builder;->mIconBackground:Landroid/graphics/drawable/Drawable;

    .line 161
    invoke-static {p1}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->-$$Nest$fgetmIconBackground(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/window/SplashScreenView$Builder;->mParceledIconBackgroundBitmap:Landroid/graphics/Bitmap;

    .line 163
    :cond_50
    invoke-static {p1}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->-$$Nest$fgetmBrandingBitmap(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_76

    .line 164
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Landroid/window/SplashScreenView$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->-$$Nest$fgetmBrandingBitmap(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {p1}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->-$$Nest$fgetmBrandingWidth(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)I

    move-result v1

    invoke-static {p1}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->-$$Nest$fgetmBrandingHeight(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/window/SplashScreenView$Builder;->setBrandingDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/window/SplashScreenView$Builder;

    .line 167
    invoke-static {p1}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->-$$Nest$fgetmBrandingBitmap(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/window/SplashScreenView$Builder;->mParceledBrandingBitmap:Landroid/graphics/Bitmap;

    .line 169
    :cond_76
    invoke-static {p1}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->-$$Nest$fgetmIconAnimationStartMillis(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Landroid/window/SplashScreenView$Builder;->mIconAnimationStart:Ljava/time/Instant;

    .line 170
    invoke-static {p1}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->-$$Nest$fgetmIconAnimationDurationMillis(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    iput-object v0, p0, Landroid/window/SplashScreenView$Builder;->mIconAnimationDuration:Ljava/time/Duration;

    .line 171
    invoke-static {p1}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->-$$Nest$fgetmClientCallback(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)Landroid/os/RemoteCallback;

    move-result-object v0

    iput-object v0, p0, Landroid/window/SplashScreenView$Builder;->mClientCallback:Landroid/os/RemoteCallback;

    .line 172
    invoke-static {}, Landroid/window/SplashScreenView;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 173
    invoke-static {}, Landroid/window/SplashScreenView;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/window/SplashScreenView$Builder;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Building from parcel drawable: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_a9
    return-object p0
.end method

.method public blacklist setAllowHandleSolidColor(Z)Landroid/window/SplashScreenView$Builder;
    .registers 2
    .param p1, "allowHandleSolidColor"    # Z

    .line 241
    iput-boolean p1, p0, Landroid/window/SplashScreenView$Builder;->mAllowHandleSolidColor:Z

    .line 242
    return-object p0
.end method

.method public blacklist setBackgroundColor(I)Landroid/window/SplashScreenView$Builder;
    .registers 2
    .param p1, "backgroundColor"    # I

    .line 190
    iput p1, p0, Landroid/window/SplashScreenView$Builder;->mBackgroundColor:I

    .line 191
    return-object p0
.end method

.method public blacklist setBrandingDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/window/SplashScreenView$Builder;
    .registers 4
    .param p1, "branding"    # Landroid/graphics/drawable/Drawable;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 230
    iput-object p1, p0, Landroid/window/SplashScreenView$Builder;->mBrandingDrawable:Landroid/graphics/drawable/Drawable;

    .line 231
    iput p2, p0, Landroid/window/SplashScreenView$Builder;->mBrandingImageWidth:I

    .line 232
    iput p3, p0, Landroid/window/SplashScreenView$Builder;->mBrandingImageHeight:I

    .line 233
    return-object p0
.end method

.method public blacklist setCenterViewDrawable(Landroid/graphics/drawable/Drawable;)Landroid/window/SplashScreenView$Builder;
    .registers 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 206
    iput-object p1, p0, Landroid/window/SplashScreenView$Builder;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 207
    return-object p0
.end method

.method public blacklist setIconBackground(Landroid/graphics/drawable/Drawable;)Landroid/window/SplashScreenView$Builder;
    .registers 2
    .param p1, "iconBackground"    # Landroid/graphics/drawable/Drawable;

    .line 214
    iput-object p1, p0, Landroid/window/SplashScreenView$Builder;->mIconBackground:Landroid/graphics/drawable/Drawable;

    .line 215
    return-object p0
.end method

.method public blacklist setIconSize(I)Landroid/window/SplashScreenView$Builder;
    .registers 2
    .param p1, "iconSize"    # I

    .line 182
    iput p1, p0, Landroid/window/SplashScreenView$Builder;->mIconSize:I

    .line 183
    return-object p0
.end method

.method public blacklist setOverlayDrawable(Landroid/graphics/drawable/Drawable;)Landroid/window/SplashScreenView$Builder;
    .registers 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 198
    iput-object p1, p0, Landroid/window/SplashScreenView$Builder;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 199
    return-object p0
.end method

.method public blacklist setUiThreadInitConsumer(Ljava/util/function/Consumer;)Landroid/window/SplashScreenView$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Runnable;",
            ">;)",
            "Landroid/window/SplashScreenView$Builder;"
        }
    .end annotation

    .line 222
    .local p1, "uiThreadInitTask":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Runnable;>;"
    iput-object p1, p0, Landroid/window/SplashScreenView$Builder;->mUiThreadInitTask:Ljava/util/function/Consumer;

    .line 223
    return-object p0
.end method
