.class public abstract Landroid/view/contentcapture/ContentCaptureSession;
.super Ljava/lang/Object;
.source "ContentCaptureSession.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/contentcapture/ContentCaptureSession$FlushReason;
    }
.end annotation


# static fields
.field public static final blacklist EXTRA_BINDER:Ljava/lang/String; = "binder"

.field public static final blacklist EXTRA_ENABLED_STATE:Ljava/lang/String; = "enabled"

.field public static final blacklist FLUSH_REASON_FORCE_FLUSH:I = 0x8

.field public static final blacklist FLUSH_REASON_FULL:I = 0x1

.field public static final blacklist FLUSH_REASON_IDLE_TIMEOUT:I = 0x5

.field public static final blacklist FLUSH_REASON_SESSION_CONNECTED:I = 0x7

.field public static final blacklist FLUSH_REASON_SESSION_FINISHED:I = 0x4

.field public static final blacklist FLUSH_REASON_SESSION_STARTED:I = 0x3

.field public static final blacklist FLUSH_REASON_TEXT_CHANGE_TIMEOUT:I = 0x6

.field public static final blacklist FLUSH_REASON_VIEW_ROOT_ENTERED:I = 0x2

.field public static final blacklist FLUSH_REASON_VIEW_TREE_APPEARED:I = 0xa

.field public static final blacklist FLUSH_REASON_VIEW_TREE_APPEARING:I = 0x9

.field private static final blacklist ID_GENERATOR:Ljava/security/SecureRandom;

.field private static final blacklist INITIAL_CHILDREN_CAPACITY:I = 0x5

.field static final blacklist NOTIFY_NODES_DISAPPEAR_NOW_SENDS_TREE_EVENTS:J = 0xf6d5e61L

.field public static final blacklist STATE_ACTIVE:I = 0x2

.field public static final blacklist STATE_BY_APP:I = 0x40

.field public static final blacklist STATE_DISABLED:I = 0x4

.field public static final blacklist STATE_DUPLICATED_ID:I = 0x8

.field public static final blacklist STATE_FLAG_SECURE:I = 0x20

.field public static final blacklist STATE_INTERNAL_ERROR:I = 0x100

.field public static final blacklist STATE_NOT_WHITELISTED:I = 0x200

.field public static final blacklist STATE_NO_RESPONSE:I = 0x80

.field public static final blacklist STATE_NO_SERVICE:I = 0x10

.field public static final blacklist STATE_SERVICE_DIED:I = 0x400

.field public static final blacklist STATE_SERVICE_RESURRECTED:I = 0x1000

.field public static final blacklist STATE_SERVICE_UPDATING:I = 0x800

.field public static final blacklist STATE_WAITING_FOR_SERVER:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String;

.field public static final blacklist UNKNOWN_STATE:I


# instance fields
.field private blacklist mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/contentcapture/ContentCaptureSession;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mClientContext:Landroid/view/contentcapture/ContentCaptureContext;

.field private blacklist mContentCaptureSessionId:Landroid/view/contentcapture/ContentCaptureSessionId;

.field private blacklist mDestroyed:Z

.field protected final blacklist mId:I

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mState:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 63
    const-class v0, Landroid/view/contentcapture/ContentCaptureSession;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/contentcapture/ContentCaptureSession;->TAG:Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Landroid/view/contentcapture/ContentCaptureSession;->ID_GENERATOR:Ljava/security/SecureRandom;

    return-void
.end method

.method protected constructor blacklist <init>()V
    .registers 2

    .line 266
    invoke-static {}, Landroid/view/contentcapture/ContentCaptureSession;->getRandomSessionId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/view/contentcapture/ContentCaptureSession;-><init>(I)V

    .line 267
    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 3
    .param p1, "id"    # I

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mLock:Ljava/lang/Object;

    .line 244
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mState:I

    .line 272
    if-eqz p1, :cond_10

    const/4 v0, 0x1

    :cond_10
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 273
    iput p1, p0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    .line 274
    return-void
.end method

.method constructor blacklist <init>(Landroid/view/contentcapture/ContentCaptureContext;)V
    .registers 3
    .param p1, "initialContext"    # Landroid/view/contentcapture/ContentCaptureContext;

    .line 278
    invoke-direct {p0}, Landroid/view/contentcapture/ContentCaptureSession;-><init>()V

    .line 279
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/contentcapture/ContentCaptureContext;

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mClientContext:Landroid/view/contentcapture/ContentCaptureContext;

    .line 280
    return-void
