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
.field public static final PARAM_STRENGTH:I = 0x1

.field public static final PARAM_STRENGTH_SUPPORTED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BassBoost"


# instance fields
.field private mBaseParamListener:Landroid/media/audiofx/BassBoost$BaseParameterListener;

.field private mParamListener:Landroid/media/audiofx/BassBoost$OnParameterChangeListener;

.field private final mParamListenerLock:Ljava/lang/Object;

.field private mStrengthSupported:Z


# direct methods
.method static synthetic -get0(Landroid/media/audiofx/BassBoost;)Landroid/media/audiofx/BassBoost$OnParameterChangeListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/audiofx/BassBoost;->mParamListener:Landroid/media/audiofx/BassBoost$OnParameterChangeListener;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/media/audiofx/BassBoost;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/audiofx/BassBoost;->mParamListenerLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public constructor <init>(II)V
    .locals 6
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
    const/4 v5, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 94
    sget-object v3, Landroid/media/audiofx/BassBoost;->EFFECT_TYPE_BASS_BOOST:Ljava/util/UUID;

    #@5
    sget-object v4, Landroid/media/audiofx/BassBoost;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    #@7
    invoke-direct {p0, v3, v4, p1, p2}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    #@a
    .line 60
    iput-boolean v2, p0, Landroid/media/audiofx/BassBoost;->mStrengthSupported:Z

    #@c
    .line 65
    iput-object v5, p0, Landroid/media/audiofx/BassBoost;->mParamListener:Landroid/media/audiofx/BassBoost$OnParameterChangeListener;

    #@e
    .line 70
    iput-object v5, p0, Landroid/media/audiofx/BassBoost;->mBaseParamListener:Landroid/media/audiofx/BassBoost$BaseParameterListener;

    #@10
    .line 75
    new-instance v3, Ljava/lang/Object;

    #@12
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    #@15
    iput-object v3, p0, Landroid/media/audiofx/BassBoost;->mParamListenerLock:Ljava/lang/Object;

    #@17
    .line 96
    if-nez p2, :cond_0

    #@19
    .line 97
    const-string/jumbo v3, "BassBoost"

    #@1c
    const-string/jumbo v4, "WARNING: attaching a BassBoost to global output mix is deprecated!"

    #@1f
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 100
    :cond_0
    new-array v0, v1, [I

    #@24
    .line 101
    .local v0, "value":[I
    invoke-virtual {p0, v2, v0}, Landroid/media/audiofx/BassBoost;->getParameter(I[I)I

    #@27
    move-result v3

    #@28
    invoke-virtual {p0, v3}, Landroid/media/audiofx/BassBoost;->checkStatus(I)V

    #@2b
    .line 102
    aget v3, v0, v2

    #@2d
    if-eqz v3, :cond_1

    #@2f
    :goto_0
    iput-boolean v1, p0, Landroid/media/audiofx/BassBoost;->mStrengthSupported:Z

    #@31
    .line 93
    return-void

    #@32
    :cond_1
    move v1, v2

    #@33
    .line 102
    goto :goto_0
.end method


# virtual methods
.method public getProperties()Landroid/media/audiofx/BassBoost$Settings;
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
    const/4 v2, 0x1

    #@1
    .line 268
    new-instance v0, Landroid/media/audiofx/BassBoost$Settings;

    #@3
    invoke-direct {v0}, Landroid/media/audiofx/BassBoost$Settings;-><init>()V

    #@6
    .line 269
    .local v0, "settings":Landroid/media/audiofx/BassBoost$Settings;
    new-array v1, v2, [S

    #@8
    .line 270
    .local v1, "value":[S
    invoke-virtual {p0, v2, v1}, Landroid/media/audiofx/BassBoost;->getParameter(I[S)I

    #@b
    move-result v2

    #@c
    invoke-virtual {p0, v2}, Landroid/media/audiofx/BassBoost;->checkStatus(I)V

    #@f
    .line 271
    const/4 v2, 0x0

    #@10
    aget-short v2, v1, v2

    #@12
    iput-short v2, v0, Landroid/media/audiofx/BassBoost$Settings;->strength:S

    #@14
    .line 272
    return-object v0
.end method

.method public getRoundedStrength()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 140
    new-array v0, v1, [S

    #@3
    .line 141
    .local v0, "value":[S
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/BassBoost;->getParameter(I[S)I

    #@6
    move-result v1

    #@7
    invoke-virtual {p0, v1}, Landroid/media/audiofx/BassBoost;->checkStatus(I)V

    #@a
    .line 142
    const/4 v1, 0x0

    #@b
    aget-short v1, v0, v1

    #@d
    return v1
.end method

.method public getStrengthSupported()Z
    .locals 1

    #@0
    .prologue
    .line 111
    iget-boolean v0, p0, Landroid/media/audiofx/BassBoost;->mStrengthSupported:Z

    #@2
    return v0
.end method

.method public setParameterListener(Landroid/media/audiofx/BassBoost$OnParameterChangeListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/media/audiofx/BassBoost$OnParameterChangeListener;

    #@0
    .prologue
    .line 200
    iget-object v1, p0, Landroid/media/audiofx/BassBoost;->mParamListenerLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 201
    :try_start_0
    iget-object v0, p0, Landroid/media/audiofx/BassBoost;->mParamListener:Landroid/media/audiofx/BassBoost$OnParameterChangeListener;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 202
    iput-object p1, p0, Landroid/media/audiofx/BassBoost;->mParamListener:Landroid/media/audiofx/BassBoost$OnParameterChangeListener;

    #@9
    .line 203
    new-instance v0, Landroid/media/audiofx/BassBoost$BaseParameterListener;

    #@b
    const/4 v2, 0x0

    #@c
    invoke-direct {v0, p0, v2}, Landroid/media/audiofx/BassBoost$BaseParameterListener;-><init>(Landroid/media/audiofx/BassBoost;Landroid/media/audiofx/BassBoost$BaseParameterListener;)V

    #@f
    iput-object v0, p0, Landroid/media/audiofx/BassBoost;->mBaseParamListener:Landroid/media/audiofx/BassBoost$BaseParameterListener;

    #@11
    .line 204
    iget-object v0, p0, Landroid/media/audiofx/BassBoost;->mBaseParamListener:Landroid/media/audiofx/BassBoost$BaseParameterListener;

    #@13
    invoke-super {p0, v0}, Landroid/media/audiofx/AudioEffect;->setParameterListener(Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    :cond_0
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

.method public setProperties(Landroid/media/audiofx/BassBoost$Settings;)V
    .locals 2
    .param p1, "settings"    # Landroid/media/audiofx/BassBoost$Settings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    .line 285
    iget-short v0, p1, Landroid/media/audiofx/BassBoost$Settings;->strength:S

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/BassBoost;->setParameter(IS)I

    #@6
    move-result v0

    #@7
    invoke-virtual {p0, v0}, Landroid/media/audiofx/BassBoost;->checkStatus(I)V

    #@a
    .line 284
    return-void
.end method

.method public setStrength(S)V
    .locals 1
    .param p1, "strength"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    .line 127
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/BassBoost;->setParameter(IS)I

    #@4
    move-result v0

    #@5
    invoke-virtual {p0, v0}, Landroid/media/audiofx/BassBoost;->checkStatus(I)V

    #@8
    .line 126
    return-void
.end method
