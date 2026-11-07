.class public Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;
.super Ljava/lang/Object;
.source "RemoteComposeState.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;


# static fields
.field private static final blacklist MAX_DATA:I = 0x3e8

.field public static final blacklist START_ID:I = 0x2a

.field private static blacklist sMaxColors:I


# instance fields
.field blacklist mAllVarListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/VariableSupport;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCollectionMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<",
            "Lcom/android/internal/widget/remotecompose/core/operations/utilities/ArrayAccess;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mColorMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;

.field private blacklist mColorOverride:[Z

.field private final blacklist mDataIntMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDataMapMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<",
            "Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDataOverride:[Z

.field private final blacklist mFloatMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;

.field private final blacklist mFloatOverride:[Z

.field private blacklist mIdMaps:[I

.field private final blacklist mIntDataMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIntWrittenMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIntegerMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;

.field private final blacklist mIntegerOverride:[Z

.field private blacklist mNextId:I

.field private final blacklist mObjectMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPathData:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<",
            "[F>;"
        }
    .end annotation
.end field

.field private final blacklist mPathMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRemoteContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

.field blacklist mVarListeners:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/VariableSupport;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 40
    const/16 v0, 0xc8

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->sMaxColors:I

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 4

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntDataMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    .line 44
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntWrittenMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mDataIntMap:Ljava/util/HashMap;

    .line 46
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mFloatMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;

    .line 47
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntegerMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;

    .line 48
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mColorMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;

    .line 49
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mDataMapMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    .line 50
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mObjectMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    .line 53
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mPathMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    .line 54
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mPathData:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    .line 56
    sget v0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->sMaxColors:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mColorOverride:[Z

    .line 57
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mCollectionMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    .line 59
    const/16 v0, 0x3e8

    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mDataOverride:[Z

    .line 60
    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntegerOverride:[Z

    .line 61
    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mFloatOverride:[Z

    .line 63
    const/16 v0, 0x2a

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mNextId:I

    .line 64
    const v1, 0x10002a

    const v2, 0x20002a

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIdMaps:[I

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mRemoteContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 445
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mVarListeners:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    .line 446
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mAllVarListeners:Ljava/util/ArrayList;

    return-void
.end method

.method private blacklist add(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "variableSupport"    # Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    .line 449
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mVarListeners:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 450
    .local v0, "v":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/remotecompose/core/VariableSupport;>;"
    if-nez v0, :cond_15

    .line 451
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 452
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mVarListeners:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 454
    :cond_15
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mAllVarListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    return-void
.end method

.method private blacklist updateListeners(I)V
    .registers 5
    .param p1, "id"    # I

    .line 330
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mVarListeners:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 331
    .local v0, "v":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/remotecompose/core/VariableSupport;>;"
    if-eqz v0, :cond_21

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mRemoteContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    if-eqz v1, :cond_21

    .line 332
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 333
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    .line 334
    .local v2, "c":Lcom/android/internal/widget/remotecompose/core/VariableSupport;
    invoke-interface {v2}, Lcom/android/internal/widget/remotecompose/core/VariableSupport;->markDirty()V

    .line 332
    .end local v2    # "c":Lcom/android/internal/widget/remotecompose/core/VariableSupport;
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 337
    .end local v1    # "i":I
    :cond_21
    return-void
.end method


# virtual methods
.method public blacklist addCollection(ILcom/android/internal/widget/remotecompose/core/operations/utilities/ArrayAccess;)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "collection"    # Lcom/android/internal/widget/remotecompose/core/operations/utilities/ArrayAccess;

    .line 522
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mCollectionMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const v1, 0xfffff

    and-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 523
    return-void
.end method

.method public blacklist cacheData(Ljava/lang/Object;)I
    .registers 5
    .param p1, "item"    # Ljava/lang/Object;

    .line 103
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->nextId()I

    move-result v0

    .line 104
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mDataIntMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntDataMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v1, v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 106
    return v0
.end method

.method public blacklist cacheData(Ljava/lang/Object;I)I
    .registers 6
    .param p1, "item"    # Ljava/lang/Object;
    .param p2, "type"    # I

    .line 114
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->nextId(I)I

    move-result v0

    .line 115
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mDataIntMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntDataMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v1, v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 117
    return v0
.end method

.method public blacklist cacheData(ILjava/lang/Object;)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "item"    # Ljava/lang/Object;

    .line 122
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mDataIntMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntDataMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 124
    return-void
.end method

.method public blacklist cacheFloat(F)I
    .registers 5
    .param p1, "item"    # F

    .line 200
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->nextId()I

    move-result v0

    .line 201
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mFloatMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;

    invoke-virtual {v1, v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;->put(IF)F

    .line 202
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntegerMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;

    float-to-int v2, p1

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->put(II)I

    .line 203
    return v0
.end method

.method public blacklist cacheFloat(IF)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "item"    # F

    .line 208
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mFloatMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;->put(IF)F

    .line 209
    return-void
.end method

.method public blacklist cacheInteger(I)I
    .registers 5
    .param p1, "item"    # I

    .line 246
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->nextId()I

    move-result v0

    .line 247
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntegerMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;

    invoke-virtual {v1, v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->put(II)I

    .line 248
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mFloatMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;

    int-to-float v2, p1

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;->put(IF)F

    .line 249
    return v0
.end method

.method public blacklist clearColorOverride()V
    .registers 4

    .line 357
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mColorOverride:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_e

    .line 358
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mColorOverride:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 357
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 360
    .end local v0    # "i":I
    :cond_e
    return-void
.end method

.method public blacklist clearDataOverride(I)V
    .registers 4
    .param p1, "id"    # I

    .line 368
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mDataOverride:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 369
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->updateListeners(I)V

    .line 370
    return-void
.end method

.method public blacklist clearFloatOverride(I)V
    .registers 4
    .param p1, "id"    # I

    .line 388
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mFloatOverride:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 389
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->updateListeners(I)V

    .line 390
    return-void
.end method

.method public blacklist clearIntegerOverride(I)V
    .registers 4
    .param p1, "id"    # I

    .line 378
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntegerOverride:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 379
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->updateListeners(I)V

    .line 380
    return-void
.end method

.method public blacklist containsId(I)Z
    .registers 3
    .param p1, "id"    # I

    .line 86
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntDataMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist dataGetId(Ljava/lang/Object;)I
    .registers 4
    .param p1, "data"    # Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mDataIntMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 92
    .local v0, "res":Ljava/lang/Integer;
    if-nez v0, :cond_c

    .line 93
    const/4 v1, -0x1

    return v1

    .line 95
    :cond_c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public blacklist getColor(I)I
    .registers 3
    .param p1, "id"    # I

    .line 312
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mColorMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->get(I)I

    move-result v0

    return v0
.end method

.method public blacklist getDataMap(I)Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;
    .registers 3
    .param p1, "id"    # I

    .line 557
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mDataMapMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;

    return-object v0
.end method

.method public blacklist getFloat(I)F
    .registers 3
    .param p1, "id"    # I

    .line 292
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mFloatMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;->get(I)F

    move-result v0

    return v0
.end method

.method public blacklist getFloatValue(II)F
    .registers 5
    .param p1, "id"    # I
    .param p2, "index"    # I

    .line 527
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mCollectionMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const v1, 0xfffff

    and-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ArrayAccess;

    invoke-interface {v0, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ArrayAccess;->getFloatValue(I)F

    move-result v0

    return v0
.end method

.method public blacklist getFloats(I)[F
    .registers 4
    .param p1, "id"    # I

    .line 532
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mCollectionMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const v1, 0xfffff

    and-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ArrayAccess;

    invoke-interface {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ArrayAccess;->getFloats()[F

    move-result-object v0

    return-object v0
.end method

.method public blacklist getFromId(I)Ljava/lang/Object;
    .registers 3
    .param p1, "id"    # I

    .line 76
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntDataMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getId(II)I
    .registers 5
    .param p1, "id"    # I
    .param p2, "index"    # I

    .line 537
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mCollectionMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const v1, 0xfffff

    and-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ArrayAccess;

    invoke-interface {v0, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ArrayAccess;->getId(I)I

    move-result v0

    return v0
.end method

.method public blacklist getInteger(I)I
    .registers 3
    .param p1, "id"    # I

    .line 302
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntegerMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->get(I)I

    move-result v0

    return v0
.end method

.method public blacklist getListLength(I)I
    .registers 4
    .param p1, "id"    # I

    .line 562
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mCollectionMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const v1, 0xfffff

    and-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ArrayAccess;

    invoke-interface {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ArrayAccess;->getLength()I

    move-result v0

    return v0
.end method

.method public blacklist getObject(I)Ljava/lang/Object;
    .registers 3
    .param p1, "id"    # I

    .line 592
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mObjectMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getOpsToUpdate(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)I
    .registers 4
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 485
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mVarListeners:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 486
    return v1

    .line 488
    :cond_a
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mVarListeners:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 489
    const/16 v0, 0x3e8

    return v0

    .line 491
    :cond_16
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mVarListeners:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 492
    const v0, 0xea60

    return v0

    .line 494
    :cond_23
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getPath(I)Ljava/lang/Object;
    .registers 3
    .param p1, "id"    # I

    .line 146
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mPathMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPathData(I)[F
    .registers 3
    .param p1, "id"    # I

    .line 178
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mPathData:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method

.method public blacklist hasListener(I)Z
    .registers 3
    .param p1, "id"    # I

    .line 475
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mVarListeners:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist listenToVar(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V
    .registers 3
    .param p1, "id"    # I
    .param p2, "variableSupport"    # Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    .line 465
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->add(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 466
    return-void
.end method

.method public blacklist markWritten(I)V
    .registers 4
    .param p1, "id"    # I

    .line 405
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntWrittenMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 406
    return-void
.end method

.method public blacklist nextId()I
    .registers 3

    .line 420
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mNextId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mNextId:I

    return v0
.end method

.method public blacklist nextId(I)I
    .registers 5
    .param p1, "type"    # I

    .line 430
    if-nez p1, :cond_9

    .line 431
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mNextId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mNextId:I

    return v0

    .line 433
    :cond_9
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIdMaps:[I

    aget v1, v0, p1

    add-int/lit8 v2, v1, 0x1

    aput v2, v0, p1

    return v1
.end method

.method public blacklist overrideColor(II)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "color"    # I

    .line 346
    sget v0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->sMaxColors:I

    if-lt p1, v0, :cond_14

    .line 347
    sget v0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->sMaxColors:I

    mul-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->sMaxColors:I

    .line 348
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mColorOverride:[Z

    sget v1, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->sMaxColors:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mColorOverride:[Z

    .line 350
    :cond_14
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mColorOverride:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 351
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mColorMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->put(II)I

    .line 352
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->updateListeners(I)V

    .line 353
    return-void
.end method

.method public blacklist overrideData(ILjava/lang/Object;)V
    .registers 6
    .param p1, "id"    # I
    .param p2, "item"    # Ljava/lang/Object;

    .line 188
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntDataMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 189
    .local v0, "previous":Ljava/lang/Object;
    if-eq v0, p2, :cond_23

    .line 190
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mDataIntMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mDataIntMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntDataMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 193
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mDataOverride:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p1

    .line 194
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->updateListeners(I)V

    .line 196
    :cond_23
    return-void
.end method

.method public blacklist overrideFloat(IF)V
    .registers 6
    .param p1, "id"    # I
    .param p2, "value"    # F

    .line 230
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mFloatMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;->get(I)F

    move-result v0

    .line 231
    .local v0, "previous":F
    cmpl-float v1, v0, p2

    if-eqz v1, :cond_1d

    .line 232
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mFloatMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;->put(IF)F

    .line 233
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntegerMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;

    float-to-int v2, p2

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->put(II)I

    .line 234
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mFloatOverride:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p1

    .line 235
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->updateListeners(I)V

    .line 237
    :cond_1d
    return-void
.end method

.method public blacklist overrideInteger(II)V
    .registers 6
    .param p1, "id"    # I
    .param p2, "value"    # I

    .line 276
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntegerMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->get(I)I

    move-result v0

    .line 277
    .local v0, "previous":I
    if-eq v0, p2, :cond_1b

    .line 278
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntegerMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->put(II)I

    .line 279
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mFloatMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;

    int-to-float v2, p2

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;->put(IF)F

    .line 280
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntegerOverride:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p1

    .line 281
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->updateListeners(I)V

    .line 283
    :cond_1b
    return-void
.end method

.method public blacklist putDataMap(ILcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "map"    # Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;

    .line 547
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mDataMapMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 548
    return-void
.end method

.method public blacklist putPath(ILjava/lang/Object;)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "path"    # Ljava/lang/Object;

    .line 156
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mPathMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 157
    return-void
.end method

.method public blacklist putPathData(I[F)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "data"    # [F

    .line 167
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mPathData:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mPathMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->remove(I)Ljava/lang/Object;

    .line 169
    return-void
.end method

.method public blacklist reset()V
    .registers 2

    .line 410
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntWrittenMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->clear()V

    .line 411
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mDataIntMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 412
    return-void
.end method

.method public blacklist setContext(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 3
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 571
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mRemoteContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 572
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mRemoteContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->clearLastOpCount()V

    .line 573
    return-void
.end method

.method public blacklist setNextId(I)V
    .registers 2
    .param p1, "id"    # I

    .line 442
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mNextId:I

    .line 443
    return-void
.end method

.method public blacklist setWindowHeight(F)V
    .registers 3
    .param p1, "height"    # F

    .line 512
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->updateFloat(IF)V

    .line 513
    return-void
.end method

.method public blacklist setWindowWidth(F)V
    .registers 3
    .param p1, "width"    # F

    .line 503
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->updateFloat(IF)V

    .line 504
    return-void
.end method

.method public blacklist updateColor(II)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "color"    # I

    .line 322
    sget v0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->sMaxColors:I

    if-ge p1, v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mColorOverride:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_b

    .line 323
    return-void

    .line 325
    :cond_b
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mColorMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->put(II)I

    .line 326
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->updateListeners(I)V

    .line 327
    return-void
.end method

.method public blacklist updateData(ILjava/lang/Object;)V
    .registers 6
    .param p1, "id"    # I
    .param p2, "item"    # Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mDataOverride:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_24

    .line 129
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntDataMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 130
    .local v0, "previous":Ljava/lang/Object;
    if-eq v0, p2, :cond_24

    .line 131
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mDataIntMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mDataIntMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntDataMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->updateListeners(I)V

    .line 137
    .end local v0    # "previous":Ljava/lang/Object;
    :cond_24
    return-void
.end method

.method public blacklist updateFloat(IF)V
    .registers 6
    .param p1, "id"    # I
    .param p2, "value"    # F

    .line 213
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mFloatOverride:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_1e

    .line 214
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mFloatMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;->get(I)F

    move-result v0

    .line 215
    .local v0, "previous":F
    cmpl-float v1, v0, p2

    if-eqz v1, :cond_1e

    .line 216
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mFloatMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;->put(IF)F

    .line 217
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntegerMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;

    float-to-int v2, p2

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->put(II)I

    .line 218
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->updateListeners(I)V

    .line 221
    .end local v0    # "previous":F
    :cond_1e
    return-void
.end method

.method public blacklist updateInteger(II)V
    .registers 6
    .param p1, "id"    # I
    .param p2, "value"    # I

    .line 259
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntegerOverride:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_1c

    .line 260
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntegerMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->get(I)I

    move-result v0

    .line 261
    .local v0, "previous":I
    if-eq v0, p2, :cond_1c

    .line 262
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mFloatMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;

    int-to-float v2, p2

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;->put(IF)F

    .line 263
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntegerMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->put(II)I

    .line 264
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->updateListeners(I)V

    .line 267
    .end local v0    # "previous":I
    :cond_1c
    return-void
.end method

.method public blacklist updateObject(ILjava/lang/Object;)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 582
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mObjectMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 583
    return-void
.end method

.method public blacklist wasNotWritten(I)Z
    .registers 3
    .param p1, "id"    # I

    .line 400
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntWrittenMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
