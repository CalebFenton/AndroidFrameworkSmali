.class public Landroid/app/servertransaction/TransactionExecutorHelper;
.super Ljava/lang/Object;
.source "TransactionExecutorHelper.java"


# static fields
.field private static final greylist-max-o DESTRUCTION_PENALTY:I = 0xa

.field private static final greylist-max-o ON_RESUME_PRE_EXCUTION_STATES:[I

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final greylist-max-o mLifecycleSequence:Landroid/util/IntArray;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 49
    const-class v0, Landroid/app/servertransaction/TransactionExecutorHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/servertransaction/TransactionExecutorHelper;->TAG:Ljava/lang/String;

    .line 53
    const/4 v0, 0x2

    const/4 v1, 0x4

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroid/app/servertransaction/TransactionExecutorHelper;->ON_RESUME_PRE_EXCUTION_STATES:[I

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 3

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Landroid/util/IntArray;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    iput-object v0, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    return-void
.end method

.method private static blacklist findNextLifecycleItemIndex(Ljava/util/List;ILandroid/os/IBinder;)I
    .registers 7
    .param p1, "startIndex"    # I
    .param p2, "activityToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/servertransaction/ClientTransactionItem;",
            ">;I",
            "Landroid/os/IBinder;",
            ")I"
        }
    .end annotation

    .line 304
    .local p0, "items":Ljava/util/List;, "Ljava/util/List<Landroid/app/servertransaction/ClientTransactionItem;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 305
    .local v0, "size":I
    move v1, p1

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_21

    .line 306
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/servertransaction/ClientTransactionItem;

    .line 307
    .local v2, "item":Landroid/app/servertransaction/ClientTransactionItem;
    invoke-virtual {v2}, Landroid/app/servertransaction/ClientTransactionItem;->isActivityLifecycleItem()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-virtual {v2}, Landroid/app/servertransaction/ClientTransactionItem;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3, p2}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 308
    return v1

    .line 305
    .end local v2    # "item":Landroid/app/servertransaction/ClientTransactionItem;
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 311
    .end local v1    # "i":I
    :cond_21
    const/4 v1, -0x1

    return v1
.end method

