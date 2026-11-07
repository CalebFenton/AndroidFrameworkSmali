.class public final Landroid/window/TransitionInfo$Change;
.super Ljava/lang/Object;
.source "TransitionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/TransitionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Change"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/TransitionInfo$Change;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mActivityComponent:Landroid/content/ComponentName;

.field private blacklist mAllowEnterPip:Z

.field private blacklist mAnimationOptions:Landroid/window/TransitionInfo$AnimationOptions;

.field private blacklist mBackgroundColor:I

.field private final blacklist mContainer:Landroid/window/WindowContainerToken;

.field private final blacklist mEndAbsBounds:Landroid/graphics/Rect;

.field private blacklist mEndDisplayId:I

.field private blacklist mEndFixedRotation:I

.field private final blacklist mEndParentSize:Landroid/graphics/Point;

.field private final blacklist mEndRelOffset:Landroid/graphics/Point;

.field private blacklist mEndRotation:I

.field private blacklist mFlags:I

.field private blacklist mLastParent:Landroid/window/WindowContainerToken;

.field private blacklist mLeash:Landroid/view/SurfaceControl;

.field private blacklist mMode:I

.field private blacklist mParent:Landroid/window/WindowContainerToken;

.field private blacklist mRotationAnimation:I

.field private blacklist mSnapshot:Landroid/view/SurfaceControl;

.field private blacklist mSnapshotLuma:F

.field private final blacklist mStartAbsBounds:Landroid/graphics/Rect;

.field private blacklist mStartDisplayId:I

.field private blacklist mStartRotation:I

.field private blacklist mTaskFragmentToken:Landroid/os/IBinder;

