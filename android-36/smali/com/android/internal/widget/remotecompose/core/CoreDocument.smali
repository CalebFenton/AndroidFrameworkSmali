.class public Lcom/android/internal/widget/remotecompose/core/CoreDocument;
.super Ljava/lang/Object;
.source "CoreDocument.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;,
        Lcom/android/internal/widget/remotecompose/core/CoreDocument$Visitor;,
        Lcom/android/internal/widget/remotecompose/core/CoreDocument$HapticEngine;,
        Lcom/android/internal/widget/remotecompose/core/CoreDocument$ActionCallback;,
        Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;,
        Lcom/android/internal/widget/remotecompose/core/CoreDocument$IdActionCallback;,
        Lcom/android/internal/widget/remotecompose/core/CoreDocument$ShaderControl;
    }
.end annotation


# static fields
.field static final blacklist BUILD:F = 0.0f

.field private static final blacklist DEBUG:Z = false

.field public static final blacklist DOCUMENT_API_LEVEL:I = 0x6

.field public static final blacklist MAJOR_VERSION:I = 0x1

.field public static final blacklist MINOR_VERSION:I = 0x0

.field public static final blacklist PATCH_VERSION:I = 0x0

.field private static final blacklist UPDATE_VARIABLES_BEFORE_LAYOUT:Z = false


# instance fields
.field blacklist mActionListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/internal/widget/remotecompose/core/CoreDocument$ActionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAppliedTouchOperations:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mBuffer:Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;

.field blacklist mClickAreas:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mComponentMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mContentAlignment:I

.field blacklist mContentDescription:Ljava/lang/String;

.field blacklist mContentMode:I

.field blacklist mContentScroll:I

.field blacklist mContentSizing:I

.field private blacklist mDocProperties:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mFirstPaint:Z

.field private final blacklist mFloatExpressions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mHapticEngine:Lcom/android/internal/widget/remotecompose/core/CoreDocument$HapticEngine;

.field blacklist mHeight:I

.field blacklist mIdActionListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/internal/widget/remotecompose/core/CoreDocument$IdActionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIntegerExpressions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIsUpdateDoc:Z

.field private blacklist mLastId:I

.field private blacklist mLastOpCount:I

.field blacklist mOperations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

.field private blacklist mRepaintNext:I

.field blacklist mRequiredCapabilities:J

.field blacklist mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