.end method

.method public static blacklist getFlushReasonAsString(I)Ljava/lang/String;
    .registers 3
    .param p0, "reason"    # I

    .line 751
    packed-switch p0, :pswitch_data_36

    .line 773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 771
    :pswitch_17
    const-string v0, "VIEW_TREE_APPEARED"

    return-object v0

    .line 769
    :pswitch_1a
    const-string v0, "VIEW_TREE_APPEARING"

    return-object v0

    .line 767
    :pswitch_1d
    const-string v0, "FORCE_FLUSH"

    return-object v0

    .line 765
    :pswitch_20
    const-string v0, "CONNECTED"

    return-object v0

    .line 763
    :pswitch_23
    const-string v0, "TEXT_CHANGE"

    return-object v0

    .line 761
    :pswitch_26
    const-string v0, "IDLE"

    return-object v0

    .line 759
    :pswitch_29
    const-string v0, "FINISHED"

    return-object v0

    .line 757
    :pswitch_2c
    const-string v0, "STARTED"

    return-object v0

    .line 755
    :pswitch_2f
    const-string v0, "VIEW_ROOT"

    return-object v0

    .line 753
    :pswitch_32
    const-string v0, "FULL"

    return-object v0

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
    .end packed-switch
.end method

.method private static blacklist getRandomSessionId()I
    .registers 1

    .line 780
    nop

    :cond_1
    sget-object v0, Landroid/view/contentcapture/ContentCaptureSession;->ID_GENERATOR:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    .line 781
    .local v0, "id":I
    if-eqz v0, :cond_1

    .line 782
    return v0
.end method

.method protected static blacklist getStateAsString(I)Ljava/lang/String;
    .registers 6
    .param p0, "state"    # I

    .line 744
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p0, :cond_14

    const-string v1, "UNKNOWN"

    goto :goto_1d

    .line 745
    :cond_14
    const-string v1, "STATE_"

    int-to-long v2, p0

    const-class v4, Landroid/view/contentcapture/ContentCaptureSession;

    invoke-static {v4, v1, v2, v3}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    :goto_1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 744
    return-object v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 1

    .line 411
    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureSession;->destroy()V

    .line 412
    return-void
.end method

