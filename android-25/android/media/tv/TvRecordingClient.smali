.class public Landroid/media/tv/TvRecordingClient;
.super Ljava/lang/Object;
.source "TvRecordingClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/TvRecordingClient$MySessionCallback;,
        Landroid/media/tv/TvRecordingClient$RecordingCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "TvRecordingClient"


# instance fields
.field private final mCallback:Landroid/media/tv/TvRecordingClient$RecordingCallback;

.field private final mHandler:Landroid/os/Handler;

.field private mIsRecordingStarted:Z

.field private mIsTuned:Z

.field private final mPendingAppPrivateCommands:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSession:Landroid/media/tv/TvInputManager$Session;

.field private mSessionCallback:Landroid/media/tv/TvRecordingClient$MySessionCallback;

.field private final mTvInputManager:Landroid/media/tv/TvInputManager;


# direct methods
.method static synthetic -get0(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvRecordingClient$RecordingCallback;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mCallback:Landroid/media/tv/TvRecordingClient$RecordingCallback;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/media/tv/TvRecordingClient;)Ljava/util/Queue;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mPendingAppPrivateCommands:Ljava/util/Queue;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvInputManager$Session;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSession:Landroid/media/tv/TvInputManager$Session;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvRecordingClient$MySessionCallback;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSessionCallback:Landroid/media/tv/TvRecordingClient$MySessionCallback;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/media/tv/TvRecordingClient;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/media/tv/TvRecordingClient;->mIsRecordingStarted:Z

    #@2
    return p1
.end method

