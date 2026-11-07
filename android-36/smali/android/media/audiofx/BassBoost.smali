.class public Landroid/media/audiofx/BassBoost;
.super Landroid/media/audiofx/AudioEffect;
.source "BassBoost.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiofx/BassBoost$OnParameterChangeListener;,
        Landroid/media/audiofx/BassBoost$BaseParameterListener;,
        Landroid/media/audiofx/BassBoost$Settings;
    }
.end annotation


# static fields
.field public static final whitelist PARAM_STRENGTH:I = 0x1

.field public static final whitelist PARAM_STRENGTH_SUPPORTED:I = 0x0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "BassBoost"


# instance fields
.field private greylist-max-o mBaseParamListener:Landroid/media/audiofx/BassBoost$BaseParameterListener;

.field private greylist-max-o mParamListener:Landroid/media/audiofx/BassBoost$OnParameterChangeListener;

.field private final greylist-max-o mParamListenerLock:Ljava/lang/Object;

.field private greylist-max-o mStrengthSupported:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmParamListener(Landroid/media/audiofx/BassBoost;)Landroid/media/audiofx/BassBoost$OnParameterChangeListener;
    .registers 1

    iget-object p0, p0, Landroid/media/audiofx/BassBoost;->mParamListener:Landroid/media/audiofx/BassBoost$OnParameterChangeListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmParamListenerLock(Landroid/media/audiofx/BassBoost;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/media/audiofx/BassBoost;->mParamListenerLock:Ljava/lang/Object;

    return-object p0
.end method

.method public constructor whitelist <init>(II)V
    .registers 7
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

    .line 94
    sget-object v0, Landroid/media/audiofx/BassBoost;->EFFECT_TYPE_BASS_BOOST:Ljava/util/UUID;

    sget-object v1, Landroid/media/audiofx/BassBoost;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/audiofx/BassBoost;->mStrengthSupported:Z

    .line 65
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/audiofx/BassBoost;->mParamListener:Landroid/media/audiofx/BassBoost$OnParameterChangeListener;

    .line 70
    iput-object v1, p0, Landroid/media/audiofx/BassBoost;->mBaseParamListener:Landroid/media/audiofx/BassBoost$BaseParameterListener;

    .line 75
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/audiofx/BassBoost;->mParamListenerLock:Ljava/lang/Object;

    .line 96
    if-nez p2, :cond_1f

    .line 97
    const-string v1, "BassBoost"

    const-string v2, "WARNING: attaching a BassBoost to global output mix is deprecated!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_1f
    const/4 v1, 0x1

    new-array v2, v1, [I

    .line 101
    .local v2, "value":[I
    invoke-virtual {p0, v0, v2}, Landroid/media/audiofx/BassBoost;->getParameter(I[I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/audiofx/BassBoost;->checkStatus(I)V

    .line 102
    aget v3, v2, v0

    if-eqz v3, :cond_2e

    move v0, v1

    :cond_2e
    iput-boolean v0, p0, Landroid/media/audiofx/BassBoost;->mStrengthSupported:Z

    .line 103
    return-void
.end method


# virtual methods
.method public whitelist getProperties()Landroid/media/audiofx/BassBoost$Settings;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 268
    new-instance v0, Landroid/media/audiofx/BassBoost$Settings;

    invoke-direct {v0}, Landroid/media/audiofx/BassBoost$Settings;-><init>()V

    .line 269
    .local v0, "settings":Landroid/media/audiofx/BassBoost$Settings;
    const/4 v1, 0x1

    new-array v2, v1, [S

    .line 270
    .local v2, "value":[S
    invoke-virtual {p0, v1, v2}, Landroid/media/audiofx/BassBoost;->getParameter(I[S)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/BassBoost;->checkStatus(I)V

    .line 271
    const/4 v1, 0x0

    aget-short v1, v2, v1

    iput-short v1, v0, Landroid/media/audiofx/BassBoost$Settings;->strength:S

    .line 272
    return-object v0
.end method

.method public whitelist getRoundedStrength()S
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 140
    const/4 v0, 0x1

    new-array v1, v0, [S

    .line 141
    .local v1, "value":[S
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/BassBoost;->getParameter(I[S)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/audiofx/BassBoost;->checkStatus(I)V

    .line 142
    const/4 v0, 0x0

    aget-short v0, v1, v0

    return v0
.end method

.method public whitelist getStrengthSupported()Z
    .registers 2

    .line 111
    iget-boolean v0, p0, Landroid/media/audiofx/BassBoost;->mStrengthSupported:Z

    return v0
.end method

.method public whitelist setParameterListener(Landroid/media/audiofx/BassBoost$OnParameterChangeListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/media/audiofx/BassBoost$OnParameterChangeListener;

    .line 200
    iget-object v0, p0, Landroid/media/audiofx/BassBoost;->mParamListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 201
    :try_start_3
    iget-object v1, p0, Landroid/media/audiofx/BassBoost;->mParamListener:Landroid/media/audiofx/BassBoost$OnParameterChangeListener;

    if-nez v1, :cond_16

    .line 202
    iput-object p1, p0, Landroid/media/audiofx/BassBoost;->mParamListener:Landroid/media/audiofx/BassBoost$OnParameterChangeListener;

    .line 203
    new-instance v1, Landroid/media/audiofx/BassBoost$BaseParameterListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/media/audiofx/BassBoost$BaseParameterListener;-><init>(Landroid/media/audiofx/BassBoost;Landroid/media/audiofx/BassBoost-IA;)V

    iput-object v1, p0, Landroid/media/audiofx/BassBoost;->mBaseParamListener:Landroid/media/audiofx/BassBoost$BaseParameterListener;

    .line 204
    iget-object v1, p0, Landroid/media/audiofx/BassBoost;->mBaseParamListener:Landroid/media/audiofx/BassBoost$BaseParameterListener;

    invoke-super {p0, v1}, Landroid/media/audiofx/AudioEffect;->setParameterListener(Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;)V

    .line 206
    :cond_16
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

.method public whitelist setProperties(Landroid/media/audiofx/BassBoost$Settings;)V
    .registers 4
    .param p1, "settings"    # Landroid/media/audiofx/BassBoost$Settings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 285
    const/4 v0, 0x1

    iget-short v1, p1, Landroid/media/audiofx/BassBoost$Settings;->strength:S

    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/BassBoost;->setParameter(IS)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/audiofx/BassBoost;->checkStatus(I)V

    .line 286
    return-void
.end method

.method public whitelist setStrength(S)V
    .registers 3
    .param p1, "strength"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 127
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/BassBoost;->setParameter(IS)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/audiofx/BassBoost;->checkStatus(I)V

    .line 128
    return-void
.end method
