.class public final Landroid/window/WindowContainerTransaction;
.super Ljava/lang/Object;
.source "WindowContainerTransaction.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/WindowContainerTransaction$HierarchyOp;,
        Landroid/window/WindowContainerTransaction$Change;,
        Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/WindowContainerTransaction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mChanges:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/window/WindowContainerTransaction$Change;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mErrorCallbackToken:Landroid/os/IBinder;

.field private final blacklist mHierarchyOps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/window/WindowContainerTransaction$HierarchyOp;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1268
    new-instance v0, Landroid/window/WindowContainerTransaction$1;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction$1;-><init>()V

    sput-object v0, Landroid/window/WindowContainerTransaction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/window/WindowContainerTransaction;->mChanges:Landroid/util/ArrayMap;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    .line 86
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/window/WindowContainerTransaction;->mChanges:Landroid/util/ArrayMap;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    .line 89
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mChanges:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 90
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    sget-object v1, Landroid/window/WindowContainerTransaction$HierarchyOp;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/window/WindowContainerTransaction;->mErrorCallbackToken:Landroid/os/IBinder;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/window/ITaskFragmentOrganizer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/ITaskFragmentOrganizer;

    move-result-object v0

    iput-object v0, p0, Landroid/window/WindowContainerTransaction;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    .line 93
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/window/WindowContainerTransaction-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/window/WindowContainerTransaction;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;

    .line 97
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/WindowContainerTransaction$Change;

    .line 98
    .local v0, "out":Landroid/window/WindowContainerTransaction$Change;
    if-nez v0, :cond_16

    .line 99
    new-instance v1, Landroid/window/WindowContainerTransaction$Change;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/window/WindowContainerTransaction$Change;-><init>(Landroid/window/WindowContainerTransaction-IA;)V

    move-object v0, v1

    .line 100
    iget-object v1, p0, Landroid/window/WindowContainerTransaction;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_16
    return-object v0
.end method