.method private static blacklist getActivityForToken(Landroid/os/IBinder;Landroid/app/ClientTransactionHandler;)Landroid/app/Activity;
    .registers 3
    .param p0, "token"    # Landroid/os/IBinder;
    .param p1, "transactionHandler"    # Landroid/app/ClientTransactionHandler;

    .line 349
    if-nez p0, :cond_4

    .line 350
    const/4 v0, 0x0

    return-object v0

    .line 352
    :cond_4
    invoke-virtual {p1, p0}, Landroid/app/ClientTransactionHandler;->getActivity(Landroid/os/IBinder;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static blacklist getActivityName(Landroid/os/IBinder;Landroid/app/ClientTransactionHandler;)Ljava/lang/String;
    .registers 5
    .param p0, "token"    # Landroid/os/IBinder;
    .param p1, "transactionHandler"    # Landroid/app/ClientTransactionHandler;

    .line 331
    invoke-static {p0, p1}, Landroid/app/servertransaction/TransactionExecutorHelper;->getActivityForToken(Landroid/os/IBinder;Landroid/app/ClientTransactionHandler;)Landroid/app/Activity;

    move-result-object v0

    .line 332
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_f

    .line 333
    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 335
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not found for token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static greylist-max-o getLifecycleRequestForCurrentState(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/app/servertransaction/ActivityLifecycleItem;
    .registers 5
    .param p0, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;

    .line 193
    invoke-virtual {p0}, Landroid/app/ActivityThread$ActivityClientRecord;->getLifecycleState()I

    move-result v0

    .line 195
    .local v0, "prevState":I
    packed-switch v0, :pswitch_data_22

    .line 207
    :pswitch_7
    new-instance v1, Landroid/app/servertransaction/ResumeActivityItem;

    iget-object v2, p0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Landroid/app/servertransaction/ResumeActivityItem;-><init>(Landroid/os/IBinder;ZZ)V

    .local v1, "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    goto :goto_20

    .line 204
    .end local v1    # "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    :pswitch_10
    new-instance v1, Landroid/app/servertransaction/StopActivityItem;

    iget-object v2, p0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-direct {v1, v2}, Landroid/app/servertransaction/StopActivityItem;-><init>(Landroid/os/IBinder;)V

    .line 205
    .restart local v1    # "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    goto :goto_20

    .line 201
    .end local v1    # "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    :pswitch_18
    new-instance v1, Landroid/app/servertransaction/PauseActivityItem;

    iget-object v2, p0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-direct {v1, v2}, Landroid/app/servertransaction/PauseActivityItem;-><init>(Landroid/os/IBinder;)V

    .line 202
    .restart local v1    # "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    nop

    .line 212
    :goto_20
    return-object v1

    nop

    :pswitch_data_22
    .packed-switch 0x2
        :pswitch_18
        :pswitch_7
        :pswitch_18
        :pswitch_10
    .end packed-switch
.end method

.method static blacklist getShortActivityName(Landroid/os/IBinder;Landroid/app/ClientTransactionHandler;)Ljava/lang/String;
    .registers 5
    .param p0, "token"    # Landroid/os/IBinder;
    .param p1, "transactionHandler"    # Landroid/app/ClientTransactionHandler;

    .line 340
    invoke-static {p0, p1}, Landroid/app/servertransaction/TransactionExecutorHelper;->getActivityForToken(Landroid/os/IBinder;Landroid/app/ClientTransactionHandler;)Landroid/app/Activity;

    move-result-object v0

    .line 341
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_f

    .line 342
    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 344
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not found for token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static blacklist getStateName(I)Ljava/lang/String;
    .registers 4
    .param p0, "state"    # I

    .line 357
    packed-switch p0, :pswitch_data_38

    .line 377
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected lifecycle state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :pswitch_1c
    const-string v0, "ON_RESTART"

    return-object v0

    .line 373
    :pswitch_1f
    const-string v0, "ON_DESTROY"

    return-object v0

    .line 371
    :pswitch_22
    const-string v0, "ON_STOP"

    return-object v0

    .line 369
    :pswitch_25
    const-string v0, "ON_PAUSE"

    return-object v0

    .line 367
    :pswitch_28
    const-string v0, "ON_RESUME"

    return-object v0

    .line 365
    :pswitch_2b
    const-string v0, "ON_START"

    return-object v0

    .line 363
    :pswitch_2e
    const-string v0, "ON_CREATE"

    return-object v0

    .line 361
    :pswitch_31
    const-string v0, "PRE_ON_CREATE"

    return-object v0

    .line 359
    :pswitch_34
    const-string v0, "UNDEFINED"

    return-object v0

    nop

    :pswitch_data_38
    .packed-switch -0x1
        :pswitch_34
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method

.method private static blacklist lastCallbackRequestingStateIndex(Ljava/util/List;IILandroid/os/IBinder;)I
    .registers 11
    .param p1, "startIndex"    # I
    .param p2, "lastIndex"    # I
    .param p3, "activityToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/servertransaction/ClientTransactionItem;",
            ">;II",
            "Landroid/os/IBinder;",
            ")I"
        }
    .end annotation

    .line 245
    .local p0, "items":Ljava/util/List;, "Ljava/util/List<Landroid/app/servertransaction/ClientTransactionItem;>;"
    const/4 v0, -0x1

    .line 246
    .local v0, "lastRequestedState":I
    const/4 v1, -0x1

    .line 247
    .local v1, "lastRequestingCallback":I
    move v2, p2

    .local v2, "i":I
    :goto_3
    if-lt v2, p1, :cond_25

    .line 248
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/servertransaction/ClientTransactionItem;

    .line 249
    .local v3, "item":Landroid/app/servertransaction/ClientTransactionItem;
    invoke-virtual {v3}, Landroid/app/servertransaction/ClientTransactionItem;->getPostExecutionState()I

    move-result v4

    .line 250
    .local v4, "postExecutionState":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_22

    invoke-virtual {v3}, Landroid/app/servertransaction/ClientTransactionItem;->getActivityToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {p3, v6}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 252
    if-eq v0, v5, :cond_20

    if-ne v0, v4, :cond_25

    .line 256
    :cond_20
    move v0, v4

    .line 257
    move v1, v2

    .line 247
    .end local v3    # "item":Landroid/app/servertransaction/ClientTransactionItem;
    .end local v4    # "postExecutionState":I
    :cond_22
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 264
    .end local v2    # "i":I
    :cond_25
    return v1
.end method

.method private static greylist-max-o pathInvolvesDestruction(Landroid/util/IntArray;)Z
    .registers 5
    .param p0, "lifecycleSequence"    # Landroid/util/IntArray;

    .line 220
    invoke-virtual {p0}, Landroid/util/IntArray;->size()I

    move-result v0

    .line 221
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_13

    .line 222
    invoke-virtual {p0, v1}, Landroid/util/IntArray;->get(I)I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_10

    .line 223
    const/4 v2, 0x1

    return v2

    .line 221
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 226
    .end local v1    # "i":I
    :cond_13
    const/4 v1, 0x0

    return v1
.end method

.method static blacklist shouldExcludeLastLifecycleState(Ljava/util/List;I)Z
    .registers 9
    .param p1, "currentIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/servertransaction/ClientTransactionItem;",
            ">;I)Z"
        }
    .end annotation

    .line 275
    .local p0, "items":Ljava/util/List;, "Ljava/util/List<Landroid/app/servertransaction/ClientTransactionItem;>;"
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/servertransaction/ClientTransactionItem;

    .line 276
    .local v0, "item":Landroid/app/servertransaction/ClientTransactionItem;
    invoke-virtual {v0}, Landroid/app/servertransaction/ClientTransactionItem;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    .line 277
    .local v1, "activityToken":Landroid/os/IBinder;
    invoke-virtual {v0}, Landroid/app/servertransaction/ClientTransactionItem;->getPostExecutionState()I

    move-result v2

    .line 278
    .local v2, "postExecutionState":I
    const/4 v3, 0x0

    if-eqz v1, :cond_36

    const/4 v4, -0x1

    if-ne v2, v4, :cond_15

    goto :goto_36

    .line 282
    :cond_15
    add-int/lit8 v5, p1, 0x1

    invoke-static {p0, v5, v1}, Landroid/app/servertransaction/TransactionExecutorHelper;->findNextLifecycleItemIndex(Ljava/util/List;ILandroid/os/IBinder;)I

    move-result v5

    .line 284
    .local v5, "nextLifecycleItemIndex":I
    if-ne v5, v4, :cond_1e

    .line 286
    return v3

    .line 288
    :cond_1e
    nop

    .line 289
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/servertransaction/ActivityLifecycleItem;

    .line 290
    .local v4, "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    invoke-virtual {v4}, Landroid/app/servertransaction/ActivityLifecycleItem;->getTargetState()I

    move-result v6

    if-eq v2, v6, :cond_2c

    .line 292
    return v3

    .line 295
    :cond_2c
    add-int/lit8 v6, v5, -0x1

    invoke-static {p0, p1, v6, v1}, Landroid/app/servertransaction/TransactionExecutorHelper;->lastCallbackRequestingStateIndex(Ljava/util/List;IILandroid/os/IBinder;)I

    move-result v6

    if-ne p1, v6, :cond_35

    const/4 v3, 0x1

    :cond_35
    return v3

    .line 280
    .end local v4    # "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    .end local v5    # "nextLifecycleItemIndex":I
    :cond_36
    :goto_36
    return v3