.field private final blacklist mScaleOutput:[F

.field public blacklist mTimeVariables:Lcom/android/internal/widget/remotecompose/core/TimeVariables;

.field blacklist mTouchListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/internal/widget/remotecompose/core/TouchListener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTranslateOutput:[F

.field blacklist mVersion:Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;

.field blacklist mWidth:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 6

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    .line 84
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    .line 85
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/TimeVariables;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/TimeVariables;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mTimeVariables:Lcom/android/internal/widget/remotecompose/core/TimeVariables;

    .line 88
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;-><init>(III)V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mVersion:Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;

    .line 93
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRequiredCapabilities:J

    .line 94
    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mWidth:I

    .line 95
    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mHeight:I

    .line 97
    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentScroll:I

    .line 98
    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentSizing:I

    .line 99
    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentMode:I

    .line 101
    const/16 v0, 0x22

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentAlignment:I

    .line 103
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-direct {v0, v3}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;-><init>(Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;)V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mBuffer:Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mIntegerExpressions:Ljava/util/HashMap;

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mFloatExpressions:Ljava/util/HashMap;

    .line 109
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mAppliedTouchOperations:Ljava/util/HashSet;

    .line 111
    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mLastId:I

    .line 115
    iput-boolean v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mFirstPaint:Z

    .line 116
    iput-boolean v2, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mIsUpdateDoc:Z

    .line 600
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mActionListeners:Ljava/util/HashSet;

    .line 640
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mIdActionListeners:Ljava/util/HashSet;

    .line 641
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mTouchListeners:Ljava/util/HashSet;

    .line 642
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mClickAreas:Ljava/util/HashSet;

    .line 880
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mComponentMap:Ljava/util/HashMap;

    .line 1253
    const/4 v0, 0x2

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mScaleOutput:[F

    .line 1254
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mTranslateOutput:[F

    .line 1255
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRepaintNext:I

    return-void
.end method

.method private blacklist addChildren(Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;Ljava/util/HashMap;Lcom/android/internal/widget/remotecompose/core/WireBuffer;)I
    .registers 12
    .param p1, "base"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;
    .param p3, "tmp"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[I>;",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            ")I"
        }
    .end annotation

    .line 1483
    .local p2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[I>;"
    invoke-interface {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;->getList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1484
    .local v0, "count":I
    invoke-interface {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;->getList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 1485
    .local v2, "mOperation":Lcom/android/internal/widget/remotecompose/core/Operation;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 1487
    .local v3, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 1488
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .local v4, "values":[I
    goto :goto_3f

    .line 1490
    .end local v4    # "values":[I
    :cond_35
    const/4 v4, 0x2

    new-array v4, v4, [I

    .line 1491
    .restart local v4    # "values":[I
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1493
    :goto_3f
    const/4 v5, 0x0

    aget v6, v4, v5

    const/4 v7, 0x1

    add-int/2addr v6, v7

    aput v6, v4, v5

    .line 1494
    aget v5, v4, v7

    invoke-direct {p0, v2, p3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->sizeOfComponent(Lcom/android/internal/widget/remotecompose/core/Operation;Lcom/android/internal/widget/remotecompose/core/WireBuffer;)I

    move-result v6

    add-int/2addr v5, v6

    aput v5, v4, v7

    .line 1495
    instance-of v5, v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    if-eqz v5, :cond_5b

    .line 1496
    move-object v5, v2

    check-cast v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    invoke-direct {p0, v5, p2, p3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->addChildren(Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;Ljava/util/HashMap;Lcom/android/internal/widget/remotecompose/core/WireBuffer;)I

    move-result v5

    add-int/2addr v0, v5

    .line 1498
    .end local v2    # "mOperation":Lcom/android/internal/widget/remotecompose/core/Operation;
    .end local v3    # "c":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    .end local v4    # "values":[I
    :cond_5b
    goto :goto_10

    .line 1499
    :cond_5c
    return v0
.end method

.method private blacklist applyOperations(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Ljava/util/ArrayList;)V
    .registers 6
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/RemoteContext;",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    .line 928
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 929
    .local v1, "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    if-eqz v2, :cond_1a

    .line 930
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    invoke-interface {v2, p1}, Lcom/android/internal/widget/remotecompose/core/VariableSupport;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 932
    :cond_1a
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v2, :cond_24

    .line 933
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 935
    :cond_24
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/Operation;->markNotDirty()V

    .line 936
    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/Operation;->apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 937
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->incrementOpCount()V

    .line 938
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    if-eqz v2, :cond_3b

    .line 939
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    invoke-interface {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;->getList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->applyOperations(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Ljava/util/ArrayList;)V

    .line 941
    .end local v1    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    :cond_3b
    goto :goto_4

    .line 942
    :cond_3c
    return-void
.end method

.method private blacklist checkShaders(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument$ShaderControl;Ljava/util/List;)V
    .registers 10
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "ctl"    # Lcom/android/internal/widget/remotecompose/core/CoreDocument$ShaderControl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/RemoteContext;",
            "Lcom/android/internal/widget/remotecompose/core/CoreDocument$ShaderControl;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    .line 1570
    .local p3, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 1571
    .local v1, "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/TextData;

    if-eqz v2, :cond_17

    .line 1572
    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/Operation;->apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 1574
    :cond_17
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    if-eqz v2, :cond_25

    .line 1575
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    invoke-interface {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;->getList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, p1, p2, v2}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->checkShaders(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument$ShaderControl;Ljava/util/List;)V

    .line 1577
    :cond_25
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;

    if-eqz v2, :cond_3b

    .line 1578
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;

    .line 1579
    .local v2, "sd":Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->getShaderTextId()I

    move-result v3

    .line 1580
    .local v3, "id":I
    invoke-virtual {p1, v3}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getText(I)Ljava/lang/String;

    move-result-object v4

    .line 1581
    .local v4, "str":Ljava/lang/String;
    invoke-interface {p2, v4}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ShaderControl;->isShaderValid(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->enable(Z)V

    .line 1583
    .end local v1    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    .end local v2    # "sd":Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;
    .end local v3    # "id":I
    .end local v4    # "str":Ljava/lang/String;
    :cond_3b
    goto :goto_4

    .line 1584
    :cond_3c
    return-void
.end method

.method private blacklist computeTranslate(FFFF[F)V
    .registers 14
    .param p1, "w"    # F
    .param p2, "h"    # F
    .param p3, "contentScaleX"    # F
    .param p4, "contentScaleY"    # F
    .param p5, "translateOutput"    # [F

    .line 295
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentAlignment:I

    and-int/lit16 v0, v0, 0xf0

    .line 296
    .local v0, "horizontalContentAlignment":I
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentAlignment:I

    and-int/lit8 v1, v1, 0xf

    .line 297
    .local v1, "verticalContentAlignment":I
    const/4 v2, 0x0

    .line 298
    .local v2, "translateX":F
    const/4 v3, 0x0

    .line 299
    .local v3, "translateY":F
    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, p3

    .line 300
    .local v4, "contentWidth":F
    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mHeight:I

    int-to-float v5, v5

    mul-float/2addr v5, p4

    .line 302
    .local v5, "contentHeight":F
    const/high16 v6, 0x40000000    # 2.0f

    sparse-switch v0, :sswitch_data_36

    goto :goto_21

    .line 310
    :sswitch_18
    sub-float v2, p1, v4

    .line 311
    goto :goto_21

    .line 307
    :sswitch_1b
    sub-float v7, p1, v4

    div-float v2, v7, v6

    .line 308
    goto :goto_21

    .line 305
    :sswitch_20
    nop

    .line 315
    :goto_21
    packed-switch v1, :pswitch_data_44

    :pswitch_24
    goto :goto_2e

    .line 323
    :pswitch_25
    sub-float v3, p2, v5

    .line 324
    goto :goto_2e

    .line 320
    :pswitch_28
    sub-float v7, p2, v5

    div-float v3, v7, v6

    .line 321
    goto :goto_2e

    .line 318
    :pswitch_2d
    nop

    .line 329
    :goto_2e
    const/4 v6, 0x0

    aput v2, p5, v6

    .line 330
    const/4 v6, 0x1

    aput v3, p5, v6

    .line 331
    return-void

    nop

    :sswitch_data_36
    .sparse-switch
        0x10 -> :sswitch_20
        0x20 -> :sswitch_1b
        0x40 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_28
        :pswitch_24
        :pswitch_25
    .end packed-switch
.end method

.method private blacklist getChildOps(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)I
    .registers 7
    .param p1, "base"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 1418
    iget-object v0, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1419
    .local v0, "count":I
    iget-object v1, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 1421
    .local v2, "mOperation":Lcom/android/internal/widget/remotecompose/core/Operation;
    instance-of v3, v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v3, :cond_31

    .line 1422
    const/4 v3, 0x1

    .line 1423
    .local v3, "mult":I
    instance-of v4, v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;

    if-eqz v4, :cond_28

    .line 1424
    move-object v4, v2

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;->estimateIterations()I

    move-result v3

    .line 1426
    :cond_28
    move-object v4, v2

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-direct {p0, v4}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getChildOps(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)I

    move-result v4

    mul-int/2addr v4, v3

    add-int/2addr v0, v4

    .line 1428
    .end local v2    # "mOperation":Lcom/android/internal/widget/remotecompose/core/Operation;
    .end local v3    # "mult":I
    :cond_31
    goto :goto_c

    .line 1429
    :cond_32
    return v0
.end method

.method public static blacklist getDocumentApiLevel()I
    .registers 1

    .line 120
    const/4 v0, 0x6

    return v0
.end method

.method private blacklist getNamedVars(ILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 8
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1236
    .local p2, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    .local p3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 1237
    .local v1, "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable;

    if-eqz v2, :cond_20

    .line 1238
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable;

    .line 1239
    .local v2, "n":Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable;
    iget v3, v2, Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable;->mVarType:I

    if-ne v3, p1, :cond_20

    .line 1240
    iget-object v3, v2, Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable;->mVarName:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1243
    .end local v2    # "n":Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable;
    :cond_20
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    if-eqz v2, :cond_2e

    .line 1244
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    invoke-interface {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;->getList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, p1, v2, p3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getNamedVars(ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1246
    .end local v1    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    :cond_2e
    goto :goto_4

    .line 1247
    :cond_2f
    return-void
.end method

.method private blacklist inflateComponents(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;"
        }
    .end annotation

    .line 814
    .local p1, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 815
    .local v0, "finalOperationsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    move-object v1, v0

    .line 817
    .local v1, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 818
    .local v2, "containers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;>;"
    const/4 v3, 0x0

    .line 820
    .local v3, "lastLayoutComponent":Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mLastId:I

    .line 821
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_13
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 822
    .local v5, "o":Lcom/android/internal/widget/remotecompose/core/Operation;
    instance-of v6, v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    if-eqz v6, :cond_66

    .line 823
    move-object v6, v5

    check-cast v6, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    .line 824
    .local v6, "container":Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;
    instance-of v7, v6, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v7, :cond_5e

    .line 825
    move-object v7, v6

    check-cast v7, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 829
    .local v7, "component":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_49

    .line 830
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    .line 831
    .local v8, "parentContainer":Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;
    instance-of v9, v8, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v9, :cond_49

    .line 832
    move-object v9, v8

    check-cast v9, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v7, v9}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->setParent(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)V

    .line 835
    .end local v8    # "parentContainer":Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;
    :cond_49
    invoke-virtual {v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getComponentId()I

    move-result v8

    iget v9, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mLastId:I

    if-ge v8, v9, :cond_57

    .line 836
    invoke-virtual {v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getComponentId()I

    move-result v8

    iput v8, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mLastId:I

    .line 838
    :cond_57
    instance-of v8, v7, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    if-eqz v8, :cond_5e

    .line 839
    move-object v3, v7

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    .line 842
    .end local v7    # "component":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    :cond_5e
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 843
    invoke-interface {v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;->getList()Ljava/util/ArrayList;

    move-result-object v1

    .line 844
    .end local v6    # "container":Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;
    goto :goto_c4

    :cond_66
    instance-of v6, v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/ContainerEnd;

    if-eqz v6, :cond_b7

    .line 846
    const/4 v6, 0x0

    .line 848
    .restart local v6    # "container":Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7e

    .line 849
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    check-cast v6, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    .line 851
    :cond_7e
    const/4 v7, 0x0

    .line 852
    .local v7, "parentContainer":Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_92

    .line 853
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    check-cast v7, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    .line 855
    :cond_92
    if-eqz v7, :cond_99

    .line 856
    invoke-interface {v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;->getList()Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_9a

    .line 858
    :cond_99
    move-object v1, v0

    .line 860
    :goto_9a
    if-eqz v6, :cond_ac

    .line 861
    instance-of v8, v6, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v8, :cond_a6

    .line 862
    move-object v8, v6

    check-cast v8, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 863
    .local v8, "component":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    invoke-virtual {v8}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->inflate()V

    .line 865
    .end local v8    # "component":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    :cond_a6
    move-object v8, v6

    check-cast v8, Lcom/android/internal/widget/remotecompose/core/Operation;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 867
    :cond_ac
    instance-of v8, v6, Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasOperations;

    if-eqz v8, :cond_b6

    .line 868
    move-object v8, v6

    check-cast v8, Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasOperations;

    invoke-virtual {v8, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasOperations;->setComponent(Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;)V

    .line 870
    .end local v6    # "container":Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;
    .end local v7    # "parentContainer":Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;
    :cond_b6
    goto :goto_c4

    .line 871
    :cond_b7
    instance-of v6, v5, Lcom/android/internal/widget/remotecompose/core/operations/DrawContent;

    if-eqz v6, :cond_c1

    .line 872
    move-object v6, v5

    check-cast v6, Lcom/android/internal/widget/remotecompose/core/operations/DrawContent;

    invoke-virtual {v6, v3}, Lcom/android/internal/widget/remotecompose/core/operations/DrawContent;->setComponent(Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;)V

    .line 874
    :cond_c1
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 876
    .end local v5    # "o":Lcom/android/internal/widget/remotecompose/core/Operation;
    :goto_c4
    goto/16 :goto_13

    .line 877
    :cond_c6
    return-object v1
.end method

.method static synthetic blacklist lambda$applyUpdate$0(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/android/internal/widget/remotecompose/core/Operation;)V
    .registers 9
    .param p0, "txtData"    # Ljava/util/HashMap;
    .param p1, "imgData"    # Ljava/util/HashMap;
    .param p2, "fltData"    # Ljava/util/HashMap;
    .param p3, "intData"    # Ljava/util/HashMap;
    .param p4, "longData"    # Ljava/util/HashMap;
    .param p5, "floatListData"    # Ljava/util/HashMap;
    .param p6, "op"    # Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 468
    instance-of v0, p6, Lcom/android/internal/widget/remotecompose/core/operations/TextData;

    if-eqz v0, :cond_11

    .line 469
    move-object v0, p6

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/TextData;

    .line 470
    .local v0, "d":Lcom/android/internal/widget/remotecompose/core/operations/TextData;
    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/TextData;->mTextId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    .end local v0    # "d":Lcom/android/internal/widget/remotecompose/core/operations/TextData;
    goto :goto_67

    :cond_11
    instance-of v0, p6, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;

    if-eqz v0, :cond_22

    .line 472
    move-object v0, p6

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;

    .line 473
    .local v0, "d":Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;
    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    .end local v0    # "d":Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;
    goto :goto_67

    :cond_22
    instance-of v0, p6, Lcom/android/internal/widget/remotecompose/core/operations/FloatConstant;

    if-eqz v0, :cond_33

    .line 475
    move-object v0, p6

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/FloatConstant;

    .line 476
    .local v0, "d":Lcom/android/internal/widget/remotecompose/core/operations/FloatConstant;
    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/FloatConstant;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    .end local v0    # "d":Lcom/android/internal/widget/remotecompose/core/operations/FloatConstant;
    goto :goto_67

    :cond_33
    instance-of v0, p6, Lcom/android/internal/widget/remotecompose/core/types/IntegerConstant;

    if-eqz v0, :cond_44

    .line 478
    move-object v0, p6

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/types/IntegerConstant;

    .line 479
    .local v0, "d":Lcom/android/internal/widget/remotecompose/core/types/IntegerConstant;
    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/types/IntegerConstant;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    .end local v0    # "d":Lcom/android/internal/widget/remotecompose/core/types/IntegerConstant;
    goto :goto_67

    :cond_44
    instance-of v0, p6, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;

    if-eqz v0, :cond_55

    .line 481
    move-object v0, p6

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;

    .line 482
    .local v0, "d":Lcom/android/internal/widget/remotecompose/core/types/LongConstant;
    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v0    # "d":Lcom/android/internal/widget/remotecompose/core/types/LongConstant;
    goto :goto_66

    .line 483
    :cond_55
    instance-of v0, p6, Lcom/android/internal/widget/remotecompose/core/operations/DataListFloat;

    if-eqz v0, :cond_66

    .line 484
    move-object v0, p6

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/DataListFloat;

    .line 485
    .local v0, "d":Lcom/android/internal/widget/remotecompose/core/operations/DataListFloat;
    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/DataListFloat;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p5, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_67

    .line 483
    .end local v0    # "d":Lcom/android/internal/widget/remotecompose/core/operations/DataListFloat;
    :cond_66
    :goto_66
    nop

    .line 487
    :goto_67
    return-void
.end method

.method static synthetic blacklist lambda$applyUpdate$1(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/android/internal/widget/remotecompose/core/Operation;)V
    .registers 9
    .param p0, "txtData"    # Ljava/util/HashMap;
    .param p1, "imgData"    # Ljava/util/HashMap;
    .param p2, "fltData"    # Ljava/util/HashMap;
    .param p3, "intData"    # Ljava/util/HashMap;
    .param p4, "longData"    # Ljava/util/HashMap;
    .param p5, "floatListData"    # Ljava/util/HashMap;
    .param p6, "op"    # Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 492
    instance-of v0, p6, Lcom/android/internal/widget/remotecompose/core/operations/TextData;

    if-eqz v0, :cond_1d

    .line 493
    move-object v0, p6

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/TextData;

    .line 494
    .local v0, "t":Lcom/android/internal/widget/remotecompose/core/operations/TextData;
    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/TextData;->mTextId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/TextData;

    .line 495
    .local v1, "txtInDoc":Lcom/android/internal/widget/remotecompose/core/operations/TextData;
    if-eqz v1, :cond_1b

    .line 496
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/TextData;->update(Lcom/android/internal/widget/remotecompose/core/operations/TextData;)V

    .line 497
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/TextData;->markDirty()V

    .line 499
    .end local v0    # "t":Lcom/android/internal/widget/remotecompose/core/operations/TextData;
    .end local v1    # "txtInDoc":Lcom/android/internal/widget/remotecompose/core/operations/TextData;
    :cond_1b
    goto/16 :goto_ab

    :cond_1d
    instance-of v0, p6, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;

    if-eqz v0, :cond_3a

    .line 500
    move-object v0, p6

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;

    .line 501
    .local v0, "b":Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;
    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;

    .line 502
    .local v1, "imgInDoc":Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;
    if-eqz v1, :cond_38

    .line 503
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->update(Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;)V

    .line 504
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->markDirty()V

    .line 506
    .end local v0    # "b":Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;
    .end local v1    # "imgInDoc":Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;
    :cond_38
    goto/16 :goto_ab

    :cond_3a
    instance-of v0, p6, Lcom/android/internal/widget/remotecompose/core/operations/FloatConstant;

    if-eqz v0, :cond_56

    .line 507
    move-object v0, p6

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/FloatConstant;

    .line 508
    .local v0, "f":Lcom/android/internal/widget/remotecompose/core/operations/FloatConstant;
    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/FloatConstant;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/FloatConstant;

    .line 509
    .local v1, "fltInDoc":Lcom/android/internal/widget/remotecompose/core/operations/FloatConstant;
    if-eqz v1, :cond_55

    .line 510
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/FloatConstant;->update(Lcom/android/internal/widget/remotecompose/core/operations/FloatConstant;)V

    .line 511
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/FloatConstant;->markDirty()V

    .line 513
    .end local v0    # "f":Lcom/android/internal/widget/remotecompose/core/operations/FloatConstant;
    .end local v1    # "fltInDoc":Lcom/android/internal/widget/remotecompose/core/operations/FloatConstant;
    :cond_55
    goto :goto_ab

    :cond_56
    instance-of v0, p6, Lcom/android/internal/widget/remotecompose/core/types/IntegerConstant;

    if-eqz v0, :cond_72

    .line 514
    move-object v0, p6

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/types/IntegerConstant;

    .line 515
    .local v0, "ic":Lcom/android/internal/widget/remotecompose/core/types/IntegerConstant;
    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/types/IntegerConstant;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/types/IntegerConstant;

    .line 516
    .local v1, "intInDoc":Lcom/android/internal/widget/remotecompose/core/types/IntegerConstant;
    if-eqz v1, :cond_71

    .line 517
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/remotecompose/core/types/IntegerConstant;->update(Lcom/android/internal/widget/remotecompose/core/types/IntegerConstant;)V

    .line 518
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/types/IntegerConstant;->markDirty()V

    .line 520
    .end local v0    # "ic":Lcom/android/internal/widget/remotecompose/core/types/IntegerConstant;
    .end local v1    # "intInDoc":Lcom/android/internal/widget/remotecompose/core/types/IntegerConstant;
    :cond_71
    goto :goto_ab

    :cond_72
    instance-of v0, p6, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;

    if-eqz v0, :cond_8e

    .line 521
    move-object v0, p6

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;

    .line 522
    .local v0, "lc":Lcom/android/internal/widget/remotecompose/core/types/LongConstant;
    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;

    .line 523
    .local v1, "longInDoc":Lcom/android/internal/widget/remotecompose/core/types/LongConstant;
    if-eqz v1, :cond_aa

    .line 524
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;->update(Lcom/android/internal/widget/remotecompose/core/types/LongConstant;)V

    .line 525
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;->markDirty()V

    goto :goto_aa

    .line 527
    .end local v0    # "lc":Lcom/android/internal/widget/remotecompose/core/types/LongConstant;
    .end local v1    # "longInDoc":Lcom/android/internal/widget/remotecompose/core/types/LongConstant;
    :cond_8e
    instance-of v0, p6, Lcom/android/internal/widget/remotecompose/core/operations/DataListFloat;

    if-eqz v0, :cond_aa

    .line 528
    move-object v0, p6

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/DataListFloat;

    .line 529
    .local v0, "lc":Lcom/android/internal/widget/remotecompose/core/operations/DataListFloat;
    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/DataListFloat;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/DataListFloat;

    .line 530
    .local v1, "longInDoc":Lcom/android/internal/widget/remotecompose/core/operations/DataListFloat;
    if-eqz v1, :cond_ab

    .line 531
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/DataListFloat;->update(Lcom/android/internal/widget/remotecompose/core/operations/DataListFloat;)V

    .line 532
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/DataListFloat;->markDirty()V

    goto :goto_ab

    .line 527
    .end local v0    # "lc":Lcom/android/internal/widget/remotecompose/core/operations/DataListFloat;
    .end local v1    # "longInDoc":Lcom/android/internal/widget/remotecompose/core/operations/DataListFloat;
    :cond_aa
    :goto_aa
    nop

    .line 535
    :cond_ab
    :goto_ab
    return-void
.end method

.method private blacklist recursiveTraverse(Ljava/util/ArrayList;Lcom/android/internal/widget/remotecompose/core/CoreDocument$Visitor;)V
    .registers 6
    .param p2, "visitor"    # Lcom/android/internal/widget/remotecompose/core/CoreDocument$Visitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;",
            "Lcom/android/internal/widget/remotecompose/core/CoreDocument$Visitor;",
            ")V"
        }
    .end annotation

    .line 543
    .local p1, "mOperations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 544
    .local v1, "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    if-eqz v2, :cond_1e

    .line 545
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    invoke-interface {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;->getList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->recursiveTraverse(Ljava/util/ArrayList;Lcom/android/internal/widget/remotecompose/core/CoreDocument$Visitor;)V

    .line 547
    :cond_1e
    invoke-interface {p2, v1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$Visitor;->visit(Lcom/android/internal/widget/remotecompose/core/Operation;)V

    .line 548
    .end local v1    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    goto :goto_4

    .line 549
    :cond_22
    return-void
.end method

.method private blacklist registerVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Ljava/util/ArrayList;)V
    .registers 10
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/RemoteContext;",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    .line 890
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 891
    .local v1, "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    if-eqz v2, :cond_1a

    .line 892
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    invoke-interface {v2, p1}, Lcom/android/internal/widget/remotecompose/core/VariableSupport;->registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 894
    :cond_1a
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v2, :cond_37

    .line 895
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mComponentMap:Ljava/util/HashMap;

    move-object v3, v1

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getComponentId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v4, v1

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 896
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->registerVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 898
    :cond_37
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    if-eqz v2, :cond_45

    .line 899
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    invoke-interface {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;->getList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->registerVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Ljava/util/ArrayList;)V

    .line 901
    :cond_45
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;

    if-eqz v2, :cond_7e

    .line 902
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;

    .line 903
    .local v2, "v":Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mComponentMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;->getComponentId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 904
    .local v3, "component":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    if-eqz v3, :cond_62

    .line 905
    invoke-virtual {v3, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->addComponentValue(Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;)V

    goto :goto_7e

    .line 907
    :cond_62
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "=> Component not found for id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;->getComponentId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 910
    .end local v2    # "v":Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;
    .end local v3    # "component":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    :cond_7e
    :goto_7e
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    if-eqz v2, :cond_a4

    .line 911
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->getList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;

    .line 912
    .local v3, "modifier":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;
    instance-of v4, v3, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    if-eqz v4, :cond_a3

    .line 913
    move-object v4, v3

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    invoke-interface {v4, p1}, Lcom/android/internal/widget/remotecompose/core/VariableSupport;->registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 915
    .end local v3    # "modifier":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;
    :cond_a3
    goto :goto_8d

    .line 917
    .end local v1    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    :cond_a4
    goto/16 :goto_4

    .line 918
    :cond_a6
    return-void
.end method

.method private blacklist sizeOfComponent(Lcom/android/internal/widget/remotecompose/core/Operation;Lcom/android/internal/widget/remotecompose/core/WireBuffer;)I
    .registers 5
    .param p1, "com"    # Lcom/android/internal/widget/remotecompose/core/Operation;
    .param p2, "tmp"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 1474
    const/16 v0, 0x64

    invoke-virtual {p2, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->reset(I)V

    .line 1475
    invoke-virtual {p1, p2}, Lcom/android/internal/widget/remotecompose/core/Operation;->write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 1476
    invoke-virtual {p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->getSize()I

    move-result v1

    .line 1477
    .local v1, "size":I
    invoke-virtual {p2, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->reset(I)V

    .line 1478
    return v1
.end method

.method private blacklist toNestedString(Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 11
    .param p1, "base"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;
    .param p2, "ret"    # Ljava/lang/StringBuilder;
    .param p3, "indent"    # Ljava/lang/String;

    .line 1523
    invoke-interface {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;->getList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 1524
    .local v1, "mOperation":Lcom/android/internal/widget/remotecompose/core/Operation;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    const/4 v5, 0x0

    :goto_20
    if-ge v5, v4, :cond_30

    aget-object v6, v2, v5

    .line 1525
    .local v6, "line":Ljava/lang/String;
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1526
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1527
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1524
    .end local v6    # "line":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    .line 1529
    :cond_30
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    if-eqz v2, :cond_4d

    .line 1530
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, p2, v3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->toNestedString(Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1532
    .end local v1    # "mOperation":Lcom/android/internal/widget/remotecompose/core/Operation;
    :cond_4d
    goto :goto_8

    .line 1533
    :cond_4e
    return-void
.end method

.method private blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;ILjava/util/List;)V
    .registers 7
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "theme"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/RemoteContext;",
            "I",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    .line 1285
    .local p3, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_34

    .line 1286
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 1287
    .local v1, "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/Operation;->isDirty()Z

    move-result v2

    if-eqz v2, :cond_23

    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    if-eqz v2, :cond_23

    .line 1288
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    invoke-interface {v2, p1}, Lcom/android/internal/widget/remotecompose/core/VariableSupport;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 1289
    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/Operation;->apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 1290
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/Operation;->markNotDirty()V

    .line 1292
    :cond_23
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    if-eqz v2, :cond_31

    .line 1293
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    invoke-interface {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;->getList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, p1, p2, v2}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;ILjava/util/List;)V

    .line 1285
    .end local v1    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1296
    .end local v0    # "i":I
    :cond_34
    return-void
.end method

.method private blacklist warnClickListeners(Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;)V
    .registers 6
    .param p1, "clickArea"    # Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;

    .line 1105
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mIdActionListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/CoreDocument$IdActionCallback;

    .line 1106
    .local v1, "listener":Lcom/android/internal/widget/remotecompose/core/CoreDocument$IdActionCallback;
    iget v2, p1, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mId:I

    iget-object v3, p1, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mMetadata:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$IdActionCallback;->onAction(ILjava/lang/String;)V

    .line 1107
    .end local v1    # "listener":Lcom/android/internal/widget/remotecompose/core/CoreDocument$IdActionCallback;
    goto :goto_6

    .line 1108
    :cond_1a
    return-void
.end method


# virtual methods
.method public blacklist addActionCallback(Lcom/android/internal/widget/remotecompose/core/CoreDocument$ActionCallback;)V
    .registers 3
    .param p1, "callback"    # Lcom/android/internal/widget/remotecompose/core/CoreDocument$ActionCallback;

    .line 621
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mActionListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 622
    return-void
.end method

.method public blacklist addClickArea(ILjava/lang/String;FFFFLjava/lang/String;)V
    .registers 16
    .param p1, "id"    # I
    .param p2, "contentDescription"    # Ljava/lang/String;
    .param p3, "left"    # F
    .param p4, "top"    # F
    .param p5, "right"    # F
    .param p6, "bottom"    # F
    .param p7, "metadata"    # Ljava/lang/String;

    .line 1029
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    .end local p1    # "id":I
    .end local p2    # "contentDescription":Ljava/lang/String;
    .end local p3    # "left":F
    .end local p4    # "top":F
    .end local p5    # "right":F
    .end local p6    # "bottom":F
    .end local p7    # "metadata":Ljava/lang/String;
    .local v1, "id":I
    .local v2, "contentDescription":Ljava/lang/String;
    .local v3, "left":F
    .local v4, "top":F
    .local v5, "right":F
    .local v6, "bottom":F
    .local v7, "metadata":Ljava/lang/String;
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;-><init>(ILjava/lang/String;FFFFLjava/lang/String;)V

    .line 1033
    .local v0, "car":Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mClickAreas:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p1

    .line 1034
    .local p1, "old":Z
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mClickAreas:Ljava/util/HashSet;

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1035
    return-void
.end method

.method public blacklist addIdActionListener(Lcom/android/internal/widget/remotecompose/core/CoreDocument$IdActionCallback;)V
    .registers 3
    .param p1, "callback"    # Lcom/android/internal/widget/remotecompose/core/CoreDocument$IdActionCallback;

    .line 1052
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mIdActionListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1053
    return-void
.end method

.method public blacklist addTouchListener(Lcom/android/internal/widget/remotecompose/core/TouchListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/internal/widget/remotecompose/core/TouchListener;

    .line 1043
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mTouchListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1044
    return-void
.end method

.method public blacklist appliedTouchOperation(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)V
    .registers 3
    .param p1, "component"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 586
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mAppliedTouchOperations:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 587
    return-void
.end method

.method public blacklist applyUpdate(Lcom/android/internal/widget/remotecompose/core/CoreDocument;)V
    .registers 10
    .param p1, "delta"    # Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    .line 459
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v2, v0

    .line 460
    .local v2, "txtData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/internal/widget/remotecompose/core/operations/TextData;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 461
    .local v3, "imgData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 462
    .local v4, "fltData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/internal/widget/remotecompose/core/operations/FloatConstant;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 463
    .local v5, "intData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/internal/widget/remotecompose/core/types/IntegerConstant;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 464
    .local v6, "longData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/internal/widget/remotecompose/core/types/LongConstant;>;"
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 465
    .local v7, "floatListData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/internal/widget/remotecompose/core/operations/DataListFloat;>;"
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/CoreDocument$$ExternalSyntheticLambda0;

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$$ExternalSyntheticLambda0;-><init>(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->recursiveTraverse(Ljava/util/ArrayList;Lcom/android/internal/widget/remotecompose/core/CoreDocument$Visitor;)V

    .line 489
    iget-object v0, p1, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/CoreDocument$$ExternalSyntheticLambda1;

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$$ExternalSyntheticLambda1;-><init>(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->recursiveTraverse(Ljava/util/ArrayList;Lcom/android/internal/widget/remotecompose/core/CoreDocument$Visitor;)V

    .line 536
    return-void
.end method

.method public blacklist canBeDisplayed(IIJ)Z
    .registers 8
    .param p1, "playerMajorVersion"    # I
    .param p2, "playerMinorVersion"    # I
    .param p3, "capabilities"    # J

    .line 981
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mVersion:Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;

    iget v0, v0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;->major:I

    const/4 v1, 0x1

    if-ge v0, p1, :cond_8

    .line 982
    return v1

    .line 984
    :cond_8
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mVersion:Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;

    iget v0, v0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;->major:I

    const/4 v2, 0x0

    if-le v0, p1, :cond_10

    .line 985
    return v2

    .line 988
    :cond_10
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mVersion:Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;

    iget v0, v0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;->minor:I

    if-gt v0, p2, :cond_17

    goto :goto_18

    :cond_17
    move v1, v2

    :goto_18
    return v1
.end method

.method public blacklist checkShaders(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument$ShaderControl;)V
    .registers 4
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "ctl"    # Lcom/android/internal/widget/remotecompose/core/CoreDocument$ShaderControl;

    .line 1558
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->checkShaders(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument$ShaderControl;Ljava/util/List;)V

    .line 1559
    return-void
.end method

.method public blacklist clearActionCallbacks()V
    .registers 2

    .line 626
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mActionListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 627
    return-void
.end method

.method public blacklist computeScale(FF[F)V
    .registers 11
    .param p1, "w"    # F
    .param p2, "h"    # F
    .param p3, "scaleOutput"    # [F

    .line 226
    const/high16 v0, 0x3f800000    # 1.0f

    .line 227
    .local v0, "contentScaleX":F
    const/high16 v1, 0x3f800000    # 1.0f

    .line 228
    .local v1, "contentScaleY":F
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentSizing:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6b

    .line 230
    const/high16 v2, 0x3f800000    # 1.0f

    .line 231
    .local v2, "scaleX":F
    const/high16 v3, 0x3f800000    # 1.0f

    .line 232
    .local v3, "scaleY":F
    const/high16 v4, 0x3f800000    # 1.0f

    .line 233
    .local v4, "scale":F
    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentMode:I

    packed-switch v5, :pswitch_data_72

    goto :goto_6b

    .line 266
    :pswitch_15
    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mWidth:I

    int-to-float v5, v5

    div-float v2, p1, v5

    .line 267
    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mHeight:I

    int-to-float v5, v5

    div-float v3, p2, v5

    .line 268
    move v0, v2

    .line 269
    move v1, v3

    .line 270
    goto :goto_6b

    .line 259
    :pswitch_22
    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mWidth:I

    int-to-float v5, v5

    div-float v2, p1, v5

    .line 260
    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mHeight:I

    int-to-float v5, v5

    div-float v3, p2, v5

    .line 261
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 262
    move v0, v4

    .line 263
    move v1, v4

    .line 264
    goto :goto_6b

    .line 242
    :pswitch_33
    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mWidth:I

    int-to-float v5, v5

    div-float v2, p1, v5

    .line 243
    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mHeight:I

    int-to-float v5, v5

    div-float v3, p2, v5

    .line 244
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 245
    move v0, v4

    .line 246
    move v1, v4

    .line 247
    goto :goto_6b

    .line 254
    :pswitch_44
    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mHeight:I

    int-to-float v5, v5

    div-float v4, p2, v5

    .line 255
    move v0, v4

    .line 256
    move v1, v4

    .line 257
    goto :goto_6b

    .line 249
    :pswitch_4c
    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mWidth:I

    int-to-float v5, v5

    div-float v4, p1, v5

    .line 250
    move v0, v4

    .line 251
    move v1, v4

    .line 252
    goto :goto_6b

    .line 235
    :pswitch_54
    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mWidth:I

    int-to-float v5, v5

    div-float v2, p1, v5

    .line 236
    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mHeight:I

    int-to-float v5, v5

    div-float v3, p2, v5

    .line 237
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 238
    move v0, v4

    .line 239
    move v1, v4

    .line 240
    nop

    .line 275
    .end local v2    # "scaleX":F
    .end local v3    # "scaleY":F
    .end local v4    # "scale":F
    :cond_6b
    :goto_6b
    const/4 v2, 0x0

    aput v0, p3, v2

    .line 276
    const/4 v2, 0x1

    aput v1, p3, v2

    .line 277
    return-void

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_54
        :pswitch_4c
        :pswitch_44
        :pswitch_33
        :pswitch_22
        :pswitch_15
    .end packed-switch
.end method

.method public blacklist displayHierarchy()Ljava/lang/String;
    .registers 7

    .line 381
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;-><init>()V

    .line 382
    .local v0, "serializer":Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 383
    .local v2, "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    instance-of v3, v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    const/4 v4, 0x0

    if-eqz v3, :cond_26

    .line 384
    move-object v3, v2

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    move-object v5, v2

    check-cast v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v3, v5, v4, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->displayHierarchy(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V

    goto :goto_30

    .line 385
    :cond_26
    instance-of v3, v2, Lcom/android/internal/widget/remotecompose/core/SerializableToString;

    if-eqz v3, :cond_30

    .line 386
    move-object v3, v2

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/SerializableToString;

    invoke-interface {v3, v4, v0}, Lcom/android/internal/widget/remotecompose/core/SerializableToString;->serializeToString(ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V

    .line 388
    .end local v2    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    :cond_30
    :goto_30
    goto :goto_b

    .line 389
    :cond_31
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist evaluateFloatExpression(IILcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 6
    .param p1, "expressionId"    # I
    .param p2, "targetId"    # I
    .param p3, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 417
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mFloatExpressions:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;

    .line 418
    .local v0, "expression":Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;
    if-eqz v0, :cond_15

    .line 419
    invoke-virtual {v0, p3}, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->evaluate(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v1

    .line 420
    .local v1, "v":F
    invoke-virtual {p3, p2, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->overrideFloat(IF)V

    .line 422
    .end local v1    # "v":F
    :cond_15
    return-void
.end method

.method public blacklist evaluateIntExpression(JILcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 7
    .param p1, "expressionId"    # J
    .param p3, "targetId"    # I
    .param p4, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 401
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mIntegerExpressions:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;

    .line 402
    .local v0, "expression":Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;
    if-eqz v0, :cond_15

    .line 403
    invoke-virtual {v0, p4}, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->evaluate(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)I

    move-result v1

    .line 404
    .local v1, "v":I
    invoke-virtual {p4, p3, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->overrideInteger(II)V

    .line 406
    .end local v1    # "v":I
    :cond_15
    return-void
.end method

.method public blacklist getBuffer()Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;
    .registers 2

    .line 170
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mBuffer:Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;

    return-object v0
.end method

.method public blacklist getClickAreas()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;",
            ">;"
        }
    .end annotation

    .line 340
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mClickAreas:Ljava/util/HashSet;

    return-object v0
.end method

.method public blacklist getComponent(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .registers 3
    .param p1, "id"    # I

    .line 368
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    if-eqz v0, :cond_b

    .line 369
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->getComponent(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    move-result-object v0

    return-object v0

    .line 371
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getContentDescription()Ljava/lang/String;
    .registers 2

    .line 125
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentDescription:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getContentMode()I
    .registers 2

    .line 195
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentMode:I

    return v0
.end method

.method public blacklist getContentScroll()I
    .registers 2

    .line 187
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentScroll:I

    return v0
.end method

.method public blacklist getContentSizing()I
    .registers 2

    .line 191
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentSizing:I

    return v0
.end method

.method public blacklist getHeight()I
    .registers 2

    .line 155
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mHeight:I

    return v0
.end method

.method public blacklist getIdActionListeners()Ljava/util/HashSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lcom/android/internal/widget/remotecompose/core/CoreDocument$IdActionCallback;",
            ">;"
        }
    .end annotation

    .line 1062
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mIdActionListeners:Ljava/util/HashSet;

    return-object v0
.end method

.method public blacklist getNamedColors()[Ljava/lang/String;
    .registers 2

    .line 1221
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getNamedVariables(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getNamedVariables(I)[Ljava/lang/String;
    .registers 4
    .param p1, "type"    # I

    .line 1230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1231
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getNamedVars(ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1232
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public blacklist getNumberOfOps()I
    .registers 5

    .line 1407
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1409
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 1410
    .local v2, "mOperation":Lcom/android/internal/widget/remotecompose/core/Operation;
    instance-of v3, v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v3, :cond_24

    .line 1411
    move-object v3, v2

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-direct {p0, v3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getChildOps(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)I

    move-result v3

    add-int/2addr v0, v3

    .line 1413
    .end local v2    # "mOperation":Lcom/android/internal/widget/remotecompose/core/Operation;
    :cond_24
    goto :goto_c

    .line 1414
    :cond_25
    return v0
.end method

.method public blacklist getOperations()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;"
        }
    .end annotation

    .line 1537
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getOpsPerFrame()I
    .registers 2

    .line 1264
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mLastOpCount:I

    return v0
.end method

.method public blacklist getProperty(S)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # S

    .line 447
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mDocProperties:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    if-nez v0, :cond_6

    .line 448
    const/4 v0, 0x0

    return-object v0

    .line 450
    :cond_6
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mDocProperties:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getRemoteComposeState()Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;
    .registers 2

    .line 179
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    return-object v0
.end method

.method public blacklist getRequiredCapabilities()J
    .registers 3

    .line 133
    iget-wide v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRequiredCapabilities:J

    return-wide v0
.end method

.method public blacklist getRootLayoutComponent()Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;
    .registers 2

    .line 350
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    return-object v0
.end method

.method public blacklist getStats()[Ljava/lang/String;
    .registers 12

    .line 1439
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1440
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;-><init>()V

    .line 1441
    .local v1, "buffer":Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1442
    .local v2, "count":I
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1443
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[I>;"
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_76

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 1444
    .local v5, "mOperation":Lcom/android/internal/widget/remotecompose/core/Operation;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 1446
    .local v8, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_42

    .line 1447
    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [I

    .local v9, "values":[I
    goto :goto_4c

    .line 1449
    .end local v9    # "values":[I
    :cond_42
    const/4 v9, 0x2

    new-array v9, v9, [I

    .line 1450
    .restart local v9    # "values":[I
    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1453
    :goto_4c
    aget v10, v9, v7

    add-int/2addr v10, v6

    aput v10, v9, v7

    .line 1454
    aget v7, v9, v6

    invoke-direct {p0, v5, v1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->sizeOfComponent(Lcom/android/internal/widget/remotecompose/core/Operation;Lcom/android/internal/widget/remotecompose/core/WireBuffer;)I

    move-result v10

    add-int/2addr v7, v10

    aput v7, v9, v6

    .line 1455
    instance-of v6, v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    if-eqz v6, :cond_67

    .line 1456
    move-object v6, v5

    check-cast v6, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    .line 1457
    .local v6, "com":Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;
    invoke-direct {p0, v6, v3, v1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->addChildren(Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;Ljava/util/HashMap;Lcom/android/internal/widget/remotecompose/core/WireBuffer;)I

    move-result v7

    add-int/2addr v2, v7

    .end local v6    # "com":Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;
    goto :goto_74

    .line 1458
    :cond_67
    instance-of v6, v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;

    if-eqz v6, :cond_74

    .line 1459
    move-object v6, v5

    check-cast v6, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;

    .line 1460
    .local v6, "com":Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;
    invoke-direct {p0, v6, v3, v1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->addChildren(Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;Ljava/util/HashMap;Lcom/android/internal/widget/remotecompose/core/WireBuffer;)I

    move-result v7

    add-int/2addr v2, v7

    goto :goto_75

    .line 1458
    .end local v6    # "com":Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;
    :cond_74
    :goto_74
    nop

    .line 1462
    .end local v5    # "mOperation":Lcom/android/internal/widget/remotecompose/core/Operation;
    .end local v8    # "c":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    .end local v9    # "values":[I
    :goto_75
    goto :goto_1b

    .line 1464
    :cond_76
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "number of operations : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v7, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1466
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_94
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_cf

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1467
    .local v5, "s":Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    .line 1468
    .local v8, "v":[I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget v10, v8, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget v10, v8, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1469
    .end local v5    # "s":Ljava/lang/String;
    .end local v8    # "v":[I
    goto :goto_94

    .line 1470
    :cond_cf
    new-array v4, v7, [Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    return-object v4
.end method

.method public blacklist getWidth()I
    .registers 2

    .line 141
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mWidth:I

    return v0
.end method

.method public blacklist haptic(I)V
    .registers 3
    .param p1, "type"    # I

    .line 573
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mHapticEngine:Lcom/android/internal/widget/remotecompose/core/CoreDocument$HapticEngine;

    if-eqz v0, :cond_9

    .line 574
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mHapticEngine:Lcom/android/internal/widget/remotecompose/core/CoreDocument$HapticEngine;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$HapticEngine;->haptic(I)V

    .line 576
    :cond_9
    return-void
.end method

.method public blacklist hasTouchListener()Z
    .registers 5

    .line 1116
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    .line 1117
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->hasTouchListeners()Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v1

    goto :goto_11

    :cond_10
    move v0, v2

    .line 1118
    .local v0, "hasComponentsTouchListeners":Z
    :goto_11
    if-nez v0, :cond_1d

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mTouchListeners:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1c

    goto :goto_1d

    :cond_1c
    move v1, v2

    :cond_1d
    :goto_1d
    return v1
.end method

.method public blacklist initFromBuffer(Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;)V
    .registers 8
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;

    .line 776
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    .line 777
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->inflateFromBuffer(Ljava/util/ArrayList;)V

    .line 778
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 779
    .local v1, "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/Header;

    if-eqz v2, :cond_28

    .line 781
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/Header;

    .line 782
    .local v2, "header":Lcom/android/internal/widget/remotecompose/core/operations/Header;
    invoke-virtual {v2, p0}, Lcom/android/internal/widget/remotecompose/core/operations/Header;->setVersion(Lcom/android/internal/widget/remotecompose/core/CoreDocument;)V

    .line 784
    .end local v2    # "header":Lcom/android/internal/widget/remotecompose/core/operations/Header;
    :cond_28
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;

    if-eqz v2, :cond_3b

    .line 785
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;

    .line 786
    .local v2, "expression":Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mIntegerExpressions:Ljava/util/HashMap;

    iget v4, v2, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mId:I

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 788
    .end local v2    # "expression":Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;
    :cond_3b
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;

    if-eqz v2, :cond_4d

    .line 789
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;

    .line 790
    .local v2, "expression":Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mFloatExpressions:Ljava/util/HashMap;

    iget v4, v2, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    .end local v1    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    .end local v2    # "expression":Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;
    :cond_4d
    goto :goto_12

    .line 793
    :cond_4e
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->inflateComponents(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    .line 794
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mBuffer:Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;

    .line 795
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_75

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 796
    .restart local v1    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    if-eqz v2, :cond_74

    .line 797
    move-object v0, v1

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    .line 798
    goto :goto_75

    .line 800
    .end local v1    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    :cond_74
    goto :goto_5e

    .line 801
    :cond_75
    :goto_75
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    if-eqz v0, :cond_80

    .line 802
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mLastId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->assignIds(I)V

    .line 804
    :cond_80
    return-void
.end method

.method public blacklist initializeContext(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 4
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 949
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->reset()V

    .line 950
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->setContext(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 951
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mClickAreas:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 952
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->setNextId(I)V

    .line 953
    iput-object p0, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    .line 954
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    iput-object v0, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    .line 956
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;->DATA:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    iput-object v0, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mMode:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    .line 957
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mTimeVariables:Lcom/android/internal/widget/remotecompose/core/TimeVariables;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/TimeVariables;->updateTime(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 959
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->registerVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Ljava/util/ArrayList;)V

    .line 960
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->applyOperations(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Ljava/util/ArrayList;)V

    .line 961
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;->UNSET:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    iput-object v0, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mMode:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    .line 966
    return-void
.end method

.method public blacklist invalidateMeasure()V
    .registers 2

    .line 355
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    if-eqz v0, :cond_9

    .line 356
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->invalidateMeasure()V

    .line 358
    :cond_9
    return-void
.end method

.method public blacklist isUpdateDoc()Z
    .registers 2

    .line 1599
    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mIsUpdateDoc:Z

    return v0
.end method

.method public blacklist needsRepaint()I
    .registers 2

    .line 1273
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRepaintNext:I

    return v0
.end method

.method public blacklist onClick(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FF)V
    .registers 7
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 1070
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mClickAreas:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;

    .line 1071
    .local v1, "clickArea":Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;
    invoke-virtual {v1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1072
    invoke-direct {p0, v1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->warnClickListeners(Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;)V

    .line 1074
    .end local v1    # "clickArea":Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;
    :cond_1b
    goto :goto_6

    .line 1075
    :cond_1c
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    if-eqz v0, :cond_25

    .line 1076
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    invoke-virtual {v0, p1, p0, p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->onClick(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;FF)V

    .line 1078
    :cond_25
    return-void
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/RemoteContext;I)V
    .registers 14
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "theme"    # I

    .line 1305
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->clearLastOpCount()V

    .line 1306
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getPaintContext()Lcom/android/internal/widget/remotecompose/core/PaintContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->clearNeedsRepaint()V

    .line 1307
    const/16 v0, 0x1b

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getDensity()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 1308
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;->UNSET:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    iput-object v0, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mMode:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    .line 1311
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->setTheme(I)V

    .line 1313
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    iput-object v1, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    .line 1314
    iget-object v1, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->setContext(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 1328
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentSizing:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_59

    .line 1330
    iget v1, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mWidth:F

    iget v2, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mHeight:F

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mScaleOutput:[F

    invoke-virtual {p0, v1, v2, v5}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->computeScale(FF[F)V

    .line 1331
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mScaleOutput:[F

    aget v8, v1, v3

    .line 1332
    .local v8, "sw":F
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mScaleOutput:[F

    aget v9, v1, v4

    .line 1333
    .local v9, "sh":F
    iget v6, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mWidth:F

    iget v7, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mHeight:F

    iget-object v10, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mTranslateOutput:[F

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->computeTranslate(FFFF[F)V

    .line 1334
    iget-object v1, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mPaintContext:Lcom/android/internal/widget/remotecompose/core/PaintContext;

    iget-object v2, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mTranslateOutput:[F

    aget v2, v2, v3

    iget-object v6, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mTranslateOutput:[F

    aget v6, v6, v4

    invoke-virtual {v1, v2, v6}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    .line 1335
    iget-object v1, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mPaintContext:Lcom/android/internal/widget/remotecompose/core/PaintContext;

    invoke-virtual {v1, v8, v9}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->scale(FF)V

    .line 1336
    .end local v8    # "sw":F
    .end local v9    # "sh":F
    goto :goto_66

    .line 1339
    :cond_59
    move-object v5, p0

    iget v1, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mWidth:F

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->setWidth(I)V

    .line 1340
    iget v1, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mHeight:F

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->setHeight(I)V

    .line 1342
    :goto_66
    iget-object v1, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mTimeVariables:Lcom/android/internal/widget/remotecompose/core/TimeVariables;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/TimeVariables;->updateTime(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 1343
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->updateOps()I

    move-result v1

    iput v1, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRepaintNext:I

    .line 1344
    iget-object v1, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    if-eqz v1, :cond_bd

    .line 1345
    iget v1, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mWidth:F

    iget-object v2, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->getWidth()F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_8d

    iget v1, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mHeight:F

    iget-object v2, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    .line 1346
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->getHeight()F

    move-result v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_92

    .line 1347
    :cond_8d
    iget-object v1, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->invalidateMeasure()V

    .line 1349
    :cond_92
    iget-object v1, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->needsMeasure()Z

    move-result v1

    if-eqz v1, :cond_9f

    .line 1350
    iget-object v1, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 1352
    :cond_9f
    iget-object v1, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->needsBoundsAnimation()Z

    move-result v1

    if-eqz v1, :cond_b3

    .line 1353
    iput v4, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRepaintNext:I

    .line 1354
    iget-object v1, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->clearNeedsBoundsAnimation()V

    .line 1355
    iget-object v1, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->animatingBounds(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 1361
    :cond_b3
    iget-object v1, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->doesNeedsRepaint()Z

    move-result v1

    if-eqz v1, :cond_bd

    .line 1362
    iput v4, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRepaintNext:I

    .line 1365
    :cond_bd
    sget-object v1, Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;->PAINT:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    iput-object v1, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mMode:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    .line 1366
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c2
    iget-object v2, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_10a

    .line 1367
    iget-object v2, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 1370
    .local v2, "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    const/4 v6, 0x1

    .line 1371
    .local v6, "apply":Z
    if-eq p2, v0, :cond_e6

    .line 1372
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getTheme()I

    move-result v7

    .line 1373
    .local v7, "currentTheme":I
    if-eq v7, p2, :cond_e4

    if-eq v7, v0, :cond_e4

    instance-of v8, v2, Lcom/android/internal/widget/remotecompose/core/operations/Theme;

    if-eqz v8, :cond_e2

    goto :goto_e4

    :cond_e2
    move v8, v3

    goto :goto_e5

    :cond_e4
    :goto_e4
    move v8, v4

    :goto_e5
    move v6, v8

    .line 1378
    .end local v7    # "currentTheme":I
    :cond_e6
    if-eqz v6, :cond_107

    .line 1379
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/Operation;->isDirty()Z

    move-result v7

    .line 1380
    .local v7, "opIsDirty":Z
    if-nez v7, :cond_f2

    instance-of v8, v2, Lcom/android/internal/widget/remotecompose/core/PaintOperation;

    if-eqz v8, :cond_107

    .line 1381
    :cond_f2
    if-eqz v7, :cond_101

    instance-of v8, v2, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    if-eqz v8, :cond_101

    .line 1382
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/Operation;->markNotDirty()V

    .line 1383
    move-object v8, v2

    check-cast v8, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    invoke-interface {v8, p1}, Lcom/android/internal/widget/remotecompose/core/VariableSupport;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 1385
    :cond_101
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->incrementOpCount()V

    .line 1386
    invoke-virtual {v2, p1}, Lcom/android/internal/widget/remotecompose/core/Operation;->apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 1366
    .end local v2    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    .end local v6    # "apply":Z
    .end local v7    # "opIsDirty":Z
    :cond_107
    add-int/lit8 v1, v1, 0x1

    goto :goto_c2

    .line 1390
    .end local v1    # "i":I
    :cond_10a
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getPaintContext()Lcom/android/internal/widget/remotecompose/core/PaintContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->doesNeedsRepaint()Z

    move-result v0

    if-nez v0, :cond_120

    iget-object v0, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    if-eqz v0, :cond_122

    iget-object v0, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    .line 1391
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->doesNeedsRepaint()Z

    move-result v0

    if-eqz v0, :cond_122

    .line 1392
    :cond_120
    iput v4, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRepaintNext:I

    .line 1394
    :cond_122
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;->UNSET:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    iput-object v0, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mMode:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    .line 1398
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getLastOpCount()I

    move-result v0

    iput v0, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mLastOpCount:I

    .line 1399
    return-void
.end method

.method public blacklist performClick(Lcom/android/internal/widget/remotecompose/core/RemoteContext;ILjava/lang/String;)V
    .registers 7
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "id"    # I
    .param p3, "metadata"    # Ljava/lang/String;

    .line 1086
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mClickAreas:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;

    .line 1087
    .local v1, "clickArea":Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;
    iget v2, v1, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mId:I

    if-ne v2, p2, :cond_1a

    .line 1088
    invoke-direct {p0, v1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->warnClickListeners(Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;)V

    .line 1089
    return-void

    .line 1091
    .end local v1    # "clickArea":Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;
    :cond_1a
    goto :goto_6

    .line 1093
    :cond_1b
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mIdActionListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/CoreDocument$IdActionCallback;

    .line 1094
    .local v1, "listener":Lcom/android/internal/widget/remotecompose/core/CoreDocument$IdActionCallback;
    invoke-interface {v1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$IdActionCallback;->onAction(ILjava/lang/String;)V

    .line 1095
    .end local v1    # "listener":Lcom/android/internal/widget/remotecompose/core/CoreDocument$IdActionCallback;
    goto :goto_21

    .line 1097
    :cond_31
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getComponent(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    move-result-object v0

    .line 1098
    .local v0, "component":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    if-eqz v0, :cond_3c

    .line 1099
    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, p1, p0, v1, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->onClick(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;FF)V

    .line 1101
    :cond_3c
    return-void
.end method

.method public blacklist runNamedAction(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 610
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mActionListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ActionCallback;

    .line 611
    .local v1, "callback":Lcom/android/internal/widget/remotecompose/core/CoreDocument$ActionCallback;
    invoke-interface {v1, p1, p2}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ActionCallback;->onAction(Ljava/lang/String;Ljava/lang/Object;)V

    .line 612
    .end local v1    # "callback":Lcom/android/internal/widget/remotecompose/core/CoreDocument$ActionCallback;
    goto :goto_6

    .line 613
    :cond_16
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 5
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 426
    nop

    .line 427
    const-string v0, "CoreDocument"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mWidth:I

    .line 428
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "width"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mHeight:I

    .line 429
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "height"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    .line 430
    const-string v2, "operations"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/util/List;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 431
    return-void
.end method

.method public blacklist setBuffer(Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;)V
    .registers 2
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;

    .line 174
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mBuffer:Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;

    .line 175
    return-void
.end method

.method public blacklist setContentDescription(Ljava/lang/String;)V
    .registers 2
    .param p1, "contentDescription"    # Ljava/lang/String;

    .line 129
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentDescription:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public blacklist setHapticEngine(Lcom/android/internal/widget/remotecompose/core/CoreDocument$HapticEngine;)V
    .registers 2
    .param p1, "engine"    # Lcom/android/internal/widget/remotecompose/core/CoreDocument$HapticEngine;

    .line 564
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mHapticEngine:Lcom/android/internal/widget/remotecompose/core/CoreDocument$HapticEngine;

    .line 565
    return-void
.end method

.method public blacklist setHeight(I)V
    .registers 4
    .param p1, "height"    # I

    .line 164
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mHeight:I

    .line 165
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->setWindowHeight(F)V

    .line 166
    return-void
.end method

.method public blacklist setProperties(Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 439
    .local p1, "properties":Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;, "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mDocProperties:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    .line 440
    return-void
.end method

.method public blacklist setRemoteComposeState(Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;)V
    .registers 2
    .param p1, "remoteComposeState"    # Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    .line 183
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    .line 184
    return-void
.end method

.method public blacklist setRequiredCapabilities(J)V
    .registers 3
    .param p1, "requiredCapabilities"    # J

    .line 137
    iput-wide p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRequiredCapabilities:J

    .line 138
    return-void
.end method

.method public blacklist setRootContentBehavior(IIII)V
    .registers 5
    .param p1, "scroll"    # I
    .param p2, "alignment"    # I
    .param p3, "sizing"    # I
    .param p4, "mode"    # I

    .line 211
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentScroll:I

    .line 212
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentAlignment:I

    .line 213
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentSizing:I

    .line 214
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentMode:I

    .line 215
    return-void
.end method

.method public blacklist setUpdateDoc(Z)V
    .registers 2
    .param p1, "isUpdateDoc"    # Z

    .line 1592
    iput-boolean p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mIsUpdateDoc:Z

    .line 1593
    return-void
.end method

.method public blacklist setVersion(III)V
    .registers 5
    .param p1, "majorVersion"    # I
    .param p2, "minorVersion"    # I
    .param p3, "patch"    # I

    .line 999
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;-><init>(III)V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mVersion:Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;

    .line 1000
    return-void
.end method

.method public blacklist setWidth(I)V
    .registers 4
    .param p1, "width"    # I

    .line 150
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mWidth:I

    .line 151
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->setWindowWidth(F)V

    .line 152
    return-void
.end method

.method public blacklist toNestedString()Ljava/lang/String;
    .registers 6

    .line 1510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1511
    .local v0, "ret":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 1512
    .local v2, "mOperation":Lcom/android/internal/widget/remotecompose/core/Operation;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1513
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1514
    instance-of v3, v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    if-eqz v3, :cond_2f

    .line 1515
    move-object v3, v2

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    const-string v4, "  "

    invoke-direct {p0, v3, v0, v4}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->toNestedString(Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1517
    .end local v2    # "mOperation":Lcom/android/internal/widget/remotecompose/core/Operation;
    :cond_2f
    goto :goto_b

    .line 1518
    :cond_30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 1206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1207
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 1208
    .local v2, "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1209
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1210
    .end local v2    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    goto :goto_b

    .line 1211
    :cond_24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist touchCancel(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FFFF)V
    .registers 14
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "dx"    # F
    .param p5, "dy"    # F

    .line 1194
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    if-eqz v0, :cond_2a

    .line 1195
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mAppliedTouchOperations:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 1196
    .local v2, "component":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    const/4 v7, 0x1

    move-object v4, p0

    move-object v3, p1

    move v5, p2

    move v6, p3

    .end local p1    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .end local p2    # "x":F
    .end local p3    # "y":F
    .local v3, "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .local v5, "x":F
    .local v6, "y":F
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->onTouchCancel(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;FFZ)V

    .line 1197
    .end local v2    # "component":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    goto :goto_a

    .line 1198
    .end local v3    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .end local v5    # "x":F
    .end local v6    # "y":F
    .restart local p1    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .restart local p2    # "x":F
    .restart local p3    # "y":F
    :cond_20
    move-object v4, p0

    move-object v3, p1

    move v5, p2

    move v6, p3

    .end local p1    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .end local p2    # "x":F
    .end local p3    # "y":F
    .restart local v3    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .restart local v5    # "x":F
    .restart local v6    # "y":F
    iget-object p1, v4, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mAppliedTouchOperations:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    goto :goto_2e

    .line 1194
    .end local v3    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .end local v5    # "x":F
    .end local v6    # "y":F
    .restart local p1    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .restart local p2    # "x":F
    .restart local p3    # "y":F
    :cond_2a
    move-object v4, p0

    move-object v3, p1

    move v5, p2

    move v6, p3

    .line 1200
    .end local p1    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .end local p2    # "x":F
    .end local p3    # "y":F
    .restart local v3    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .restart local v5    # "x":F
    .restart local v6    # "y":F
    :goto_2e
    const/4 p1, 0x1

    iput p1, v4, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRepaintNext:I

    .line 1201
    return-void
.end method

.method public blacklist touchDown(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FF)V
    .registers 6
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 1155
    const/16 v0, 0xd

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 1156
    const/16 v0, 0xe

    invoke-virtual {p1, v0, p3}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 1157
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mTouchListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/TouchListener;

    .line 1158
    .local v1, "clickArea":Lcom/android/internal/widget/remotecompose/core/TouchListener;
    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/TouchListener;->touchDown(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FF)V

    .line 1159
    .end local v1    # "clickArea":Lcom/android/internal/widget/remotecompose/core/TouchListener;
    goto :goto_10

    .line 1160
    :cond_20
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    if-eqz v0, :cond_29

    .line 1161
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    invoke-virtual {v0, p1, p0, p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->onTouchDown(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;FF)V

    .line 1163
    :cond_29
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRepaintNext:I

    .line 1164
    return-void
.end method

.method public blacklist touchDrag(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FF)Z
    .registers 13
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 1129
    const/16 v0, 0xd

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 1130
    const/16 v0, 0xe

    invoke-virtual {p1, v0, p3}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 1131
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mTouchListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/TouchListener;

    .line 1132
    .local v1, "clickArea":Lcom/android/internal/widget/remotecompose/core/TouchListener;
    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/TouchListener;->touchDrag(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FF)V

    .line 1133
    .end local v1    # "clickArea":Lcom/android/internal/widget/remotecompose/core/TouchListener;
    goto :goto_10

    .line 1134
    :cond_20
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    const/4 v1, 0x1

    if-eqz v0, :cond_4e

    .line 1135
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mAppliedTouchOperations:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 1136
    .local v3, "component":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    const/4 v8, 0x1

    move-object v5, p0

    move-object v4, p1

    move v6, p2

    move v7, p3

    .end local p1    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .end local p2    # "x":F
    .end local p3    # "y":F
    .local v4, "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .local v6, "x":F
    .local v7, "y":F
    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->onTouchDrag(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;FFZ)V

    .line 1137
    .end local v3    # "component":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    goto :goto_2b

    .line 1138
    .end local v4    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .end local v6    # "x":F
    .end local v7    # "y":F
    .restart local p1    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .restart local p2    # "x":F
    .restart local p3    # "y":F
    :cond_41
    move-object v5, p0

    move-object v4, p1

    move v6, p2

    move v7, p3

    .end local p1    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .end local p2    # "x":F
    .end local p3    # "y":F
    .restart local v4    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .restart local v6    # "x":F
    .restart local v7    # "y":F
    iget-object p1, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mAppliedTouchOperations:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_52

    .line 1139
    return v1

    .line 1134
    .end local v4    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .end local v6    # "x":F
    .end local v7    # "y":F
    .restart local p1    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .restart local p2    # "x":F
    .restart local p3    # "y":F
    :cond_4e
    move-object v5, p0

    move-object v4, p1

    move v6, p2

    move v7, p3

    .line 1142
    .end local p1    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .end local p2    # "x":F
    .end local p3    # "y":F
    .restart local v4    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .restart local v6    # "x":F
    .restart local v7    # "y":F
    :cond_52
    iget-object p1, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mTouchListeners:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5b

    .line 1143
    return v1

    .line 1145
    :cond_5b
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist touchUp(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FFFF)V
    .registers 15
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "dx"    # F
    .param p5, "dy"    # F

    .line 1173
    const/16 v0, 0xd

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 1174
    const/16 v0, 0xe

    invoke-virtual {p1, v0, p3}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 1175
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mTouchListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/remotecompose/core/TouchListener;

    .line 1176
    .local v5, "clickArea":Lcom/android/internal/widget/remotecompose/core/TouchListener;
    move-object v4, p1

    move v6, p3

    move v7, p4

    move v8, p5

    move-object v3, v5

    move v5, p2

    .end local v5    # "clickArea":Lcom/android/internal/widget/remotecompose/core/TouchListener;
    .local v3, "clickArea":Lcom/android/internal/widget/remotecompose/core/TouchListener;
    invoke-interface/range {v3 .. v8}, Lcom/android/internal/widget/remotecompose/core/TouchListener;->touchUp(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FFFF)V

    .line 1177
    .end local v3    # "clickArea":Lcom/android/internal/widget/remotecompose/core/TouchListener;
    goto :goto_10

    .line 1178
    :cond_26
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    if-eqz v0, :cond_4c

    .line 1179
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mAppliedTouchOperations:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_30
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 1180
    .local v0, "component":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    const/4 v7, 0x1

    move-object v2, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->onTouchUp(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;FFFFZ)V

    .line 1181
    .end local v0    # "component":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    goto :goto_30

    .line 1182
    :cond_47
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mAppliedTouchOperations:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1184
    :cond_4c
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRepaintNext:I

    .line 1185
    return-void
.end method