.field private blacklist mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContainer(Landroid/window/TransitionInfo$Change;)Landroid/window/WindowContainerToken;
    .registers 1

    iget-object p0, p0, Landroid/window/TransitionInfo$Change;->mContainer:Landroid/window/WindowContainerToken;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSnapshot(Landroid/window/TransitionInfo$Change;)Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Landroid/window/TransitionInfo$Change;->mSnapshot:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSnapshot(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl;)V
    .registers 2

    iput-object p1, p0, Landroid/window/TransitionInfo$Change;->mSnapshot:Landroid/view/SurfaceControl;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlocalRemoteCopy(Landroid/window/TransitionInfo$Change;)Landroid/window/TransitionInfo$Change;
    .registers 1

    invoke-direct {p0}, Landroid/window/TransitionInfo$Change;->localRemoteCopy()Landroid/window/TransitionInfo$Change;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1035
    new-instance v0, Landroid/window/TransitionInfo$Change$1;

    invoke-direct {v0}, Landroid/window/TransitionInfo$Change$1;-><init>()V

    sput-object v0, Landroid/window/TransitionInfo$Change;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 667
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 637
    const/4 v0, 0x0

    iput v0, p0, Landroid/window/TransitionInfo$Change;->mMode:I

    .line 638
    iput v0, p0, Landroid/window/TransitionInfo$Change;->mFlags:I

    .line 639
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/TransitionInfo$Change;->mStartAbsBounds:Landroid/graphics/Rect;

    .line 640
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/TransitionInfo$Change;->mEndAbsBounds:Landroid/graphics/Rect;

    .line 641
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/window/TransitionInfo$Change;->mEndRelOffset:Landroid/graphics/Point;

    .line 642
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/window/TransitionInfo$Change;->mEndParentSize:Landroid/graphics/Point;

    .line 643
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/window/TransitionInfo$Change;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 645
    const/4 v1, -0x1

    iput v1, p0, Landroid/window/TransitionInfo$Change;->mStartDisplayId:I

    .line 646
    iput v1, p0, Landroid/window/TransitionInfo$Change;->mEndDisplayId:I

    .line 647
    iput v1, p0, Landroid/window/TransitionInfo$Change;->mStartRotation:I

    .line 648
    iput v1, p0, Landroid/window/TransitionInfo$Change;->mEndRotation:I

    .line 653
    iput v1, p0, Landroid/window/TransitionInfo$Change;->mEndFixedRotation:I

    .line 654
    iput v1, p0, Landroid/window/TransitionInfo$Change;->mRotationAnimation:I

    .line 656
    iput-object v0, p0, Landroid/window/TransitionInfo$Change;->mSnapshot:Landroid/view/SurfaceControl;

    .line 658
    iput-object v0, p0, Landroid/window/TransitionInfo$Change;->mActivityComponent:Landroid/content/ComponentName;

    .line 659
    iput-object v0, p0, Landroid/window/TransitionInfo$Change;->mAnimationOptions:Landroid/window/TransitionInfo$AnimationOptions;

    .line 660
    iput-object v0, p0, Landroid/window/TransitionInfo$Change;->mTaskFragmentToken:Landroid/os/IBinder;

    .line 668
    sget-object v0, Landroid/window/WindowContainerToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/WindowContainerToken;

    iput-object v0, p0, Landroid/window/TransitionInfo$Change;->mContainer:Landroid/window/WindowContainerToken;

    .line 669
    sget-object v0, Landroid/window/WindowContainerToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/WindowContainerToken;

    iput-object v0, p0, Landroid/window/TransitionInfo$Change;->mParent:Landroid/window/WindowContainerToken;

    .line 670
    sget-object v0, Landroid/window/WindowContainerToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/WindowContainerToken;

    iput-object v0, p0, Landroid/window/TransitionInfo$Change;->mLastParent:Landroid/window/WindowContainerToken;

    .line 671
    new-instance v0, Landroid/view/SurfaceControl;

    invoke-direct {v0}, Landroid/view/SurfaceControl;-><init>()V

    iput-object v0, p0, Landroid/window/TransitionInfo$Change;->mLeash:Landroid/view/SurfaceControl;

    .line 672
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->readFromParcel(Landroid/os/Parcel;)V

    .line 673
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TransitionInfo$Change;->mMode:I

    .line 674
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TransitionInfo$Change;->mFlags:I

    .line 675
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mStartAbsBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    .line 676
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mEndAbsBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    .line 677
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mEndRelOffset:Landroid/graphics/Point;

    invoke-virtual {v0, p1}, Landroid/graphics/Point;->readFromParcel(Landroid/os/Parcel;)V

    .line 678
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mEndParentSize:Landroid/graphics/Point;

    invoke-virtual {v0, p1}, Landroid/graphics/Point;->readFromParcel(Landroid/os/Parcel;)V

    .line 679
    sget-object v0, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object v0, p0, Landroid/window/TransitionInfo$Change;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 680
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/TransitionInfo$Change;->mAllowEnterPip:Z

    .line 681
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TransitionInfo$Change;->mStartDisplayId:I

    .line 682
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TransitionInfo$Change;->mEndDisplayId:I

    .line 683
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TransitionInfo$Change;->mStartRotation:I

    .line 684
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TransitionInfo$Change;->mEndRotation:I

    .line 685
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TransitionInfo$Change;->mEndFixedRotation:I

    .line 686
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TransitionInfo$Change;->mRotationAnimation:I

    .line 687
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TransitionInfo$Change;->mBackgroundColor:I

    .line 688
    sget-object v0, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl;

    iput-object v0, p0, Landroid/window/TransitionInfo$Change;->mSnapshot:Landroid/view/SurfaceControl;

    .line 689
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/window/TransitionInfo$Change;->mSnapshotLuma:F

    .line 690
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/window/TransitionInfo$Change;->mActivityComponent:Landroid/content/ComponentName;

    .line 691
    sget-object v0, Landroid/window/TransitionInfo$AnimationOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TransitionInfo$AnimationOptions;

    iput-object v0, p0, Landroid/window/TransitionInfo$Change;->mAnimationOptions:Landroid/window/TransitionInfo$AnimationOptions;

    .line 692
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/window/TransitionInfo$Change;->mTaskFragmentToken:Landroid/os/IBinder;

    .line 693
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/window/TransitionInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/window/TransitionInfo$Change;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;)V
    .registers 5
    .param p1, "container"    # Landroid/window/WindowContainerToken;
    .param p2, "leash"    # Landroid/view/SurfaceControl;

    .line 662
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 637
    const/4 v0, 0x0

    iput v0, p0, Landroid/window/TransitionInfo$Change;->mMode:I

    .line 638
    iput v0, p0, Landroid/window/TransitionInfo$Change;->mFlags:I

    .line 639
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/TransitionInfo$Change;->mStartAbsBounds:Landroid/graphics/Rect;

    .line 640
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/TransitionInfo$Change;->mEndAbsBounds:Landroid/graphics/Rect;

    .line 641
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/window/TransitionInfo$Change;->mEndRelOffset:Landroid/graphics/Point;

    .line 642
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/window/TransitionInfo$Change;->mEndParentSize:Landroid/graphics/Point;

    .line 643
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/window/TransitionInfo$Change;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 645
    const/4 v1, -0x1

    iput v1, p0, Landroid/window/TransitionInfo$Change;->mStartDisplayId:I

    .line 646
    iput v1, p0, Landroid/window/TransitionInfo$Change;->mEndDisplayId:I

    .line 647
    iput v1, p0, Landroid/window/TransitionInfo$Change;->mStartRotation:I

    .line 648
    iput v1, p0, Landroid/window/TransitionInfo$Change;->mEndRotation:I

    .line 653
    iput v1, p0, Landroid/window/TransitionInfo$Change;->mEndFixedRotation:I

    .line 654
    iput v1, p0, Landroid/window/TransitionInfo$Change;->mRotationAnimation:I

    .line 656
    iput-object v0, p0, Landroid/window/TransitionInfo$Change;->mSnapshot:Landroid/view/SurfaceControl;

    .line 658
    iput-object v0, p0, Landroid/window/TransitionInfo$Change;->mActivityComponent:Landroid/content/ComponentName;

    .line 659
    iput-object v0, p0, Landroid/window/TransitionInfo$Change;->mAnimationOptions:Landroid/window/TransitionInfo$AnimationOptions;

    .line 660
    iput-object v0, p0, Landroid/window/TransitionInfo$Change;->mTaskFragmentToken:Landroid/os/IBinder;

    .line 663
    iput-object p1, p0, Landroid/window/TransitionInfo$Change;->mContainer:Landroid/window/WindowContainerToken;

    .line 664
    iput-object p2, p0, Landroid/window/TransitionInfo$Change;->mLeash:Landroid/view/SurfaceControl;

    .line 665
    return-void
