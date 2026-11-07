.class public Landroid/telecom/Logging/Session;
.super Ljava/lang/Object;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Logging/Session$Info;
    }
.end annotation


# static fields
.field public static final blacklist CONTINUE_SUBSESSION:Ljava/lang/String; = "CONTINUE_SUBSESSION"

.field public static final blacklist CREATE_SUBSESSION:Ljava/lang/String; = "CREATE_SUBSESSION"

.field public static final blacklist END_SESSION:Ljava/lang/String; = "END_SESSION"

.field public static final blacklist END_SUBSESSION:Ljava/lang/String; = "END_SUBSESSION"

.field public static final blacklist EXTERNAL_INDICATOR:Ljava/lang/String; = "E-"

.field public static final blacklist LOG_TAG:Ljava/lang/String; = "Session"

.field private static final blacklist SESSION_RECURSION_LIMIT:I = 0x19

.field public static final blacklist SESSION_SEPARATION_CHAR_CHILD:Ljava/lang/String; = "_"

.field public static final blacklist START_EXTERNAL_SESSION:Ljava/lang/String; = "START_EXTERNAL_SESSION"

.field public static final blacklist START_SESSION:Ljava/lang/String; = "START_SESSION"

.field public static final blacklist SUBSESSION_SEPARATION_CHAR:Ljava/lang/String; = "->"

.field public static final blacklist TRUNCATE_STRING:Ljava/lang/String; = "..."

.field public static final blacklist UNDEFINED:J = -0x1L


# instance fields
.field private final blacklist mChildCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final blacklist mChildSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/telecom/Logging/Session;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mExecutionEndTimeMs:J

.field private blacklist mExecutionStartTimeMs:J

.field private volatile blacklist mFullMethodPathCache:Ljava/lang/String;

.field private blacklist mIsCompleted:Z

.field private final blacklist mIsExternal:Z

.field private final blacklist mIsStartedFromActiveSession:Z

.field private final blacklist mOwnerInfo:Ljava/lang/String;

.field private volatile blacklist mParentSession:Landroid/telecom/Logging/Session;

.field private final blacklist mSessionId:Ljava/lang/String;

.field private volatile blacklist mShortMethodName:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetFullSessionId(Landroid/telecom/Logging/Session;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Landroid/telecom/Logging/Session;->getFullSessionId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$misSessionExternal(Landroid/telecom/Logging/Session;)Z
    .registers 1

    invoke-direct {p0}, Landroid/telecom/Logging/Session;->isSessionExternal()Z

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;JZZLjava/lang/String;)V
    .registers 10
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "shortMethodName"    # Ljava/lang/String;
    .param p3, "startTimeMs"    # J
    .param p5, "isStartedFromActiveSession"    # Z
    .param p6, "isExternal"    # Z
    .param p7, "ownerInfo"    # Ljava/lang/String;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/telecom/Logging/Session;->mExecutionEndTimeMs:J

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/telecom/Logging/Session;->mChildSessions:Ljava/util/ArrayList;

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telecom/Logging/Session;->mIsCompleted:Z

    .line 144
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Landroid/telecom/Logging/Session;->mChildCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 160
    if-eqz p1, :cond_1d

    move-object v0, p1

    goto :goto_1f

    :cond_1d
    const-string v0, "???"

    :goto_1f
    iput-object v0, p0, Landroid/telecom/Logging/Session;->mSessionId:Ljava/lang/String;

    .line 161
    invoke-virtual {p0, p2}, Landroid/telecom/Logging/Session;->setShortMethodName(Ljava/lang/String;)V

    .line 162
    iput-wide p3, p0, Landroid/telecom/Logging/Session;->mExecutionStartTimeMs:J

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telecom/Logging/Session;->mParentSession:Landroid/telecom/Logging/Session;

    .line 164
    iput-boolean p5, p0, Landroid/telecom/Logging/Session;->mIsStartedFromActiveSession:Z

    .line 165
    iput-boolean p6, p0, Landroid/telecom/Logging/Session;->mIsExternal:Z

    .line 166
    iput-object p7, p0, Landroid/telecom/Logging/Session;->mOwnerInfo:Ljava/lang/String;

    .line 167
    return-void
