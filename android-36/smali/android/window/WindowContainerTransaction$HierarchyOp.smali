.class public final Landroid/window/WindowContainerTransaction$HierarchyOp;
.super Ljava/lang/Object;
.source "WindowContainerTransaction.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/WindowContainerTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HierarchyOp"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;,
        Landroid/window/WindowContainerTransaction$HierarchyOp$HierarchyOpType;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/WindowContainerTransaction$HierarchyOp;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist HIERARCHY_OP_TYPE_ADD_INSETS_FRAME_PROVIDER:I = 0xa

.field public static final blacklist HIERARCHY_OP_TYPE_ADD_TASK_FRAGMENT_OPERATION:I = 0x11

.field public static final blacklist HIERARCHY_OP_TYPE_APP_COMPAT_REACHABILITY:I = 0x19

.field public static final blacklist HIERARCHY_OP_TYPE_CHILDREN_TASKS_REPARENT:I = 0x2

.field public static final blacklist HIERARCHY_OP_TYPE_CLEAR_ADJACENT_ROOTS:I = 0xf

.field public static final blacklist HIERARCHY_OP_TYPE_FINISH_ACTIVITY:I = 0xe

.field public static final blacklist HIERARCHY_OP_TYPE_LAUNCH_TASK:I = 0x5

.field public static final blacklist HIERARCHY_OP_TYPE_MOVE_PIP_ACTIVITY_TO_PINNED_TASK:I = 0x12

.field public static final blacklist HIERARCHY_OP_TYPE_PENDING_INTENT:I = 0x7

.field public static final blacklist HIERARCHY_OP_TYPE_REMOVE_INSETS_FRAME_PROVIDER:I = 0xb

.field public static final blacklist HIERARCHY_OP_TYPE_REMOVE_ROOT_TASK:I = 0x18

.field public static final blacklist HIERARCHY_OP_TYPE_REMOVE_TASK:I = 0xd

.field public static final blacklist HIERARCHY_OP_TYPE_REORDER:I = 0x1

.field public static final blacklist HIERARCHY_OP_TYPE_REPARENT:I = 0x0

.field public static final blacklist HIERARCHY_OP_TYPE_RESTORE_BACK_NAVIGATION:I = 0x14

.field public static final blacklist HIERARCHY_OP_TYPE_RESTORE_TRANSIENT_ORDER:I = 0x9

.field public static final blacklist HIERARCHY_OP_TYPE_SET_ADJACENT_ROOTS:I = 0x4

.field public static final blacklist HIERARCHY_OP_TYPE_SET_ALWAYS_ON_TOP:I = 0xc

.field public static final blacklist HIERARCHY_OP_TYPE_SET_DISABLE_LAUNCH_ADJACENT:I = 0x17

.field public static final blacklist HIERARCHY_OP_TYPE_SET_EXCLUDE_INSETS_TYPES:I = 0x15

.field public static final blacklist HIERARCHY_OP_TYPE_SET_IS_TRIMMABLE:I = 0x13

.field public static final blacklist HIERARCHY_OP_TYPE_SET_KEYGUARD_STATE:I = 0x16

.field public static final blacklist HIERARCHY_OP_TYPE_SET_LAUNCH_ADJACENT_FLAG_ROOT:I = 0x6

.field public static final blacklist HIERARCHY_OP_TYPE_SET_LAUNCH_ROOT:I = 0x3

.field public static final blacklist HIERARCHY_OP_TYPE_SET_REPARENT_LEAF_TASK_IF_RELAUNCH:I = 0x10

.field public static final blacklist HIERARCHY_OP_TYPE_SET_SAFE_REGION_BOUNDS:I = 0x1a

.field public static final blacklist HIERARCHY_OP_TYPE_START_SHORTCUT:I = 0x8

.field public static final blacklist LAUNCH_KEY_SHORTCUT_CALLING_PACKAGE:Ljava/lang/String; = "android:transaction.hop.shortcut_calling_package"

.field public static final blacklist LAUNCH_KEY_TASK_ID:Ljava/lang/String; = "android:transaction.hop.taskId"

.field public static final blacklist REACHABILITY_EVENT_X:Ljava/lang/String; = "android:transaction.reachability_x"

.field public static final blacklist REACHABILITY_EVENT_Y:Ljava/lang/String; = "android:transaction.reachability_y"


# instance fields
.field private blacklist mActivityIntent:Landroid/content/Intent;