.end method

.method private blacklist localRemoteCopy()Landroid/window/TransitionInfo$Change;
    .registers 6

    .line 696
    new-instance v0, Landroid/window/TransitionInfo$Change;

    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mContainer:Landroid/window/WindowContainerToken;

    new-instance v2, Landroid/view/SurfaceControl;

    iget-object v3, p0, Landroid/window/TransitionInfo$Change;->mLeash:Landroid/view/SurfaceControl;

    const-string v4, "localRemote"

    invoke-direct {v2, v3, v4}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Landroid/window/TransitionInfo$Change;-><init>(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;)V

    .line 697
    .local v0, "out":Landroid/window/TransitionInfo$Change;
    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mParent:Landroid/window/WindowContainerToken;

    iput-object v1, v0, Landroid/window/TransitionInfo$Change;->mParent:Landroid/window/WindowContainerToken;

    .line 698
    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mLastParent:Landroid/window/WindowContainerToken;

    iput-object v1, v0, Landroid/window/TransitionInfo$Change;->mLastParent:Landroid/window/WindowContainerToken;

    .line 699
    iget v1, p0, Landroid/window/TransitionInfo$Change;->mMode:I

    iput v1, v0, Landroid/window/TransitionInfo$Change;->mMode:I

    .line 700
    iget v1, p0, Landroid/window/TransitionInfo$Change;->mFlags:I

    iput v1, v0, Landroid/window/TransitionInfo$Change;->mFlags:I

    .line 701
    iget-object v1, v0, Landroid/window/TransitionInfo$Change;->mStartAbsBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/window/TransitionInfo$Change;->mStartAbsBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 702
    iget-object v1, v0, Landroid/window/TransitionInfo$Change;->mEndAbsBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/window/TransitionInfo$Change;->mEndAbsBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 703
    iget-object v1, v0, Landroid/window/TransitionInfo$Change;->mEndRelOffset:Landroid/graphics/Point;

    iget-object v2, p0, Landroid/window/TransitionInfo$Change;->mEndRelOffset:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Landroid/graphics/Point;->set(Landroid/graphics/Point;)V

    .line 704
    iget-object v1, v0, Landroid/window/TransitionInfo$Change;->mEndParentSize:Landroid/graphics/Point;

    iget-object v2, p0, Landroid/window/TransitionInfo$Change;->mEndParentSize:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Landroid/graphics/Point;->set(Landroid/graphics/Point;)V

    .line 705
    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object v1, v0, Landroid/window/TransitionInfo$Change;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 706
    iget-boolean v1, p0, Landroid/window/TransitionInfo$Change;->mAllowEnterPip:Z

    iput-boolean v1, v0, Landroid/window/TransitionInfo$Change;->mAllowEnterPip:Z

    .line 707
    iget v1, p0, Landroid/window/TransitionInfo$Change;->mStartDisplayId:I

    iput v1, v0, Landroid/window/TransitionInfo$Change;->mStartDisplayId:I

    .line 708
    iget v1, p0, Landroid/window/TransitionInfo$Change;->mEndDisplayId:I

    iput v1, v0, Landroid/window/TransitionInfo$Change;->mEndDisplayId:I

    .line 709
    iget v1, p0, Landroid/window/TransitionInfo$Change;->mStartRotation:I

    iput v1, v0, Landroid/window/TransitionInfo$Change;->mStartRotation:I

    .line 710
    iget v1, p0, Landroid/window/TransitionInfo$Change;->mEndRotation:I

    iput v1, v0, Landroid/window/TransitionInfo$Change;->mEndRotation:I

    .line 711
    iget v1, p0, Landroid/window/TransitionInfo$Change;->mEndFixedRotation:I

    iput v1, v0, Landroid/window/TransitionInfo$Change;->mEndFixedRotation:I

    .line 712
    iget v1, p0, Landroid/window/TransitionInfo$Change;->mRotationAnimation:I

    iput v1, v0, Landroid/window/TransitionInfo$Change;->mRotationAnimation:I

    .line 713
    iget v1, p0, Landroid/window/TransitionInfo$Change;->mBackgroundColor:I

    iput v1, v0, Landroid/window/TransitionInfo$Change;->mBackgroundColor:I

    .line 714
    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mSnapshot:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_6c

    new-instance v1, Landroid/view/SurfaceControl;

    iget-object v2, p0, Landroid/window/TransitionInfo$Change;->mSnapshot:Landroid/view/SurfaceControl;

    invoke-direct {v1, v2, v4}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    goto :goto_6d

    :cond_6c
    const/4 v1, 0x0

    :goto_6d
    iput-object v1, v0, Landroid/window/TransitionInfo$Change;->mSnapshot:Landroid/view/SurfaceControl;

    .line 715
    iget v1, p0, Landroid/window/TransitionInfo$Change;->mSnapshotLuma:F

    iput v1, v0, Landroid/window/TransitionInfo$Change;->mSnapshotLuma:F

    .line 716
    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mActivityComponent:Landroid/content/ComponentName;

    iput-object v1, v0, Landroid/window/TransitionInfo$Change;->mActivityComponent:Landroid/content/ComponentName;

    .line 717
    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mAnimationOptions:Landroid/window/TransitionInfo$AnimationOptions;

    iput-object v1, v0, Landroid/window/TransitionInfo$Change;->mAnimationOptions:Landroid/window/TransitionInfo$AnimationOptions;

    .line 718
    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mTaskFragmentToken:Landroid/os/IBinder;

    iput-object v1, v0, Landroid/window/TransitionInfo$Change;->mTaskFragmentToken:Landroid/os/IBinder;

    .line 719
    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 1051
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getActivityComponent()Landroid/content/ComponentName;
    .registers 2

    .line 985
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mActivityComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public blacklist getAnimationOptions()Landroid/window/TransitionInfo$AnimationOptions;
    .registers 2

    .line 993
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mAnimationOptions:Landroid/window/TransitionInfo$AnimationOptions;

    return-object v0