.end method

.method private declared-synchronized blacklist getFullMethodPathRecursive(Ljava/lang/StringBuilder;ZI)V
    .registers 8
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "truncatePath"    # Z
    .param p3, "parentCount"    # I

    monitor-enter p0

    .line 469
    const/16 v0, 0x19

    if-lt p3, v0, :cond_13

    .line 473
    :try_start_5
    const-string v0, "Session"

    const-string v1, "getFullMethodPathRecursive: Hit recursion limit!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    const-string v0, "..."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_72

    .line 475
    monitor-exit p0

    return-void

    .line 479
    .end local p0    # "this":Landroid/telecom/Logging/Session;
    :cond_13
    :try_start_13
    iget-object v0, p0, Landroid/telecom/Logging/Session;->mFullMethodPathCache:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    if-nez p2, :cond_24

    .line 480
    iget-object v0, p0, Landroid/telecom/Logging/Session;->mFullMethodPathCache:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_22
    .catchall {:try_start_13 .. :try_end_22} :catchall_72

    .line 481
    monitor-exit p0

    return-void

    .line 483
    :cond_24
    :try_start_24
    invoke-virtual {p0}, Landroid/telecom/Logging/Session;->getParentSession()Landroid/telecom/Logging/Session;

    move-result-object v0

    .line 484
    .local v0, "parentSession":Landroid/telecom/Logging/Session;
    const/4 v1, 0x0

    .line 485
    .local v1, "isSessionStarted":Z
    if-eqz v0, :cond_43

    .line 488
    iget-object v2, p0, Landroid/telecom/Logging/Session;->mShortMethodName:Ljava/lang/String;

    iget-object v3, v0, Landroid/telecom/Logging/Session;->mShortMethodName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37

    const/4 v2, 0x1

    goto :goto_38

    :cond_37
    const/4 v2, 0x0

    :goto_38
    move v1, v2

    .line 489
    add-int/lit8 v2, p3, 0x1

    invoke-direct {v0, p1, p2, v2}, Landroid/telecom/Logging/Session;->getFullMethodPathRecursive(Ljava/lang/StringBuilder;ZI)V

    .line 490
    const-string v2, "->"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    :cond_43
    invoke-virtual {p0}, Landroid/telecom/Logging/Session;->isExternal()Z

    move-result v2

    if-eqz v2, :cond_61

    .line 495
    if-eqz p2, :cond_51

    .line 496
    const-string v2, "..."

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_66

    .line 498
    :cond_51
    const-string v2, "("

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    iget-object v2, p0, Landroid/telecom/Logging/Session;->mShortMethodName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    const-string v2, ")"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_66

    .line 503
    :cond_61
    iget-object v2, p0, Landroid/telecom/Logging/Session;->mShortMethodName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    :goto_66
    if-eqz v1, :cond_70

    if-nez p2, :cond_70

    .line 509
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/telecom/Logging/Session;->mFullMethodPathCache:Ljava/lang/String;
    :try_end_70
    .catchall {:try_start_24 .. :try_end_70} :catchall_72

    .line 511
    :cond_70
    monitor-exit p0

    return-void

    .line 468
    .end local v0    # "parentSession":Landroid/telecom/Logging/Session;
    .end local v1    # "isSessionStarted":Z
    .end local p1    # "sb":Ljava/lang/StringBuilder;
    .end local p2    # "truncatePath":Z
    .end local p3    # "parentCount":I
    :catchall_72
    move-exception p1

    :try_start_73
    monitor-exit p0
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    throw p1
.end method

