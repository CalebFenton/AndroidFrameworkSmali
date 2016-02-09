.class Lcom/android/server/audio/PlayerRecord$RcClientDeathHandler;
.super Ljava/lang/Object;
.source "PlayerRecord.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/PlayerRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RcClientDeathHandler"
.end annotation


# instance fields
.field private final mCb:Landroid/os/IBinder;

.field private final mMediaIntent:Landroid/app/PendingIntent;

.field final synthetic this$0:Lcom/android/server/audio/PlayerRecord;


# direct methods
.method static synthetic -get0(Lcom/android/server/audio/PlayerRecord$RcClientDeathHandler;)Landroid/os/IBinder;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/audio/PlayerRecord$RcClientDeathHandler;->mCb:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method constructor <init>(Lcom/android/server/audio/PlayerRecord;Landroid/os/IBinder;Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/audio/PlayerRecord;
    .param p2, "cb"    # Landroid/os/IBinder;
    .param p3, "pi"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/server/audio/PlayerRecord$RcClientDeathHandler;->this$0:Lcom/android/server/audio/PlayerRecord;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 160
    iput-object p2, p0, Lcom/android/server/audio/PlayerRecord$RcClientDeathHandler;->mCb:Landroid/os/IBinder;

    #@7
    .line 161
    iput-object p3, p0, Lcom/android/server/audio/PlayerRecord$RcClientDeathHandler;->mMediaIntent:Landroid/app/PendingIntent;

    #@9
    .line 159
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 165
    const-string/jumbo v0, "MediaFocusControl"

    #@4
    const-string/jumbo v1, "  RemoteControlClient died"

    #@7
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@a
    .line 168
    sget-object v0, Lcom/android/server/audio/PlayerRecord;->sController:Lcom/android/server/audio/MediaFocusControl;

    #@c
    iget-object v1, p0, Lcom/android/server/audio/PlayerRecord$RcClientDeathHandler;->mMediaIntent:Landroid/app/PendingIntent;

    #@e
    invoke-virtual {v0, v1, v2, v2}, Lcom/android/server/audio/MediaFocusControl;->registerRemoteControlClient(Landroid/app/PendingIntent;Landroid/media/IRemoteControlClient;Ljava/lang/String;)I

    #@11
    .line 170
    sget-object v0, Lcom/android/server/audio/PlayerRecord;->sController:Lcom/android/server/audio/MediaFocusControl;

    #@13
    invoke-virtual {v0}, Lcom/android/server/audio/MediaFocusControl;->postReevaluateRemote()V

    #@16
    .line 164
    return-void
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/server/audio/PlayerRecord$RcClientDeathHandler;->mCb:Landroid/os/IBinder;

    #@2
    return-object v0
.end method