.end method

.method public blacklist getBackgroundColor()I
    .registers 2

    .line 968
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mBackgroundColor:I

    return v0
.end method

.method public blacklist getContainer()Landroid/window/WindowContainerToken;
    .registers 2

    .line 844
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mContainer:Landroid/window/WindowContainerToken;

    return-object v0
.end method

.method public blacklist getEndAbsBounds()Landroid/graphics/Rect;
    .registers 2

    .line 902
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mEndAbsBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getEndDisplayId()I
    .registers 2

    .line 942
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mEndDisplayId:I

    return v0
.end method

.method public blacklist getEndFixedRotation()I
    .registers 2

    .line 957
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mEndFixedRotation:I

    return v0
.end method

.method public blacklist getEndParentSize()Landroid/graphics/Point;
    .registers 2

    .line 918
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mEndParentSize:Landroid/graphics/Point;

    return-object v0
.end method

.method public blacklist getEndRelOffset()Landroid/graphics/Point;
    .registers 2

    .line 910
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mEndRelOffset:Landroid/graphics/Point;

    return-object v0
.end method

.method public blacklist getEndRotation()I
    .registers 2

    .line 952
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mEndRotation:I

    return v0
.end method

.method public blacklist getFlags()I
    .registers 2

    .line 874
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mFlags:I

    return v0
