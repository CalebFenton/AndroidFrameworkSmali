.class public Landroid/graphics/PathIterator;
.super Ljava/lang/Object;
.source "PathIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/PathIterator$NoImagePreloadHolder;,
        Landroid/graphics/PathIterator$Segment;,
        Landroid/graphics/PathIterator$Verb;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Landroid/graphics/PathIterator$Segment;",
        ">;"
    }
.end annotation


# static fields
.field private static final blacklist IS_DALVIK:Z

.field private static final blacklist POINT_ARRAY_SIZE:I = 0x8

.field public static final whitelist VERB_CLOSE:I = 0x5

.field public static final whitelist VERB_CONIC:I = 0x3

.field public static final whitelist VERB_CUBIC:I = 0x4

.field public static final whitelist VERB_DONE:I = 0x6

.field public static final whitelist VERB_LINE:I = 0x1

.field public static final whitelist VERB_MOVE:I = 0x0

.field public static final whitelist VERB_QUAD:I = 0x2


# instance fields
.field private blacklist mCachedVerb:I

.field private blacklist mDone:Z

.field private final blacklist mNativeIterator:J

.field private final blacklist mPath:Landroid/graphics/Path;

.field private final blacklist mPathGenerationId:I

.field private final blacklist mPointsAddress:J