.method public final whitelist createContentCaptureSession(Landroid/view/contentcapture/ContentCaptureContext;)Landroid/view/contentcapture/ContentCaptureSession;
    .registers 6
    .param p1, "context"    # Landroid/view/contentcapture/ContentCaptureContext;

    .line 323
    invoke-virtual {p0, p1}, Landroid/view/contentcapture/ContentCaptureSession;->newChild(Landroid/view/contentcapture/ContentCaptureContext;)Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v0

    .line 324
    .local v0, "child":Landroid/view/contentcapture/ContentCaptureSession;
    sget-boolean v1, Landroid/view/contentcapture/ContentCaptureHelper;->sDebug:Z

    if-eqz v1, :cond_38

    .line 325
    sget-object v1, Landroid/view/contentcapture/ContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createContentCaptureSession("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": parent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", child="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_38
    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureSession;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 329
    :try_start_3b
    iget-object v2, p0, Landroid/view/contentcapture/ContentCaptureSession;->mChildren:Ljava/util/ArrayList;

    if-nez v2, :cond_47

    .line 330
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Landroid/view/contentcapture/ContentCaptureSession;->mChildren:Ljava/util/ArrayList;

    .line 332
    :cond_47
    iget-object v2, p0, Landroid/view/contentcapture/ContentCaptureSession;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    monitor-exit v1

    .line 334
    return-object v0

    .line 333
    :catchall_4e
    move-exception v2

    monitor-exit v1
    :try_end_50
    .catchall {:try_start_3b .. :try_end_50} :catchall_4e

    throw v2
.end method

.method public final whitelist destroy()V
    .registers 9

    .line 376
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 377
    :try_start_3
    iget-boolean v1, p0, Landroid/view/contentcapture/ContentCaptureSession;->mDestroyed:Z

    if-eqz v1, :cond_2d

    .line 378
    sget-boolean v1, Landroid/view/contentcapture/ContentCaptureHelper;->sDebug:Z

    if-eqz v1, :cond_2b

    sget-object v1, Landroid/view/contentcapture/ContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destroy("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): already destroyed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_2b
    monitor-exit v0

    return-void

    .line 381
    :cond_2d
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/contentcapture/ContentCaptureSession;->mDestroyed:Z

    .line 385
    sget-boolean v1, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v1, :cond_5e

    .line 386
    sget-object v1, Landroid/view/contentcapture/ContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destroy(): state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/contentcapture/ContentCaptureSession;->mState:I

    invoke-static {v3}, Landroid/view/contentcapture/ContentCaptureSession;->getStateAsString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_5e
    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureSession;->mChildren:Ljava/util/ArrayList;

    if-eqz v1, :cond_bf

    .line 390
    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureSession;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 391
    .local v1, "numberChildren":I
    sget-boolean v2, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v2, :cond_8a

    sget-object v2, Landroid/view/contentcapture/ContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Destroying "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " children first"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_8a
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8b
    if-ge v2, v1, :cond_bf

    .line 393
    iget-object v3, p0, Landroid/view/contentcapture/ContentCaptureSession;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/contentcapture/ContentCaptureSession;
    :try_end_95
    .catchall {:try_start_3 .. :try_end_95} :catchall_c4

    .line 395
    .local v3, "child":Landroid/view/contentcapture/ContentCaptureSession;
    :try_start_95
    invoke-virtual {v3}, Landroid/view/contentcapture/ContentCaptureSession;->destroy()V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_98} :catch_99
    .catchall {:try_start_95 .. :try_end_98} :catchall_c4

    .line 398
    goto :goto_bc

    .line 396
    :catch_99
    move-exception v4

    .line 397
    .local v4, "e":Ljava/lang/Exception;
    :try_start_9a
    sget-object v5, Landroid/view/contentcapture/ContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception destroying child session #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    .end local v3    # "child":Landroid/view/contentcapture/ContentCaptureSession;
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_bc
    add-int/lit8 v2, v2, 0x1

    goto :goto_8b

    .line 401
    .end local v1    # "numberChildren":I
    .end local v2    # "i":I
    :cond_bf
    monitor-exit v0
    :try_end_c0
    .catchall {:try_start_9a .. :try_end_c0} :catchall_c4

    .line 403
    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureSession;->onDestroy()V

    .line 404
    return-void

    .line 401
    :catchall_c4
    move-exception v1

    :try_start_c5
    monitor-exit v0
    :try_end_c6
    .catchall {:try_start_c5 .. :try_end_c6} :catchall_c4

    throw v1
.end method

.method blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 9
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 718
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "id: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 719
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mClientContext:Landroid/view/contentcapture/ContentCaptureContext;

    if-eqz v0, :cond_1c

    .line 720
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mClientContext:Landroid/view/contentcapture/ContentCaptureContext;

    invoke-virtual {v0, p2}, Landroid/view/contentcapture/ContentCaptureContext;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 722
    :cond_1c
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 723
    :try_start_1f
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "destroyed: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/view/contentcapture/ContentCaptureSession;->mDestroyed:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 724
    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureSession;->mChildren:Ljava/util/ArrayList;

    if-eqz v1, :cond_78

    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureSession;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_78

    .line 725
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 726
    .local v1, "prefix2":Ljava/lang/String;
    iget-object v2, p0, Landroid/view/contentcapture/ContentCaptureSession;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 727
    .local v2, "numberChildren":I
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "number children: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 728
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_5d
    if-ge v3, v2, :cond_78

    .line 729
    iget-object v4, p0, Landroid/view/contentcapture/ContentCaptureSession;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/contentcapture/ContentCaptureSession;

    .line 730
    .local v4, "child":Landroid/view/contentcapture/ContentCaptureSession;
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v4, v1, p2}, Landroid/view/contentcapture/ContentCaptureSession;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 728
    .end local v4    # "child":Landroid/view/contentcapture/ContentCaptureSession;
    add-int/lit8 v3, v3, 0x1

    goto :goto_5d

    .line 733
    .end local v1    # "prefix2":Ljava/lang/String;
    .end local v2    # "numberChildren":I
    .end local v3    # "i":I
    :cond_78
    monitor-exit v0

    .line 734
    return-void

    .line 733
    :catchall_7a
    move-exception v1

    monitor-exit v0
    :try_end_7c
    .catchall {:try_start_1f .. :try_end_7c} :catchall_7a

    throw v1