.end method

.method public blacklist getLastParent()Landroid/window/WindowContainerToken;
    .registers 2

    .line 864
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mLastParent:Landroid/window/WindowContainerToken;

    return-object v0
.end method

.method public blacklist getLeash()Landroid/view/SurfaceControl;
    .registers 2

    .line 924
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mLeash:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public blacklist getMode()I
    .registers 2

    .line 869
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mMode:I

    return v0
.end method

.method public blacklist getParent()Landroid/window/WindowContainerToken;
    .registers 2

    .line 853
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mParent:Landroid/window/WindowContainerToken;

    return-object v0
.end method

.method public blacklist getRotationAnimation()I
    .registers 2

    .line 962
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mRotationAnimation:I

    return v0
.end method

.method public blacklist getSnapshot()Landroid/view/SurfaceControl;
    .registers 2

    .line 974
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mSnapshot:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public blacklist getSnapshotLuma()F
    .registers 2

    .line 979
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mSnapshotLuma:F

    return v0
.end method

.method public blacklist getStartAbsBounds()Landroid/graphics/Rect;
    .registers 2

    .line 893
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mStartAbsBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getStartDisplayId()I
    .registers 2

    .line 938
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mStartDisplayId:I

    return v0
.end method

.method public blacklist getStartRotation()I
    .registers 2

    .line 947
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mStartRotation:I

    return v0
.end method

.method public blacklist getTaskFragmentToken()Landroid/os/IBinder;
    .registers 2

    .line 1002
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mTaskFragmentToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 2

    .line 930
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    return-object v0
.end method

.method public blacklist hasAllFlags(I)Z
    .registers 3
    .param p1, "flags"    # I

    .line 884
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public blacklist hasFlags(I)Z
    .registers 3
    .param p1, "flags"    # I

    .line 879
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mFlags:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public blacklist isAllowEnterPip()Z
    .registers 2

    .line 934
    iget-boolean v0, p0, Landroid/window/TransitionInfo$Change;->mAllowEnterPip:Z

    return v0
.end method