.end method

.method static blacklist tId(Landroid/app/servertransaction/ClientTransaction;)Ljava/lang/String;
    .registers 3
    .param p0, "transaction"    # Landroid/app/servertransaction/ClientTransaction;

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/servertransaction/ClientTransaction;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static blacklist transactionToString(Landroid/app/servertransaction/ClientTransaction;Landroid/app/ClientTransactionHandler;)Ljava/lang/String;
    .registers 6
    .param p0, "transaction"    # Landroid/app/servertransaction/ClientTransaction;
    .param p1, "transactionHandler"    # Landroid/app/ClientTransactionHandler;

    .line 317
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 318
    .local v0, "stringWriter":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 319
    .local v1, "pw":Ljava/io/PrintWriter;
    invoke-static {p0}, Landroid/app/servertransaction/TransactionExecutorHelper;->tId(Landroid/app/servertransaction/ClientTransaction;)Ljava/lang/String;

    move-result-object v2

    .line 320
    .local v2, "prefix":Ljava/lang/String;
    invoke-virtual {p0, v2, v1, p1}, Landroid/app/servertransaction/ClientTransaction;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/app/ClientTransactionHandler;)V

    .line 321
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public greylist-max-o getClosestOfStates(Landroid/app/ActivityThread$ActivityClientRecord;[I)I
    .registers 9
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "finalStates"    # [I

    .line 166
    const/4 v0, -0x1

    if-eqz p2, :cond_3c

    array-length v1, p2

    if-nez v1, :cond_7

    goto :goto_3c

    .line 169
    :cond_7
    if-nez p1, :cond_11

    .line 171
    sget-object v1, Landroid/app/servertransaction/TransactionExecutorHelper;->TAG:Ljava/lang/String;

    const-string v2, "ActivityClientRecord was null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return v0

    .line 175
    :cond_11
    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->getLifecycleState()I

    move-result v0

    .line 176
    .local v0, "currentState":I
    const/4 v1, -0x1

    .line 177
    .local v1, "closestState":I
    const/4 v2, 0x0

    .local v2, "i":I
    const v3, 0x7fffffff

    .local v3, "shortestPath":I
    :goto_1a
    array-length v4, p2

    if-ge v2, v4, :cond_3b

    .line 178
    aget v4, p2, v2

    const/4 v5, 0x0

    invoke-virtual {p0, v0, v4, v5}, Landroid/app/servertransaction/TransactionExecutorHelper;->getLifecyclePath(IIZ)Landroid/util/IntArray;

    .line 179
    iget-object v4, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    invoke-virtual {v4}, Landroid/util/IntArray;->size()I

    move-result v4

    .line 180
    .local v4, "pathLength":I
    iget-object v5, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    invoke-static {v5}, Landroid/app/servertransaction/TransactionExecutorHelper;->pathInvolvesDestruction(Landroid/util/IntArray;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 181
    add-int/lit8 v4, v4, 0xa

    .line 183
    :cond_33
    if-le v3, v4, :cond_38

    .line 184
    move v3, v4

    .line 185
    aget v1, p2, v2

    .line 177
    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 188
    .end local v2    # "i":I
    .end local v3    # "shortestPath":I
    .end local v4    # "pathLength":I
    :cond_3b
    return v1

    .line 167
    .end local v0    # "currentState":I
    .end local v1    # "closestState":I
    :cond_3c
    :goto_3c
    return v0
.end method

.method public greylist-max-o getClosestPreExecutionState(Landroid/app/ActivityThread$ActivityClientRecord;I)I
    .registers 6
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "postExecutionState"    # I

    .line 144
    sparse-switch p2, :sswitch_data_2c

    .line 150
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pre-execution states for state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :sswitch_22
    sget-object v0, Landroid/app/servertransaction/TransactionExecutorHelper;->ON_RESUME_PRE_EXCUTION_STATES:[I

    invoke-virtual {p0, p1, v0}, Landroid/app/servertransaction/TransactionExecutorHelper;->getClosestOfStates(Landroid/app/ActivityThread$ActivityClientRecord;[I)I

    move-result v0

    return v0

    .line 146
    :sswitch_29
    const/4 v0, -0x1

    return v0

    nop

    :sswitch_data_2c
    .sparse-switch
        -0x1 -> :sswitch_29
        0x3 -> :sswitch_22
    .end sparse-switch
.end method

.method public greylist-max-o getLifecyclePath(IIZ)Landroid/util/IntArray;
    .registers 8
    .param p1, "start"    # I
    .param p2, "finish"    # I
    .param p3, "excludeLastState"    # Z

    .line 69
    const/4 v0, -0x1

    if-eq p1, v0, :cond_9e

    if-eq p2, v0, :cond_9e

    .line 72
    const/4 v0, 0x7

    if-eq p1, v0, :cond_96

    if-eq p2, v0, :cond_96

    .line 76
    if-nez p2, :cond_17

    if-ne p1, p2, :cond_f

    goto :goto_17

    .line 77
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only start in pre-onCreate state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_17
    :goto_17
    iget-object v1, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->clear()V

    .line 81
    const/4 v1, 0x2

    const/4 v2, 0x5

    if-lt p2, p1, :cond_37

    .line 82
    if-ne p1, v1, :cond_2a

    if-ne p2, v2, :cond_2a

    .line 85
    iget-object v0, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    invoke-virtual {v0, v2}, Landroid/util/IntArray;->add(I)V

    goto :goto_7c

    .line 88
    :cond_2a
    add-int/lit8 v0, p1, 0x1

    .local v0, "i":I
    :goto_2c
    if-gt v0, p2, :cond_36

    .line 89
    iget-object v1, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    invoke-virtual {v1, v0}, Landroid/util/IntArray;->add(I)V

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .end local v0    # "i":I
    :cond_36
    goto :goto_7c

    .line 93
    :cond_37
    const/4 v3, 0x4

    if-ne p1, v3, :cond_43

    const/4 v3, 0x3

    if-ne p2, v3, :cond_43

    .line 95
    iget-object v0, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    invoke-virtual {v0, v3}, Landroid/util/IntArray;->add(I)V

    goto :goto_7c

    .line 96
    :cond_43
    if-gt p1, v2, :cond_64

    if-lt p2, v1, :cond_64

    .line 100
    add-int/lit8 v1, p1, 0x1

    .local v1, "i":I
    :goto_49
    if-gt v1, v2, :cond_53

    .line 101
    iget-object v3, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    invoke-virtual {v3, v1}, Landroid/util/IntArray;->add(I)V

    .line 100
    add-int/lit8 v1, v1, 0x1

    goto :goto_49

    .line 104
    .end local v1    # "i":I
    :cond_53
    iget-object v1, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    invoke-virtual {v1, v0}, Landroid/util/IntArray;->add(I)V

    .line 106
    const/4 v0, 0x2

    .restart local v0    # "i":I
    :goto_59
    if-gt v0, p2, :cond_63

    .line 107
    iget-object v1, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    invoke-virtual {v1, v0}, Landroid/util/IntArray;->add(I)V

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_59

    .end local v0    # "i":I
    :cond_63
    goto :goto_7c

    .line 113
    :cond_64
    add-int/lit8 v0, p1, 0x1

    .restart local v0    # "i":I
    :goto_66
    const/4 v1, 0x6

    if-gt v0, v1, :cond_71

    .line 114
    iget-object v1, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    invoke-virtual {v1, v0}, Landroid/util/IntArray;->add(I)V

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_66

    .line 117
    .end local v0    # "i":I
    :cond_71
    const/4 v0, 0x1

    .restart local v0    # "i":I
    :goto_72
    if-gt v0, p2, :cond_7c

    .line 118
    iget-object v1, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    invoke-virtual {v1, v0}, Landroid/util/IntArray;->add(I)V

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_72

    .line 124
    .end local v0    # "i":I
    :cond_7c
    :goto_7c
    if-eqz p3, :cond_93

    iget-object v0, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    if-eqz v0, :cond_93

    .line 125
    iget-object v0, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    iget-object v1, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->remove(I)V

    .line 128
    :cond_93
    iget-object v0, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    return-object v0

    .line 73
    :cond_96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t start or finish in intermittent RESTART state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_9e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t resolve lifecycle path for undefined state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
