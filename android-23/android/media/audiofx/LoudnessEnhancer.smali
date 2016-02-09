.class public Landroid/media/audiofx/LoudnessEnhancer;
.super Landroid/media/audiofx/AudioEffect;
.source "LoudnessEnhancer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiofx/LoudnessEnhancer$OnParameterChangeListener;,
        Landroid/media/audiofx/LoudnessEnhancer$BaseParameterListener;,
        Landroid/media/audiofx/LoudnessEnhancer$Settings;
    }
.end annotation


# static fields
.field public static final PARAM_TARGET_GAIN_MB:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LoudnessEnhancer"


# instance fields
.field private mBaseParamListener:Landroid/media/audiofx/LoudnessEnhancer$BaseParameterListener;

.field private mParamListener:Landroid/media/audiofx/LoudnessEnhancer$OnParameterChangeListener;

.field private final mParamListenerLock:Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Landroid/media/audiofx/LoudnessEnhancer;)Landroid/media/audiofx/LoudnessEnhancer$OnParameterChangeListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/audiofx/LoudnessEnhancer;->mParamListener:Landroid/media/audiofx/LoudnessEnhancer$OnParameterChangeListener;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/media/audiofx/LoudnessEnhancer;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/audiofx/LoudnessEnhancer;->mParamListenerLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public constructor <init>(I)V
    .locals 4
    .param p1, "audioSession"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 80
    sget-object v0, Landroid/media/audiofx/LoudnessEnhancer;->EFFECT_TYPE_LOUDNESS_ENHANCER:Ljava/util/UUID;

    #@4
    sget-object v1, Landroid/media/audiofx/LoudnessEnhancer;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    #@6
    invoke-direct {p0, v0, v1, v2, p1}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    #@9
    .line 54
    iput-object v3, p0, Landroid/media/audiofx/LoudnessEnhancer;->mParamListener:Landroid/media/audiofx/LoudnessEnhancer$OnParameterChangeListener;

    #@b
    .line 60
    iput-object v3, p0, Landroid/media/audiofx/LoudnessEnhancer;->mBaseParamListener:Landroid/media/audiofx/LoudnessEnhancer$BaseParameterListener;

    #@d
    .line 65
    new-instance v0, Ljava/lang/Object;

    #@f
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@12
    iput-object v0, p0, Landroid/media/audiofx/LoudnessEnhancer;->mParamListenerLock:Ljava/lang/Object;

    #@14
    .line 82
    if-nez p1, :cond_0

    #@16
    .line 83
    const-string/jumbo v0, "LoudnessEnhancer"

    #@19
    const-string/jumbo v1, "WARNING: attaching a LoudnessEnhancer to global output mix is deprecated!"

    #@1c
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 79
    :cond_0
    return-void
.end method

.method public constructor <init>(II)V
    .locals 3
    .param p1, "priority"    # I
    .param p2, "audioSession"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 106
    sget-object v0, Landroid/media/audiofx/LoudnessEnhancer;->EFFECT_TYPE_LOUDNESS_ENHANCER:Ljava/util/UUID;

    #@3
    sget-object v1, Landroid/media/audiofx/LoudnessEnhancer;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    #@5
    invoke-direct {p0, v0, v1, p1, p2}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    #@8
    .line 54
    iput-object v2, p0, Landroid/media/audiofx/LoudnessEnhancer;->mParamListener:Landroid/media/audiofx/LoudnessEnhancer$OnParameterChangeListener;

    #@a
    .line 60
    iput-object v2, p0, Landroid/media/audiofx/LoudnessEnhancer;->mBaseParamListener:Landroid/media/audiofx/LoudnessEnhancer$BaseParameterListener;

    #@c
    .line 65
    new-instance v0, Ljava/lang/Object;

    #@e
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@11
    iput-object v0, p0, Landroid/media/audiofx/LoudnessEnhancer;->mParamListenerLock:Ljava/lang/Object;

    #@13
    .line 108
    if-nez p2, :cond_0

    #@15
    .line 109
    const-string/jumbo v0, "LoudnessEnhancer"

    #@18
    const-string/jumbo v1, "WARNING: attaching a LoudnessEnhancer to global output mix is deprecated!"

    #@1b
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 105
    :cond_0
    return-void
.end method


