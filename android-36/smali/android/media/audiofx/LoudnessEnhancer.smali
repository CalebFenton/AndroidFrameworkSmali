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
.field public static final whitelist PARAM_TARGET_GAIN_MB:I = 0x0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "LoudnessEnhancer"


# instance fields
.field private greylist-max-o mBaseParamListener:Landroid/media/audiofx/LoudnessEnhancer$BaseParameterListener;

.field private greylist-max-o mParamListener:Landroid/media/audiofx/LoudnessEnhancer$OnParameterChangeListener;

.field private final greylist-max-o mParamListenerLock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmParamListener(Landroid/media/audiofx/LoudnessEnhancer;)Landroid/media/audiofx/LoudnessEnhancer$OnParameterChangeListener;
    .registers 1

    iget-object p0, p0, Landroid/media/audiofx/LoudnessEnhancer;->mParamListener:Landroid/media/audiofx/LoudnessEnhancer$OnParameterChangeListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmParamListenerLock(Landroid/media/audiofx/LoudnessEnhancer;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/media/audiofx/LoudnessEnhancer;->mParamListenerLock:Ljava/lang/Object;

    return-object p0
.end method

.method public constructor whitelist <init>(I)V
    .registers 5
    .param p1, "audioSession"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 80
    sget-object v0, Landroid/media/audiofx/LoudnessEnhancer;->EFFECT_TYPE_LOUDNESS_ENHANCER:Ljava/util/UUID;

    sget-object v1, Landroid/media/audiofx/LoudnessEnhancer;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/audiofx/LoudnessEnhancer;->mParamListener:Landroid/media/audiofx/LoudnessEnhancer$OnParameterChangeListener;

    .line 60
    iput-object v0, p0, Landroid/media/audiofx/LoudnessEnhancer;->mBaseParamListener:Landroid/media/audiofx/LoudnessEnhancer$BaseParameterListener;

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/audiofx/LoudnessEnhancer;->mParamListenerLock:Ljava/lang/Object;

    .line 82
    if-nez p1, :cond_1d

    .line 83
    const-string v0, "LoudnessEnhancer"

    const-string v1, "WARNING: attaching a LoudnessEnhancer to global output mix is deprecated!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_1d
    return-void
.end method

.method public constructor greylist-max-o <init>(II)V
    .registers 5
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

    .line 106
    sget-object v0, Landroid/media/audiofx/LoudnessEnhancer;->EFFECT_TYPE_LOUDNESS_ENHANCER:Ljava/util/UUID;

    sget-object v1, Landroid/media/audiofx/LoudnessEnhancer;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/audiofx/LoudnessEnhancer;->mParamListener:Landroid/media/audiofx/LoudnessEnhancer$OnParameterChangeListener;

    .line 60
    iput-object v0, p0, Landroid/media/audiofx/LoudnessEnhancer;->mBaseParamListener:Landroid/media/audiofx/LoudnessEnhancer$BaseParameterListener;

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/audiofx/LoudnessEnhancer;->mParamListenerLock:Ljava/lang/Object;

    .line 108
    if-nez p2, :cond_1c

    .line 109
    const-string v0, "LoudnessEnhancer"

    const-string v1, "WARNING: attaching a LoudnessEnhancer to global output mix is deprecated!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_1c
    return-void
.end method


# virtual methods
.method public greylist-max-o getProperties()Landroid/media/audiofx/LoudnessEnhancer$Settings;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 270
    new-instance v0, Landroid/media/audiofx/LoudnessEnhancer$Settings;

    invoke-direct {v0}, Landroid/media/audiofx/LoudnessEnhancer$Settings;-><init>()V

    .line 271
    .local v0, "settings":Landroid/media/audiofx/LoudnessEnhancer$Settings;
    const/4 v1, 0x1

    new-array v1, v1, [I

    .line 272
    .local v1, "value":[I
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Landroid/media/audiofx/LoudnessEnhancer;->getParameter(I[I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/audiofx/LoudnessEnhancer;->checkStatus(I)V

    .line 273
    aget v2, v1, v2

    iput v2, v0, Landroid/media/audiofx/LoudnessEnhancer$Settings;->targetGainmB:I

    .line 274
    return-object v0
.end method

.method public whitelist getTargetGain()F
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 136
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 137
    .local v0, "value":[I
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/LoudnessEnhancer;->getParameter(I[I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/LoudnessEnhancer;->checkStatus(I)V

    .line 138
    aget v1, v0, v1

    int-to-float v1, v1

    return v1
.end method

.method public greylist-max-o setParameterListener(Landroid/media/audiofx/LoudnessEnhancer$OnParameterChangeListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/media/audiofx/LoudnessEnhancer$OnParameterChangeListener;

    .line 200
    iget-object v0, p0, Landroid/media/audiofx/LoudnessEnhancer;->mParamListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 201
    :try_start_3
    iget-object v1, p0, Landroid/media/audiofx/LoudnessEnhancer;->mParamListener:Landroid/media/audiofx/LoudnessEnhancer$OnParameterChangeListener;

    if-nez v1, :cond_14

    .line 202
    new-instance v1, Landroid/media/audiofx/LoudnessEnhancer$BaseParameterListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/media/audiofx/LoudnessEnhancer$BaseParameterListener;-><init>(Landroid/media/audiofx/LoudnessEnhancer;Landroid/media/audiofx/LoudnessEnhancer-IA;)V

    iput-object v1, p0, Landroid/media/audiofx/LoudnessEnhancer;->mBaseParamListener:Landroid/media/audiofx/LoudnessEnhancer$BaseParameterListener;

    .line 203
    iget-object v1, p0, Landroid/media/audiofx/LoudnessEnhancer;->mBaseParamListener:Landroid/media/audiofx/LoudnessEnhancer$BaseParameterListener;

    invoke-super {p0, v1}, Landroid/media/audiofx/AudioEffect;->setParameterListener(Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;)V

    .line 205
    :cond_14
    iput-object p1, p0, Landroid/media/audiofx/LoudnessEnhancer;->mParamListener:Landroid/media/audiofx/LoudnessEnhancer$OnParameterChangeListener;

    .line 206
    monitor-exit v0

    .line 207
    return-void

    .line 206
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public greylist-max-o setProperties(Landroid/media/audiofx/LoudnessEnhancer$Settings;)V
    .registers 4
    .param p1, "settings"    # Landroid/media/audiofx/LoudnessEnhancer$Settings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 288
    const/4 v0, 0x0

    iget v1, p1, Landroid/media/audiofx/LoudnessEnhancer$Settings;->targetGainmB:I

    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/LoudnessEnhancer;->setParameter(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/audiofx/LoudnessEnhancer;->checkStatus(I)V

    .line 289
    return-void
.end method

.method public whitelist setTargetGain(I)V
    .registers 3
    .param p1, "gainmB"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 124
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/LoudnessEnhancer;->setParameter(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/audiofx/LoudnessEnhancer;->checkStatus(I)V

    .line 125
    return-void
.end method
