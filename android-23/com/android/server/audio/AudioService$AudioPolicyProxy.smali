.class public Lcom/android/server/audio/AudioService$AudioPolicyProxy;
.super Landroid/media/audiopolicy/AudioPolicyConfig;
.source "AudioService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AudioPolicyProxy"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioPolicyProxy"


# instance fields
.field mFocusDuckBehavior:I

.field mHasFocusListener:Z

.field mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;Z)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;
    .param p2, "config"    # Landroid/media/audiopolicy/AudioPolicyConfig;
    .param p3, "token"    # Landroid/media/audiopolicy/IAudioPolicyCallback;
    .param p4, "hasFocusListener"    # Z

    #@0
    .prologue
    .line 6128
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->this$0:Lcom/android/server/audio/AudioService;

    #@2
    .line 6130
    invoke-direct {p0, p2}, Landroid/media/audiopolicy/AudioPolicyConfig;-><init>(Landroid/media/audiopolicy/AudioPolicyConfig;)V

    #@5
    .line 6126
    const/4 v0, 0x0

    #@6
    iput v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mFocusDuckBehavior:I

    #@8
    .line 6131
    new-instance v0, Ljava/lang/String;

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    invoke-virtual {p2}, Landroid/media/audiopolicy/AudioPolicyConfig;->hashCode()I

    #@12
    move-result v2

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    const-string/jumbo v2, ":ap:"

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-get9(Lcom/android/server/audio/AudioService;)I

    #@21
    move-result v2

    #@22
    add-int/lit8 v3, v2, 0x1

    #@24
    invoke-static {p1, v3}, Lcom/android/server/audio/AudioService;->-set2(Lcom/android/server/audio/AudioService;I)I

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #@32
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->setRegistration(Ljava/lang/String;)V

    #@35
    .line 6132
    iput-object p3, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

    #@37
    .line 6133
    iput-boolean p4, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mHasFocusListener:Z

    #@39
    .line 6134
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mHasFocusListener:Z

    #@3b
    if-eqz v0, :cond_0

    #@3d
    .line 6135
    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-get24(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    #@40
    move-result-object v0

    #@41
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

    #@43
    invoke-virtual {v0, v1}, Lcom/android/server/audio/MediaFocusControl;->addFocusFollower(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    #@46
    .line 6137
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->connectMixes()V

    #@49
    .line 6129
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    #@0
    .prologue
    .line 6141
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->this$0:Lcom/android/server/audio/AudioService;

    #@2
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get8(Lcom/android/server/audio/AudioService;)Ljava/util/HashMap;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 6142
    :try_start_0
    const-string/jumbo v0, "AudioPolicyProxy"

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "audio policy "

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    const-string/jumbo v3, " died"

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    .line 6143
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->release()V

    #@2d
    .line 6144
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->this$0:Lcom/android/server/audio/AudioService;

    #@2f
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get8(Lcom/android/server/audio/AudioService;)Ljava/util/HashMap;

    #@32
    move-result-object v0

    #@33
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

    #@35
    invoke-interface {v2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    #@38
    move-result-object v2

    #@39
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3c
    monitor-exit v1

    #@3d
    .line 6140
    return-void

    #@3e
    .line 6141
    :catchall_0
    move-exception v0

    #@3f
    monitor-exit v1

    #@40
    throw v0
.end method

.method connectMixes()V
    .locals 2

    #@0
    .prologue
    .line 6163
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mMixes:Ljava/util/ArrayList;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-static {v0, v1}, Landroid/media/AudioSystem;->registerPolicyMixes(Ljava/util/ArrayList;Z)I

    #@6
    .line 6162
    return-void
.end method

.method getRegistrationId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 6149
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->getRegistration()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method release()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 6153
    iget v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mFocusDuckBehavior:I

    #@3
    const/4 v1, 0x1

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 6154
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->this$0:Lcom/android/server/audio/AudioService;

    #@8
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get24(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, v2}, Lcom/android/server/audio/MediaFocusControl;->setDuckingInExtPolicyAvailable(Z)V

    #@f
    .line 6156
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mHasFocusListener:Z

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 6157
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->this$0:Lcom/android/server/audio/AudioService;

    #@15
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get24(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    #@18
    move-result-object v0

    #@19
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

    #@1b
    invoke-virtual {v0, v1}, Lcom/android/server/audio/MediaFocusControl;->removeFocusFollower(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    #@1e
    .line 6159
    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mMixes:Ljava/util/ArrayList;

    #@20
    invoke-static {v0, v2}, Landroid/media/AudioSystem;->registerPolicyMixes(Ljava/util/ArrayList;Z)I

    #@23
    .line 6152
    return-void
.end method
