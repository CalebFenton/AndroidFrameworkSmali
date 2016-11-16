.class public Lcom/android/server/audio/MediaFocusControl;
.super Ljava/lang/Object;
.source "MediaFocusControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaFocusControl"

.field private static final mAudioFocusLock:Ljava/lang/Object;


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mContext:Landroid/content/Context;

.field private mFocusFollowers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/audiopolicy/IAudioPolicyCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mFocusStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/android/server/audio/FocusRequester;",
            ">;"
        }
    .end annotation
.end field

.field private mNotifyFocusOwnerOnDuck:Z


# direct methods
.method static synthetic -get0()Ljava/lang/Object;
    .locals 1

    #@0
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/audio/MediaFocusControl;)Ljava/util/Stack;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "cb"    # Landroid/os/IBinder;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntryOnDeath(Landroid/os/IBinder;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 66
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    #@7
    .line 43
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "cntxt"    # Landroid/content/Context;

    #@0
    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 109
    new-instance v0, Ljava/util/Stack;

    #@5
    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    #@a
    .line 273
    const/4 v0, 0x1

    #@b
    iput-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl;->mNotifyFocusOwnerOnDuck:Z

    #@d
    .line 281
    new-instance v0, Ljava/util/ArrayList;

    #@f
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@12
    iput-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    #@14
    .line 51
    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    #@16
    .line 52
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    #@18
    const-string/jumbo v1, "appops"

    #@1b
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Landroid/app/AppOpsManager;

    #@21
    iput-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mAppOps:Landroid/app/AppOpsManager;

    #@23
    .line 50
    return-void
.end method

.method private canReassignAudioFocus()Z
    .locals 1

    #@0
    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    #@2
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    #@a
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Lcom/android/server/audio/FocusRequester;

    #@10
    invoke-direct {p0, v0}, Lcom/android/server/audio/MediaFocusControl;->isLockedFocusOwner(Lcom/android/server/audio/FocusRequester;)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_0

    #@16
    .line 210
    const/4 v0, 0x0

    #@17
    return v0

    #@18
    .line 212
    :cond_0
    const/4 v0, 0x1

    #@19
    return v0
.end method