# virtual methods
.method public blacklist addInsetsSource(Landroid/window/WindowContainerToken;Landroid/os/IBinder;IILandroid/graphics/Rect;[Landroid/graphics/Rect;I)Landroid/window/WindowContainerTransaction;
    .registers 11
    .param p1, "receiver"    # Landroid/window/WindowContainerToken;
    .param p2, "owner"    # Landroid/os/IBinder;
    .param p3, "index"    # I
    .param p4, "type"    # I
    .param p5, "frame"    # Landroid/graphics/Rect;
    .param p6, "boundingRects"    # [Landroid/graphics/Rect;
    .param p7, "flags"    # I

    .line 879
    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    .line 881
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    new-instance v1, Landroid/view/InsetsFrameProvider;

    invoke-direct {v1, p2, p3, p4}, Landroid/view/InsetsFrameProvider;-><init>(Ljava/lang/Object;II)V

    .line 883
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/view/InsetsFrameProvider;->setSource(I)Landroid/view/InsetsFrameProvider;

    move-result-object v1

    .line 884
    invoke-virtual {v1, p5}, Landroid/view/InsetsFrameProvider;->setArbitraryRectangle(Landroid/graphics/Rect;)Landroid/view/InsetsFrameProvider;

    move-result-object v1

    .line 885
    invoke-virtual {v1, p6}, Landroid/view/InsetsFrameProvider;->setBoundingRects([Landroid/graphics/Rect;)Landroid/view/InsetsFrameProvider;

    move-result-object v1

    .line 886
    invoke-virtual {v1, p7}, Landroid/view/InsetsFrameProvider;->setFlags(I)Landroid/view/InsetsFrameProvider;

    move-result-object v1

    .line 882
    invoke-virtual {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setInsetsFrameProvider(Landroid/view/InsetsFrameProvider;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 887
    invoke-virtual {v0, p2}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setInsetsFrameOwner(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 888
    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v0

    .line 889
    .local v0, "hierarchyOp":Landroid/window/WindowContainerTransaction$HierarchyOp;
    iget-object v1, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 890
    return-object p0
.end method

.method public blacklist addKeyguardState(Landroid/window/KeyguardState;)Landroid/window/WindowContainerTransaction;
    .registers 4
    .param p1, "keyguardState"    # Landroid/window/KeyguardState;

    .line 930
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 931
    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    .line 934
    invoke-virtual {v0, p1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setKeyguardState(Landroid/window/KeyguardState;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 935
    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v0

    .line 936
    .local v0, "hierarchyOp":Landroid/window/WindowContainerTransaction$HierarchyOp;
    iget-object v1, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 937
    return-object p0
.end method

.method public blacklist addTaskFragmentOperation(Landroid/os/IBinder;Landroid/window/TaskFragmentOperation;)Landroid/window/WindowContainerTransaction;
    .registers 5
    .param p1, "fragmentToken"    # Landroid/os/IBinder;
    .param p2, "taskFragmentOperation"    # Landroid/window/TaskFragmentOperation;

    .line 1149
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1150
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1151
    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    .line 1154
    invoke-virtual {v0, p1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 1155
    invoke-virtual {v0, p2}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setTaskFragmentOperation(Landroid/window/TaskFragmentOperation;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 1156
    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v0

    .line 1157
    .local v0, "hierarchyOp":Landroid/window/WindowContainerTransaction$HierarchyOp;
    iget-object v1, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1158
    return-object p0
.end method

.method public blacklist clear()V
    .registers 2

    .line 112
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 113
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/window/WindowContainerTransaction;->mErrorCallbackToken:Landroid/os/IBinder;

    .line 115
    iput-object v0, p0, Landroid/window/WindowContainerTransaction;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    .line 116
    return-void
.end method

.method public blacklist clearAdjacentRoots(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;
    .registers 4
    .param p1, "root"    # Landroid/window/WindowContainerToken;

    .line 775
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->createForClearAdjacentRoots(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 776
    return-object p0
.end method

.method public blacklist clearAdjacentTaskFragments(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction;
    .registers 4
    .param p1, "fragmentToken"    # Landroid/os/IBinder;

    .line 1074
    new-instance v0, Landroid/window/TaskFragmentOperation$Builder;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/window/TaskFragmentOperation$Builder;-><init>(I)V

    .line 1076
    invoke-virtual {v0}, Landroid/window/TaskFragmentOperation$Builder;->build()Landroid/window/TaskFragmentOperation;

    move-result-object v0

    .line 1077
    .local v0, "operation":Landroid/window/TaskFragmentOperation;
    invoke-virtual {p0, p1, v0}, Landroid/window/WindowContainerTransaction;->addTaskFragmentOperation(Landroid/os/IBinder;Landroid/window/TaskFragmentOperation;)Landroid/window/WindowContainerTransaction;

    move-result-object v1

    return-object v1
.end method

.method public blacklist clearLaunchAdjacentFlagRoot(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;
    .registers 5
    .param p1, "container"    # Landroid/window/WindowContainerToken;

    .line 797
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->createForSetLaunchAdjacentFlagRoot(Landroid/os/IBinder;Z)Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 799
    return-object p0
.end method

.method public blacklist createTaskFragment(Landroid/window/TaskFragmentCreationParams;)Landroid/window/WindowContainerTransaction;
    .registers 4
    .param p1, "taskFragmentCreationParams"    # Landroid/window/TaskFragmentCreationParams;

    .line 984
    new-instance v0, Landroid/window/TaskFragmentOperation$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/window/TaskFragmentOperation$Builder;-><init>(I)V

    .line 986
    invoke-virtual {v0, p1}, Landroid/window/TaskFragmentOperation$Builder;->setTaskFragmentCreationParams(Landroid/window/TaskFragmentCreationParams;)Landroid/window/TaskFragmentOperation$Builder;

    move-result-object v0

    .line 987
    invoke-virtual {v0}, Landroid/window/TaskFragmentOperation$Builder;->build()Landroid/window/TaskFragmentOperation;

    move-result-object v0

    .line 988
    .local v0, "operation":Landroid/window/TaskFragmentOperation;
    invoke-virtual {p1}, Landroid/window/TaskFragmentCreationParams;->getFragmentToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Landroid/window/WindowContainerTransaction;->addTaskFragmentOperation(Landroid/os/IBinder;Landroid/window/TaskFragmentOperation;)Landroid/window/WindowContainerTransaction;

    move-result-object v1

    return-object v1
.end method

.method public blacklist deferConfigToTransitionEnd(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;
    .registers 4
    .param p1, "container"    # Landroid/window/WindowContainerToken;

    .line 429
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    .line 430
    .local v0, "change":Landroid/window/WindowContainerTransaction$Change;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmConfigAtTransitionEnd(Landroid/window/WindowContainerTransaction$Change;Z)V

    .line 431
    return-object p0
.end method

.method public blacklist deleteTaskFragment(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction;
    .registers 4
    .param p1, "fragmentToken"    # Landroid/os/IBinder;

    .line 998
    new-instance v0, Landroid/window/TaskFragmentOperation$Builder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/window/TaskFragmentOperation$Builder;-><init>(I)V

    .line 1000
    invoke-virtual {v0}, Landroid/window/TaskFragmentOperation$Builder;->build()Landroid/window/TaskFragmentOperation;

    move-result-object v0

    .line 1001
    .local v0, "operation":Landroid/window/TaskFragmentOperation;
    invoke-virtual {p0, p1, v0}, Landroid/window/WindowContainerTransaction;->addTaskFragmentOperation(Landroid/os/IBinder;Landroid/window/TaskFragmentOperation;)Landroid/window/WindowContainerTransaction;

    move-result-object v1

    return-object v1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 1264
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist finishActivity(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction;
    .registers 4
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .line 1103
    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    .line 1106
    invoke-virtual {v0, p1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 1107
    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v0

    .line 1108
    .local v0, "hierarchyOp":Landroid/window/WindowContainerTransaction$HierarchyOp;
    iget-object v1, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1109
    return-object p0
.end method

.method public blacklist getChanges()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Landroid/window/WindowContainerTransaction$Change;",
            ">;"
        }
    .end annotation

    .line 1222
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mChanges:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public blacklist getErrorCallbackToken()Landroid/os/IBinder;
    .registers 2

    .line 1234
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mErrorCallbackToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getHierarchyOps()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/window/WindowContainerTransaction$HierarchyOp;",
            ">;"
        }
    .end annotation

    .line 1228
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getTaskFragmentOrganizer()Landroid/window/ITaskFragmentOrganizer;
    .registers 2

    .line 1240
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    return-object v0
.end method

.method public blacklist isEmpty()Z
    .registers 2

    .line 1216
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public blacklist merge(Landroid/window/WindowContainerTransaction;Z)V
    .registers 9
    .param p1, "other"    # Landroid/window/WindowContainerTransaction;
    .param p2, "transfer"    # Z

    .line 1182
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p1, Landroid/window/WindowContainerTransaction;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .local v1, "n":I
    :goto_7
    const/4 v2, 0x0

    if-ge v0, v1, :cond_35

    .line 1183
    iget-object v3, p1, Landroid/window/WindowContainerTransaction;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    .line 1184
    .local v3, "key":Landroid/os/IBinder;
    iget-object v4, p0, Landroid/window/WindowContainerTransaction;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/WindowContainerTransaction$Change;

    .line 1185
    .local v4, "existing":Landroid/window/WindowContainerTransaction$Change;
    if-nez v4, :cond_27

    .line 1186
    new-instance v5, Landroid/window/WindowContainerTransaction$Change;

    invoke-direct {v5, v2}, Landroid/window/WindowContainerTransaction$Change;-><init>(Landroid/window/WindowContainerTransaction-IA;)V

    move-object v4, v5

    .line 1187
    iget-object v2, p0, Landroid/window/WindowContainerTransaction;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1189
    :cond_27
    iget-object v2, p1, Landroid/window/WindowContainerTransaction;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/WindowContainerTransaction$Change;

    invoke-virtual {v4, v2, p2}, Landroid/window/WindowContainerTransaction$Change;->merge(Landroid/window/WindowContainerTransaction$Change;Z)V

    .line 1182
    .end local v3    # "key":Landroid/os/IBinder;
    .end local v4    # "existing":Landroid/window/WindowContainerTransaction$Change;
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1191
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_35
    const/4 v0, 0x0

    .restart local v0    # "i":I
    iget-object v1, p1, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .restart local v1    # "n":I
    :goto_3c
    if-ge v0, v1, :cond_57

    .line 1192
    iget-object v3, p1, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/WindowContainerTransaction$HierarchyOp;

    .line 1193
    .local v3, "otherHierarchyOp":Landroid/window/WindowContainerTransaction$HierarchyOp;
    iget-object v4, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    if-eqz p2, :cond_4c

    move-object v5, v3

    goto :goto_51

    :cond_4c
    new-instance v5, Landroid/window/WindowContainerTransaction$HierarchyOp;

    invoke-direct {v5, v3}, Landroid/window/WindowContainerTransaction$HierarchyOp;-><init>(Landroid/window/WindowContainerTransaction$HierarchyOp;)V

    :goto_51
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1191
    .end local v3    # "otherHierarchyOp":Landroid/window/WindowContainerTransaction$HierarchyOp;
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    .line 1195
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_57
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mErrorCallbackToken:Landroid/os/IBinder;

    if-eqz v0, :cond_6e

    iget-object v0, p1, Landroid/window/WindowContainerTransaction;->mErrorCallbackToken:Landroid/os/IBinder;

    if-eqz v0, :cond_6e

    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mErrorCallbackToken:Landroid/os/IBinder;

    iget-object v1, p1, Landroid/window/WindowContainerTransaction;->mErrorCallbackToken:Landroid/os/IBinder;

    if-ne v0, v1, :cond_66

    goto :goto_6e

    .line 1197
    :cond_66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t merge two WCTs with different error token"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1199
    :cond_6e
    :goto_6e
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    if-eqz v0, :cond_79

    .line 1200
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    invoke-interface {v0}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_7a

    .line 1201
    :cond_79
    move-object v0, v2

    :goto_7a
    nop

    .line 1202
    .local v0, "taskFragmentOrganizerAsBinder":Landroid/os/IBinder;
    iget-object v1, p1, Landroid/window/WindowContainerTransaction;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    if-eqz v1, :cond_86

    .line 1203
    iget-object v1, p1, Landroid/window/WindowContainerTransaction;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    invoke-interface {v1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_87

    .line 1204
    :cond_86
    nop

    :goto_87
    nop

    .line 1205
    .local v2, "otherTaskFragmentOrganizerAsBinder":Landroid/os/IBinder;
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 1209
    iget-object v1, p0, Landroid/window/WindowContainerTransaction;->mErrorCallbackToken:Landroid/os/IBinder;

    if-eqz v1, :cond_95

    .line 1210
    iget-object v1, p0, Landroid/window/WindowContainerTransaction;->mErrorCallbackToken:Landroid/os/IBinder;

    goto :goto_97

    .line 1211
    :cond_95
    iget-object v1, p1, Landroid/window/WindowContainerTransaction;->mErrorCallbackToken:Landroid/os/IBinder;

    :goto_97
    iput-object v1, p0, Landroid/window/WindowContainerTransaction;->mErrorCallbackToken:Landroid/os/IBinder;

    .line 1212
    return-void

    .line 1206
    :cond_9a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Can\'t merge two WCTs from different TaskFragmentOrganizers"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist movePipActivityToPinnedRootTask(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;
    .registers 6
    .param p1, "parentToken"    # Landroid/window/WindowContainerToken;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 833
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    new-instance v1, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/16 v2, 0x12

    invoke-direct {v1, v2}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    .line 835
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v1

    .line 836
    invoke-virtual {v1, p2}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setBounds(Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v1

    .line 837
    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v1

    .line 833
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 838
    return-object p0
.end method

.method public blacklist removeInsetsSource(Landroid/window/WindowContainerToken;Landroid/os/IBinder;II)Landroid/window/WindowContainerTransaction;
    .registers 7
    .param p1, "receiver"    # Landroid/window/WindowContainerToken;
    .param p2, "owner"    # Landroid/os/IBinder;
    .param p3, "index"    # I
    .param p4, "type"    # I

    .line 907
    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    .line 909
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    new-instance v1, Landroid/view/InsetsFrameProvider;

    invoke-direct {v1, p2, p3, p4}, Landroid/view/InsetsFrameProvider;-><init>(Ljava/lang/Object;II)V

    .line 910
    invoke-virtual {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setInsetsFrameProvider(Landroid/view/InsetsFrameProvider;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 911
    invoke-virtual {v0, p2}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setInsetsFrameOwner(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 912
    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v0

    .line 913
    .local v0, "hierarchyOp":Landroid/window/WindowContainerTransaction$HierarchyOp;
    iget-object v1, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 914
    return-object p0
.end method

.method public blacklist removeRootTask(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;
    .registers 4
    .param p1, "containerToken"    # Landroid/window/WindowContainerToken;

    .line 599
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->createForRemoveRootTask(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 600
    return-object p0
.end method

.method public blacklist removeTask(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;
    .registers 4
    .param p1, "containerToken"    # Landroid/window/WindowContainerToken;

    .line 586
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->createForRemoveTask(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 587
    return-object p0
.end method

.method public blacklist reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;
    .registers 4
    .param p1, "child"    # Landroid/window/WindowContainerToken;
    .param p2, "onTop"    # Z

    .line 486
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;ZZ)Landroid/window/WindowContainerTransaction;

    move-result-object v0

    return-object v0
.end method

.method public blacklist reorder(Landroid/window/WindowContainerToken;ZZ)Landroid/window/WindowContainerTransaction;
    .registers 6
    .param p1, "child"    # Landroid/window/WindowContainerToken;
    .param p2, "onTop"    # Z
    .param p3, "includingParents"    # Z

    .line 502
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1, p2, p3}, Landroid/window/WindowContainerTransaction$HierarchyOp;->createForReorder(Landroid/os/IBinder;ZZ)Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    return-object p0
.end method

.method public blacklist reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;
    .registers 7
    .param p1, "child"    # Landroid/window/WindowContainerToken;
    .param p2, "parent"    # Landroid/window/WindowContainerToken;
    .param p3, "onTop"    # Z

    .line 516
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 517
    if-nez p2, :cond_a

    const/4 v2, 0x0

    goto :goto_e

    :cond_a
    invoke-virtual {p2}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 516
    :goto_e
    invoke-static {v1, v2, p3}, Landroid/window/WindowContainerTransaction$HierarchyOp;->createForReparent(Landroid/os/IBinder;Landroid/os/IBinder;Z)Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    return-object p0
.end method

.method public blacklist reparentActivityToTaskFragment(Landroid/os/IBinder;Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction;
    .registers 5
    .param p1, "fragmentToken"    # Landroid/os/IBinder;
    .param p2, "activityToken"    # Landroid/os/IBinder;

    .line 1035
    new-instance v0, Landroid/window/TaskFragmentOperation$Builder;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/window/TaskFragmentOperation$Builder;-><init>(I)V

    .line 1037
    invoke-virtual {v0, p2}, Landroid/window/TaskFragmentOperation$Builder;->setActivityToken(Landroid/os/IBinder;)Landroid/window/TaskFragmentOperation$Builder;

    move-result-object v0

    .line 1038
    invoke-virtual {v0}, Landroid/window/TaskFragmentOperation$Builder;->build()Landroid/window/TaskFragmentOperation;

    move-result-object v0

    .line 1039
    .local v0, "operation":Landroid/window/TaskFragmentOperation;
    invoke-virtual {p0, p1, v0}, Landroid/window/WindowContainerTransaction;->addTaskFragmentOperation(Landroid/os/IBinder;Landroid/window/TaskFragmentOperation;)Landroid/window/WindowContainerTransaction;

    move-result-object v1

    return-object v1
.end method

.method public blacklist reparentTasks(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;[I[IZ)Landroid/window/WindowContainerTransaction;
    .registers 13
    .param p1, "currentParent"    # Landroid/window/WindowContainerToken;
    .param p2, "newParent"    # Landroid/window/WindowContainerToken;
    .param p3, "windowingModes"    # [I
    .param p4, "activityTypes"    # [I
    .param p5, "onTop"    # Z

    .line 571
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .end local p1    # "currentParent":Landroid/window/WindowContainerToken;
    .end local p2    # "newParent":Landroid/window/WindowContainerToken;
    .end local p3    # "windowingModes":[I
    .end local p4    # "activityTypes":[I
    .end local p5    # "onTop":Z
    .local v1, "currentParent":Landroid/window/WindowContainerToken;
    .local v2, "newParent":Landroid/window/WindowContainerToken;
    .local v3, "windowingModes":[I
    .local v4, "activityTypes":[I
    .local v5, "onTop":Z
    invoke-virtual/range {v0 .. v6}, Landroid/window/WindowContainerTransaction;->reparentTasks(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;[I[IZZ)Landroid/window/WindowContainerTransaction;

    move-result-object p1

    return-object p1
.end method

.method public blacklist reparentTasks(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;[I[IZZ)Landroid/window/WindowContainerTransaction;
    .registers 16
    .param p1, "currentParent"    # Landroid/window/WindowContainerToken;
    .param p2, "newParent"    # Landroid/window/WindowContainerToken;
    .param p3, "windowingModes"    # [I
    .param p4, "activityTypes"    # [I
    .param p5, "onTop"    # Z
    .param p6, "reparentTopOnly"    # Z

    .line 542
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    .line 543
    const/4 v1, 0x0

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    move-object v3, v2

    goto :goto_c

    :cond_b
    move-object v3, v1

    .line 544
    :goto_c
    if-eqz p2, :cond_12

    invoke-virtual {p2}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_12
    move-object v4, v1

    .line 542
    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move v8, p6

    .end local p3    # "windowingModes":[I
    .end local p4    # "activityTypes":[I
    .end local p5    # "onTop":Z
    .end local p6    # "reparentTopOnly":Z
    .local v5, "windowingModes":[I
    .local v6, "activityTypes":[I
    .local v7, "onTop":Z
    .local v8, "reparentTopOnly":Z
    invoke-static/range {v3 .. v8}, Landroid/window/WindowContainerTransaction$HierarchyOp;->createForChildrenTasksReparent(Landroid/os/IBinder;Landroid/os/IBinder;[I[IZZ)Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 549
    return-object p0
.end method

.method public blacklist requestFocusOnTaskFragment(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction;
    .registers 4
    .param p1, "fragmentToken"    # Landroid/os/IBinder;

    .line 1089
    new-instance v0, Landroid/window/TaskFragmentOperation$Builder;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/window/TaskFragmentOperation$Builder;-><init>(I)V

    .line 1091
    invoke-virtual {v0}, Landroid/window/TaskFragmentOperation$Builder;->build()Landroid/window/TaskFragmentOperation;

    move-result-object v0

    .line 1092
    .local v0, "operation":Landroid/window/TaskFragmentOperation;
    invoke-virtual {p0, p1, v0}, Landroid/window/WindowContainerTransaction;->addTaskFragmentOperation(Landroid/os/IBinder;Landroid/window/TaskFragmentOperation;)Landroid/window/WindowContainerTransaction;

    move-result-object v1

    return-object v1
.end method

.method public blacklist restoreBackNavi()Landroid/window/WindowContainerTransaction;
    .registers 3

    .line 627
    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    .line 629
    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v0

    .line 630
    .local v0, "hierarchyOp":Landroid/window/WindowContainerTransaction$HierarchyOp;
    iget-object v1, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 631
    return-object p0
.end method

.method public blacklist restoreTransientOrder(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;
    .registers 4
    .param p1, "container"    # Landroid/window/WindowContainerToken;

    .line 613
    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    .line 615
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 616
    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v0

    .line 617
    .local v0, "hierarchyOp":Landroid/window/WindowContainerTransaction$HierarchyOp;
    iget-object v1, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 618
    return-object p0
.end method

.method public blacklist scheduleFinishEnterPip(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;
    .registers 5
    .param p1, "container"    # Landroid/window/WindowContainerToken;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 848
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    .line 849
    .local v0, "chg":Landroid/window/WindowContainerTransaction$Change;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmPinnedBounds(Landroid/window/WindowContainerTransaction$Change;Landroid/graphics/Rect;)V

    .line 850
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmChangeMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    or-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmChangeMask(Landroid/window/WindowContainerTransaction$Change;I)V

    .line 852
    return-object p0
.end method

.method public blacklist sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;
    .registers 7
    .param p1, "sender"    # Landroid/app/PendingIntent;
    .param p2, "fillInIntent"    # Landroid/content/Intent;
    .param p3, "options"    # Landroid/os/Bundle;

    .line 666
    sget-boolean v0, Landroid/app/Instrumentation;->DEBUG_START_ACTIVITY:Z

    if-eqz v0, :cond_39

    .line 667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WCT.sendPendingIntent: sender="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " fillInIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " options="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "Instrumentation"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 670
    :cond_39
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    new-instance v1, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    .line 671
    invoke-virtual {v1, p3}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setLaunchOptions(Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v1

    .line 672
    invoke-virtual {v1, p1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setPendingIntent(Landroid/app/PendingIntent;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v1

    .line 673
    invoke-virtual {v1, p2}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setActivityIntent(Landroid/content/Intent;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v1

    .line 674
    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v1

    .line 670
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 675
    return-object p0
.end method

.method public blacklist setActivityWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;
    .registers 4
    .param p1, "container"    # Landroid/window/WindowContainerToken;
    .param p2, "windowingMode"    # I

    .line 212
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    .line 213
    .local v0, "chg":Landroid/window/WindowContainerTransaction$Change;
    invoke-static {v0, p2}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmActivityWindowingMode(Landroid/window/WindowContainerTransaction$Change;I)V

    .line 214
    return-object p0
.end method

.method public varargs blacklist setAdjacentRootSet([Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;
    .registers 6
    .param p1, "roots"    # [Landroid/window/WindowContainerToken;

    .line 750
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2a

    .line 753
    array-length v0, p1

    new-array v0, v0, [Landroid/os/IBinder;

    .line 754
    .local v0, "rootTokens":[Landroid/os/IBinder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    array-length v2, p1

    if-ge v1, v2, :cond_16

    .line 755
    aget-object v2, p1, v1

    invoke-virtual {v2}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    aput-object v2, v0, v1

    .line 754
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 757
    .end local v1    # "i":I
    :cond_16
    iget-object v1, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    new-instance v2, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    .line 759
    invoke-virtual {v2, v0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainers([Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v2

    .line 760
    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v2

    .line 757
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 761
    return-object p0

    .line 751
    .end local v0    # "rootTokens":[Landroid/os/IBinder;
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "setAdjacentRootSet must have size >= 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setAdjacentRoots(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;
    .registers 5
    .param p1, "root1"    # Landroid/window/WindowContainerToken;
    .param p2, "root2"    # Landroid/window/WindowContainerToken;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 730
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/window/WindowContainerToken;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-virtual {p0, v0}, Landroid/window/WindowContainerTransaction;->setAdjacentRootSet([Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setAdjacentTaskFragments(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;)Landroid/window/WindowContainerTransaction;
    .registers 6
    .param p1, "fragmentToken1"    # Landroid/os/IBinder;
    .param p2, "fragmentToken2"    # Landroid/os/IBinder;
    .param p3, "params"    # Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;

    .line 1057
    new-instance v0, Landroid/window/TaskFragmentOperation$Builder;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/window/TaskFragmentOperation$Builder;-><init>(I)V

    .line 1059
    invoke-virtual {v0, p2}, Landroid/window/TaskFragmentOperation$Builder;->setSecondaryFragmentToken(Landroid/os/IBinder;)Landroid/window/TaskFragmentOperation$Builder;

    move-result-object v0

    .line 1060
    if-eqz p3, :cond_11

    invoke-virtual {p3}, Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    invoke-virtual {v0, v1}, Landroid/window/TaskFragmentOperation$Builder;->setBundle(Landroid/os/Bundle;)Landroid/window/TaskFragmentOperation$Builder;

    move-result-object v0

    .line 1061
    invoke-virtual {v0}, Landroid/window/TaskFragmentOperation$Builder;->build()Landroid/window/TaskFragmentOperation;

    move-result-object v0

    .line 1062
    .local v0, "operation":Landroid/window/TaskFragmentOperation;
    invoke-virtual {p0, p1, v0}, Landroid/window/WindowContainerTransaction;->addTaskFragmentOperation(Landroid/os/IBinder;Landroid/window/TaskFragmentOperation;)Landroid/window/WindowContainerTransaction;

    move-result-object v1

    return-object v1
.end method

.method public blacklist setAlwaysOnTop(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;
    .registers 5
    .param p1, "windowContainer"    # Landroid/window/WindowContainerToken;
    .param p2, "alwaysOnTop"    # Z

    .line 387
    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    .line 390
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 391
    invoke-virtual {v0, p2}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setAlwaysOnTop(Z)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 392
    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v0

    .line 393
    .local v0, "hierarchyOp":Landroid/window/WindowContainerTransaction$HierarchyOp;
    iget-object v1, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    return-object p0
.end method

.method public blacklist setAppBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;
    .registers 6
    .param p1, "container"    # Landroid/window/WindowContainerToken;
    .param p2, "appBounds"    # Landroid/graphics/Rect;

    .line 145
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    .line 146
    .local v0, "chg":Landroid/window/WindowContainerTransaction$Change;
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmConfiguration(Landroid/window/WindowContainerTransaction$Change;)Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1, p2}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    .line 147
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    const/high16 v2, 0x20000000

    or-int/2addr v1, v2

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;I)V

    .line 148
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmWindowSetMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    or-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmWindowSetMask(Landroid/window/WindowContainerTransaction$Change;I)V

    .line 149
    return-object p0
.end method

.method public blacklist setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;
    .registers 6
    .param p1, "container"    # Landroid/window/WindowContainerToken;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 130
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    .line 131
    .local v0, "chg":Landroid/window/WindowContainerTransaction$Change;
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmConfiguration(Landroid/window/WindowContainerTransaction$Change;)Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1, p2}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    .line 132
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    const/high16 v2, 0x20000000

    or-int/2addr v1, v2

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;I)V

    .line 133
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmWindowSetMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    or-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmWindowSetMask(Landroid/window/WindowContainerTransaction$Change;I)V

    .line 134
    return-object p0
.end method

.method public blacklist setBoundsChangeTransaction(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl$Transaction;)Landroid/window/WindowContainerTransaction;
    .registers 5
    .param p1, "container"    # Landroid/window/WindowContainerToken;
    .param p2, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 195
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    .line 196
    .local v0, "chg":Landroid/window/WindowContainerTransaction$Change;
    invoke-static {v0, p2}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmBoundsChangeTransaction(Landroid/window/WindowContainerTransaction$Change;Landroid/view/SurfaceControl$Transaction;)V

    .line 197
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmChangeMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    or-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmChangeMask(Landroid/window/WindowContainerTransaction$Change;I)V

    .line 198
    return-object p0
.end method

.method public blacklist setCompanionTaskFragment(Landroid/os/IBinder;Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction;
    .registers 5
    .param p1, "fragmentToken"    # Landroid/os/IBinder;
    .param p2, "companionFragmentToken"    # Landroid/os/IBinder;

    .line 1130
    new-instance v0, Landroid/window/TaskFragmentOperation$Builder;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/window/TaskFragmentOperation$Builder;-><init>(I)V

    .line 1132
    invoke-virtual {v0, p2}, Landroid/window/TaskFragmentOperation$Builder;->setSecondaryFragmentToken(Landroid/os/IBinder;)Landroid/window/TaskFragmentOperation$Builder;

    move-result-object v0

    .line 1133
    invoke-virtual {v0}, Landroid/window/TaskFragmentOperation$Builder;->build()Landroid/window/TaskFragmentOperation;

    move-result-object v0

    .line 1134
    .local v0, "operation":Landroid/window/TaskFragmentOperation;
    invoke-virtual {p0, p1, v0}, Landroid/window/WindowContainerTransaction;->addTaskFragmentOperation(Landroid/os/IBinder;Landroid/window/TaskFragmentOperation;)Landroid/window/WindowContainerTransaction;

    move-result-object v1

    return-object v1
.end method

.method public blacklist setDensityDpi(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;
    .registers 5
    .param p1, "container"    # Landroid/window/WindowContainerToken;
    .param p2, "densityDpi"    # I

    .line 175
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    .line 176
    .local v0, "chg":Landroid/window/WindowContainerTransaction$Change;
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmConfiguration(Landroid/window/WindowContainerTransaction$Change;)Landroid/content/res/Configuration;

    move-result-object v1

    iput p2, v1, Landroid/content/res/Configuration;->densityDpi:I

    .line 177
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    or-int/lit16 v1, v1, 0x1000

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;I)V

    .line 178
    return-object p0
.end method

.method public blacklist setDisableLaunchAdjacent(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;
    .registers 5
    .param p1, "container"    # Landroid/window/WindowContainerToken;
    .param p2, "disabled"    # Z

    .line 813
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->createForSetDisableLaunchAdjacent(Landroid/os/IBinder;Z)Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 815
    return-object p0
.end method

.method public blacklist setDoNotPip(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;
    .registers 4
    .param p1, "container"    # Landroid/window/WindowContainerToken;

    .line 324
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    .line 325
    .local v0, "chg":Landroid/window/WindowContainerTransaction$Change;
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmChangeMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    or-int/lit8 v1, v1, 0x20

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmChangeMask(Landroid/window/WindowContainerTransaction$Change;I)V

    .line 326
    return-object p0
.end method

.method public blacklist setDragResizing(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;
    .registers 5
    .param p1, "container"    # Landroid/window/WindowContainerToken;
    .param p2, "dragResizing"    # Z

    .line 359
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    .line 360
    .local v0, "change":Landroid/window/WindowContainerTransaction$Change;
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmChangeMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    or-int/lit16 v1, v1, 0x80

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmChangeMask(Landroid/window/WindowContainerTransaction$Change;I)V

    .line 361
    invoke-static {v0, p2}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmDragResizing(Landroid/window/WindowContainerTransaction$Change;Z)V

    .line 362
    return-object p0
.end method

.method public blacklist setErrorCallbackToken(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction;
    .registers 4
    .param p1, "errorCallbackToken"    # Landroid/os/IBinder;

    .line 970
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mErrorCallbackToken:Landroid/os/IBinder;

    if-nez v0, :cond_7

    .line 973
    iput-object p1, p0, Landroid/window/WindowContainerTransaction;->mErrorCallbackToken:Landroid/os/IBinder;

    .line 974
    return-object p0

    .line 971
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t set multiple error token for one transaction."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setExcludeImeInsets(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;
    .registers 5
    .param p1, "container"    # Landroid/window/WindowContainerToken;
    .param p2, "exclude"    # Z

    .line 250
    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    .line 252
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 253
    if-eqz p2, :cond_16

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    invoke-virtual {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setExcludeInsetsTypes(I)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 254
    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v0

    .line 255
    .local v0, "hierarchyOp":Landroid/window/WindowContainerTransaction$HierarchyOp;
    iget-object v1, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    return-object p0
.end method

.method public blacklist setFocusable(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;
    .registers 5
    .param p1, "container"    # Landroid/window/WindowContainerToken;
    .param p2, "focusable"    # Z

    .line 236
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    .line 237
    .local v0, "chg":Landroid/window/WindowContainerTransaction$Change;
    invoke-static {v0, p2}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmFocusable(Landroid/window/WindowContainerTransaction$Change;Z)V

    .line 238
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmChangeMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    or-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmChangeMask(Landroid/window/WindowContainerTransaction$Change;I)V

    .line 239
    return-object p0
.end method

.method public blacklist setForceTranslucent(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;
    .registers 5
    .param p1, "container"    # Landroid/window/WindowContainerToken;
    .param p2, "forceTranslucent"    # Z

    .line 309
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    .line 310
    .local v0, "chg":Landroid/window/WindowContainerTransaction$Change;
    invoke-static {v0, p2}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmForceTranslucent(Landroid/window/WindowContainerTransaction$Change;Z)V

    .line 311
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmChangeMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    or-int/lit8 v1, v1, 0x40

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmChangeMask(Landroid/window/WindowContainerTransaction$Change;I)V

    .line 312
    return-object p0
.end method

.method public blacklist setHidden(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;
    .registers 5
    .param p1, "container"    # Landroid/window/WindowContainerToken;
    .param p2, "hidden"    # Z

    .line 267
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    .line 268
    .local v0, "chg":Landroid/window/WindowContainerTransaction$Change;
    invoke-static {v0, p2}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmHidden(Landroid/window/WindowContainerTransaction$Change;Z)V

    .line 269
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmChangeMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmChangeMask(Landroid/window/WindowContainerTransaction$Change;I)V

    .line 270
    return-object p0
.end method

.method public blacklist setIgnoreOrientationRequest(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;
    .registers 5
    .param p1, "container"    # Landroid/window/WindowContainerToken;
    .param p2, "ignoreOrientationRequest"    # Z

    .line 295
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    .line 296
    .local v0, "chg":Landroid/window/WindowContainerTransaction$Change;
    invoke-static {v0, p2}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmIgnoreOrientationRequest(Landroid/window/WindowContainerTransaction$Change;Z)V

    .line 297
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmChangeMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    or-int/lit8 v1, v1, 0x10

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmChangeMask(Landroid/window/WindowContainerTransaction$Change;I)V

    .line 298
    return-object p0
.end method

.method public blacklist setLaunchAdjacentFlagRoot(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;
    .registers 5
    .param p1, "container"    # Landroid/window/WindowContainerToken;

    .line 786
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->createForSetLaunchAdjacentFlagRoot(Landroid/os/IBinder;Z)Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 788
    return-object p0
.end method

.method public blacklist setLaunchRoot(Landroid/window/WindowContainerToken;[I[I)Landroid/window/WindowContainerTransaction;
    .registers 6
    .param p1, "container"    # Landroid/window/WindowContainerToken;
    .param p2, "windowingModes"    # [I
    .param p3, "activityTypes"    # [I

    .line 704
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    .line 705
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 704
    invoke-static {v1, p2, p3}, Landroid/window/WindowContainerTransaction$HierarchyOp;->createForSetLaunchRoot(Landroid/os/IBinder;[I[I)Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 708
    return-object p0
.end method

.method public blacklist setReachabilityOffset(Landroid/window/WindowContainerToken;III)Landroid/window/WindowContainerTransaction;
    .registers 7
    .param p1, "container"    # Landroid/window/WindowContainerToken;
    .param p2, "taskId"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .line 1170
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1, p2, p3, p4}, Landroid/window/WindowContainerTransaction$HierarchyOp;->createForReachability(Landroid/os/IBinder;III)Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1171
    return-object p0
.end method

.method public blacklist setRelativeBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;
    .registers 6
    .param p1, "container"    # Landroid/window/WindowContainerToken;
    .param p2, "relBounds"    # Landroid/graphics/Rect;

    .line 336
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    .line 337
    .local v0, "chg":Landroid/window/WindowContainerTransaction$Change;
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmRelativeBounds(Landroid/window/WindowContainerTransaction$Change;)Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_16

    .line 338
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmRelativeBounds(Landroid/window/WindowContainerTransaction$Change;Landroid/graphics/Rect;)V

    .line 340
    :cond_16
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmRelativeBounds(Landroid/window/WindowContainerTransaction$Change;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 341
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmChangeMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    or-int/lit16 v1, v1, 0x100

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmChangeMask(Landroid/window/WindowContainerTransaction$Change;I)V

    .line 343
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    const/high16 v2, 0x20000000

    or-int/2addr v1, v2

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;I)V

    .line 344
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmWindowSetMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    or-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmWindowSetMask(Landroid/window/WindowContainerTransaction$Change;I)V

    .line 345
    return-object p0
.end method

.method public blacklist setReparentLeafTaskIfRelaunch(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;
    .registers 5
    .param p1, "windowContainer"    # Landroid/window/WindowContainerToken;
    .param p2, "reparentLeafTaskIfRelaunch"    # Z

    .line 407
    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    .line 410
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 411
    invoke-virtual {v0, p2}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setReparentLeafTaskIfRelaunch(Z)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 412
    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v0

    .line 413
    .local v0, "hierarchyOp":Landroid/window/WindowContainerTransaction$HierarchyOp;
    iget-object v1, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    return-object p0
.end method

.method public blacklist setSafeRegionBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;
    .registers 5
    .param p1, "container"    # Landroid/window/WindowContainerToken;
    .param p2, "safeRegionBounds"    # Landroid/graphics/Rect;

    .line 467
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    .line 468
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->createForSetSafeRegionBounds(Landroid/os/IBinder;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v1

    .line 467
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    return-object p0
.end method

.method public blacklist setScreenSizeDp(Landroid/window/WindowContainerToken;II)Landroid/window/WindowContainerTransaction;
    .registers 6
    .param p1, "container"    # Landroid/window/WindowContainerToken;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .line 161
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    .line 162
    .local v0, "chg":Landroid/window/WindowContainerTransaction$Change;
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmConfiguration(Landroid/window/WindowContainerTransaction$Change;)Landroid/content/res/Configuration;

    move-result-object v1

    iput p2, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 163
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmConfiguration(Landroid/window/WindowContainerTransaction$Change;)Landroid/content/res/Configuration;

    move-result-object v1

    iput p3, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 164
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    or-int/lit16 v1, v1, 0x400

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;I)V

    .line 165
    return-object p0
.end method

.method public blacklist setSmallestScreenWidthDp(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;
    .registers 5
    .param p1, "container"    # Landroid/window/WindowContainerToken;
    .param p2, "widthDp"    # I

    .line 279
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    .line 280
    .local v0, "cfg":Landroid/window/WindowContainerTransaction$Change;
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmConfiguration(Landroid/window/WindowContainerTransaction$Change;)Landroid/content/res/Configuration;

    move-result-object v1

    iput p2, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 281
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    or-int/lit16 v1, v1, 0x800

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;I)V

    .line 282
    return-object p0
.end method

.method public blacklist setTaskFragmentOrganizer(Landroid/window/ITaskFragmentOrganizer;)Landroid/window/WindowContainerTransaction;
    .registers 2
    .param p1, "organizer"    # Landroid/window/ITaskFragmentOrganizer;

    .line 957
    iput-object p1, p0, Landroid/window/WindowContainerTransaction;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    .line 958
    return-object p0
.end method

.method public blacklist setTaskTrimmableFromRecents(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;
    .registers 5
    .param p1, "container"    # Landroid/window/WindowContainerToken;
    .param p2, "isTrimmableFromRecents"    # Z

    .line 445
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    .line 446
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->createForSetTaskTrimmableFromRecents(Landroid/os/IBinder;Z)Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v1

    .line 445
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    return-object p0
.end method

.method public blacklist setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;
    .registers 4
    .param p1, "container"    # Landroid/window/WindowContainerToken;
    .param p2, "windowingMode"    # I

    .line 223
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    .line 224
    .local v0, "chg":Landroid/window/WindowContainerTransaction$Change;
    invoke-static {v0, p2}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmWindowingMode(Landroid/window/WindowContainerTransaction$Change;I)V

    .line 225
    return-object p0
.end method

.method public blacklist startActivityInTaskFragment(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;
    .registers 7
    .param p1, "fragmentToken"    # Landroid/os/IBinder;
    .param p2, "callerToken"    # Landroid/os/IBinder;
    .param p3, "activityIntent"    # Landroid/content/Intent;
    .param p4, "activityOptions"    # Landroid/os/Bundle;

    .line 1017
    new-instance v0, Landroid/window/TaskFragmentOperation$Builder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/window/TaskFragmentOperation$Builder;-><init>(I)V

    .line 1019
    invoke-virtual {v0, p2}, Landroid/window/TaskFragmentOperation$Builder;->setActivityToken(Landroid/os/IBinder;)Landroid/window/TaskFragmentOperation$Builder;

    move-result-object v0

    .line 1020
    invoke-virtual {v0, p3}, Landroid/window/TaskFragmentOperation$Builder;->setActivityIntent(Landroid/content/Intent;)Landroid/window/TaskFragmentOperation$Builder;

    move-result-object v0

    .line 1021
    invoke-virtual {v0, p4}, Landroid/window/TaskFragmentOperation$Builder;->setBundle(Landroid/os/Bundle;)Landroid/window/TaskFragmentOperation$Builder;

    move-result-object v0

    .line 1022
    invoke-virtual {v0}, Landroid/window/TaskFragmentOperation$Builder;->build()Landroid/window/TaskFragmentOperation;

    move-result-object v0

    .line 1023
    .local v0, "operation":Landroid/window/TaskFragmentOperation;
    invoke-virtual {p0, p1, v0}, Landroid/window/WindowContainerTransaction;->addTaskFragmentOperation(Landroid/os/IBinder;Landroid/window/TaskFragmentOperation;)Landroid/window/WindowContainerTransaction;

    move-result-object v1

    return-object v1
.end method

.method public blacklist startShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;
    .registers 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "shortcutInfo"    # Landroid/content/pm/ShortcutInfo;
    .param p3, "options"    # Landroid/os/Bundle;

    .line 688
    sget-boolean v0, Landroid/app/Instrumentation;->DEBUG_START_ACTIVITY:Z

    if-eqz v0, :cond_2b

    .line 689
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WCT.startShortcut: shortcutInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " options="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "Instrumentation"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 692
    :cond_2b
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-static {p1, p2, p3}, Landroid/window/WindowContainerTransaction$HierarchyOp;->createForStartShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 694
    return-object p0
.end method

.method public blacklist startTask(ILandroid/os/Bundle;)Landroid/window/WindowContainerTransaction;
    .registers 6
    .param p1, "taskId"    # I
    .param p2, "options"    # Landroid/os/Bundle;

    .line 648
    sget-boolean v0, Landroid/app/Instrumentation;->DEBUG_START_ACTIVITY:Z

    if-eqz v0, :cond_2b

    .line 649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WCT.startTask: taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " options="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "Instrumentation"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 652
    :cond_2b
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->createForTaskLaunch(ILandroid/os/Bundle;)Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 653
    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindowContainerTransaction { changes= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hops= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " errorCallbackToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction;->mErrorCallbackToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " taskFragmentOrganizer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1256
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 1257
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1258
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mErrorCallbackToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1259
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1260
    return-void
.end method