.method static synthetic -set1(Landroid/media/tv/TvRecordingClient;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/media/tv/TvRecordingClient;->mIsTuned:Z

    #@2
    return p1
.end method

.method static synthetic -set2(Landroid/media/tv/TvRecordingClient;Landroid/media/tv/TvInputManager$Session;)Landroid/media/tv/TvInputManager$Session;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/media/tv/TvRecordingClient;->mSession:Landroid/media/tv/TvInputManager$Session;

    #@2
    return-object p1
.end method

.method static synthetic -set3(Landroid/media/tv/TvRecordingClient;Landroid/media/tv/TvRecordingClient$MySessionCallback;)Landroid/media/tv/TvRecordingClient$MySessionCallback;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/media/tv/TvRecordingClient;->mSessionCallback:Landroid/media/tv/TvRecordingClient$MySessionCallback;

    #@2
    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/media/tv/TvRecordingClient$RecordingCallback;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/media/tv/TvRecordingClient$RecordingCallback;
    .param p4, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 52
    new-instance v0, Ljava/util/ArrayDeque;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    #@8
    iput-object v0, p0, Landroid/media/tv/TvRecordingClient;->mPendingAppPrivateCommands:Ljava/util/Queue;

    #@a
    .line 64
    iput-object p3, p0, Landroid/media/tv/TvRecordingClient;->mCallback:Landroid/media/tv/TvRecordingClient$RecordingCallback;

    #@c
    .line 65
    if-nez p4, :cond_0

    #@e
    new-instance p4, Landroid/os/Handler;

    #@10
    .end local p4    # "handler":Landroid/os/Handler;
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@13
    move-result-object v0

    #@14
    invoke-direct {p4, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@17
    :cond_0
    iput-object p4, p0, Landroid/media/tv/TvRecordingClient;->mHandler:Landroid/os/Handler;

    #@19
    .line 66
    const-string/jumbo v0, "tv_input"

    #@1c
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, Landroid/media/tv/TvInputManager;

    #@22
    iput-object v0, p0, Landroid/media/tv/TvRecordingClient;->mTvInputManager:Landroid/media/tv/TvInputManager;

    #@24
    .line 63
    return-void
.end method

.method private resetInternal()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 145
    iput-object v1, p0, Landroid/media/tv/TvRecordingClient;->mSessionCallback:Landroid/media/tv/TvRecordingClient$MySessionCallback;

    #@3
    .line 146
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mPendingAppPrivateCommands:Ljava/util/Queue;

    #@5
    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    #@8
    .line 147
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSession:Landroid/media/tv/TvInputManager$Session;

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 148
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSession:Landroid/media/tv/TvInputManager$Session;

    #@e
    invoke-virtual {v0}, Landroid/media/tv/TvInputManager$Session;->release()V

    #@11
    .line 149
    iput-object v1, p0, Landroid/media/tv/TvRecordingClient;->mSession:Landroid/media/tv/TvInputManager$Session;

    #@13
    .line 144
    :cond_0
    return-void
.end method


# virtual methods
.method public release()V
    .locals 0

    #@0
    .prologue
    .line 141
    invoke-direct {p0}, Landroid/media/tv/TvRecordingClient;->resetInternal()V

    #@3
    .line 139
    return-void
.end method

.method public sendAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 213
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 214
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "action cannot be null or an empty string"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 216
    :cond_0
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSession:Landroid/media/tv/TvInputManager$Session;

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 217
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSession:Landroid/media/tv/TvInputManager$Session;

    #@15
    invoke-virtual {v0, p1, p2}, Landroid/media/tv/TvInputManager$Session;->sendAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    #@18
    .line 212
    :goto_0
    return-void

    #@19
    .line 219
    :cond_1
    const-string/jumbo v0, "TvRecordingClient"

    #@1c
    new-instance v1, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v2, "sendAppPrivateCommand - session not yet created (action \""

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    .line 220
    const-string/jumbo v2, "\" pending)"

    #@2f
    .line 219
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3a
    .line 221
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mPendingAppPrivateCommands:Ljava/util/Queue;

    #@3c
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@3f
    move-result-object v1

    #@40
    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    #@43
    goto :goto_0
.end method

.method public startRecording(Landroid/net/Uri;)V
    .locals 2
    .param p1, "programUri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 173
    iget-boolean v0, p0, Landroid/media/tv/TvRecordingClient;->mIsTuned:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 174
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "startRecording failed - not yet tuned"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 176
    :cond_0
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSession:Landroid/media/tv/TvInputManager$Session;

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 177
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSession:Landroid/media/tv/TvInputManager$Session;

    #@13
    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager$Session;->startRecording(Landroid/net/Uri;)V

    #@16
    .line 178
    const/4 v0, 0x1

    #@17
    iput-boolean v0, p0, Landroid/media/tv/TvRecordingClient;->mIsRecordingStarted:Z

    #@19
    .line 172
    :cond_1
    return-void
.end method

.method public stopRecording()V
    .locals 2

    #@0
    .prologue
    .line 195
    iget-boolean v0, p0, Landroid/media/tv/TvRecordingClient;->mIsRecordingStarted:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 196
    const-string/jumbo v0, "TvRecordingClient"

    #@7
    const-string/jumbo v1, "stopRecording failed - recording not yet started"

    #@a
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 198
    :cond_0
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSession:Landroid/media/tv/TvInputManager$Session;

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 199
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSession:Landroid/media/tv/TvInputManager$Session;

    #@13
    invoke-virtual {v0}, Landroid/media/tv/TvInputManager$Session;->stopRecording()V

    #@16
    .line 194
    :cond_1
    return-void
.end method

.method public tune(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "channelUri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 87
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/media/tv/TvRecordingClient;->tune(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V

    #@4
    .line 86
    return-void
.end method

.method public tune(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "channelUri"    # Landroid/net/Uri;
    .param p3, "params"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 113
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 114
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "inputId cannot be null or an empty string"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 116
    :cond_0
    iget-boolean v0, p0, Landroid/media/tv/TvRecordingClient;->mIsRecordingStarted:Z

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 117
    new-instance v0, Ljava/lang/IllegalStateException;

    #@15
    const-string/jumbo v1, "tune failed - recording already started"

    #@18
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 119
    :cond_1
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSessionCallback:Landroid/media/tv/TvRecordingClient$MySessionCallback;

    #@1e
    if-eqz v0, :cond_4

    #@20
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSessionCallback:Landroid/media/tv/TvRecordingClient$MySessionCallback;

    #@22
    iget-object v0, v0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->mInputId:Ljava/lang/String;

    #@24
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_4

    #@2a
    .line 120
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSession:Landroid/media/tv/TvInputManager$Session;

    #@2c
    if-eqz v0, :cond_3

    #@2e
    .line 121
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSession:Landroid/media/tv/TvInputManager$Session;

    #@30
    invoke-virtual {v0, p2, p3}, Landroid/media/tv/TvInputManager$Session;->tune(Landroid/net/Uri;Landroid/os/Bundle;)V

    #@33
    .line 111
    :cond_2
    :goto_0
    return-void

    #@34
    .line 123
    :cond_3
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSessionCallback:Landroid/media/tv/TvRecordingClient$MySessionCallback;

    #@36
    iput-object p2, v0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->mChannelUri:Landroid/net/Uri;

    #@38
    .line 124
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSessionCallback:Landroid/media/tv/TvRecordingClient$MySessionCallback;

    #@3a
    iput-object p3, v0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->mConnectionParams:Landroid/os/Bundle;

    #@3c
    goto :goto_0

    #@3d
    .line 127
    :cond_4
    invoke-direct {p0}, Landroid/media/tv/TvRecordingClient;->resetInternal()V

    #@40
    .line 128
    new-instance v0, Landroid/media/tv/TvRecordingClient$MySessionCallback;

    #@42
    invoke-direct {v0, p0, p1, p2, p3}, Landroid/media/tv/TvRecordingClient$MySessionCallback;-><init>(Landroid/media/tv/TvRecordingClient;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V

    #@45
    iput-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSessionCallback:Landroid/media/tv/TvRecordingClient$MySessionCallback;

    #@47
    .line 129
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mTvInputManager:Landroid/media/tv/TvInputManager;

    #@49
    if-eqz v0, :cond_2

    #@4b
    .line 130
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mTvInputManager:Landroid/media/tv/TvInputManager;

    #@4d
    iget-object v1, p0, Landroid/media/tv/TvRecordingClient;->mSessionCallback:Landroid/media/tv/TvRecordingClient$MySessionCallback;

    #@4f
    iget-object v2, p0, Landroid/media/tv/TvRecordingClient;->mHandler:Landroid/os/Handler;

    #@51
    invoke-virtual {v0, p1, v1, v2}, Landroid/media/tv/TvInputManager;->createRecordingSession(Ljava/lang/String;Landroid/media/tv/TvInputManager$SessionCallback;Landroid/os/Handler;)V

    #@54
    goto :goto_0
.end method
