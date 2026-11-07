.class public Landroid/app/TaskInfo;
.super Ljava/lang/Object;
.source "TaskInfo.java"


# static fields
.field public static final blacklist PROPERTY_VALUE_UNSET:I = -0x1

.field private static final blacklist TAG:Ljava/lang/String; = "TaskInfo"


# instance fields
.field public blacklist appCompatTaskInfo:Landroid/app/AppCompatTaskInfo;

.field public whitelist baseActivity:Landroid/content/ComponentName;

.field public whitelist baseIntent:Landroid/content/Intent;

.field public blacklist capturedLink:Landroid/net/Uri;

.field public blacklist capturedLinkTimestamp:J

.field public final greylist configuration:Landroid/content/res/Configuration;

.field public blacklist defaultMinSize:I

.field public blacklist displayAreaFeatureId:I

.field public blacklist displayCutoutInsets:Landroid/graphics/Rect;

.field public blacklist displayId:I

.field public blacklist effectiveUid:I

.field public blacklist isActivityStackTransparent:Z

.field public blacklist isFocused:Z

.field public blacklist isResizeable:Z

.field public whitelist isRunning:Z

.field public blacklist isSleeping:Z

.field public blacklist isTopActivityNoDisplay:Z

.field public blacklist isTopActivityTransparent:Z

.field public blacklist isVisible:Z

.field public blacklist isVisibleRequested:Z

.field public greylist lastActiveTime:J

.field public blacklist lastNonFullscreenBounds:Landroid/graphics/Rect;

.field public blacklist lastParentTaskIdBeforePip:I

.field public blacklist launchCookies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist launchIntoPipHostTaskId:I

.field public blacklist mTopActivityLocusId:Landroid/content/LocusId;

.field public blacklist minHeight:I

.field public blacklist minWidth:I

.field public whitelist numActivities:I

.field public whitelist origActivity:Landroid/content/ComponentName;

.field public blacklist parentTaskId:I

.field public blacklist pictureInPictureParams:Landroid/app/PictureInPictureParams;

.field public blacklist positionInParent:Landroid/graphics/Point;

.field public blacklist realActivity:Landroid/content/ComponentName;

.field public blacklist requestedVisibleTypes:I

.field public greylist resizeMode:I

.field public blacklist shouldDockBigOverlays:Z

.field public blacklist supportsMultiWindow:Z

.field public whitelist taskDescription:Landroid/app/ActivityManager$TaskDescription;

.field public whitelist taskId:I

.field public blacklist token:Landroid/window/WindowContainerToken;

.field public whitelist topActivity:Landroid/content/ComponentName;

.field public blacklist topActivityInfo:Landroid/content/pm/ActivityInfo;

.field public blacklist topActivityMainWindowFrame:Landroid/graphics/Rect;

.field public blacklist topActivityRequestOpenInBrowserEducationTimestamp:J

.field public blacklist topActivityType:I

.field public greylist-max-r userId:I


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/TaskInfo;->displayAreaFeatureId:I

    .line 171
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/TaskInfo;->launchCookies:Ljava/util/ArrayList;

    .line 358
    invoke-static {}, Landroid/app/AppCompatTaskInfo;->create()Landroid/app/AppCompatTaskInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/app/TaskInfo;->appCompatTaskInfo:Landroid/app/AppCompatTaskInfo;

    .line 371
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/TaskInfo;->displayAreaFeatureId:I

    .line 171
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/TaskInfo;->launchCookies:Ljava/util/ArrayList;

    .line 358
    invoke-static {}, Landroid/app/AppCompatTaskInfo;->create()Landroid/app/AppCompatTaskInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/app/TaskInfo;->appCompatTaskInfo:Landroid/app/AppCompatTaskInfo;

    .line 375
    invoke-virtual {p0, p1}, Landroid/app/TaskInfo;->readTaskFromParcel(Landroid/os/Parcel;)V

    .line 376
    return-void
.end method