.method public blacklist setActivityComponent(Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 823
    iput-object p1, p0, Landroid/window/TransitionInfo$Change;->mActivityComponent:Landroid/content/ComponentName;

    .line 824
    return-void
.end method

.method public blacklist setAllowEnterPip(Z)V
    .registers 2
    .param p1, "allowEnterPip"    # Z

    .line 782
    iput-boolean p1, p0, Landroid/window/TransitionInfo$Change;->mAllowEnterPip:Z

    .line 783
    return-void
.end method

.method public blacklist setAnimationOptions(Landroid/window/TransitionInfo$AnimationOptions;)V
    .registers 2
    .param p1, "options"    # Landroid/window/TransitionInfo$AnimationOptions;

    .line 830
    iput-object p1, p0, Landroid/window/TransitionInfo$Change;->mAnimationOptions:Landroid/window/TransitionInfo$AnimationOptions;

    .line 831
    return-void
.end method

.method public blacklist setBackgroundColor(I)V
    .registers 2
    .param p1, "backgroundColor"    # I

    .line 812
    iput p1, p0, Landroid/window/TransitionInfo$Change;->mBackgroundColor:I

    .line 813
    return-void
.end method

.method public blacklist setDisplayId(II)V
    .registers 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 787
    iput p1, p0, Landroid/window/TransitionInfo$Change;->mStartDisplayId:I

    .line 788
    iput p2, p0, Landroid/window/TransitionInfo$Change;->mEndDisplayId:I

    .line 789
    return-void
.end method

.method public blacklist setEndAbsBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 757
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mEndAbsBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 758
    return-void
.end method

.method public blacklist setEndFixedRotation(I)V
    .registers 2
    .param p1, "endFixedRotation"    # I

    .line 799
    iput p1, p0, Landroid/window/TransitionInfo$Change;->mEndFixedRotation:I

    .line 800
    return-void
.end method

.method public blacklist setEndParentSize(II)V
    .registers 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 769
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mEndParentSize:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 770
    return-void
.end method

.method public blacklist setEndRelOffset(II)V
    .registers 4
    .param p1, "left"    # I
    .param p2, "top"    # I

    .line 762
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mEndRelOffset:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 763
    return-void
.end method

.method public blacklist setFlags(I)V
    .registers 2
    .param p1, "flags"    # I

    .line 747
    iput p1, p0, Landroid/window/TransitionInfo$Change;->mFlags:I

    .line 748
    return-void
.end method

.method public blacklist setLastParent(Landroid/window/WindowContainerToken;)V
    .registers 2
    .param p1, "lastParent"    # Landroid/window/WindowContainerToken;

    .line 732
    iput-object p1, p0, Landroid/window/TransitionInfo$Change;->mLastParent:Landroid/window/WindowContainerToken;

    .line 733
    return-void
.end method

.method public blacklist setLeash(Landroid/view/SurfaceControl;)V
    .registers 3
    .param p1, "leash"    # Landroid/view/SurfaceControl;

    .line 737
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl;

    iput-object v0, p0, Landroid/window/TransitionInfo$Change;->mLeash:Landroid/view/SurfaceControl;

    .line 738
    return-void
.end method

.method public blacklist setMode(I)V
    .registers 2
    .param p1, "mode"    # I

    .line 742
    iput p1, p0, Landroid/window/TransitionInfo$Change;->mMode:I

    .line 743
    return-void
.end method

.method public blacklist setParent(Landroid/window/WindowContainerToken;)V
    .registers 2
    .param p1, "parent"    # Landroid/window/WindowContainerToken;

    .line 724
    iput-object p1, p0, Landroid/window/TransitionInfo$Change;->mParent:Landroid/window/WindowContainerToken;

    .line 725
    return-void
.end method

.method public blacklist setRotation(II)V
    .registers 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 793
    iput p1, p0, Landroid/window/TransitionInfo$Change;->mStartRotation:I

    .line 794
    iput p2, p0, Landroid/window/TransitionInfo$Change;->mEndRotation:I

    .line 795
    return-void
.end method

.method public blacklist setRotationAnimation(I)V
    .registers 2
    .param p1, "anim"    # I

    .line 807
    iput p1, p0, Landroid/window/TransitionInfo$Change;->mRotationAnimation:I

    .line 808
    return-void
.end method

.method public blacklist setSnapshot(Landroid/view/SurfaceControl;F)V
    .registers 3
    .param p1, "snapshot"    # Landroid/view/SurfaceControl;
    .param p2, "luma"    # F

    .line 817
    iput-object p1, p0, Landroid/window/TransitionInfo$Change;->mSnapshot:Landroid/view/SurfaceControl;

    .line 818
    iput p2, p0, Landroid/window/TransitionInfo$Change;->mSnapshotLuma:F

    .line 819
    return-void
.end method

.method public blacklist setStartAbsBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 752
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mStartAbsBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 753
    return-void
.end method

.method public blacklist setTaskFragmentToken(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 838
    iput-object p1, p0, Landroid/window/TransitionInfo$Change;->mTaskFragmentToken:Landroid/os/IBinder;

    .line 839
    return-void
.end method

.method public blacklist setTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 2
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 777
    iput-object p1, p0, Landroid/window/TransitionInfo$Change;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 778
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 1056
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1057
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1058
    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mContainer:Landroid/window/WindowContainerToken;

    if-eqz v1, :cond_22

    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mContainer:Landroid/window/WindowContainerToken;

    invoke-virtual {v1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    instance-of v1, v1, Landroid/os/BinderProxy;

    if-nez v1, :cond_22

    .line 1060
    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mContainer:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1061
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1063
    :cond_22
    const-string v1, "m="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/window/TransitionInfo$Change;->mMode:I

    invoke-static {v1}, Landroid/window/TransitionInfo;->modeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1064
    const-string v1, " f="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/window/TransitionInfo$Change;->mFlags:I

    invoke-static {v1}, Landroid/window/TransitionInfo;->flagsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1065
    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mParent:Landroid/window/WindowContainerToken;

    if-eqz v1, :cond_4c

    .line 1066
    const-string v1, " p="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mParent:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1068
    :cond_4c
    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_5a

    .line 1069
    const-string v1, " leash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1071
    :cond_5a
    const-string v1, " sb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mStartAbsBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1072
    const-string v1, " eb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mEndAbsBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1073
    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mEndRelOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    if-nez v1, :cond_7a

    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mEndRelOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-eqz v1, :cond_84

    .line 1074
    :cond_7a
    const-string v1, " eo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mEndRelOffset:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1076
    :cond_84
    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mEndParentSize:Landroid/graphics/Point;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Point;->equals(II)Z

    move-result v1

    if-nez v1, :cond_98

    .line 1077
    const-string v1, " epz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/TransitionInfo$Change;->mEndParentSize:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1079
    :cond_98
    const-string v1, " d="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1080
    iget v1, p0, Landroid/window/TransitionInfo$Change;->mStartDisplayId:I

    iget v2, p0, Landroid/window/TransitionInfo$Change;->mEndDisplayId:I

    const-string v3, "->"

    if-eq v1, v2, :cond_ae

    .line 1081
    iget v1, p0, Landroid/window/TransitionInfo$Change;->mStartDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1083
    :cond_ae
    iget v1, p0, Landroid/window/TransitionInfo$Change;->mEndDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1084
    iget v1, p0, Landroid/window/TransitionInfo$Change;->mStartRotation:I

    iget v2, p0, Landroid/window/TransitionInfo$Change;->mEndRotation:I

    if-eq v1, v2, :cond_d5

    .line 1085
    const-string v1, " r="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/window/TransitionInfo$Change;->mStartRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1086
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/window/TransitionInfo$Change;->mEndRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1087
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/window/TransitionInfo$Change;->mRotationAnimation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1089
    :cond_d5
    iget v1, p0, Landroid/window/TransitionInfo$Change;->mEndFixedRotation:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_e4

    .line 1090
    const-string v1, " endFixedRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/window/TransitionInfo$Change;->mEndFixedRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1092
    :cond_e4
    iget v1, p0, Landroid/window/TransitionInfo$Change;->mBackgroundColor:I

    if-eqz v1, :cond_f7

    .line 1093
    const-string v1, " bc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/window/TransitionInfo$Change;->mBackgroundColor:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1095
    :cond_f7
    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mSnapshot:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_105

    .line 1096
    const-string v1, " snapshot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mSnapshot:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1098
    :cond_105
    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mLastParent:Landroid/window/WindowContainerToken;

    if-eqz v1, :cond_113

    .line 1099
    const-string v1, " lastParent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mLastParent:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1101
    :cond_113
    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mActivityComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_125

    .line 1102
    const-string v1, " component="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1103
    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1105
    :cond_125
    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v1, :cond_135

    .line 1106
    const-string v1, " taskParent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1107
    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->parentTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1109
    :cond_135
    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mAnimationOptions:Landroid/window/TransitionInfo$AnimationOptions;

    if-eqz v1, :cond_144

    .line 1110
    const-string v1, " opt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/TransitionInfo$Change;->mAnimationOptions:Landroid/window/TransitionInfo$AnimationOptions;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1112
    :cond_144
    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mTaskFragmentToken:Landroid/os/IBinder;

    if-eqz v1, :cond_153

    .line 1113
    const-string v1, " taskFragmentToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/TransitionInfo$Change;->mTaskFragmentToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1115
    :cond_153
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1116
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1008
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mContainer:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1009
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mParent:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1010
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mLastParent:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1011
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1012
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1013
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1014
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mStartAbsBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1015
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mEndAbsBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1016
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mEndRelOffset:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1017
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mEndParentSize:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1018
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1019
    iget-boolean v0, p0, Landroid/window/TransitionInfo$Change;->mAllowEnterPip:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1020
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mStartDisplayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1021
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mEndDisplayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1022
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mStartRotation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1023
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mEndRotation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1024
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mEndFixedRotation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1025
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mRotationAnimation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1026
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1027
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mSnapshot:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1028
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mSnapshotLuma:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1029
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1030
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mAnimationOptions:Landroid/window/TransitionInfo$AnimationOptions;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1031
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mTaskFragmentToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1032
    return-void
.end method