.field private blacklist mActivityTypes:[I

.field private blacklist mAlwaysOnTop:Z

.field private blacklist mAppCompatOptions:Landroid/os/Bundle;

.field private blacklist mBounds:Landroid/graphics/Rect;

.field private blacklist mContainer:Landroid/os/IBinder;

.field private blacklist mContainers:[Landroid/os/IBinder;

.field private blacklist mExcludeInsetsTypes:I

.field private blacklist mIncludingParents:Z

.field private blacklist mInsetsFrameOwner:Landroid/os/IBinder;

.field private blacklist mInsetsFrameProvider:Landroid/view/InsetsFrameProvider;

.field private blacklist mIsTrimmableFromRecents:Z

.field private blacklist mKeyguardState:Landroid/window/KeyguardState;

.field private blacklist mLaunchAdjacentDisabled:Z

.field private blacklist mLaunchOptions:Landroid/os/Bundle;

.field private blacklist mPendingIntent:Landroid/app/PendingIntent;

.field private blacklist mReparent:Landroid/os/IBinder;

.field private blacklist mReparentLeafTaskIfRelaunch:Z

.field private blacklist mReparentTopOnly:Z

.field private blacklist mSafeRegionBounds:Landroid/graphics/Rect;

.field private blacklist mShortcutInfo:Landroid/content/pm/ShortcutInfo;

.field private blacklist mTaskFragmentOperation:Landroid/window/TaskFragmentOperation;

.field private blacklist mToTop:Z

.field private final blacklist mType:I

.field private blacklist mWindowingModes:[I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmActivityIntent(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/content/Intent;)V
    .registers 2

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mActivityIntent:Landroid/content/Intent;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmActivityTypes(Landroid/window/WindowContainerTransaction$HierarchyOp;[I)V
    .registers 2

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mActivityTypes:[I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAlwaysOnTop(Landroid/window/WindowContainerTransaction$HierarchyOp;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mAlwaysOnTop:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAppCompatOptions(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/os/Bundle;)V
    .registers 2

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mAppCompatOptions:Landroid/os/Bundle;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBounds(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/graphics/Rect;)V
    .registers 2

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mBounds:Landroid/graphics/Rect;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmContainer(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/os/IBinder;)V
    .registers 2

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmContainers(Landroid/window/WindowContainerTransaction$HierarchyOp;[Landroid/os/IBinder;)V
    .registers 2

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainers:[Landroid/os/IBinder;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmExcludeInsetsTypes(Landroid/window/WindowContainerTransaction$HierarchyOp;I)V
    .registers 2

    iput p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mExcludeInsetsTypes:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIncludingParents(Landroid/window/WindowContainerTransaction$HierarchyOp;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mIncludingParents:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmInsetsFrameOwner(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/os/IBinder;)V
    .registers 2

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mInsetsFrameOwner:Landroid/os/IBinder;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmInsetsFrameProvider(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/view/InsetsFrameProvider;)V
    .registers 2

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mInsetsFrameProvider:Landroid/view/InsetsFrameProvider;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsTrimmableFromRecents(Landroid/window/WindowContainerTransaction$HierarchyOp;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mIsTrimmableFromRecents:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmKeyguardState(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/window/KeyguardState;)V
    .registers 2

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mKeyguardState:Landroid/window/KeyguardState;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLaunchAdjacentDisabled(Landroid/window/WindowContainerTransaction$HierarchyOp;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mLaunchAdjacentDisabled:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLaunchOptions(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/os/Bundle;)V
    .registers 2

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mLaunchOptions:Landroid/os/Bundle;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPendingIntent(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/app/PendingIntent;)V
    .registers 2

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mPendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmReparent(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/os/IBinder;)V
    .registers 2

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparent:Landroid/os/IBinder;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmReparentLeafTaskIfRelaunch(Landroid/window/WindowContainerTransaction$HierarchyOp;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparentLeafTaskIfRelaunch:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmReparentTopOnly(Landroid/window/WindowContainerTransaction$HierarchyOp;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparentTopOnly:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSafeRegionBounds(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/graphics/Rect;)V
    .registers 2

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mSafeRegionBounds:Landroid/graphics/Rect;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmShortcutInfo(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/content/pm/ShortcutInfo;)V
    .registers 2

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTaskFragmentOperation(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/window/TaskFragmentOperation;)V
    .registers 2

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mTaskFragmentOperation:Landroid/window/TaskFragmentOperation;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmToTop(Landroid/window/WindowContainerTransaction$HierarchyOp;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mToTop:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmWindowingModes(Landroid/window/WindowContainerTransaction$HierarchyOp;[I)V
    .registers 2

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mWindowingModes:[I

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 2297
    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$1;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction$HierarchyOp$1;-><init>()V

    sput-object v0, Landroid/window/WindowContainerTransaction$HierarchyOp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(I)V
    .registers 2
    .param p1, "type"    # I

    .line 1929
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1930
    iput p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mType:I

    .line 1931
    return-void
.end method

.method synthetic constructor blacklist <init>(ILandroid/window/WindowContainerTransaction-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;-><init>(I)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1961
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1962
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mType:I

    .line 1963
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    .line 1964
    invoke-virtual {p1}, Landroid/os/Parcel;->createBinderArray()[Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainers:[Landroid/os/IBinder;

    .line 1965
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mBounds:Landroid/graphics/Rect;

    .line 1966
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mIncludingParents:Z

    .line 1967
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparent:Landroid/os/IBinder;

    .line 1968
    sget-object v0, Landroid/view/InsetsFrameProvider;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InsetsFrameProvider;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mInsetsFrameProvider:Landroid/view/InsetsFrameProvider;

    .line 1969
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mInsetsFrameOwner:Landroid/os/IBinder;

    .line 1970
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mToTop:Z

    .line 1971
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparentTopOnly:Z

    .line 1972
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mWindowingModes:[I

    .line 1973
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mActivityTypes:[I

    .line 1974
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mLaunchOptions:Landroid/os/Bundle;

    .line 1975
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mAppCompatOptions:Landroid/os/Bundle;

    .line 1976
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mActivityIntent:Landroid/content/Intent;

    .line 1977
    sget-object v0, Landroid/window/TaskFragmentOperation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TaskFragmentOperation;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mTaskFragmentOperation:Landroid/window/TaskFragmentOperation;

    .line 1978
    sget-object v0, Landroid/window/KeyguardState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/KeyguardState;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mKeyguardState:Landroid/window/KeyguardState;

    .line 1979
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mPendingIntent:Landroid/app/PendingIntent;

    .line 1980
    sget-object v0, Landroid/content/pm/ShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 1981
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mAlwaysOnTop:Z

    .line 1982
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparentLeafTaskIfRelaunch:Z

    .line 1983
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mIsTrimmableFromRecents:Z

    .line 1984
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mExcludeInsetsTypes:I

    .line 1985
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mLaunchAdjacentDisabled:Z

    .line 1986
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mSafeRegionBounds:Landroid/graphics/Rect;

    .line 1987
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/window/WindowContainerTransaction-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/window/WindowContainerTransaction$HierarchyOp;)V
    .registers 3
    .param p1, "copy"    # Landroid/window/WindowContainerTransaction$HierarchyOp;

    .line 1933
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1934
    iget v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mType:I

    iput v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mType:I

    .line 1935
    iget-object v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    .line 1936
    iget-object v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainers:[Landroid/os/IBinder;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainers:[Landroid/os/IBinder;

    .line 1937
    iget-object v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mBounds:Landroid/graphics/Rect;

    .line 1938
    iget-boolean v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mIncludingParents:Z

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mIncludingParents:Z

    .line 1939
    iget-object v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparent:Landroid/os/IBinder;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparent:Landroid/os/IBinder;

    .line 1940
    iget-object v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mInsetsFrameProvider:Landroid/view/InsetsFrameProvider;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mInsetsFrameProvider:Landroid/view/InsetsFrameProvider;

    .line 1941
    iget-object v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mInsetsFrameOwner:Landroid/os/IBinder;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mInsetsFrameOwner:Landroid/os/IBinder;

    .line 1942
    iget-boolean v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mToTop:Z

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mToTop:Z

    .line 1943
    iget-boolean v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparentTopOnly:Z

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparentTopOnly:Z

    .line 1944
    iget-object v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mWindowingModes:[I

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mWindowingModes:[I

    .line 1945
    iget-object v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mActivityTypes:[I

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mActivityTypes:[I

    .line 1946
    iget-object v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mLaunchOptions:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mLaunchOptions:Landroid/os/Bundle;

    .line 1947
    iget-object v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mAppCompatOptions:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mAppCompatOptions:Landroid/os/Bundle;

    .line 1948
    iget-object v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mActivityIntent:Landroid/content/Intent;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mActivityIntent:Landroid/content/Intent;

    .line 1949
    iget-object v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mTaskFragmentOperation:Landroid/window/TaskFragmentOperation;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mTaskFragmentOperation:Landroid/window/TaskFragmentOperation;

    .line 1950
    iget-object v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mKeyguardState:Landroid/window/KeyguardState;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mKeyguardState:Landroid/window/KeyguardState;

    .line 1951
    iget-object v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mPendingIntent:Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mPendingIntent:Landroid/app/PendingIntent;

    .line 1952
    iget-object v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 1953
    iget-boolean v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mAlwaysOnTop:Z

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mAlwaysOnTop:Z

    .line 1954
    iget-boolean v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparentLeafTaskIfRelaunch:Z

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparentLeafTaskIfRelaunch:Z

    .line 1955
    iget-boolean v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mIsTrimmableFromRecents:Z

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mIsTrimmableFromRecents:Z

    .line 1956
    iget v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mExcludeInsetsTypes:I

    iput v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mExcludeInsetsTypes:I

    .line 1957
    iget-boolean v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mLaunchAdjacentDisabled:Z

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mLaunchAdjacentDisabled:Z

    .line 1958
    iget-object v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mSafeRegionBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mSafeRegionBounds:Landroid/graphics/Rect;

    .line 1959
    return-void
.end method

.method public static blacklist createForAdjacentRoots(Landroid/os/IBinder;Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp;
    .registers 4
    .param p0, "root1"    # Landroid/os/IBinder;
    .param p1, "root2"    # Landroid/os/IBinder;

    .line 1815
    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    .line 1816
    invoke-virtual {v0, p0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 1817
    invoke-virtual {v0, p1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setReparentContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 1818
    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v0

    .line 1815
    return-object v0
.end method

.method public static blacklist createForChildrenTasksReparent(Landroid/os/IBinder;Landroid/os/IBinder;[I[IZZ)Landroid/window/WindowContainerTransaction$HierarchyOp;
    .registers 8
    .param p0, "currentParent"    # Landroid/os/IBinder;
    .param p1, "newParent"    # Landroid/os/IBinder;
    .param p2, "windowingModes"    # [I
    .param p3, "activityTypes"    # [I
    .param p4, "onTop"    # Z
    .param p5, "reparentTopOnly"    # Z

    .line 1790
    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    .line 1791
    invoke-virtual {v0, p0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 1792
    invoke-virtual {v0, p1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setReparentContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 1793
    invoke-virtual {v0, p2}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setWindowingModes([I)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 1794
    invoke-virtual {v0, p3}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setActivityTypes([I)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 1795
    invoke-virtual {v0, p4}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setToTop(Z)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 1796
    invoke-virtual {v0, p5}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setReparentTopOnly(Z)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 1797
    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v0

    .line 1790
    return-object v0
.end method

.method public static blacklist createForClearAdjacentRoots(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp;
    .registers 3
    .param p0, "root"    # Landroid/os/IBinder;

    .line 1887
    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    .line 1888
    invoke-virtual {v0, p0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 1889
    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v0

    .line 1887
    return-object v0
.end method

.method public static blacklist createForReachability(Landroid/os/IBinder;III)Landroid/window/WindowContainerTransaction$HierarchyOp;
    .registers 7
    .param p0, "container"    # Landroid/os/IBinder;
    .param p1, "taskId"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 1896
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1897
    .local v0, "appCompatOptions":Landroid/os/Bundle;
    const-string v1, "android:transaction.hop.taskId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1898
    const-string v1, "android:transaction.reachability_x"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1899
    const-string v1, "android:transaction.reachability_y"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1900
    new-instance v1, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/16 v2, 0x19

    invoke-direct {v1, v2}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    .line 1901
    invoke-virtual {v1, v0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setAppCompatOptions(Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v1

    .line 1902
    invoke-virtual {v1, p0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v1

    .line 1903
    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v1

    .line 1900
    return-object v1
.end method

.method public static blacklist createForRemoveRootTask(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp;
    .registers 3
    .param p0, "container"    # Landroid/os/IBinder;

    .line 1879
    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    .line 1880
    invoke-virtual {v0, p0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 1881
    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v0

    .line 1879
    return-object v0
.end method

.method public static blacklist createForRemoveTask(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp;
    .registers 3
    .param p0, "container"    # Landroid/os/IBinder;

    .line 1867
    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    .line 1868
    invoke-virtual {v0, p0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 1869
    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v0

    .line 1867
    return-object v0
.end method

.method public static blacklist createForReorder(Landroid/os/IBinder;ZZ)Landroid/window/WindowContainerTransaction$HierarchyOp;
    .registers 5
    .param p0, "container"    # Landroid/os/IBinder;
    .param p1, "toTop"    # Z
    .param p2, "includingParents"    # Z

    .line 1777
    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    .line 1778
    invoke-virtual {v0, p0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 1779
    invoke-virtual {v0, p0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setReparentContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 1780
    invoke-virtual {v0, p1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setToTop(Z)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 1781
    invoke-virtual {v0, p2}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setIncludingParents(Z)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 1782
    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v0

    .line 1777
    return-object v0
.end method

.method public static blacklist createForReparent(Landroid/os/IBinder;Landroid/os/IBinder;Z)Landroid/window/WindowContainerTransaction$HierarchyOp;
    .registers 5
    .param p0, "container"    # Landroid/os/IBinder;
    .param p1, "reparent"    # Landroid/os/IBinder;
    .param p2, "toTop"    # Z

    .line 1758
    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    .line 1759
    invoke-virtual {v0, p0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 1760
    invoke-virtual {v0, p1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setReparentContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 1761
    invoke-virtual {v0, p2}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setToTop(Z)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 1762
    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v0

    .line 1758
    return-object v0
.end method

.method public static blacklist createForSetDisableLaunchAdjacent(Landroid/os/IBinder;Z)Landroid/window/WindowContainerTransaction$HierarchyOp;
    .registers 4
    .param p0, "container"    # Landroid/os/IBinder;
    .param p1, "disabled"    # Z

    .line 1858
    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    .line 1859
    invoke-virtual {v0, p0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 1860
    invoke-virtual {v0, p1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setLaunchAdjacentDisabled(Z)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 1861
    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v0

    .line 1858
    return-object v0
.end method

.method public static blacklist createForSetLaunchAdjacentFlagRoot(Landroid/os/IBinder;Z)Landroid/window/WindowContainerTransaction$HierarchyOp;
    .registers 4
    .param p0, "container"    # Landroid/os/IBinder;
    .param p1, "clearRoot"    # Z

    .line 1848
    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    .line 1849
    invoke-virtual {v0, p0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 1850
    invoke-virtual {v0, p1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setToTop(Z)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 1851
    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v0

    .line 1848
    return-object v0
.end method

.method public static blacklist createForSetLaunchRoot(Landroid/os/IBinder;[I[I)Landroid/window/WindowContainerTransaction$HierarchyOp;
    .registers 5
    .param p0, "container"    # Landroid/os/IBinder;
    .param p1, "windowingModes"    # [I
    .param p2, "activityTypes"    # [I

    .line 1804
    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    .line 1805
    invoke-virtual {v0, p0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 1806
    invoke-virtual {v0, p1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setWindowingModes([I)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 1807
    invoke-virtual {v0, p2}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setActivityTypes([I)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 1808
    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v0

    .line 1804
    return-object v0
.end method

.method public static blacklist createForSetSafeRegionBounds(Landroid/os/IBinder;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction$HierarchyOp;
    .registers 4
    .param p0, "container"    # Landroid/os/IBinder;
    .param p1, "safeRegionBounds"    # Landroid/graphics/Rect;

    .line 1922
    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/16 v1, 0x1a

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    .line 1923
    invoke-virtual {v0, p0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 1924
    invoke-virtual {v0, p1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setSafeRegionBounds(Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 1925
    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v0

    .line 1922
    return-object v0
.end method

.method public static blacklist createForSetTaskTrimmableFromRecents(Landroid/os/IBinder;Z)Landroid/window/WindowContainerTransaction$HierarchyOp;
    .registers 4
    .param p0, "container"    # Landroid/os/IBinder;
    .param p1, "isTrimmableFromRecents"    # Z

    .line 1911
    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    .line 1912
    invoke-virtual {v0, p0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 1913
    invoke-virtual {v0, p1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setIsTrimmableFromRecents(Z)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 1914
    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v0

    .line 1911
    return-object v0
.end method

.method public static blacklist createForStartShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction$HierarchyOp;
    .registers 6
    .param p0, "callingPackage"    # Ljava/lang/String;
    .param p1, "shortcutInfo"    # Landroid/content/pm/ShortcutInfo;
    .param p2, "options"    # Landroid/os/Bundle;

    .line 1836
    if-nez p2, :cond_8

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_9

    :cond_8
    move-object v0, p2

    .line 1837
    .local v0, "fullOptions":Landroid/os/Bundle;
    :goto_9
    const-string v1, "android:transaction.hop.shortcut_calling_package"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1838
    new-instance v1, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    .line 1839
    invoke-virtual {v1, p1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setShortcutInfo(Landroid/content/pm/ShortcutInfo;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v1

    .line 1840
    invoke-virtual {v1, v0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setLaunchOptions(Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v1

    .line 1841
    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v1

    .line 1838
    return-object v1
.end method

.method public static blacklist createForTaskLaunch(ILandroid/os/Bundle;)Landroid/window/WindowContainerTransaction$HierarchyOp;
    .registers 5
    .param p0, "taskId"    # I
    .param p1, "options"    # Landroid/os/Bundle;

    .line 1824
    if-nez p1, :cond_8

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_9

    :cond_8
    move-object v0, p1

    .line 1825
    .local v0, "fullOptions":Landroid/os/Bundle;
    :goto_9
    const-string v1, "android:transaction.hop.taskId"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1826
    new-instance v1, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    .line 1827
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setToTop(Z)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v1

    .line 1828
    invoke-virtual {v1, v0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setLaunchOptions(Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v1

    .line 1829
    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v1

    .line 1826
    return-object v1
.end method

.method public static blacklist hopToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "type"    # I

    .line 2116
    packed-switch p0, :pswitch_data_7e

    .line 2148
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HOP("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2147
    :pswitch_1d
    const-string/jumbo v0, "setSafeRegionBounds"

    return-object v0

    .line 2134
    :pswitch_21
    const-string/jumbo v0, "removeRootTask"

    return-object v0

    .line 2125
    :pswitch_25
    const-string/jumbo v0, "setDisableLaunchAdjacent"

    return-object v0

    .line 2146
    :pswitch_29
    const-string/jumbo v0, "setKeyguardState"

    return-object v0

    .line 2145
    :pswitch_2d
    const-string/jumbo v0, "setExcludeInsetsTypes"

    return-object v0

    .line 2144
    :pswitch_31
    const-string/jumbo v0, "restoreBackNav"

    return-object v0

    .line 2143
    :pswitch_35
    const-string/jumbo v0, "setIsTrimmable"

    return-object v0

    .line 2142
    :pswitch_39
    const-string v0, "movePipActivityToPinnedTask"

    return-object v0

    .line 2140
    :pswitch_3c
    const-string v0, "addTaskFragmentOperation"

    return-object v0

    .line 2138
    :pswitch_3f
    const-string/jumbo v0, "setReparentLeafTaskIfRelaunch"

    return-object v0

    .line 2136
    :pswitch_43
    const-string v0, "clearAdjacentRoots"

    return-object v0

    .line 2135
    :pswitch_46
    const-string v0, "finishActivity"

    return-object v0

    .line 2133
    :pswitch_49
    const-string/jumbo v0, "removeTask"

    return-object v0

    .line 2132
    :pswitch_4d
    const-string/jumbo v0, "setAlwaysOnTop"

    return-object v0

    .line 2131
    :pswitch_51
    const-string/jumbo v0, "removeInsetsFrameProvider"

    return-object v0

    .line 2129
    :pswitch_55
    const-string v0, "addInsetsFrameProvider"

    return-object v0

    .line 2128
    :pswitch_58
    const-string/jumbo v0, "restoreTransientOrder"

    return-object v0

    .line 2127
    :pswitch_5c
    const-string/jumbo v0, "startShortcut"

    return-object v0

    .line 2126
    :pswitch_60
    const-string v0, "pendingIntent"

    return-object v0

    .line 2123
    :pswitch_63
    const-string/jumbo v0, "setAdjacentFlagRoot"

    return-object v0

    .line 2122
    :pswitch_67
    const-string v0, "launchTask"

    return-object v0

    .line 2121
    :pswitch_6a
    const-string/jumbo v0, "setAdjacentRoots"

    return-object v0

    .line 2120
    :pswitch_6e
    const-string/jumbo v0, "setLaunchRoot"

    return-object v0

    .line 2119
    :pswitch_72
    const-string v0, "childrenTasksReparent"

    return-object v0

    .line 2118
    :pswitch_75
    const-string/jumbo v0, "reorder"

    return-object v0

    .line 2117
    :pswitch_79
    const-string/jumbo v0, "reparent"

    return-object v0

    nop

    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_79
        :pswitch_75
        :pswitch_72
        :pswitch_6e
        :pswitch_6a
        :pswitch_67
        :pswitch_63
        :pswitch_60
        :pswitch_5c
        :pswitch_58
        :pswitch_55
        :pswitch_51
        :pswitch_4d
        :pswitch_49
        :pswitch_46
        :pswitch_43
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_35
        :pswitch_31
        :pswitch_2d
        :pswitch_29
        :pswitch_25
        :pswitch_21
        :pswitch_3
        :pswitch_1d
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 2294
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getActivityIntent()Landroid/content/Intent;
    .registers 2

    .line 2053
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mActivityIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public blacklist getActivityTypes()[I
    .registers 2

    .line 2038
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mActivityTypes:[I

    return-object v0
.end method

.method public blacklist getAppCompatOptions()Landroid/os/Bundle;
    .registers 2

    .line 2048
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mAppCompatOptions:Landroid/os/Bundle;

    return-object v0
.end method

.method public blacklist getBounds()Landroid/graphics/Rect;
    .registers 2

    .line 2086
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getContainer()Landroid/os/IBinder;
    .registers 2

    .line 2015
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getContainers()[Landroid/os/IBinder;
    .registers 2

    .line 2020
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainers:[Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getExcludeInsetsTypes()I
    .registers 2

    .line 2100
    iget v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mExcludeInsetsTypes:I

    return v0
.end method

.method public blacklist getInsetsFrameOwner()Landroid/os/IBinder;
    .registers 2

    .line 2010
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mInsetsFrameOwner:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInsetsFrameProvider()Landroid/view/InsetsFrameProvider;
    .registers 2

    .line 2005
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mInsetsFrameProvider:Landroid/view/InsetsFrameProvider;

    return-object v0
.end method

.method public blacklist getKeyguardState()Landroid/window/KeyguardState;
    .registers 2

    .line 2071
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mKeyguardState:Landroid/window/KeyguardState;

    return-object v0
.end method

.method public blacklist getLaunchOptions()Landroid/os/Bundle;
    .registers 2

    .line 2043
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mLaunchOptions:Landroid/os/Bundle;

    return-object v0
.end method

.method public blacklist getNewParent()Landroid/os/IBinder;
    .registers 2

    .line 2000
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparent:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getPendingIntent()Landroid/app/PendingIntent;
    .registers 2

    .line 2076
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public blacklist getReparentTopOnly()Z
    .registers 2

    .line 2028
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparentTopOnly:Z

    return v0
.end method

.method public blacklist getSafeRegionBounds()Landroid/graphics/Rect;
    .registers 2

    .line 2111
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mSafeRegionBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getShortcutInfo()Landroid/content/pm/ShortcutInfo;
    .registers 2

    .line 2081
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    return-object v0
.end method

.method public blacklist getTaskFragmentOperation()Landroid/window/TaskFragmentOperation;
    .registers 2

    .line 2066
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mTaskFragmentOperation:Landroid/window/TaskFragmentOperation;

    return-object v0
.end method

.method public blacklist getToTop()Z
    .registers 2

    .line 2024
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mToTop:Z

    return v0
.end method

.method public blacklist getType()I
    .registers 2

    .line 1991
    iget v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mType:I

    return v0
.end method

.method public blacklist getWindowingModes()[I
    .registers 2

    .line 2033
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mWindowingModes:[I

    return-object v0
.end method

.method public blacklist includingParents()Z
    .registers 2

    .line 2091
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mIncludingParents:Z

    return v0
.end method

.method public blacklist isAlwaysOnTop()Z
    .registers 2

    .line 2057
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mAlwaysOnTop:Z

    return v0
.end method

.method public blacklist isLaunchAdjacentDisabled()Z
    .registers 2

    .line 2105
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mLaunchAdjacentDisabled:Z

    return v0
.end method

.method public blacklist isReparent()Z
    .registers 2

    .line 1995
    iget v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mType:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist isReparentLeafTaskIfRelaunch()Z
    .registers 2

    .line 2061
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparentLeafTaskIfRelaunch:Z

    return v0
.end method

.method public blacklist isTrimmableFromRecents()Z
    .registers 2

    .line 2096
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mIsTrimmableFromRecents:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 10

    .line 2154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2155
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mType:I

    invoke-static {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->hopToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2156
    iget v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mType:I

    const-string v2, "options="

    const-string v3, " to "

    const-string v4, " mToTop="

    const-string v5, " mActivityType="

    const-string v6, " mWindowingMode="

    const-string v7, "container= "

    const-string v8, "container="

    packed-switch v1, :pswitch_data_298

    :pswitch_2e
    goto/16 :goto_250

    .line 2250
    :pswitch_30
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2251
    const-string v2, " safeRegionBounds= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mSafeRegionBounds:Landroid/graphics/Rect;

    .line 2252
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_250

    .line 2189
    :pswitch_47
    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mAppCompatOptions:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2190
    goto/16 :goto_28b

    .line 2219
    :pswitch_4e
    const-string/jumbo v1, "rootTask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2220
    goto/16 :goto_28b

    .line 2195
    :pswitch_5c
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " disabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mLaunchAdjacentDisabled:Z

    .line 2196
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2197
    goto/16 :goto_28b

    .line 2242
    :pswitch_73
    const-string v1, "KeyguardState= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mKeyguardState:Landroid/window/KeyguardState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2243
    goto/16 :goto_28b

    .line 2237
    :pswitch_80
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2238
    const-string v2, " mExcludeInsetsTypes= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mExcludeInsetsTypes:I

    .line 2239
    invoke-static {v2}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2240
    goto/16 :goto_28b

    .line 2245
    :pswitch_9b
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2246
    const-string v2, " isTrimmable= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mIsTrimmableFromRecents:Z

    .line 2247
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2248
    goto/16 :goto_28b

    .line 2233
    :pswitch_b2
    const-string v1, "fragmentToken= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2234
    const-string v2, " operation= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mTaskFragmentOperation:Landroid/window/TaskFragmentOperation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2235
    goto/16 :goto_28b

    .line 2228
    :pswitch_cb
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2229
    const-string v2, " reparentLeafTaskIfRelaunch= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparentLeafTaskIfRelaunch:Z

    .line 2230
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2231
    goto/16 :goto_28b

    .line 2225
    :pswitch_e2
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2226
    goto/16 :goto_28b

    .line 2222
    :pswitch_ed
    const-string v1, "activity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2223
    goto/16 :goto_28b

    .line 2216
    :pswitch_fa
    const-string/jumbo v1, "task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2217
    goto/16 :goto_28b

    .line 2212
    :pswitch_108
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2213
    const-string v2, " alwaysOnTop="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mAlwaysOnTop:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2214
    goto/16 :goto_28b

    .line 2207
    :pswitch_11f
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2208
    const-string v2, " provider="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mInsetsFrameProvider:Landroid/view/InsetsFrameProvider;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2209
    const-string v2, " owner="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mInsetsFrameOwner:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2210
    goto/16 :goto_28b

    .line 2199
    :pswitch_142
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mLaunchOptions:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2200
    const-string v2, " info="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2201
    goto/16 :goto_28b

    .line 2203
    :pswitch_159
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mLaunchOptions:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2204
    goto/16 :goto_28b

    .line 2192
    :pswitch_164
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " clearRoot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mToTop:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2193
    goto/16 :goto_28b

    .line 2186
    :pswitch_17b
    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mLaunchOptions:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2187
    goto/16 :goto_28b

    .line 2177
    :pswitch_182
    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainers:[Landroid/os/IBinder;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_187
    if-ge v4, v2, :cond_1a7

    aget-object v5, v1, v4

    .line 2178
    .local v5, "container":Landroid/os/IBinder;
    iget-object v6, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainers:[Landroid/os/IBinder;

    aget-object v6, v6, v3

    if-ne v5, v6, :cond_19b

    .line 2179
    const-string v6, "adjacentRoots="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1a4

    .line 2181
    :cond_19b
    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2177
    .end local v5    # "container":Landroid/os/IBinder;
    :goto_1a4
    add-int/lit8 v4, v4, 0x1

    goto :goto_187

    .line 2184
    :cond_1a7
    goto/16 :goto_28b

    .line 2165
    :pswitch_1a9
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2166
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mWindowingModes:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2167
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mActivityTypes:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2168
    goto/16 :goto_28b

    .line 2158
    :pswitch_1d0
    const-string v1, "from="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparent:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2159
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mToTop:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2160
    const-string v2, " mReparentTopOnly="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparentTopOnly:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2161
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mWindowingModes:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2162
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mActivityTypes:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2163
    goto :goto_28b

    .line 2174
    :pswitch_21a
    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mToTop:Z

    if-eqz v2, :cond_22c

    const-string/jumbo v2, "top"

    goto :goto_22e

    :cond_22c
    const-string v2, "bottom"

    :goto_22e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2175
    goto :goto_28b

    .line 2170
    :pswitch_232
    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mToTop:Z

    if-eqz v2, :cond_244

    const-string/jumbo v2, "top of "

    goto :goto_246

    :cond_244
    const-string v2, "bottom of "

    :goto_246
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparent:Landroid/os/IBinder;

    .line 2171
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2172
    goto :goto_28b

    .line 2254
    :goto_250
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2255
    const-string v2, " reparent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparent:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2256
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mToTop:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2257
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mWindowingModes:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2258
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mActivityTypes:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2260
    :goto_28b
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_298
    .packed-switch 0x0
        :pswitch_232
        :pswitch_21a
        :pswitch_1d0
        :pswitch_1a9
        :pswitch_182
        :pswitch_17b
        :pswitch_164
        :pswitch_159
        :pswitch_142
        :pswitch_2e
        :pswitch_11f
        :pswitch_11f
        :pswitch_108
        :pswitch_fa
        :pswitch_ed
        :pswitch_e2
        :pswitch_cb
        :pswitch_b2
        :pswitch_2e
        :pswitch_9b
        :pswitch_2e
        :pswitch_80
        :pswitch_73
        :pswitch_5c
        :pswitch_4e
        :pswitch_47
        :pswitch_30
    .end packed-switch
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2265
    iget v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2266
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2267
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainers:[Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBinderArray([Landroid/os/IBinder;)V

    .line 2268
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2269
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mIncludingParents:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2270
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparent:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2271
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mInsetsFrameProvider:Landroid/view/InsetsFrameProvider;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2272
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mInsetsFrameOwner:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2273
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mToTop:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2274
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparentTopOnly:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2275
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mWindowingModes:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2276
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mActivityTypes:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2277
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mLaunchOptions:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 2278
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mAppCompatOptions:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 2279
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mActivityIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2280
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mTaskFragmentOperation:Landroid/window/TaskFragmentOperation;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2281
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mKeyguardState:Landroid/window/KeyguardState;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2282
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2283
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2284
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mAlwaysOnTop:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2285
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparentLeafTaskIfRelaunch:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2286
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mIsTrimmableFromRecents:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2287
    iget v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mExcludeInsetsTypes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2288
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mLaunchAdjacentDisabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2289
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mSafeRegionBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2290
    return-void
.end method
