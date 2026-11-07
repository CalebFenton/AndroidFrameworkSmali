.class public final Landroid/window/TaskFragmentOperation$Builder;
.super Ljava/lang/Object;
.source "TaskFragmentOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/TaskFragmentOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mActivityIntent:Landroid/content/Intent;

.field private blacklist mActivityToken:Landroid/os/IBinder;

.field private blacklist mAnimationParams:Landroid/window/TaskFragmentAnimationParams;

.field private blacklist mBooleanValue:Z

.field private blacklist mBundle:Landroid/os/Bundle;

.field private final blacklist mOpType:I

.field private blacklist mSecondaryFragmentToken:Landroid/os/IBinder;

.field private blacklist mSurfaceTransaction:Landroid/view/SurfaceControl$Transaction;

.field private blacklist mTaskFragmentCreationParams:Landroid/window/TaskFragmentCreationParams;


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 2
    .param p1, "opType"    # I

    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    iput p1, p0, Landroid/window/TaskFragmentOperation$Builder;->mOpType:I

    .line 457
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/window/TaskFragmentOperation;
    .registers 12

    .line 541
    new-instance v0, Landroid/window/TaskFragmentOperation;

    iget v1, p0, Landroid/window/TaskFragmentOperation$Builder;->mOpType:I

    iget-object v2, p0, Landroid/window/TaskFragmentOperation$Builder;->mTaskFragmentCreationParams:Landroid/window/TaskFragmentCreationParams;

    iget-object v3, p0, Landroid/window/TaskFragmentOperation$Builder;->mActivityToken:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/window/TaskFragmentOperation$Builder;->mActivityIntent:Landroid/content/Intent;

    iget-object v5, p0, Landroid/window/TaskFragmentOperation$Builder;->mBundle:Landroid/os/Bundle;

    iget-object v6, p0, Landroid/window/TaskFragmentOperation$Builder;->mSecondaryFragmentToken:Landroid/os/IBinder;

    iget-object v7, p0, Landroid/window/TaskFragmentOperation$Builder;->mAnimationParams:Landroid/window/TaskFragmentAnimationParams;

    iget-boolean v8, p0, Landroid/window/TaskFragmentOperation$Builder;->mBooleanValue:Z

    iget-object v9, p0, Landroid/window/TaskFragmentOperation$Builder;->mSurfaceTransaction:Landroid/view/SurfaceControl$Transaction;

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Landroid/window/TaskFragmentOperation;-><init>(ILandroid/window/TaskFragmentCreationParams;Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/IBinder;Landroid/window/TaskFragmentAnimationParams;ZLandroid/view/SurfaceControl$Transaction;Landroid/window/TaskFragmentOperation-IA;)V

    return-object v0
.end method

.method public blacklist setActivityIntent(Landroid/content/Intent;)Landroid/window/TaskFragmentOperation$Builder;
    .registers 2
    .param p1, "activityIntent"    # Landroid/content/Intent;

    .line 483
    iput-object p1, p0, Landroid/window/TaskFragmentOperation$Builder;->mActivityIntent:Landroid/content/Intent;

    .line 484
    return-object p0
.end method

.method public blacklist setActivityToken(Landroid/os/IBinder;)Landroid/window/TaskFragmentOperation$Builder;
    .registers 2
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .line 474
    iput-object p1, p0, Landroid/window/TaskFragmentOperation$Builder;->mActivityToken:Landroid/os/IBinder;

    .line 475
    return-object p0
.end method

.method public blacklist setAnimationParams(Landroid/window/TaskFragmentAnimationParams;)Landroid/window/TaskFragmentOperation$Builder;
    .registers 2
    .param p1, "animationParams"    # Landroid/window/TaskFragmentAnimationParams;

    .line 510
    iput-object p1, p0, Landroid/window/TaskFragmentOperation$Builder;->mAnimationParams:Landroid/window/TaskFragmentAnimationParams;

    .line 511
    return-object p0
.end method

.method public blacklist setBooleanValue(Z)Landroid/window/TaskFragmentOperation$Builder;
    .registers 2
    .param p1, "booleanValue"    # Z

    .line 519
    iput-boolean p1, p0, Landroid/window/TaskFragmentOperation$Builder;->mBooleanValue:Z

    .line 520
    return-object p0
.end method

.method public blacklist setBundle(Landroid/os/Bundle;)Landroid/window/TaskFragmentOperation$Builder;
    .registers 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 492
    iput-object p1, p0, Landroid/window/TaskFragmentOperation$Builder;->mBundle:Landroid/os/Bundle;

    .line 493
    return-object p0
.end method

.method public blacklist setSecondaryFragmentToken(Landroid/os/IBinder;)Landroid/window/TaskFragmentOperation$Builder;
    .registers 2
    .param p1, "secondaryFragmentToken"    # Landroid/os/IBinder;

    .line 501
    iput-object p1, p0, Landroid/window/TaskFragmentOperation$Builder;->mSecondaryFragmentToken:Landroid/os/IBinder;

    .line 502
    return-object p0
.end method

.method public blacklist setSurfaceTransaction(Landroid/view/SurfaceControl$Transaction;)Landroid/window/TaskFragmentOperation$Builder;
    .registers 2
    .param p1, "surfaceTransaction"    # Landroid/view/SurfaceControl$Transaction;

    .line 532
    iput-object p1, p0, Landroid/window/TaskFragmentOperation$Builder;->mSurfaceTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 533
    return-object p0
.end method

.method public blacklist setTaskFragmentCreationParams(Landroid/window/TaskFragmentCreationParams;)Landroid/window/TaskFragmentOperation$Builder;
    .registers 2
    .param p1, "taskFragmentCreationParams"    # Landroid/window/TaskFragmentCreationParams;

    .line 465
    iput-object p1, p0, Landroid/window/TaskFragmentOperation$Builder;->mTaskFragmentCreationParams:Landroid/window/TaskFragmentCreationParams;

    .line 466
    return-object p0
.end method