.field private final blacklist mPointsArray:[F


# direct methods
.method static bridge synthetic blacklist -$$Nest$smnGetFinalizer()J
    .registers 2

    invoke-static {}, Landroid/graphics/PathIterator;->nGetFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 48
    nop

    .line 49
    const-string/jumbo v0, "java.vm.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    const-string v1, "dalvik"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/graphics/PathIterator;->IS_DALVIK:Z

    .line 78
    return-void
.end method

.method constructor blacklist <init>(Landroid/graphics/Path;)V
    .registers 5
    .param p1, "path"    # Landroid/graphics/Path;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/PathIterator;->mCachedVerb:I

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/PathIterator;->mDone:Z

    .line 90
    iput-object p1, p0, Landroid/graphics/PathIterator;->mPath:Landroid/graphics/Path;

    .line 91
    iget-object v0, p0, Landroid/graphics/PathIterator;->mPath:Landroid/graphics/Path;

    iget-wide v0, v0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1}, Landroid/graphics/PathIterator;->nCreate(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/PathIterator;->mNativeIterator:J

    .line 92
    iget-object v0, p0, Landroid/graphics/PathIterator;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->getGenerationId()I

    move-result v0

    iput v0, p0, Landroid/graphics/PathIterator;->mPathGenerationId:I

    .line 93
    sget-boolean v0, Landroid/graphics/PathIterator;->IS_DALVIK:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_3a

    .line 94
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    .line 95
    .local v0, "runtime":Ldalvik/system/VMRuntime;
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2, v1}, Ldalvik/system/VMRuntime;->newNonMovableArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, p0, Landroid/graphics/PathIterator;->mPointsArray:[F

    .line 96
    iget-object v1, p0, Landroid/graphics/PathIterator;->mPointsArray:[F

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->addressOf(Ljava/lang/Object;)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/graphics/PathIterator;->mPointsAddress:J

    .line 97
    .end local v0    # "runtime":Ldalvik/system/VMRuntime;
    goto :goto_42

    .line 98
    :cond_3a
    new-array v0, v1, [F

    iput-object v0, p0, Landroid/graphics/PathIterator;->mPointsArray:[F

    .line 99
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/graphics/PathIterator;->mPointsAddress:J

    .line 101
    :goto_42
    invoke-static {}, Landroid/graphics/PathIterator$NoImagePreloadHolder;->-$$Nest$sfgetsRegistry()Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    iget-wide v1, p0, Landroid/graphics/PathIterator;->mNativeIterator:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 102
    return-void
.end method

.method private blacklist getReturnVerb(I)I
    .registers 3
    .param p1, "cachedVerb"    # I

    .line 230
    packed-switch p1, :pswitch_data_16

    .line 239
    invoke-direct {p0}, Landroid/graphics/PathIterator;->nextInternal()I

    move-result v0

    return v0

    .line 237
    :pswitch_8
    const/4 v0, 0x6

    return v0

    .line 236
    :pswitch_a
    const/4 v0, 0x5

    return v0

    .line 235
    :pswitch_c
    const/4 v0, 0x4

    return v0

    .line 234
    :pswitch_e
    const/4 v0, 0x3

    return v0

    .line 233
    :pswitch_10
    const/4 v0, 0x2

    return v0

    .line 232
    :pswitch_12
    const/4 v0, 0x1

    return v0

    .line 231
    :pswitch_14
    const/4 v0, 0x0

    return v0

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_14
        :pswitch_12
        :pswitch_10
        :pswitch_e
        :pswitch_c
        :pswitch_a
        :pswitch_8
    .end packed-switch
.end method

.method private static native blacklist nCreate(J)J
.end method

.method private static native blacklist nGetFinalizer()J
.end method

.method private static native blacklist nNext(JJ)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nNextHost(J[F)I
.end method

.method private static native blacklist nPeek(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private blacklist nextInternal()I
    .registers 7

    .line 188
    iget-boolean v0, p0, Landroid/graphics/PathIterator;->mDone:Z

    const/4 v1, 0x6

    if-eqz v0, :cond_6

    .line 189
    return v1

    .line 191
    :cond_6
    iget v0, p0, Landroid/graphics/PathIterator;->mPathGenerationId:I

    iget-object v2, p0, Landroid/graphics/PathIterator;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->getGenerationId()I

    move-result v2

    if-ne v0, v2, :cond_2b

    .line 195
    sget-boolean v0, Landroid/graphics/PathIterator;->IS_DALVIK:Z

    if-eqz v0, :cond_1d

    .line 196
    iget-wide v2, p0, Landroid/graphics/PathIterator;->mNativeIterator:J

    iget-wide v4, p0, Landroid/graphics/PathIterator;->mPointsAddress:J

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/PathIterator;->nNext(JJ)I

    move-result v0

    goto :goto_25

    :cond_1d
    iget-wide v2, p0, Landroid/graphics/PathIterator;->mNativeIterator:J

    iget-object v0, p0, Landroid/graphics/PathIterator;->mPointsArray:[F

    invoke-static {v2, v3, v0}, Landroid/graphics/PathIterator;->nNextHost(J[F)I

    move-result v0

    .line 197
    .local v0, "verb":I
    :goto_25
    if-ne v0, v1, :cond_2a

    .line 198
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/graphics/PathIterator;->mDone:Z

    .line 200
    :cond_2a
    return v0

    .line 192
    .end local v0    # "verb":I
    :cond_2b
    new-instance v0, Ljava/util/ConcurrentModificationException;

    const-string v1, "Iterator cannot be used on modified Path"

    invoke-direct {v0, v1}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 3

    .line 151
    iget v0, p0, Landroid/graphics/PathIterator;->mCachedVerb:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 152
    invoke-direct {p0}, Landroid/graphics/PathIterator;->nextInternal()I

    move-result v0

    iput v0, p0, Landroid/graphics/PathIterator;->mCachedVerb:I

    .line 154
    :cond_b
    iget v0, p0, Landroid/graphics/PathIterator;->mCachedVerb:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public whitelist next([FI)I
    .registers 7
    .param p1, "points"    # [F
    .param p2, "offset"    # I

    .line 129
    array-length v0, p1

    add-int/lit8 v1, p2, 0x8

    if-lt v0, v1, :cond_17

    .line 133
    iget v0, p0, Landroid/graphics/PathIterator;->mCachedVerb:I

    invoke-direct {p0, v0}, Landroid/graphics/PathIterator;->getReturnVerb(I)I

    move-result v0

    .line 134
    .local v0, "returnVerb":I
    const/4 v1, -0x1

    iput v1, p0, Landroid/graphics/PathIterator;->mCachedVerb:I

    .line 135
    iget-object v1, p0, Landroid/graphics/PathIterator;->mPointsArray:[F

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-static {v1, v2, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    return v0

    .line 130
    .end local v0    # "returnVerb":I
    :cond_17
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string/jumbo v1, "points array must be able to hold at least 8 entries"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist next()Landroid/graphics/PathIterator$Segment;
    .registers 7

    .line 218
    iget v0, p0, Landroid/graphics/PathIterator;->mCachedVerb:I

    invoke-direct {p0, v0}, Landroid/graphics/PathIterator;->getReturnVerb(I)I

    move-result v0

    .line 219
    .local v0, "returnVerb":I
    const/4 v1, -0x1

    iput v1, p0, Landroid/graphics/PathIterator;->mCachedVerb:I

    .line 220
    const/4 v1, 0x0

    .line 221
    .local v1, "conicWeight":F
    const/4 v2, 0x3

    if-ne v0, v2, :cond_12

    .line 222
    iget-object v2, p0, Landroid/graphics/PathIterator;->mPointsArray:[F

    const/4 v3, 0x6

    aget v1, v2, v3

    .line 224
    :cond_12
    const/16 v2, 0x8

    new-array v3, v2, [F

    .line 225
    .local v3, "returnPoints":[F
    iget-object v4, p0, Landroid/graphics/PathIterator;->mPointsArray:[F

    const/4 v5, 0x0

    invoke-static {v4, v5, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 226
    new-instance v2, Landroid/graphics/PathIterator$Segment;

    invoke-direct {v2, v0, v3, v1}, Landroid/graphics/PathIterator$Segment;-><init>(I[FF)V

    return-object v2
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 37
    invoke-virtual {p0}, Landroid/graphics/PathIterator;->next()Landroid/graphics/PathIterator$Segment;

    move-result-object v0

    return-object v0
.end method

.method public whitelist peek()I
    .registers 3

    .line 168
    iget v0, p0, Landroid/graphics/PathIterator;->mPathGenerationId:I

    iget-object v1, p0, Landroid/graphics/PathIterator;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->getGenerationId()I

    move-result v1

    if-ne v0, v1, :cond_17

    .line 172
    iget-boolean v0, p0, Landroid/graphics/PathIterator;->mDone:Z

    if-eqz v0, :cond_10

    .line 173
    const/4 v0, 0x6

    return v0

    .line 175
    :cond_10
    iget-wide v0, p0, Landroid/graphics/PathIterator;->mNativeIterator:J

    invoke-static {v0, v1}, Landroid/graphics/PathIterator;->nPeek(J)I

    move-result v0

    return v0

    .line 169
    :cond_17
    new-instance v0, Ljava/util/ConcurrentModificationException;

    const-string v1, "Iterator cannot be used on modified Path"

    invoke-direct {v0, v1}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