.method private blacklist getFullSessionId()Ljava/lang/String;
    .registers 7

    .line 266
    invoke-static {}, Lcom/android/server/telecom/flags/Flags;->endSessionImprovements()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    invoke-direct {p0, v1}, Landroid/telecom/Logging/Session;->getFullSessionIdRecursive(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 267
    :cond_c
    const/4 v0, 0x0

    .line 268
    .local v0, "currParentCount":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    .local v2, "id":Ljava/lang/StringBuilder;
    move-object v3, p0

    .line 270
    .local v3, "currSession":Landroid/telecom/Logging/Session;
    :goto_13
    if-eqz v3, :cond_54

    .line 271
    invoke-virtual {v3}, Landroid/telecom/Logging/Session;->getParentSession()Landroid/telecom/Logging/Session;

    move-result-object v4

    .line 272
    .local v4, "parentSession":Landroid/telecom/Logging/Session;
    if-eqz v4, :cond_48

    .line 273
    const/16 v5, 0x19

    if-lt v0, v5, :cond_37

    .line 274
    invoke-virtual {p0}, Landroid/telecom/Logging/Session;->getSessionId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    const-string v5, "..."

    invoke-virtual {v2, v1, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    const-string v1, "Session"

    const-string v5, "getFullSessionId: Hit iteration limit!"

    invoke-static {v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 279
    :cond_37
    sget-boolean v5, Landroid/telecom/Log;->VERBOSE:Z

    if-eqz v5, :cond_4f

    .line 280
    invoke-virtual {v3}, Landroid/telecom/Logging/Session;->getSessionId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    const-string v5, "_"

    invoke-virtual {v2, v1, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4f

    .line 284
    :cond_48
    invoke-virtual {v3}, Landroid/telecom/Logging/Session;->getSessionId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    :cond_4f
    :goto_4f
    move-object v3, v4

    .line 287
    nop

    .end local v4    # "parentSession":Landroid/telecom/Logging/Session;
    add-int/lit8 v0, v0, 0x1

    .line 288
    goto :goto_13

    .line 289
    :cond_54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getFullSessionIdRecursive(I)Ljava/lang/String;
    .registers 5
    .param p1, "parentCount"    # I

    .line 294
    const/16 v0, 0x19

    if-lt p1, v0, :cond_21

    .line 298
    const-string v0, "Session"

    const-string v1, "getFullSessionId: Hit recursion limit!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telecom/Logging/Session;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 305
    :cond_21
    iget-object v0, p0, Landroid/telecom/Logging/Session;->mParentSession:Landroid/telecom/Logging/Session;

    .line 306
    .local v0, "parentSession":Landroid/telecom/Logging/Session;
    if-nez v0, :cond_28

    .line 307
    iget-object v1, p0, Landroid/telecom/Logging/Session;->mSessionId:Ljava/lang/String;

    return-object v1

    .line 309
    :cond_28
    sget-boolean v1, Landroid/telecom/Log;->VERBOSE:Z

    if-eqz v1, :cond_4c

    .line 310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, p1, 0x1

    invoke-direct {v0, v2}, Landroid/telecom/Logging/Session;->getFullSessionIdRecursive(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/Logging/Session;->mSessionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 315
    :cond_4c
    add-int/lit8 v1, p1, 0x1

    invoke-direct {v0, v1}, Landroid/telecom/Logging/Session;->getFullSessionIdRecursive(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getRootSession(Ljava/lang/String;)Landroid/telecom/Logging/Session;
    .registers 7
    .param p1, "callingMethod"    # Ljava/lang/String;

    .line 322
    const/4 v0, 0x0

    .line 323
    .local v0, "currParentCount":I
    move-object v1, p0

    .line 324
    .local v1, "topNode":Landroid/telecom/Logging/Session;
    invoke-virtual {v1}, Landroid/telecom/Logging/Session;->getParentSession()Landroid/telecom/Logging/Session;

    move-result-object v2

    .line 325
    .local v2, "parentNode":Landroid/telecom/Logging/Session;
    :goto_6
    if-eqz v2, :cond_2d

    .line 326
    const/16 v3, 0x19

    if-lt v0, v3, :cond_25

    .line 330
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRootSession: Hit iteration limit from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Session"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    goto :goto_2d

    .line 334
    :cond_25
    move-object v1, v2

    .line 335
    invoke-virtual {v1}, Landroid/telecom/Logging/Session;->getParentSession()Landroid/telecom/Logging/Session;

    move-result-object v2

    .line 336
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 338
    :cond_2d
    :goto_2d
    return-object v1
.end method

.method private blacklist isSessionExternal()Z
    .registers 2

    .line 515
    const-string/jumbo v0, "isSessionExternal"

    invoke-direct {p0, v0}, Landroid/telecom/Logging/Session;->getRootSession(Ljava/lang/String;)Landroid/telecom/Logging/Session;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Logging/Session;->isExternal()Z

    move-result v0

    return v0
.end method

.method private blacklist printSessionTree()Ljava/lang/String;
    .registers 8

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 348
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/android/server/telecom/flags/Flags;->endSessionImprovements()Z

    move-result v1

    if-nez v1, :cond_14

    .line 349
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v1}, Landroid/telecom/Logging/Session;->printSessionTreeRecursive(ILjava/lang/StringBuilder;I)V

    .line 350
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 352
    :cond_14
    const/4 v1, 0x0

    .line 353
    .local v1, "depth":I
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    .line 354
    .local v2, "deque":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroid/telecom/Logging/Session;>;"
    invoke-virtual {v2, p0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 355
    :goto_1d
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_72

    .line 356
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/Session;

    .line 357
    .local v3, "node":Landroid/telecom/Logging/Session;
    const-string v4, "\t"

    invoke-virtual {v4, v1}, Ljava/lang/String;->repeat(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    invoke-virtual {v3}, Landroid/telecom/Logging/Session;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    const/16 v4, 0x19

    if-lt v1, v4, :cond_4a

    .line 361
    const-string v4, "..."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    add-int/lit8 v1, v1, -0x1

    .line 363
    goto :goto_1d

    .line 365
    :cond_4a
    invoke-virtual {v3}, Landroid/telecom/Logging/Session;->getChildSessions()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->reversed()Ljava/util/List;

    move-result-object v4

    .line 366
    .local v4, "childSessions":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Logging/Session;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6f

    .line 367
    add-int/lit8 v1, v1, 0x1

    .line 368
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telecom/Logging/Session;

    .line 369
    .local v6, "child":Landroid/telecom/Logging/Session;
    invoke-virtual {v2, v6}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 370
    .end local v6    # "child":Landroid/telecom/Logging/Session;
    goto :goto_5e

    :cond_6e
    goto :goto_71

    .line 372
    :cond_6f
    add-int/lit8 v1, v1, -0x1

    .line 374
    .end local v3    # "node":Landroid/telecom/Logging/Session;
    .end local v4    # "childSessions":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Logging/Session;>;"
    :goto_71
    goto :goto_1d

    .line 375
    :cond_72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private blacklist printSessionTreeRecursive(ILjava/lang/StringBuilder;I)V
    .registers 8
    .param p1, "tabI"    # I
    .param p2, "sb"    # Ljava/lang/StringBuilder;
    .param p3, "currChildCount"    # I

    .line 381
    const/16 v0, 0x19

    if-lt p3, v0, :cond_12

    .line 385
    const-string v0, "Session"

    const-string/jumbo v1, "printSessionTree: Hit recursion limit!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    const-string v0, "..."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    return-void

    .line 389
    :cond_12
    invoke-virtual {p0}, Landroid/telecom/Logging/Session;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    iget-object v0, p0, Landroid/telecom/Logging/Session;->mChildSessions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Logging/Session;

    .line 391
    .local v1, "child":Landroid/telecom/Logging/Session;
    const-string v2, "\n"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_31
    if-gt v2, p1, :cond_3b

    .line 393
    const-string v3, "\t"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    .line 395
    .end local v2    # "i":I
    :cond_3b
    add-int/lit8 v2, p1, 0x1

    add-int/lit8 v3, p3, 0x1

    invoke-direct {v1, v2, p2, v3}, Landroid/telecom/Logging/Session;->printSessionTreeRecursive(ILjava/lang/StringBuilder;I)V

    .line 396
    .end local v1    # "child":Landroid/telecom/Logging/Session;
    goto :goto_1f

    .line 397
    :cond_43
    return-void
.end method


# virtual methods
.method public blacklist addChild(Landroid/telecom/Logging/Session;)V
    .registers 4
    .param p1, "childSession"    # Landroid/telecom/Logging/Session;

    .line 189
    if-nez p1, :cond_3

    return-void

    .line 190
    :cond_3
    iget-object v0, p0, Landroid/telecom/Logging/Session;->mChildSessions:Ljava/util/ArrayList;

    monitor-enter v0

    .line 191
    :try_start_6
    iget-object v1, p0, Landroid/telecom/Logging/Session;->mChildSessions:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    monitor-exit v0

    .line 193
    return-void

    .line 192
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 535
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 536
    :cond_4
    const/4 v0, 0x0

    if-eqz p1, :cond_79

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_12

    goto :goto_79

    .line 538
    :cond_12
    move-object v1, p1

    check-cast v1, Landroid/telecom/Logging/Session;

    .line 540
    .local v1, "session":Landroid/telecom/Logging/Session;
    iget-wide v2, p0, Landroid/telecom/Logging/Session;->mExecutionStartTimeMs:J

    iget-wide v4, v1, Landroid/telecom/Logging/Session;->mExecutionStartTimeMs:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1e

    return v0

    .line 541
    :cond_1e
    iget-wide v2, p0, Landroid/telecom/Logging/Session;->mExecutionEndTimeMs:J

    iget-wide v4, v1, Landroid/telecom/Logging/Session;->mExecutionEndTimeMs:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_27

    return v0

    .line 542
    :cond_27
    iget-boolean v2, p0, Landroid/telecom/Logging/Session;->mIsCompleted:Z

    iget-boolean v3, v1, Landroid/telecom/Logging/Session;->mIsCompleted:Z

    if-eq v2, v3, :cond_2e

    return v0

    .line 543
    :cond_2e
    iget-object v2, p0, Landroid/telecom/Logging/Session;->mChildCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    iget-object v3, v1, Landroid/telecom/Logging/Session;->mChildCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-eq v2, v3, :cond_3d

    return v0

    .line 544
    :cond_3d
    iget-boolean v2, p0, Landroid/telecom/Logging/Session;->mIsStartedFromActiveSession:Z

    iget-boolean v3, v1, Landroid/telecom/Logging/Session;->mIsStartedFromActiveSession:Z

    if-eq v2, v3, :cond_44

    return v0

    .line 545
    :cond_44
    iget-object v2, p0, Landroid/telecom/Logging/Session;->mSessionId:Ljava/lang/String;

    iget-object v3, v1, Landroid/telecom/Logging/Session;->mSessionId:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4f

    return v0

    .line 546
    :cond_4f
    iget-object v2, p0, Landroid/telecom/Logging/Session;->mShortMethodName:Ljava/lang/String;

    iget-object v3, v1, Landroid/telecom/Logging/Session;->mShortMethodName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5a

    return v0

    .line 547
    :cond_5a
    iget-object v2, p0, Landroid/telecom/Logging/Session;->mParentSession:Landroid/telecom/Logging/Session;

    iget-object v3, v1, Landroid/telecom/Logging/Session;->mParentSession:Landroid/telecom/Logging/Session;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65

    return v0

    .line 548
    :cond_65
    iget-object v2, p0, Landroid/telecom/Logging/Session;->mChildSessions:Ljava/util/ArrayList;

    iget-object v3, v1, Landroid/telecom/Logging/Session;->mChildSessions:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_70

    return v0

    .line 549
    :cond_70
    iget-object v0, p0, Landroid/telecom/Logging/Session;->mOwnerInfo:Ljava/lang/String;

    iget-object v2, v1, Landroid/telecom/Logging/Session;->mOwnerInfo:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 536
    .end local v1    # "session":Landroid/telecom/Logging/Session;
    :cond_79
    :goto_79
    return v0
.end method

.method public blacklist getChildSessions()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/telecom/Logging/Session;",
            ">;"
        }
    .end annotation

    .line 215
    iget-object v0, p0, Landroid/telecom/Logging/Session;->mChildSessions:Ljava/util/ArrayList;

    monitor-enter v0

    .line 216
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/telecom/Logging/Session;->mChildSessions:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 217
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public blacklist getExecutionStartTimeMilliseconds()J
    .registers 3

    .line 203
    iget-wide v0, p0, Landroid/telecom/Logging/Session;->mExecutionStartTimeMs:J

    return-wide v0
.end method

.method public blacklist getExternalInfo(Ljava/lang/String;)Landroid/telecom/Logging/Session$Info;
    .registers 3
    .param p1, "ownerInfo"    # Ljava/lang/String;

    .line 233
    invoke-static {p0, p1}, Landroid/telecom/Logging/Session$Info;->getExternalInfo(Landroid/telecom/Logging/Session;Ljava/lang/String;)Landroid/telecom/Logging/Session$Info;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getFullMethodPath(Z)Ljava/lang/String;
    .registers 12
    .param p1, "truncatePath"    # Z

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 410
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/android/server/telecom/flags/Flags;->endSessionImprovements()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_14

    .line 411
    invoke-direct {p0, v0, p1, v2}, Landroid/telecom/Logging/Session;->getFullMethodPathRecursive(Ljava/lang/StringBuilder;ZI)V

    .line 412
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 416
    :cond_14
    invoke-virtual {p0}, Landroid/telecom/Logging/Session;->getParentSession()Landroid/telecom/Logging/Session;

    move-result-object v1

    .line 417
    .local v1, "parentSession":Landroid/telecom/Logging/Session;
    if-eqz v1, :cond_2b

    .line 418
    invoke-virtual {p0}, Landroid/telecom/Logging/Session;->getShortMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/telecom/Logging/Session;->getShortMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    goto :goto_2b

    :cond_29
    move v3, v2

    goto :goto_2c

    :cond_2b
    :goto_2b
    const/4 v3, 0x1

    .line 419
    .local v3, "isSessionStarted":Z
    :goto_2c
    const/4 v4, 0x0

    .line 420
    .local v4, "depth":I
    move-object v5, p0

    .line 421
    .local v5, "currSession":Landroid/telecom/Logging/Session;
    :goto_2e
    if-eqz v5, :cond_8c

    .line 422
    iget-object v6, v5, Landroid/telecom/Logging/Session;->mFullMethodPathCache:Ljava/lang/String;

    .line 425
    .local v6, "cache":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_42

    if-nez p1, :cond_42

    .line 426
    invoke-virtual {v0, v2, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 430
    :cond_42
    invoke-virtual {v5}, Landroid/telecom/Logging/Session;->getParentSession()Landroid/telecom/Logging/Session;

    move-result-object v1

    .line 433
    invoke-virtual {v5}, Landroid/telecom/Logging/Session;->isExternal()Z

    move-result v7

    const-string v8, "..."

    if-eqz v7, :cond_66

    .line 434
    if-eqz p1, :cond_54

    .line 435
    invoke-virtual {v0, v2, v8}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6d

    .line 437
    :cond_54
    const-string v7, ")"

    invoke-virtual {v0, v2, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    invoke-virtual {v5}, Landroid/telecom/Logging/Session;->getShortMethodName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v2, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    const-string v7, "("

    invoke-virtual {v0, v2, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6d

    .line 442
    :cond_66
    invoke-virtual {v5}, Landroid/telecom/Logging/Session;->getShortMethodName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v2, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    :goto_6d
    if-eqz v1, :cond_74

    .line 445
    const-string v7, "->"

    invoke-virtual {v0, v2, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    :cond_74
    const/16 v7, 0x19

    if-lt v4, v7, :cond_87

    .line 452
    const-string v7, "Session"

    const-string v9, "getFullMethodPath: Hit iteration limit!"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-virtual {v0, v2, v8}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 456
    :cond_87
    move-object v5, v1

    .line 457
    nop

    .end local v6    # "cache":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    .line 458
    goto :goto_2e

    .line 459
    :cond_8c
    if-eqz v3, :cond_96

    if-nez p1, :cond_96

    .line 462
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/telecom/Logging/Session;->mFullMethodPathCache:Ljava/lang/String;

    .line 464
    :cond_96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public blacklist getInfo()Landroid/telecom/Logging/Session$Info;
    .registers 2

    .line 229
    invoke-static {p0}, Landroid/telecom/Logging/Session$Info;->getInfo(Landroid/telecom/Logging/Session;)Landroid/telecom/Logging/Session$Info;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getLocalExecutionTime()J
    .registers 5

    .line 253
    iget-wide v0, p0, Landroid/telecom/Logging/Session;->mExecutionEndTimeMs:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    .line 254
    return-wide v2

    .line 256
    :cond_9
    iget-wide v0, p0, Landroid/telecom/Logging/Session;->mExecutionEndTimeMs:J

    iget-wide v2, p0, Landroid/telecom/Logging/Session;->mExecutionStartTimeMs:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public blacklist getNextChildId()Ljava/lang/String;
    .registers 2

    .line 260
    iget-object v0, p0, Landroid/telecom/Logging/Session;->mChildCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getOwnerInfo()Ljava/lang/String;
    .registers 2

    .line 237
    iget-object v0, p0, Landroid/telecom/Logging/Session;->mOwnerInfo:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getParentSession()Landroid/telecom/Logging/Session;
    .registers 2

    .line 211
    iget-object v0, p0, Landroid/telecom/Logging/Session;->mParentSession:Landroid/telecom/Logging/Session;

    return-object v0
.end method

.method public blacklist getSessionId()Ljava/lang/String;
    .registers 2

    .line 242
    iget-object v0, p0, Landroid/telecom/Logging/Session;->mSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getShortMethodName()Ljava/lang/String;
    .registers 2

    .line 170
    iget-object v0, p0, Landroid/telecom/Logging/Session;->mShortMethodName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 520
    iget-object v0, p0, Landroid/telecom/Logging/Session;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 521
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/telecom/Logging/Session;->mShortMethodName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 522
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Landroid/telecom/Logging/Session;->mExecutionStartTimeMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    .line 523
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroid/telecom/Logging/Session;->mExecutionEndTimeMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    .line 524
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/telecom/Logging/Session;->mParentSession:Landroid/telecom/Logging/Session;

    const/4 v3, 0x0

    if-eqz v2, :cond_2f

    iget-object v2, p0, Landroid/telecom/Logging/Session;->mParentSession:Landroid/telecom/Logging/Session;

    invoke-virtual {v2}, Landroid/telecom/Logging/Session;->hashCode()I

    move-result v2

    goto :goto_30

    :cond_2f
    move v2, v3

    :goto_30
    add-int/2addr v0, v2

    .line 525
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/telecom/Logging/Session;->mChildSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 526
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Landroid/telecom/Logging/Session;->mIsCompleted:Z

    add-int/2addr v0, v2

    .line 527
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/telecom/Logging/Session;->mChildCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 528
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Landroid/telecom/Logging/Session;->mIsStartedFromActiveSession:Z

    add-int/2addr v0, v2

    .line 529
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/telecom/Logging/Session;->mOwnerInfo:Ljava/lang/String;

    if-eqz v2, :cond_59

    iget-object v2, p0, Landroid/telecom/Logging/Session;->mOwnerInfo:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :cond_59
    add-int/2addr v1, v3

    .line 530
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public blacklist isExternal()Z
    .registers 2

    .line 181
    iget-boolean v0, p0, Landroid/telecom/Logging/Session;->mIsExternal:Z

    return v0
.end method

.method public blacklist isSessionCompleted()Z
    .registers 2

    .line 221
    iget-boolean v0, p0, Landroid/telecom/Logging/Session;->mIsCompleted:Z

    return v0
.end method

.method public blacklist isStartedFromActiveSession()Z
    .registers 2

    .line 225
    iget-boolean v0, p0, Landroid/telecom/Logging/Session;->mIsStartedFromActiveSession:Z

    return v0
.end method

.method public blacklist markSessionCompleted(J)V
    .registers 4
    .param p1, "executionEndTimeMs"    # J

    .line 248
    iput-wide p1, p0, Landroid/telecom/Logging/Session;->mExecutionEndTimeMs:J

    .line 249
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telecom/Logging/Session;->mIsCompleted:Z

    .line 250
    return-void
.end method

.method public blacklist printFullSessionTree()Ljava/lang/String;
    .registers 2

    .line 343
    const-string/jumbo v0, "printFullSessionTree"

    invoke-direct {p0, v0}, Landroid/telecom/Logging/Session;->getRootSession(Ljava/lang/String;)Landroid/telecom/Logging/Session;

    move-result-object v0

    invoke-direct {v0}, Landroid/telecom/Logging/Session;->printSessionTree()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist removeChild(Landroid/telecom/Logging/Session;)V
    .registers 4
    .param p1, "child"    # Landroid/telecom/Logging/Session;

    .line 196
    if-nez p1, :cond_3

    return-void

    .line 197
    :cond_3
    iget-object v0, p0, Landroid/telecom/Logging/Session;->mChildSessions:Ljava/util/ArrayList;

    monitor-enter v0

    .line 198
    :try_start_6
    iget-object v1, p0, Landroid/telecom/Logging/Session;->mChildSessions:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 199
    monitor-exit v0

    .line 200
    return-void

    .line 199
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public blacklist setExecutionStartTimeMs(J)V
    .registers 3
    .param p1, "startTimeMs"    # J

    .line 207
    iput-wide p1, p0, Landroid/telecom/Logging/Session;->mExecutionStartTimeMs:J

    .line 208
    return-void
.end method

.method public blacklist setParentSession(Landroid/telecom/Logging/Session;)V
    .registers 2
    .param p1, "parentSession"    # Landroid/telecom/Logging/Session;

    .line 185
    iput-object p1, p0, Landroid/telecom/Logging/Session;->mParentSession:Landroid/telecom/Logging/Session;

    .line 186
    return-void
.end method

.method public blacklist setShortMethodName(Ljava/lang/String;)V
    .registers 2
    .param p1, "shortMethodName"    # Ljava/lang/String;

    .line 174
    if-nez p1, :cond_4

    .line 175
    const-string p1, ""

    .line 177
    :cond_4
    iput-object p1, p0, Landroid/telecom/Logging/Session;->mShortMethodName:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 554
    move-object v0, p0

    .line 555
    .local v0, "sessionToPrint":Landroid/telecom/Logging/Session;
    invoke-virtual {p0}, Landroid/telecom/Logging/Session;->getParentSession()Landroid/telecom/Logging/Session;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {p0}, Landroid/telecom/Logging/Session;->isStartedFromActiveSession()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 558
    const-string/jumbo v1, "toString"

    invoke-direct {p0, v1}, Landroid/telecom/Logging/Session;->getRootSession(Ljava/lang/String;)Landroid/telecom/Logging/Session;

    move-result-object v0

    .line 560
    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 561
    .local v1, "methodName":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/telecom/Logging/Session;->getFullMethodPath(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    invoke-virtual {v0}, Landroid/telecom/Logging/Session;->getOwnerInfo()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_42

    invoke-virtual {v0}, Landroid/telecom/Logging/Session;->getOwnerInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_42

    .line 563
    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    invoke-virtual {v0}, Landroid/telecom/Logging/Session;->getOwnerInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    :cond_42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {v0}, Landroid/telecom/Logging/Session;->getFullSessionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