.end method

.method public whitelist flush()V
    .registers 2

    .line 576
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    invoke-virtual {p0, v0}, Landroid/view/contentcapture/ContentCaptureSession;->internalNotifySessionFlushEvent(I)V

    .line 577
    return-void
.end method

.method abstract blacklist flush(I)V
.end method

.method public final whitelist getContentCaptureContext()Landroid/view/contentcapture/ContentCaptureContext;
    .registers 2

    .line 367
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mClientContext:Landroid/view/contentcapture/ContentCaptureContext;

    return-object v0
.end method

.method public final whitelist getContentCaptureSessionId()Landroid/view/contentcapture/ContentCaptureSessionId;
    .registers 3

    .line 303
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mContentCaptureSessionId:Landroid/view/contentcapture/ContentCaptureSessionId;

    if-nez v0, :cond_d

    .line 304
    new-instance v0, Landroid/view/contentcapture/ContentCaptureSessionId;

    iget v1, p0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    invoke-direct {v0, v1}, Landroid/view/contentcapture/ContentCaptureSessionId;-><init>(I)V

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mContentCaptureSessionId:Landroid/view/contentcapture/ContentCaptureSessionId;

    .line 306
    :cond_d
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mContentCaptureSessionId:Landroid/view/contentcapture/ContentCaptureSessionId;

    return-object v0
.end method

.method public blacklist getId()I
    .registers 2

    .line 312
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    return v0
.end method

.method abstract blacklist getMainCaptureSession()Landroid/view/contentcapture/ContentCaptureSession;
.end method

.method abstract blacklist internalNotifyChildSessionFinished(II)V
.end method

.method abstract blacklist internalNotifyChildSessionStarted(IILandroid/view/contentcapture/ContentCaptureContext;)V
.end method

.method abstract blacklist internalNotifyContextUpdated(ILandroid/view/contentcapture/ContentCaptureContext;)V
.end method

.method abstract blacklist internalNotifySessionFlushEvent(I)V
.end method

.method abstract blacklist internalNotifySessionPaused()V
.end method

.method abstract blacklist internalNotifySessionResumed()V
.end method

.method abstract blacklist internalNotifyViewAppeared(ILandroid/view/contentcapture/ViewNode$ViewStructureImpl;)V
.end method

.method abstract blacklist internalNotifyViewDisappeared(ILandroid/view/autofill/AutofillId;)V
.end method

.method abstract blacklist internalNotifyViewInsetsChanged(ILandroid/graphics/Insets;)V
.end method

.method abstract blacklist internalNotifyViewTextChanged(ILandroid/view/autofill/AutofillId;Ljava/lang/CharSequence;)V
.end method

.method abstract blacklist internalNotifyViewTreeEvent(IZ)V
.end method

.method blacklist isContentCaptureEnabled()Z
    .registers 3

    .line 711
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 712
    :try_start_3
    iget-boolean v1, p0, Landroid/view/contentcapture/ContentCaptureSession;->mDestroyed:Z

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    monitor-exit v0

    return v1

    .line 713
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method abstract blacklist isDisabled()Z
.end method

.method public whitelist newAutofillId(Landroid/view/autofill/AutofillId;J)Landroid/view/autofill/AutofillId;
    .registers 7
    .param p1, "hostId"    # Landroid/view/autofill/AutofillId;
    .param p2, "virtualChildId"    # J

    .line 689
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    invoke-virtual {p1}, Landroid/view/autofill/AutofillId;->isNonVirtual()Z

    move-result v0

    const-string v1, "hostId cannot be virtual: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 691
    new-instance v0, Landroid/view/autofill/AutofillId;

    iget v1, p0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    invoke-direct {v0, p1, p2, p3, v1}, Landroid/view/autofill/AutofillId;-><init>(Landroid/view/autofill/AutofillId;JI)V

    return-object v0
.end method