# virtual methods
.method public blacklist addLaunchCookie(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "cookie"    # Landroid/os/IBinder;

    .line 440
    if-eqz p1, :cond_11

    iget-object v0, p0, Landroid/app/TaskInfo;->launchCookies:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_11

    .line 441
    :cond_b
    iget-object v0, p0, Landroid/app/TaskInfo;->launchCookies:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    return-void

    .line 440
    :cond_11
    :goto_11
    return-void
.end method

.method public blacklist containsLaunchCookie(Landroid/os/IBinder;)Z
    .registers 3
    .param p1, "cookie"    # Landroid/os/IBinder;

    .line 450
    iget-object v0, p0, Landroid/app/TaskInfo;->launchCookies:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist equalsForCompatUi(Landroid/app/TaskInfo;)Z
    .registers 6
    .param p1, "that"    # Landroid/app/TaskInfo;

    .line 522
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 523
    return v0

    .line 525
    :cond_4
    iget-object v1, p0, Landroid/app/TaskInfo;->appCompatTaskInfo:Landroid/app/AppCompatTaskInfo;

    invoke-virtual {v1}, Landroid/app/AppCompatTaskInfo;->hasCompatUI()Z

    move-result v1

    .line 526
    .local v1, "hasCompatUI":Z
    iget v2, p0, Landroid/app/TaskInfo;->displayId:I

    iget v3, p1, Landroid/app/TaskInfo;->displayId:I

    if-ne v2, v3, :cond_6a

    iget v2, p0, Landroid/app/TaskInfo;->taskId:I

    iget v3, p1, Landroid/app/TaskInfo;->taskId:I

    if-ne v2, v3, :cond_6a

    iget-boolean v2, p0, Landroid/app/TaskInfo;->isFocused:Z

    iget-boolean v3, p1, Landroid/app/TaskInfo;->isFocused:Z

    if-ne v2, v3, :cond_6a

    iget-boolean v2, p0, Landroid/app/TaskInfo;->isTopActivityTransparent:Z

    iget-boolean v3, p1, Landroid/app/TaskInfo;->isTopActivityTransparent:Z

    if-ne v2, v3, :cond_6a

    iget-object v2, p0, Landroid/app/TaskInfo;->appCompatTaskInfo:Landroid/app/AppCompatTaskInfo;

    iget-object v3, p1, Landroid/app/TaskInfo;->appCompatTaskInfo:Landroid/app/AppCompatTaskInfo;

    .line 530
    invoke-virtual {v2, v3}, Landroid/app/AppCompatTaskInfo;->equalsForCompatUi(Landroid/app/AppCompatTaskInfo;)Z

    move-result v2

    if-eqz v2, :cond_6a

    if-eqz v1, :cond_44

    iget-object v2, p0, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 532
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p1, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 533
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    :cond_44
    if-eqz v1, :cond_54

    iget-object v2, p0, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 534
    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    iget-object v3, p1, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 535
    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    if-ne v2, v3, :cond_6a

    :cond_54
    if-eqz v1, :cond_60

    iget-object v2, p0, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    iget-object v3, p1, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->uiMode:I

    if-ne v2, v3, :cond_6a

    :cond_60
    if-eqz v1, :cond_68

    iget-boolean v2, p0, Landroid/app/TaskInfo;->isVisible:Z

    iget-boolean v3, p1, Landroid/app/TaskInfo;->isVisible:Z

    if-ne v2, v3, :cond_6a

    :cond_68
    const/4 v0, 0x1

    goto :goto_6b

    :cond_6a
    nop

    .line 526
    :goto_6b
    return v0
.end method

.method public blacklist equalsForTaskOrganizer(Landroid/app/TaskInfo;)Z
    .registers 7
    .param p1, "that"    # Landroid/app/TaskInfo;

    .line 483
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 484
    return v0

    .line 486
    :cond_4
    iget v1, p0, Landroid/app/TaskInfo;->topActivityType:I

    iget v2, p1, Landroid/app/TaskInfo;->topActivityType:I

    if-ne v1, v2, :cond_ee

    iget-boolean v1, p0, Landroid/app/TaskInfo;->isResizeable:Z

    iget-boolean v2, p1, Landroid/app/TaskInfo;->isResizeable:Z

    if-ne v1, v2, :cond_ee

    iget-boolean v1, p0, Landroid/app/TaskInfo;->supportsMultiWindow:Z

    iget-boolean v2, p1, Landroid/app/TaskInfo;->supportsMultiWindow:Z

    if-ne v1, v2, :cond_ee

    iget v1, p0, Landroid/app/TaskInfo;->displayAreaFeatureId:I

    iget v2, p1, Landroid/app/TaskInfo;->displayAreaFeatureId:I

    if-ne v1, v2, :cond_ee

    iget-object v1, p0, Landroid/app/TaskInfo;->positionInParent:Landroid/graphics/Point;

    iget-object v2, p1, Landroid/app/TaskInfo;->positionInParent:Landroid/graphics/Point;

    .line 490
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ee

    iget-object v1, p0, Landroid/app/TaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    iget-object v2, p1, Landroid/app/TaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    .line 491
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ee

    iget-boolean v1, p0, Landroid/app/TaskInfo;->shouldDockBigOverlays:Z

    .line 492
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p1, Landroid/app/TaskInfo;->shouldDockBigOverlays:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ee

    iget-object v1, p0, Landroid/app/TaskInfo;->displayCutoutInsets:Landroid/graphics/Rect;

    iget-object v2, p1, Landroid/app/TaskInfo;->displayCutoutInsets:Landroid/graphics/Rect;

    .line 493
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ee

    .line 494
    invoke-virtual {p0}, Landroid/app/TaskInfo;->getWindowingMode()I

    move-result v1

    invoke-virtual {p1}, Landroid/app/TaskInfo;->getWindowingMode()I

    move-result v2

    if-ne v1, v2, :cond_ee

    iget-object v1, p0, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    iget-object v2, p1, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    if-ne v1, v2, :cond_ee

    iget-object v1, p0, Landroid/app/TaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    iget-object v2, p1, Landroid/app/TaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 496
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ee

    iget-boolean v1, p0, Landroid/app/TaskInfo;->isFocused:Z

    iget-boolean v2, p1, Landroid/app/TaskInfo;->isFocused:Z

    if-ne v1, v2, :cond_ee

    iget-boolean v1, p0, Landroid/app/TaskInfo;->isVisible:Z

    iget-boolean v2, p1, Landroid/app/TaskInfo;->isVisible:Z

    if-ne v1, v2, :cond_ee

    iget-boolean v1, p0, Landroid/app/TaskInfo;->isVisibleRequested:Z

    iget-boolean v2, p1, Landroid/app/TaskInfo;->isVisibleRequested:Z

    if-ne v1, v2, :cond_ee

    iget-boolean v1, p0, Landroid/app/TaskInfo;->isTopActivityNoDisplay:Z

    iget-boolean v2, p1, Landroid/app/TaskInfo;->isTopActivityNoDisplay:Z

    if-ne v1, v2, :cond_ee

    iget-boolean v1, p0, Landroid/app/TaskInfo;->isSleeping:Z

    iget-boolean v2, p1, Landroid/app/TaskInfo;->isSleeping:Z

    if-ne v1, v2, :cond_ee

    iget-object v1, p0, Landroid/app/TaskInfo;->mTopActivityLocusId:Landroid/content/LocusId;

    iget-object v2, p1, Landroid/app/TaskInfo;->mTopActivityLocusId:Landroid/content/LocusId;

    .line 502
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ee

    iget v1, p0, Landroid/app/TaskInfo;->parentTaskId:I

    iget v2, p1, Landroid/app/TaskInfo;->parentTaskId:I

    if-ne v1, v2, :cond_ee

    iget-object v1, p0, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    iget-object v2, p1, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 504
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ee

    iget-boolean v1, p0, Landroid/app/TaskInfo;->isTopActivityTransparent:Z

    iget-boolean v2, p1, Landroid/app/TaskInfo;->isTopActivityTransparent:Z

    if-ne v1, v2, :cond_ee

    iget-boolean v1, p0, Landroid/app/TaskInfo;->isActivityStackTransparent:Z

    iget-boolean v2, p1, Landroid/app/TaskInfo;->isActivityStackTransparent:Z

    if-ne v1, v2, :cond_ee

    iget-object v1, p0, Landroid/app/TaskInfo;->lastNonFullscreenBounds:Landroid/graphics/Rect;

    iget-object v2, p1, Landroid/app/TaskInfo;->lastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 507
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ee

    iget-object v1, p0, Landroid/app/TaskInfo;->capturedLink:Landroid/net/Uri;

    iget-object v2, p1, Landroid/app/TaskInfo;->capturedLink:Landroid/net/Uri;

    .line 508
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ee

    iget-wide v1, p0, Landroid/app/TaskInfo;->capturedLinkTimestamp:J

    iget-wide v3, p1, Landroid/app/TaskInfo;->capturedLinkTimestamp:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_ee

    iget v1, p0, Landroid/app/TaskInfo;->requestedVisibleTypes:I

    iget v2, p1, Landroid/app/TaskInfo;->requestedVisibleTypes:I

    if-ne v1, v2, :cond_ee

    iget-wide v1, p0, Landroid/app/TaskInfo;->topActivityRequestOpenInBrowserEducationTimestamp:J

    iget-wide v3, p1, Landroid/app/TaskInfo;->topActivityRequestOpenInBrowserEducationTimestamp:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_ee

    iget-object v1, p0, Landroid/app/TaskInfo;->appCompatTaskInfo:Landroid/app/AppCompatTaskInfo;

    iget-object v2, p1, Landroid/app/TaskInfo;->appCompatTaskInfo:Landroid/app/AppCompatTaskInfo;

    .line 513
    invoke-virtual {v1, v2}, Landroid/app/AppCompatTaskInfo;->equalsForTaskOrganizer(Landroid/app/AppCompatTaskInfo;)Z

    move-result v1

    if-eqz v1, :cond_ee

    iget-object v1, p0, Landroid/app/TaskInfo;->topActivityMainWindowFrame:Landroid/graphics/Rect;

    iget-object v2, p1, Landroid/app/TaskInfo;->topActivityMainWindowFrame:Landroid/graphics/Rect;

    .line 514
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ee

    const/4 v0, 0x1

    goto :goto_ef

    :cond_ee
    nop

    .line 486
    :goto_ef
    return v0
.end method

.method public blacklist getActivityType()I
    .registers 2

    .line 435
    iget-object v0, p0, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v0

    return v0
.end method

.method public blacklist getConfiguration()Landroid/content/res/Configuration;
    .registers 2

    .line 404
    iget-object v0, p0, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public blacklist getDisplayId()I
    .registers 2

    .line 474
    iget v0, p0, Landroid/app/TaskInfo;->displayId:I

    return v0
.end method

.method public blacklist getParentTaskId()I
    .registers 2

    .line 459
    iget v0, p0, Landroid/app/TaskInfo;->parentTaskId:I

    return v0
.end method

.method public blacklist getPictureInPictureParams()Landroid/app/PictureInPictureParams;
    .registers 2

    .line 411
    iget-object v0, p0, Landroid/app/TaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    return-object v0
.end method

.method public blacklist getTaskId()I
    .registers 2

    .line 383
    iget v0, p0, Landroid/app/TaskInfo;->taskId:I

    return v0
.end method

.method public blacklist getToken()Landroid/window/WindowContainerToken;
    .registers 2

    .line 397
    iget-object v0, p0, Landroid/app/TaskInfo;->token:Landroid/window/WindowContainerToken;

    return-object v0
.end method

.method public blacklist getWindowingMode()I
    .registers 2

    .line 423
    iget-object v0, p0, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    return v0
.end method

.method public blacklist hasParentTask()Z
    .registers 3

    .line 465
    iget v0, p0, Landroid/app/TaskInfo;->parentTaskId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public blacklist isFreeform()Z
    .registers 3

    .line 428
    iget-object v0, p0, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public whitelist isVisible()Z
    .registers 2

    .line 390
    iget-boolean v0, p0, Landroid/app/TaskInfo;->isVisible:Z

    return v0
.end method

.method blacklist readTaskFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 544
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/TaskInfo;->userId:I

    .line 545
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/TaskInfo;->taskId:I

    .line 546
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/TaskInfo;->effectiveUid:I

    .line 547
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/TaskInfo;->displayId:I

    .line 548
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/TaskInfo;->isRunning:Z

    .line 549
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Landroid/app/TaskInfo;->baseIntent:Landroid/content/Intent;

    .line 550
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/app/TaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 551
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 552
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/app/TaskInfo;->origActivity:Landroid/content/ComponentName;

    .line 553
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/app/TaskInfo;->realActivity:Landroid/content/ComponentName;

    .line 555
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/TaskInfo;->numActivities:I

    .line 556
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/TaskInfo;->lastActiveTime:J

    .line 558
    sget-object v0, Landroid/app/ActivityManager$TaskDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$TaskDescription;

    iput-object v0, p0, Landroid/app/TaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 559
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/TaskInfo;->supportsMultiWindow:Z

    .line 560
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/TaskInfo;->resizeMode:I

    .line 561
    iget-object v0, p0, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->readFromParcel(Landroid/os/Parcel;)V

    .line 562
    sget-object v0, Landroid/window/WindowContainerToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/WindowContainerToken;

    iput-object v0, p0, Landroid/app/TaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 563
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/TaskInfo;->topActivityType:I

    .line 564
    sget-object v0, Landroid/app/PictureInPictureParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PictureInPictureParams;

    iput-object v0, p0, Landroid/app/TaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    .line 565
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/TaskInfo;->shouldDockBigOverlays:Z

    .line 566
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/TaskInfo;->launchIntoPipHostTaskId:I

    .line 567
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/TaskInfo;->lastParentTaskIdBeforePip:I

    .line 568
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/app/TaskInfo;->displayCutoutInsets:Landroid/graphics/Rect;

    .line 569
    sget-object v0, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 570
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/TaskInfo;->isResizeable:Z

    .line 571
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/TaskInfo;->minWidth:I

    .line 572
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/TaskInfo;->minHeight:I

    .line 573
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/TaskInfo;->defaultMinSize:I

    .line 574
    iget-object v0, p0, Landroid/app/TaskInfo;->launchCookies:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBinderList(Ljava/util/List;)V

    .line 575
    sget-object v0, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iput-object v0, p0, Landroid/app/TaskInfo;->positionInParent:Landroid/graphics/Point;

    .line 576
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/TaskInfo;->parentTaskId:I

    .line 577
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/TaskInfo;->isFocused:Z

    .line 578
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/TaskInfo;->isVisible:Z

    .line 579
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/TaskInfo;->isVisibleRequested:Z

    .line 580
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/TaskInfo;->isTopActivityNoDisplay:Z

    .line 581
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/TaskInfo;->isSleeping:Z

    .line 582
    sget-object v0, Landroid/content/LocusId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/LocusId;

    iput-object v0, p0, Landroid/app/TaskInfo;->mTopActivityLocusId:Landroid/content/LocusId;

    .line 583
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/TaskInfo;->displayAreaFeatureId:I

    .line 584
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/TaskInfo;->isTopActivityTransparent:Z

    .line 585
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/TaskInfo;->isActivityStackTransparent:Z

    .line 586
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/app/TaskInfo;->lastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 587
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/TaskInfo;->capturedLink:Landroid/net/Uri;

    .line 588
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/TaskInfo;->capturedLinkTimestamp:J

    .line 589
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/TaskInfo;->requestedVisibleTypes:I

    .line 590
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/TaskInfo;->topActivityRequestOpenInBrowserEducationTimestamp:J

    .line 591
    sget-object v0, Landroid/app/AppCompatTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppCompatTaskInfo;

    iput-object v0, p0, Landroid/app/TaskInfo;->appCompatTaskInfo:Landroid/app/AppCompatTaskInfo;

    .line 592
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/app/TaskInfo;->topActivityMainWindowFrame:Landroid/graphics/Rect;

    .line 593
    return-void
.end method

.method public blacklist shouldDockBigOverlays()Z
    .registers 2

    .line 417
    iget-boolean v0, p0, Landroid/app/TaskInfo;->shouldDockBigOverlays:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 654
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskInfo{userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/TaskInfo;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/TaskInfo;->taskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " effectiveUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/TaskInfo;->effectiveUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/TaskInfo;->displayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isRunning="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/TaskInfo;->isRunning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " baseIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/TaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " baseActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/TaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " topActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " origActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/TaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " realActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/TaskInfo;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " numActivities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/TaskInfo;->numActivities:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lastActiveTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/app/TaskInfo;->lastActiveTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " supportsMultiWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/TaskInfo;->supportsMultiWindow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " resizeMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/TaskInfo;->resizeMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isResizeable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/TaskInfo;->isResizeable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " minWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/TaskInfo;->minWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " minHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/TaskInfo;->minHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " defaultMinSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/TaskInfo;->defaultMinSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/TaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " topActivityType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/TaskInfo;->topActivityType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pictureInPictureParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/TaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " shouldDockBigOverlays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/TaskInfo;->shouldDockBigOverlays:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " launchIntoPipHostTaskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/TaskInfo;->launchIntoPipHostTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lastParentTaskIdBeforePip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/TaskInfo;->lastParentTaskIdBeforePip:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " displayCutoutSafeInsets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/TaskInfo;->displayCutoutInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " topActivityInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " launchCookies="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/TaskInfo;->launchCookies:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " positionInParent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/TaskInfo;->positionInParent:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " parentTaskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/TaskInfo;->parentTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isFocused="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/TaskInfo;->isFocused:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/TaskInfo;->isVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isVisibleRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/TaskInfo;->isVisibleRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isTopActivityNoDisplay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/TaskInfo;->isTopActivityNoDisplay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isSleeping="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/TaskInfo;->isSleeping:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " locusId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/TaskInfo;->mTopActivityLocusId:Landroid/content/LocusId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " displayAreaFeatureId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/TaskInfo;->displayAreaFeatureId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isTopActivityTransparent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/TaskInfo;->isTopActivityTransparent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isActivityStackTransparent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/TaskInfo;->isActivityStackTransparent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lastNonFullscreenBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/TaskInfo;->lastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " capturedLink="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/TaskInfo;->capturedLink:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " capturedLinkTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/app/TaskInfo;->capturedLinkTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " requestedVisibleTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/TaskInfo;->requestedVisibleTypes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " topActivityRequestOpenInBrowserEducationTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/app/TaskInfo;->topActivityRequestOpenInBrowserEducationTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " appCompatTaskInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/TaskInfo;->appCompatTaskInfo:Landroid/app/AppCompatTaskInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " topActivityMainWindowFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/TaskInfo;->topActivityMainWindowFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist writeTaskToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 600
    iget v0, p0, Landroid/app/TaskInfo;->userId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 601
    iget v0, p0, Landroid/app/TaskInfo;->taskId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 602
    iget v0, p0, Landroid/app/TaskInfo;->effectiveUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 603
    iget v0, p0, Landroid/app/TaskInfo;->displayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 604
    iget-boolean v0, p0, Landroid/app/TaskInfo;->isRunning:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 605
    iget-object v0, p0, Landroid/app/TaskInfo;->baseIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 607
    iget-object v0, p0, Landroid/app/TaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-static {v0, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 608
    iget-object v0, p0, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-static {v0, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 609
    iget-object v0, p0, Landroid/app/TaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-static {v0, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 610
    iget-object v0, p0, Landroid/app/TaskInfo;->realActivity:Landroid/content/ComponentName;

    invoke-static {v0, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 612
    iget v0, p0, Landroid/app/TaskInfo;->numActivities:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 613
    iget-wide v0, p0, Landroid/app/TaskInfo;->lastActiveTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 615
    iget-object v0, p0, Landroid/app/TaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 616
    iget-boolean v0, p0, Landroid/app/TaskInfo;->supportsMultiWindow:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 617
    iget v0, p0, Landroid/app/TaskInfo;->resizeMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 618
    iget-object v0, p0, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 619
    iget-object v0, p0, Landroid/app/TaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, p1, p2}, Landroid/window/WindowContainerToken;->writeToParcel(Landroid/os/Parcel;I)V

    .line 620
    iget v0, p0, Landroid/app/TaskInfo;->topActivityType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 621
    iget-object v0, p0, Landroid/app/TaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 622
    iget-boolean v0, p0, Landroid/app/TaskInfo;->shouldDockBigOverlays:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 623
    iget v0, p0, Landroid/app/TaskInfo;->launchIntoPipHostTaskId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 624
    iget v0, p0, Landroid/app/TaskInfo;->lastParentTaskIdBeforePip:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 625
    iget-object v0, p0, Landroid/app/TaskInfo;->displayCutoutInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 626
    iget-object v0, p0, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 627
    iget-boolean v0, p0, Landroid/app/TaskInfo;->isResizeable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 628
    iget v0, p0, Landroid/app/TaskInfo;->minWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 629
    iget v0, p0, Landroid/app/TaskInfo;->minHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 630
    iget v0, p0, Landroid/app/TaskInfo;->defaultMinSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 631
    iget-object v0, p0, Landroid/app/TaskInfo;->launchCookies:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    .line 632
    iget-object v0, p0, Landroid/app/TaskInfo;->positionInParent:Landroid/graphics/Point;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 633
    iget v0, p0, Landroid/app/TaskInfo;->parentTaskId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 634
    iget-boolean v0, p0, Landroid/app/TaskInfo;->isFocused:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 635
    iget-boolean v0, p0, Landroid/app/TaskInfo;->isVisible:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 636
    iget-boolean v0, p0, Landroid/app/TaskInfo;->isVisibleRequested:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 637
    iget-boolean v0, p0, Landroid/app/TaskInfo;->isTopActivityNoDisplay:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 638
    iget-boolean v0, p0, Landroid/app/TaskInfo;->isSleeping:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 639
    iget-object v0, p0, Landroid/app/TaskInfo;->mTopActivityLocusId:Landroid/content/LocusId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 640
    iget v0, p0, Landroid/app/TaskInfo;->displayAreaFeatureId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 641
    iget-boolean v0, p0, Landroid/app/TaskInfo;->isTopActivityTransparent:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 642
    iget-boolean v0, p0, Landroid/app/TaskInfo;->isActivityStackTransparent:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 643
    iget-object v0, p0, Landroid/app/TaskInfo;->lastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 644
    iget-object v0, p0, Landroid/app/TaskInfo;->capturedLink:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 645
    iget-wide v0, p0, Landroid/app/TaskInfo;->capturedLinkTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 646
    iget v0, p0, Landroid/app/TaskInfo;->requestedVisibleTypes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 647
    iget-wide v0, p0, Landroid/app/TaskInfo;->topActivityRequestOpenInBrowserEducationTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 648
    iget-object v0, p0, Landroid/app/TaskInfo;->appCompatTaskInfo:Landroid/app/AppCompatTaskInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 649
    iget-object v0, p0, Landroid/app/TaskInfo;->topActivityMainWindowFrame:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 650
    return-void
.end method