.method private dumpFocusStack(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 116
    const-string/jumbo v1, "\nAudio Focus stack entries (last is top of stack):"

    #@3
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 117
    sget-object v2, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    #@8
    monitor-enter v2

    #@9
    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    #@b
    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v0

    #@f
    .line 119
    .local v0, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 120
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    check-cast v1, Lcom/android/server/audio/FocusRequester;

    #@1b
    invoke-virtual {v1, p1}, Lcom/android/server/audio/FocusRequester;->dump(Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    goto :goto_0

    #@1f
    .line 117
    .end local v0    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :catchall_0
    move-exception v1

    #@20
    monitor-exit v2

    #@21
    throw v1

    #@22
    .restart local v0    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :cond_0
    monitor-exit v2

    #@23
    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v2, "\n Notify on duck: "

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    iget-boolean v2, p0, Lcom/android/server/audio/MediaFocusControl;->mNotifyFocusOwnerOnDuck:Z

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    const-string/jumbo v2, "\n"

    #@38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v1

    #@40
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@43
    .line 115
    return-void
.end method

.method private isLockedFocusOwner(Lcom/android/server/audio/FocusRequester;)Z
    .locals 1
    .param p1, "fr"    # Lcom/android/server/audio/FocusRequester;

    #@0
    .prologue
    .line 216
    const-string/jumbo v0, "AudioFocus_For_Phone_Ring_And_Calls"

    #@3
    invoke-virtual {p1, v0}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    invoke-virtual {p1}, Lcom/android/server/audio/FocusRequester;->isLockedFocusOwner()Z

    #@c
    move-result v0

    #@d
    :goto_0
    return v0

    #@e
    :cond_0
    const/4 v0, 0x1

    #@f
    goto :goto_0
.end method

.method private notifyTopOfAudioFocusStack()V
    .locals 2

    #@0
    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    #@2
    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 90
    invoke-direct {p0}, Lcom/android/server/audio/MediaFocusControl;->canReassignAudioFocus()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 91
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    #@10
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Lcom/android/server/audio/FocusRequester;

    #@16
    const/4 v1, 0x1

    #@17
    invoke-virtual {v0, v1}, Lcom/android/server/audio/FocusRequester;->handleFocusGain(I)V

    #@1a
    .line 87
    :cond_0
    return-void
.end method

.method private propagateFocusLossFromGain_syncAf(I)V
    .locals 2
    .param p1, "focusGain"    # I

    #@0
    .prologue
    .line 103
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    #@2
    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    .line 104
    .local v0, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 105
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/android/server/audio/FocusRequester;

    #@12
    invoke-virtual {v1, p1}, Lcom/android/server/audio/FocusRequester;->handleExternalFocusGain(I)V

    #@15
    goto :goto_0

    #@16
    .line 100
    :cond_0
    return-void
.end method

.method private pushBelowLockedFocusOwners(Lcom/android/server/audio/FocusRequester;)I
    .locals 5
    .param p1, "nfr"    # Lcom/android/server/audio/FocusRequester;

    #@0
    .prologue
    .line 229
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    #@2
    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    #@5
    move-result v1

    #@6
    .line 230
    .local v1, "lastLockedFocusOwnerIndex":I
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    #@8
    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    #@b
    move-result v2

    #@c
    add-int/lit8 v0, v2, -0x1

    #@e
    .local v0, "index":I
    :goto_0
    if-ltz v0, :cond_1

    #@10
    .line 231
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    #@12
    invoke-virtual {v2, v0}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    check-cast v2, Lcom/android/server/audio/FocusRequester;

    #@18
    invoke-direct {p0, v2}, Lcom/android/server/audio/MediaFocusControl;->isLockedFocusOwner(Lcom/android/server/audio/FocusRequester;)Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_0

    #@1e
    .line 232
    move v1, v0

    #@1f
    .line 230
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@21
    goto :goto_0

    #@22
    .line 235
    :cond_1
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    #@24
    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    #@27
    move-result v2

    #@28
    if-ne v1, v2, :cond_2

    #@2a
    .line 237
    const-string/jumbo v2, "MediaFocusControl"

    #@2d
    const-string/jumbo v3, "No exclusive focus owner found in propagateFocusLossFromGain_syncAf()"

    #@30
    .line 238
    new-instance v4, Ljava/lang/Exception;

    #@32
    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    #@35
    .line 237
    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@38
    .line 240
    invoke-virtual {p1}, Lcom/android/server/audio/FocusRequester;->getGainRequest()I

    #@3b
    move-result v2

    #@3c
    invoke-direct {p0, v2}, Lcom/android/server/audio/MediaFocusControl;->propagateFocusLossFromGain_syncAf(I)V

    #@3f
    .line 241
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    #@41
    invoke-virtual {v2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    #@44
    .line 242
    const/4 v2, 0x1

    #@45
    return v2

    #@46
    .line 244
    :cond_2
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    #@48
    invoke-virtual {v2, p1, v1}, Ljava/util/Stack;->insertElementAt(Ljava/lang/Object;I)V

    #@4b
    .line 245
    const/4 v2, 0x2

    #@4c
    return v2
.end method

.method private removeFocusStackEntry(Ljava/lang/String;ZZ)V
    .locals 6
    .param p1, "clientToRemove"    # Ljava/lang/String;
    .param p2, "signal"    # Z
    .param p3, "notifyFocusFollowers"    # Z

    #@0
    .prologue
    .line 137
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    #@2
    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    #@5
    move-result v3

    #@6
    if-nez v3, :cond_2

    #@8
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    #@a
    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    #@d
    move-result-object v3

    #@e
    check-cast v3, Lcom/android/server/audio/FocusRequester;

    #@10
    invoke-virtual {v3, p1}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    #@13
    move-result v3

    #@14
    if-eqz v3, :cond_2

    #@16
    .line 140
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    #@18
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    #@1b
    move-result-object v1

    #@1c
    check-cast v1, Lcom/android/server/audio/FocusRequester;

    #@1e
    .line 141
    .local v1, "fr":Lcom/android/server/audio/FocusRequester;
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->release()V

    #@21
    .line 142
    if-eqz p3, :cond_0

    #@23
    .line 143
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    #@26
    move-result-object v0

    #@27
    .line 144
    .local v0, "afi":Landroid/media/AudioFocusInfo;
    invoke-virtual {v0}, Landroid/media/AudioFocusInfo;->clearLossReceived()V

    #@2a
    .line 145
    const/4 v3, 0x0

    #@2b
    invoke-virtual {p0, v0, v3}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusLoss_syncAf(Landroid/media/AudioFocusInfo;Z)V

    #@2e
    .line 147
    .end local v0    # "afi":Landroid/media/AudioFocusInfo;
    :cond_0
    if-eqz p2, :cond_1

    #@30
    .line 149
    invoke-direct {p0}, Lcom/android/server/audio/MediaFocusControl;->notifyTopOfAudioFocusStack()V

    #@33
    .line 135
    .end local v1    # "fr":Lcom/android/server/audio/FocusRequester;
    :cond_1
    return-void

    #@34
    .line 156
    :cond_2
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    #@36
    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    #@39
    move-result-object v2

    #@3a
    .line 157
    .local v2, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@3d
    move-result v3

    #@3e
    if-eqz v3, :cond_1

    #@40
    .line 158
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@43
    move-result-object v1

    #@44
    check-cast v1, Lcom/android/server/audio/FocusRequester;

    #@46
    .line 159
    .restart local v1    # "fr":Lcom/android/server/audio/FocusRequester;
    invoke-virtual {v1, p1}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    #@49
    move-result v3

    #@4a
    if-eqz v3, :cond_3

    #@4c
    .line 160
    const-string/jumbo v3, "MediaFocusControl"

    #@4f
    new-instance v4, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    const-string/jumbo v5, "AudioFocus  removeFocusStackEntry(): removing entry for "

    #@57
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v4

    #@5b
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v4

    #@5f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v4

    #@63
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@66
    .line 162
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    #@69
    .line 164
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->release()V

    #@6c
    goto :goto_0
.end method

.method private removeFocusStackEntryOnDeath(Landroid/os/IBinder;)V
    .locals 6
    .param p1, "cb"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 177
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    #@2
    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    #@5
    move-result v3

    #@6
    if-nez v3, :cond_1

    #@8
    .line 178
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    #@a
    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    #@d
    move-result-object v3

    #@e
    check-cast v3, Lcom/android/server/audio/FocusRequester;

    #@10
    invoke-virtual {v3, p1}, Lcom/android/server/audio/FocusRequester;->hasSameBinder(Landroid/os/IBinder;)Z

    #@13
    move-result v1

    #@14
    .line 181
    :goto_0
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    #@16
    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    #@19
    move-result-object v2

    #@1a
    .line 182
    .local v2, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@1d
    move-result v3

    #@1e
    if-eqz v3, :cond_2

    #@20
    .line 183
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    check-cast v0, Lcom/android/server/audio/FocusRequester;

    #@26
    .line 184
    .local v0, "fr":Lcom/android/server/audio/FocusRequester;
    invoke-virtual {v0, p1}, Lcom/android/server/audio/FocusRequester;->hasSameBinder(Landroid/os/IBinder;)Z

    #@29
    move-result v3

    #@2a
    if-eqz v3, :cond_0

    #@2c
    .line 185
    const-string/jumbo v3, "MediaFocusControl"

    #@2f
    new-instance v4, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v5, "AudioFocus  removeFocusStackEntryOnDeath(): removing entry for "

    #@37
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v4

    #@3b
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v4

    #@3f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v4

    #@43
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@46
    .line 186
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    #@49
    .line 188
    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->release()V

    #@4c
    goto :goto_1

    #@4d
    .line 177
    .end local v0    # "fr":Lcom/android/server/audio/FocusRequester;
    .end local v2    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :cond_1
    const/4 v1, 0x0

    #@4e
    .local v1, "isTopOfStackForClientToRemove":Z
    goto :goto_0

    #@4f
    .line 191
    .end local v1    # "isTopOfStackForClientToRemove":Z
    .restart local v2    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :cond_2
    if-eqz v1, :cond_3

    #@51
    .line 194
    invoke-direct {p0}, Lcom/android/server/audio/MediaFocusControl;->notifyTopOfAudioFocusStack()V

    #@54
    .line 175
    :cond_3
    return-void
.end method


# virtual methods
.method protected abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;)I
    .locals 5
    .param p1, "fl"    # Landroid/media/IAudioFocusDispatcher;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "aa"    # Landroid/media/AudioAttributes;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 485
    const-string/jumbo v1, "MediaFocusControl"

    #@4
    new-instance v2, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v3, " AudioFocus  abandonAudioFocus() from uid/pid "

    #@c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v2

    #@10
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@13
    move-result v3

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    .line 486
    const-string/jumbo v3, "/"

    #@1b
    .line 485
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    .line 486
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@22
    move-result v3

    #@23
    .line 485
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    .line 487
    const-string/jumbo v3, " clientId="

    #@2a
    .line 485
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v2

    #@36
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@39
    .line 490
    :try_start_0
    sget-object v1, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    #@3b
    monitor-enter v1
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    #@3c
    .line 491
    const/4 v2, 0x1

    #@3d
    const/4 v3, 0x1

    #@3e
    :try_start_1
    invoke-direct {p0, p2, v2, v3}, Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntry(Ljava/lang/String;ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@41
    :try_start_2
    monitor-exit v1

    #@42
    .line 501
    :goto_0
    return v4

    #@43
    .line 490
    :catchall_0
    move-exception v2

    #@44
    monitor-exit v1

    #@45
    throw v2
    :try_end_2
    .catch Ljava/util/ConcurrentModificationException; {:try_start_2 .. :try_end_2} :catch_0

    #@46
    .line 493
    :catch_0
    move-exception v0

    #@47
    .line 497
    .local v0, "cme":Ljava/util/ConcurrentModificationException;
    const-string/jumbo v1, "MediaFocusControl"

    #@4a
    new-instance v2, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    const-string/jumbo v3, "FATAL EXCEPTION AudioFocus  abandonAudioFocus() caused "

    #@52
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v2

    #@56
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v2

    #@5a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v2

    #@5e
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@61
    .line 498
    invoke-virtual {v0}, Ljava/util/ConcurrentModificationException;->printStackTrace()V

    #@64
    goto :goto_0
.end method

.method addFocusFollower(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .locals 6
    .param p1, "ff"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    #@0
    .prologue
    .line 284
    if-nez p1, :cond_0

    #@2
    .line 285
    return-void

    #@3
    .line 287
    :cond_0
    sget-object v4, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    #@5
    monitor-enter v4

    #@6
    .line 288
    const/4 v0, 0x0

    #@7
    .line 289
    .local v0, "found":Z
    :try_start_0
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    #@9
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v2

    #@d
    .local v2, "pcb$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_2

    #@13
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Landroid/media/audiopolicy/IAudioPolicyCallback;

    #@19
    .line 290
    .local v1, "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-interface {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    #@1c
    move-result-object v3

    #@1d
    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    #@20
    move-result-object v5

    #@21
    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    move-result v3

    #@25
    if-eqz v3, :cond_1

    #@27
    .line 291
    const/4 v0, 0x1

    #@28
    .line 295
    .end local v1    # "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :cond_2
    if-eqz v0, :cond_3

    #@2a
    monitor-exit v4

    #@2b
    .line 296
    return-void

    #@2c
    .line 298
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    #@2e
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@31
    .line 299
    invoke-virtual {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyCurrentFocusAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    monitor-exit v4

    #@35
    .line 283
    return-void

    #@36
    .line 287
    .end local v2    # "pcb$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    #@37
    monitor-exit v4

    #@38
    throw v3
.end method

.method protected discardAudioFocusOwner()V
    .locals 3

    #@0
    .prologue
    .line 74
    sget-object v2, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 75
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    #@5
    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_0

    #@b
    .line 77
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    #@d
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/android/server/audio/FocusRequester;

    #@13
    .line 78
    .local v0, "exFocusOwner":Lcom/android/server/audio/FocusRequester;
    const/4 v1, -0x1

    #@14
    invoke-virtual {v0, v1}, Lcom/android/server/audio/FocusRequester;->handleFocusLoss(I)V

    #@17
    .line 79
    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    .end local v0    # "exFocusOwner":Lcom/android/server/audio/FocusRequester;
    :cond_0
    monitor-exit v2

    #@1b
    .line 73
    return-void

    #@1c
    .line 74
    :catchall_0
    move-exception v1

    #@1d
    monitor-exit v2

    #@1e
    throw v1
.end method

.method protected dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "\nMediaFocusControl dump time: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 57
    invoke-static {}, Ljava/text/DateFormat;->getTimeInstance()Ljava/text/DateFormat;

    #@f
    move-result-object v1

    #@10
    new-instance v2, Ljava/util/Date;

    #@12
    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    #@15
    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@24
    .line 58
    invoke-direct {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->dumpFocusStack(Ljava/io/PrintWriter;)V

    #@27
    .line 55
    return-void
.end method

.method protected getCurrentAudioFocus()I
    .locals 2

    #@0
    .prologue
    .line 375
    sget-object v1, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 376
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    #@5
    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 377
    const/4 v0, 0x0

    #@c
    monitor-exit v1

    #@d
    return v0

    #@e
    .line 379
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    #@10
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Lcom/android/server/audio/FocusRequester;

    #@16
    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->getGainRequest()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@19
    move-result v0

    #@1a
    monitor-exit v1

    #@1b
    return v0

    #@1c
    .line 375
    :catchall_0
    move-exception v0

    #@1d
    monitor-exit v1

    #@1e
    throw v0
.end method

.method mustNotifyFocusOwnerOnDuck()Z
    .locals 1

    #@0
    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl;->mNotifyFocusOwnerOnDuck:Z

    #@2
    return v0
.end method

.method notifyExtPolicyCurrentFocusAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .locals 2
    .param p1, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    #@0
    .prologue
    .line 322
    move-object v0, p1

    #@1
    .line 323
    .local v0, "pcb2":Landroid/media/audiopolicy/IAudioPolicyCallback;
    new-instance v1, Lcom/android/server/audio/MediaFocusControl$1;

    #@3
    invoke-direct {v1, p0, p1}, Lcom/android/server/audio/MediaFocusControl$1;-><init>(Lcom/android/server/audio/MediaFocusControl;Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    #@6
    .line 341
    .local v1, "thread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    #@9
    .line 321
    return-void
.end method

.method notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V
    .locals 6
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .param p2, "requestResult"    # I

    #@0
    .prologue
    .line 348
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    #@2
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v2

    #@6
    .local v2, "pcb$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v3

    #@a
    if-eqz v3, :cond_0

    #@c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Landroid/media/audiopolicy/IAudioPolicyCallback;

    #@12
    .line 351
    .local v1, "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyAudioFocusGrant(Landroid/media/AudioFocusInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    goto :goto_0

    #@16
    .line 352
    :catch_0
    move-exception v0

    #@17
    .line 353
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "MediaFocusControl"

    #@1a
    new-instance v4, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v5, "Can\'t call notifyAudioFocusGrant() on IAudioPolicyCallback "

    #@22
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v4

    #@26
    .line 354
    invoke-interface {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    #@29
    move-result-object v5

    #@2a
    .line 353
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v4

    #@2e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v4

    #@32
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@35
    goto :goto_0

    #@36
    .line 347
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :cond_0
    return-void
.end method

.method notifyExtPolicyFocusLoss_syncAf(Landroid/media/AudioFocusInfo;Z)V
    .locals 6
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .param p2, "wasDispatched"    # Z

    #@0
    .prologue
    .line 363
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    #@2
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v2

    #@6
    .local v2, "pcb$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v3

    #@a
    if-eqz v3, :cond_0

    #@c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Landroid/media/audiopolicy/IAudioPolicyCallback;

    #@12
    .line 366
    .local v1, "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyAudioFocusLoss(Landroid/media/AudioFocusInfo;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    goto :goto_0

    #@16
    .line 367
    :catch_0
    move-exception v0

    #@17
    .line 368
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "MediaFocusControl"

    #@1a
    new-instance v4, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v5, "Can\'t call notifyAudioFocusLoss() on IAudioPolicyCallback "

    #@22
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v4

    #@26
    .line 369
    invoke-interface {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    #@29
    move-result-object v5

    #@2a
    .line 368
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v4

    #@2e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v4

    #@32
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@35
    goto :goto_0

    #@36
    .line 362
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :cond_0
    return-void
.end method

.method removeFocusFollower(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .locals 5
    .param p1, "ff"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    #@0
    .prologue
    .line 305
    if-nez p1, :cond_0

    #@2
    .line 306
    return-void

    #@3
    .line 308
    :cond_0
    sget-object v3, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    #@5
    monitor-enter v3

    #@6
    .line 309
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    #@8
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v1

    #@c
    .local v1, "pcb$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_2

    #@12
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Landroid/media/audiopolicy/IAudioPolicyCallback;

    #@18
    .line 310
    .local v0, "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-interface {v0}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    #@1b
    move-result-object v2

    #@1c
    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v2

    #@24
    if-eqz v2, :cond_1

    #@26
    .line 311
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    #@28
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    .end local v0    # "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :cond_2
    monitor-exit v3

    #@2c
    .line 304
    return-void

    #@2d
    .line 308
    .end local v1    # "pcb$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    #@2e
    monitor-exit v3

    #@2f
    throw v2
.end method

.method protected requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 18
    .param p1, "aa"    # Landroid/media/AudioAttributes;
    .param p2, "focusChangeHint"    # I
    .param p3, "cb"    # Landroid/os/IBinder;
    .param p4, "fd"    # Landroid/media/IAudioFocusDispatcher;
    .param p5, "clientId"    # Ljava/lang/String;
    .param p6, "callingPackageName"    # Ljava/lang/String;
    .param p7, "flags"    # I

    #@0
    .prologue
    .line 387
    const-string/jumbo v3, "MediaFocusControl"

    #@3
    new-instance v4, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v5, " AudioFocus  requestAudioFocus() from uid/pid "

    #@b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v4

    #@f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@12
    move-result v5

    #@13
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v4

    #@17
    .line 388
    const-string/jumbo v5, "/"

    #@1a
    .line 387
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v4

    #@1e
    .line 388
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@21
    move-result v5

    #@22
    .line 387
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v4

    #@26
    .line 389
    const-string/jumbo v5, " clientId="

    #@29
    .line 387
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v4

    #@2d
    move-object/from16 v0, p5

    #@2f
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v4

    #@33
    .line 390
    const-string/jumbo v5, " req="

    #@36
    .line 387
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v4

    #@3a
    move/from16 v0, p2

    #@3c
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v4

    #@40
    .line 391
    const-string/jumbo v5, " flags=0x"

    #@43
    .line 387
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v4

    #@47
    .line 391
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@4a
    move-result-object v5

    #@4b
    .line 387
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v4

    #@4f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v4

    #@53
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@56
    .line 393
    invoke-interface/range {p3 .. p3}, Landroid/os/IBinder;->pingBinder()Z

    #@59
    move-result v3

    #@5a
    if-nez v3, :cond_0

    #@5c
    .line 394
    const-string/jumbo v3, "MediaFocusControl"

    #@5f
    const-string/jumbo v4, " AudioFocus DOA client for requestAudioFocus(), aborting."

    #@62
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@65
    .line 395
    const/4 v3, 0x0

    #@66
    return v3

    #@67
    .line 398
    :cond_0
    move-object/from16 v0, p0

    #@69
    iget-object v3, v0, Lcom/android/server/audio/MediaFocusControl;->mAppOps:Landroid/app/AppOpsManager;

    #@6b
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@6e
    move-result v4

    #@6f
    const/16 v5, 0x20

    #@71
    move-object/from16 v0, p6

    #@73
    invoke-virtual {v3, v5, v4, v0}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    #@76
    move-result v3

    #@77
    if-eqz v3, :cond_1

    #@79
    .line 400
    const/4 v3, 0x0

    #@7a
    return v3

    #@7b
    .line 403
    :cond_1
    sget-object v17, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    #@7d
    monitor-enter v17

    #@7e
    .line 404
    const/4 v14, 0x0

    #@7f
    .line 405
    .local v14, "focusGrantDelayed":Z
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/MediaFocusControl;->canReassignAudioFocus()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@82
    move-result v3

    #@83
    if-nez v3, :cond_3

    #@85
    .line 406
    and-int/lit8 v3, p7, 0x1

    #@87
    if-nez v3, :cond_2

    #@89
    .line 407
    const/4 v3, 0x0

    #@8a
    monitor-exit v17

    #@8b
    return v3

    #@8c
    .line 412
    :cond_2
    const/4 v14, 0x1

    #@8d
    .line 419
    :cond_3
    :try_start_1
    new-instance v9, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;

    #@8f
    move-object/from16 v0, p0

    #@91
    move-object/from16 v1, p3

    #@93
    invoke-direct {v9, v0, v1}, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;-><init>(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@96
    .line 422
    .local v9, "afdh":Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    const/4 v3, 0x0

    #@97
    :try_start_2
    move-object/from16 v0, p3

    #@99
    invoke-interface {v0, v9, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@9c
    .line 429
    :try_start_3
    move-object/from16 v0, p0

    #@9e
    iget-object v3, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    #@a0
    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    #@a3
    move-result v3

    #@a4
    if-nez v3, :cond_5

    #@a6
    move-object/from16 v0, p0

    #@a8
    iget-object v3, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    #@aa
    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    #@ad
    move-result-object v3

    #@ae
    check-cast v3, Lcom/android/server/audio/FocusRequester;

    #@b0
    move-object/from16 v0, p5

    #@b2
    invoke-virtual {v3, v0}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    #@b5
    move-result v3

    #@b6
    if-eqz v3, :cond_5

    #@b8
    .line 432
    move-object/from16 v0, p0

    #@ba
    iget-object v3, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    #@bc
    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    #@bf
    move-result-object v15

    #@c0
    check-cast v15, Lcom/android/server/audio/FocusRequester;

    #@c2
    .line 433
    .local v15, "fr":Lcom/android/server/audio/FocusRequester;
    invoke-virtual {v15}, Lcom/android/server/audio/FocusRequester;->getGainRequest()I

    #@c5
    move-result v3

    #@c6
    move/from16 v0, p2

    #@c8
    if-ne v3, v0, :cond_4

    #@ca
    invoke-virtual {v15}, Lcom/android/server/audio/FocusRequester;->getGrantFlags()I

    #@cd
    move-result v3

    #@ce
    move/from16 v0, p7

    #@d0
    if-ne v3, v0, :cond_4

    #@d2
    .line 436
    const/4 v3, 0x0

    #@d3
    move-object/from16 v0, p3

    #@d5
    invoke-interface {v0, v9, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    #@d8
    .line 437
    invoke-virtual {v15}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    #@db
    move-result-object v3

    #@dc
    .line 438
    const/4 v4, 0x1

    #@dd
    .line 437
    move-object/from16 v0, p0

    #@df
    invoke-virtual {v0, v3, v4}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@e2
    .line 439
    const/4 v3, 0x1

    #@e3
    monitor-exit v17

    #@e4
    return v3

    #@e5
    .line 423
    .end local v15    # "fr":Lcom/android/server/audio/FocusRequester;
    :catch_0
    move-exception v13

    #@e6
    .line 425
    .local v13, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string/jumbo v3, "MediaFocusControl"

    #@e9
    new-instance v4, Ljava/lang/StringBuilder;

    #@eb
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@ee
    const-string/jumbo v5, "AudioFocus  requestAudioFocus() could not link to "

    #@f1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f4
    move-result-object v4

    #@f5
    move-object/from16 v0, p3

    #@f7
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@fa
    move-result-object v4

    #@fb
    const-string/jumbo v5, " binder death"

    #@fe
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@101
    move-result-object v4

    #@102
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@105
    move-result-object v4

    #@106
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@109
    .line 426
    const/4 v3, 0x0

    #@10a
    monitor-exit v17

    #@10b
    return v3

    #@10c
    .line 443
    .end local v13    # "e":Landroid/os/RemoteException;
    .restart local v15    # "fr":Lcom/android/server/audio/FocusRequester;
    :cond_4
    if-nez v14, :cond_5

    #@10e
    .line 444
    :try_start_5
    move-object/from16 v0, p0

    #@110
    iget-object v3, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    #@112
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    #@115
    .line 446
    invoke-virtual {v15}, Lcom/android/server/audio/FocusRequester;->release()V

    #@118
    .line 451
    .end local v15    # "fr":Lcom/android/server/audio/FocusRequester;
    :cond_5
    const/4 v3, 0x0

    #@119
    const/4 v4, 0x0

    #@11a
    move-object/from16 v0, p0

    #@11c
    move-object/from16 v1, p5

    #@11e
    invoke-direct {v0, v1, v3, v4}, Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntry(Ljava/lang/String;ZZ)V

    #@121
    .line 453
    new-instance v2, Lcom/android/server/audio/FocusRequester;

    #@123
    .line 454
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@126
    move-result v11

    #@127
    move-object/from16 v3, p1

    #@129
    move/from16 v4, p2

    #@12b
    move/from16 v5, p7

    #@12d
    move-object/from16 v6, p4

    #@12f
    move-object/from16 v7, p3

    #@131
    move-object/from16 v8, p5

    #@133
    move-object/from16 v10, p6

    #@135
    move-object/from16 v12, p0

    #@137
    .line 453
    invoke-direct/range {v2 .. v12}, Lcom/android/server/audio/FocusRequester;-><init>(Landroid/media/AudioAttributes;IILandroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;Ljava/lang/String;Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;Ljava/lang/String;ILcom/android/server/audio/MediaFocusControl;)V

    #@13a
    .line 455
    .local v2, "nfr":Lcom/android/server/audio/FocusRequester;
    if-eqz v14, :cond_7

    #@13c
    .line 458
    move-object/from16 v0, p0

    #@13e
    invoke-direct {v0, v2}, Lcom/android/server/audio/MediaFocusControl;->pushBelowLockedFocusOwners(Lcom/android/server/audio/FocusRequester;)I

    #@141
    move-result v16

    #@142
    .line 459
    .local v16, "requestResult":I
    if-eqz v16, :cond_6

    #@144
    .line 460
    invoke-virtual {v2}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    #@147
    move-result-object v3

    #@148
    move-object/from16 v0, p0

    #@14a
    move/from16 v1, v16

    #@14c
    invoke-virtual {v0, v3, v1}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@14f
    :cond_6
    monitor-exit v17

    #@150
    .line 462
    return v16

    #@151
    .line 465
    .end local v16    # "requestResult":I
    :cond_7
    :try_start_6
    move-object/from16 v0, p0

    #@153
    iget-object v3, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    #@155
    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    #@158
    move-result v3

    #@159
    if-nez v3, :cond_8

    #@15b
    .line 466
    move-object/from16 v0, p0

    #@15d
    move/from16 v1, p2

    #@15f
    invoke-direct {v0, v1}, Lcom/android/server/audio/MediaFocusControl;->propagateFocusLossFromGain_syncAf(I)V

    #@162
    .line 470
    :cond_8
    move-object/from16 v0, p0

    #@164
    iget-object v3, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    #@166
    invoke-virtual {v3, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    #@169
    .line 472
    invoke-virtual {v2}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    #@16c
    move-result-object v3

    #@16d
    .line 473
    const/4 v4, 0x1

    #@16e
    .line 472
    move-object/from16 v0, p0

    #@170
    invoke-virtual {v0, v3, v4}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@173
    monitor-exit v17

    #@174
    .line 477
    const/4 v3, 0x1

    #@175
    return v3

    #@176
    .line 403
    .end local v2    # "nfr":Lcom/android/server/audio/FocusRequester;
    .end local v9    # "afdh":Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    :catchall_0
    move-exception v3

    #@177
    monitor-exit v17

    #@178
    throw v3
.end method

.method protected setDuckingInExtPolicyAvailable(Z)V
    .locals 1
    .param p1, "available"    # Z

    #@0
    .prologue
    .line 276
    if-eqz p1, :cond_0

    #@2
    const/4 v0, 0x0

    #@3
    :goto_0
    iput-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl;->mNotifyFocusOwnerOnDuck:Z

    #@5
    .line 275
    return-void

    #@6
    .line 276
    :cond_0
    const/4 v0, 0x1

    #@7
    goto :goto_0
.end method

.method protected unregisterAudioFocusClient(Ljava/lang/String;)V
    .locals 3
    .param p1, "clientId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 506
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 507
    const/4 v1, 0x0

    #@4
    const/4 v2, 0x1

    #@5
    :try_start_0
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntry(Ljava/lang/String;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v0

    #@9
    .line 505
    return-void

    #@a
    .line 506
    :catchall_0
    move-exception v1

    #@b
    monitor-exit v0

    #@c
    throw v1
.end method