.method abstract blacklist newChild(Landroid/view/contentcapture/ContentCaptureContext;)Landroid/view/contentcapture/ContentCaptureSession;
.end method

.method public final whitelist newViewStructure(Landroid/view/View;)Landroid/view/ViewStructure;
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 673
    new-instance v0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;

    invoke-direct {v0, p1}, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public final whitelist newVirtualViewStructure(Landroid/view/autofill/AutofillId;J)Landroid/view/ViewStructure;
    .registers 6
    .param p1, "parentId"    # Landroid/view/autofill/AutofillId;
    .param p2, "virtualId"    # J

    .line 707
    new-instance v0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;

    iget v1, p0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    invoke-direct {v0, p1, p2, p3, v1}, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;-><init>(Landroid/view/autofill/AutofillId;JI)V

    return-object v0
.end method

.method public abstract blacklist notifyContentCaptureEvents(Landroid/util/SparseArray;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public final whitelist notifySessionPaused()V
    .registers 2

    .line 605
    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureSession;->isContentCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 607
    :cond_7
    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureSession;->internalNotifySessionPaused()V

    .line 608
    return-void
.end method

.method public final whitelist notifySessionResumed()V
    .registers 2

    .line 594
    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureSession;->isContentCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 596
    :cond_7
    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureSession;->internalNotifySessionResumed()V

    .line 597
    return-void
.end method

.method public final whitelist notifyViewAppeared(Landroid/view/ViewStructure;)V
    .registers 5
    .param p1, "node"    # Landroid/view/ViewStructure;

    .line 427
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureSession;->isContentCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 430
    :cond_a
    instance-of v0, p1, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;

    if-eqz v0, :cond_17

    .line 434
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    move-object v1, p1

    check-cast v1, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;

    invoke-virtual {p0, v0, v1}, Landroid/view/contentcapture/ContentCaptureSession;->internalNotifyViewAppeared(ILandroid/view/contentcapture/ViewNode$ViewStructureImpl;)V

    .line 435
    return-void

    .line 431
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid node class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist notifyViewDisappeared(Landroid/view/autofill/AutofillId;)V
    .registers 3
    .param p1, "id"    # Landroid/view/autofill/AutofillId;

    .line 452
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureSession;->isContentCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 455
    :cond_a
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    invoke-virtual {p0, v0, p1}, Landroid/view/contentcapture/ContentCaptureSession;->internalNotifyViewDisappeared(ILandroid/view/autofill/AutofillId;)V

    .line 456
    return-void
.end method

.method public final whitelist notifyViewInsetsChanged(Landroid/graphics/Insets;)V
    .registers 3
    .param p1, "viewInsets"    # Landroid/graphics/Insets;

    .line 544
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureSession;->isContentCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 548
    :cond_a
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    invoke-virtual {p0, v0, p1}, Landroid/view/contentcapture/ContentCaptureSession;->internalNotifyViewInsetsChanged(ILandroid/graphics/Insets;)V

    .line 549
    return-void
.end method

.method public final whitelist notifyViewTextChanged(Landroid/view/autofill/AutofillId;Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "text"    # Ljava/lang/CharSequence;

    .line 530
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureSession;->isContentCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 534
    :cond_a
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/view/contentcapture/ContentCaptureSession;->internalNotifyViewTextChanged(ILandroid/view/autofill/AutofillId;Ljava/lang/CharSequence;)V

    .line 535
    return-void
.end method

.method public blacklist notifyViewTreeEvent(Z)V
    .registers 3
    .param p1, "started"    # Z

    .line 584
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    invoke-virtual {p0, v0, p1}, Landroid/view/contentcapture/ContentCaptureSession;->internalNotifyViewTreeEvent(IZ)V

    .line 585
    return-void
.end method

.method public final whitelist notifyViewsAppeared(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/ViewStructure;",
            ">;)V"
        }
    .end annotation

    .line 470
    .local p1, "appearedNodes":Ljava/util/List;, "Ljava/util/List<Landroid/view/ViewStructure;>;"
    const-string v0, "appearedNodes"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    .line 471
    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureSession;->isContentCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    .line 473
    :cond_c
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3d

    .line 474
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStructure;

    .line 475
    .local v1, "v":Landroid/view/ViewStructure;
    instance-of v2, v1, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;

    if-eqz v2, :cond_20

    .line 473
    .end local v1    # "v":Landroid/view/ViewStructure;
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 476
    .restart local v1    # "v":Landroid/view/ViewStructure;
    :cond_20
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid class: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 480
    .end local v0    # "i":I
    .end local v1    # "v":Landroid/view/ViewStructure;
    :cond_3d
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/view/contentcapture/ContentCaptureSession;->internalNotifyViewTreeEvent(IZ)V

    .line 481
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_44
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5b

    .line 482
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStructure;

    .line 483
    .restart local v1    # "v":Landroid/view/ViewStructure;
    iget v2, p0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    move-object v3, v1

    check-cast v3, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;

    invoke-virtual {p0, v2, v3}, Landroid/view/contentcapture/ContentCaptureSession;->internalNotifyViewAppeared(ILandroid/view/contentcapture/ViewNode$ViewStructureImpl;)V

    .line 481
    .end local v1    # "v":Landroid/view/ViewStructure;
    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    .line 485
    .end local v0    # "i":I
    :cond_5b
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/contentcapture/ContentCaptureSession;->internalNotifyViewTreeEvent(IZ)V

    .line 486
    return-void
.end method

.method public final whitelist notifyViewsDisappeared(Landroid/view/autofill/AutofillId;[J)V
    .registers 13
    .param p1, "hostId"    # Landroid/view/autofill/AutofillId;
    .param p2, "virtualIds"    # [J

    .line 506
    invoke-virtual {p1}, Landroid/view/autofill/AutofillId;->isNonVirtual()Z

    move-result v0

    const-string v1, "hostId cannot be virtual: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 507
    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([J)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string/jumbo v2, "virtual ids cannot be empty"

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 508
    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureSession;->isContentCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_20

    return-void

    .line 510
    :cond_20
    const-wide/32 v2, 0xf6d5e61

    invoke-static {v2, v3}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 511
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    invoke-virtual {p0, v0, v1}, Landroid/view/contentcapture/ContentCaptureSession;->internalNotifyViewTreeEvent(IZ)V

    .line 515
    :cond_2e
    array-length v0, p2

    const/4 v1, 0x0

    move v4, v1

    :goto_31
    if-ge v4, v0, :cond_44

    aget-wide v5, p2, v4

    .line 516
    .local v5, "id":J
    iget v7, p0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    new-instance v8, Landroid/view/autofill/AutofillId;

    iget v9, p0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    invoke-direct {v8, p1, v5, v6, v9}, Landroid/view/autofill/AutofillId;-><init>(Landroid/view/autofill/AutofillId;JI)V

    invoke-virtual {p0, v7, v8}, Landroid/view/contentcapture/ContentCaptureSession;->internalNotifyViewDisappeared(ILandroid/view/autofill/AutofillId;)V

    .line 515
    .end local v5    # "id":J
    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    .line 518
    :cond_44
    invoke-static {v2, v3}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 519
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    invoke-virtual {p0, v0, v1}, Landroid/view/contentcapture/ContentCaptureSession;->internalNotifyViewTreeEvent(IZ)V

    .line 521
    :cond_4f
    return-void
.end method

.method public abstract blacklist notifyWindowBoundsChanged(ILandroid/graphics/Rect;)V
.end method

.method abstract blacklist onDestroy()V
.end method

.method public final whitelist setContentCaptureContext(Landroid/view/contentcapture/ContentCaptureContext;)V
    .registers 3
    .param p1, "context"    # Landroid/view/contentcapture/ContentCaptureContext;

    .line 350
    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureSession;->isContentCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 352
    :cond_7
    iput-object p1, p0, Landroid/view/contentcapture/ContentCaptureSession;->mClientContext:Landroid/view/contentcapture/ContentCaptureContext;

    .line 353
    invoke-virtual {p0, p1}, Landroid/view/contentcapture/ContentCaptureSession;->updateContentCaptureContext(Landroid/view/contentcapture/ContentCaptureContext;)V

    .line 354
    return-void
.end method

.method abstract blacklist setDisabled(Z)Z
.end method

.method abstract blacklist start(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/ComponentName;I)V
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 738
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method abstract blacklist updateContentCaptureContext(Landroid/view/contentcapture/ContentCaptureContext;)V
.end method