# virtual methods
.method public getProperties()Landroid/media/audiofx/LoudnessEnhancer$Settings;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 270
    new-instance v0, Landroid/media/audiofx/LoudnessEnhancer$Settings;

    #@3
    invoke-direct {v0}, Landroid/media/audiofx/LoudnessEnhancer$Settings;-><init>()V

    #@6
    .line 271
    .local v0, "settings":Landroid/media/audiofx/LoudnessEnhancer$Settings;
    const/4 v2, 0x1

    #@7
    new-array v1, v2, [I

    #@9
    .line 272
    .local v1, "value":[I
    invoke-virtual {p0, v3, v1}, Landroid/media/audiofx/LoudnessEnhancer;->getParameter(I[I)I

    #@c
    move-result v2

    #@d
    invoke-virtual {p0, v2}, Landroid/media/audiofx/LoudnessEnhancer;->checkStatus(I)V

    #@10
    .line 273
    aget v2, v1, v3

    #@12
    iput v2, v0, Landroid/media/audiofx/LoudnessEnhancer$Settings;->targetGainmB:I

    #@14
    .line 274
    return-object v0
.end method

.method public getTargetGain()F
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 136
    const/4 v1, 0x1

    #@2
    new-array v0, v1, [I

    #@4
    .line 137
    .local v0, "value":[I
    invoke-virtual {p0, v2, v0}, Landroid/media/audiofx/LoudnessEnhancer;->getParameter(I[I)I

    #@7
    move-result v1

    #@8
    invoke-virtual {p0, v1}, Landroid/media/audiofx/LoudnessEnhancer;->checkStatus(I)V

    #@b
    .line 138
    aget v1, v0, v2

    #@d
    int-to-float v1, v1

    #@e
    return v1
.end method

.method public setParameterListener(Landroid/media/audiofx/LoudnessEnhancer$OnParameterChangeListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/media/audiofx/LoudnessEnhancer$OnParameterChangeListener;

    #@0
    .prologue
    .line 200
    iget-object v1, p0, Landroid/media/audiofx/LoudnessEnhancer;->mParamListenerLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 201
    :try_start_0
    iget-object v0, p0, Landroid/media/audiofx/LoudnessEnhancer;->mParamListener:Landroid/media/audiofx/LoudnessEnhancer$OnParameterChangeListener;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 202
    new-instance v0, Landroid/media/audiofx/LoudnessEnhancer$BaseParameterListener;

    #@9
    const/4 v2, 0x0

    #@a
    invoke-direct {v0, p0, v2}, Landroid/media/audiofx/LoudnessEnhancer$BaseParameterListener;-><init>(Landroid/media/audiofx/LoudnessEnhancer;Landroid/media/audiofx/LoudnessEnhancer$BaseParameterListener;)V

    #@d
    iput-object v0, p0, Landroid/media/audiofx/LoudnessEnhancer;->mBaseParamListener:Landroid/media/audiofx/LoudnessEnhancer$BaseParameterListener;

    #@f
    .line 203
    iget-object v0, p0, Landroid/media/audiofx/LoudnessEnhancer;->mBaseParamListener:Landroid/media/audiofx/LoudnessEnhancer$BaseParameterListener;

    #@11
    invoke-super {p0, v0}, Landroid/media/audiofx/AudioEffect;->setParameterListener(Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;)V

    #@14
    .line 205
    :cond_0
    iput-object p1, p0, Landroid/media/audiofx/LoudnessEnhancer;->mParamListener:Landroid/media/audiofx/LoudnessEnhancer$OnParameterChangeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    monitor-exit v1

    #@17
    .line 199
    return-void

    #@18
    .line 200
    :catchall_0
    move-exception v0

    #@19
    monitor-exit v1

    #@1a
    throw v0
.end method

.method public setProperties(Landroid/media/audiofx/LoudnessEnhancer$Settings;)V
    .locals 2
    .param p1, "settings"    # Landroid/media/audiofx/LoudnessEnhancer$Settings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    .line 288
    iget v0, p1, Landroid/media/audiofx/LoudnessEnhancer$Settings;->targetGainmB:I

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/LoudnessEnhancer;->setParameter(II)I

    #@6
    move-result v0

    #@7
    invoke-virtual {p0, v0}, Landroid/media/audiofx/LoudnessEnhancer;->checkStatus(I)V

    #@a
    .line 287
    return-void
.end method

.method public setTargetGain(I)V
    .locals 1
    .param p1, "gainmB"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    .line 124
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/LoudnessEnhancer;->setParameter(II)I

    #@4
    move-result v0

    #@5
    invoke-virtual {p0, v0}, Landroid/media/audiofx/LoudnessEnhancer;->checkStatus(I)V

    #@8
    .line 123
    return-void
.end method
