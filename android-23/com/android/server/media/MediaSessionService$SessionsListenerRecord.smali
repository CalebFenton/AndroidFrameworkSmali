.class final Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
.super Ljava/lang/Object;
.source "MediaSessionService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SessionsListenerRecord"
.end annotation


# instance fields
.field private final mComponentName:Landroid/content/ComponentName;

.field private final mListener:Landroid/media/session/IActiveSessionsListener;

.field private final mPid:I

.field private final mUid:I

.field private final mUserId:I

.field final synthetic this$0:Lcom/android/server/media/MediaSessionService;


# direct methods
.method static synthetic -get0(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)Landroid/content/ComponentName;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->mComponentName:Landroid/content/ComponentName;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)Landroid/media/session/IActiveSessionsListener;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->mListener:Landroid/media/session/IActiveSessionsListener;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->mPid:I

    #@2
    return v0
.end method

.method static synthetic -get3(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->mUid:I

    #@2
    return v0
.end method

.method static synthetic -get4(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->mUserId:I

    #@2
    return v0
.end method

.method public constructor <init>(Lcom/android/server/media/MediaSessionService;Landroid/media/session/IActiveSessionsListener;Landroid/content/ComponentName;III)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/media/MediaSessionService;
    .param p2, "listener"    # Landroid/media/session/IActiveSessionsListener;
    .param p3, "componentName"    # Landroid/content/ComponentName;
    .param p4, "userId"    # I
    .param p5, "pid"    # I
    .param p6, "uid"    # I

    #@0
    .prologue
    .line 597
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 600
    iput-object p2, p0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->mListener:Landroid/media/session/IActiveSessionsListener;

    #@7
    .line 601
    iput-object p3, p0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->mComponentName:Landroid/content/ComponentName;

    #@9
    .line 602
    iput p4, p0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->mUserId:I

    #@b
    .line 603
    iput p5, p0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->mPid:I

    #@d
    .line 604
    iput p6, p0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->mUid:I

    #@f
    .line 599
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    #@0
    .prologue
    .line 609
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    #@2
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-get7(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 610
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    #@9
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-get10(Lcom/android/server/media/MediaSessionService;)Ljava/util/ArrayList;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v1

    #@11
    .line 608
    return-void

    #@12
    .line 609
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method
