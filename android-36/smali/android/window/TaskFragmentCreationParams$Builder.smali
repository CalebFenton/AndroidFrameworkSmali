.class public final Landroid/window/TaskFragmentCreationParams$Builder;
.super Ljava/lang/Object;
.source "TaskFragmentCreationParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/TaskFragmentCreationParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAllowTransitionWhenEmpty:Z

.field private blacklist mConfigurationChangeMask:I

.field private final blacklist mFragmentToken:Landroid/os/IBinder;

.field private final blacklist mInitialRelativeBounds:Landroid/graphics/Rect;

.field private final blacklist mOrganizer:Landroid/window/TaskFragmentOrganizerToken;

.field private blacklist mOverrideOrientation:I

.field private final blacklist mOwnerToken:Landroid/os/IBinder;

.field private blacklist mPairedActivityToken:Landroid/os/IBinder;

.field private blacklist mPairedPrimaryFragmentToken:Landroid/os/IBinder;

.field private blacklist mWindowingMode:I


# direct methods
.method public constructor blacklist <init>(Landroid/window/TaskFragmentOrganizerToken;Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "organizer"    # Landroid/window/TaskFragmentOrganizerToken;
    .param p2, "fragmentToken"    # Landroid/os/IBinder;
    .param p3, "ownerToken"    # Landroid/os/IBinder;

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mInitialRelativeBounds:Landroid/graphics/Rect;

    .line 284
    const/4 v0, 0x0

    iput v0, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mWindowingMode:I

    .line 295
    const/4 v1, -0x1

    iput v1, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mOverrideOrientation:I

    .line 297
    iput v0, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mConfigurationChangeMask:I

    .line 301
    iput-object p1, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mOrganizer:Landroid/window/TaskFragmentOrganizerToken;

    .line 302
    iput-object p2, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mFragmentToken:Landroid/os/IBinder;

    .line 303
    iput-object p3, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mOwnerToken:Landroid/os/IBinder;

    .line 304
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/window/TaskFragmentCreationParams;
    .registers 13

    .line 413
    new-instance v0, Landroid/window/TaskFragmentCreationParams;

    iget-object v1, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mOrganizer:Landroid/window/TaskFragmentOrganizerToken;

    iget-object v2, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mFragmentToken:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mOwnerToken:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mInitialRelativeBounds:Landroid/graphics/Rect;

    iget v5, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mWindowingMode:I

    iget-object v6, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mPairedPrimaryFragmentToken:Landroid/os/IBinder;

    iget-object v7, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mPairedActivityToken:Landroid/os/IBinder;

    iget-boolean v8, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mAllowTransitionWhenEmpty:Z

    iget v9, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mOverrideOrientation:I

    iget v10, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mConfigurationChangeMask:I

    const/4 v11, 0x0

    invoke-direct/range {v0 .. v11}, Landroid/window/TaskFragmentCreationParams;-><init>(Landroid/window/TaskFragmentOrganizerToken;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;ILandroid/os/IBinder;Landroid/os/IBinder;ZIILandroid/window/TaskFragmentCreationParams-IA;)V

    return-object v0
.end method

.method public blacklist setAllowTransitionWhenEmpty(Z)Landroid/window/TaskFragmentCreationParams$Builder;
    .registers 2
    .param p1, "allowTransitionWhenEmpty"    # Z

    .line 373
    iput-boolean p1, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mAllowTransitionWhenEmpty:Z

    .line 374
    return-object p0
.end method

.method public blacklist setConfigurationChangeMask(I)Landroid/window/TaskFragmentCreationParams$Builder;
    .registers 2
    .param p1, "configurationChangeMask"    # I

    .line 406
    iput p1, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mConfigurationChangeMask:I

    .line 407
    return-object p0
.end method

.method public blacklist setInitialRelativeBounds(Landroid/graphics/Rect;)Landroid/window/TaskFragmentCreationParams$Builder;
    .registers 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 312
    iget-object v0, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mInitialRelativeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 313
    return-object p0
.end method

.method public blacklist setOverrideOrientation(I)Landroid/window/TaskFragmentCreationParams$Builder;
    .registers 2
    .param p1, "overrideOrientation"    # I

    .line 389
    iput p1, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mOverrideOrientation:I

    .line 390
    return-object p0
.end method

.method public blacklist setPairedActivityToken(Landroid/os/IBinder;)Landroid/window/TaskFragmentCreationParams$Builder;
    .registers 2
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .line 359
    iput-object p1, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mPairedActivityToken:Landroid/os/IBinder;

    .line 360
    return-object p0
.end method

.method public blacklist setPairedPrimaryFragmentToken(Landroid/os/IBinder;)Landroid/window/TaskFragmentCreationParams$Builder;
    .registers 2
    .param p1, "fragmentToken"    # Landroid/os/IBinder;

    .line 339
    iput-object p1, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mPairedPrimaryFragmentToken:Landroid/os/IBinder;

    .line 340
    return-object p0
.end method

.method public blacklist setWindowingMode(I)Landroid/window/TaskFragmentCreationParams$Builder;
    .registers 2
    .param p1, "windowingMode"    # I

    .line 319
    iput p1, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mWindowingMode:I

    .line 320
    return-object p0
.end method
