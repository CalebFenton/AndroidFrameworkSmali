.class public Landroid/media/audiofx/PresetReverb;
.super Landroid/media/audiofx/AudioEffect;
.source "PresetReverb.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiofx/PresetReverb$OnParameterChangeListener;,
        Landroid/media/audiofx/PresetReverb$BaseParameterListener;,
        Landroid/media/audiofx/PresetReverb$Settings;
    }
.end annotation


# static fields
.field public static final PARAM_PRESET:I = 0x0

.field public static final PRESET_LARGEHALL:S = 0x5s

.field public static final PRESET_LARGEROOM:S = 0x3s

.field public static final PRESET_MEDIUMHALL:S = 0x4s

.field public static final PRESET_MEDIUMROOM:S = 0x2s

.field public static final PRESET_NONE:S = 0x0s

.field public static final PRESET_PLATE:S = 0x6s

.field public static final PRESET_SMALLROOM:S = 0x1s

.field private static final TAG:Ljava/lang/String; = "PresetReverb"


# instance fields
.field private mBaseParamListener:Landroid/media/audiofx/PresetReverb$BaseParameterListener;

.field private mParamListener:Landroid/media/audiofx/PresetReverb$OnParameterChangeListener;

.field private final mParamListenerLock:Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Landroid/media/audiofx/PresetReverb;)Landroid/media/audiofx/PresetReverb$OnParameterChangeListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/audiofx/PresetReverb;->mParamListener:Landroid/media/audiofx/PresetReverb$OnParameterChangeListener;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/media/audiofx/PresetReverb;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/audiofx/PresetReverb;->mParamListenerLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public constructor <init>(II)V
    .locals 3
    .param p1, "priority"    # I
    .param p2, "audioSession"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 128
    sget-object v0, Landroid/media/audiofx/PresetReverb;->EFFECT_TYPE_PRESET_REVERB:Ljava/util/UUID;

    #@3
    sget-object v1, Landroid/media/audiofx/PresetReverb;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    #@5
    invoke-direct {p0, v0, v1, p1, p2}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    #@8
    .line 98
    iput-object v2, p0, Landroid/media/audiofx/PresetReverb;->mParamListener:Landroid/media/audiofx/PresetReverb$OnParameterChangeListener;

    #@a
    .line 103
    iput-object v2, p0, Landroid/media/audiofx/PresetReverb;->mBaseParamListener:Landroid/media/audiofx/PresetReverb$BaseParameterListener;

    #@c
    .line 108
    new-instance v0, Ljava/lang/Object;

    #@e
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@11
    iput-object v0, p0, Landroid/media/audiofx/PresetReverb;->mParamListenerLock:Ljava/lang/Object;

    #@13
    .line 127
    return-void
.end method


# virtual methods
.method public getPreset()S
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
    .line 156
    const/4 v1, 0x1

    #@2
    new-array v0, v1, [S

    #@4
    .line 157
    .local v0, "value":[S
    invoke-virtual {p0, v2, v0}, Landroid/media/audiofx/PresetReverb;->getParameter(I[S)I

    #@7
    move-result v1

    #@8
    invoke-virtual {p0, v1}, Landroid/media/audiofx/PresetReverb;->checkStatus(I)V

    #@b
    .line 158
    aget-short v1, v0, v2

    #@d
    return v1
.end method

.method public getProperties()Landroid/media/audiofx/PresetReverb$Settings;
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
    .line 284
    new-instance v0, Landroid/media/audiofx/PresetReverb$Settings;

    #@3
    invoke-direct {v0}, Landroid/media/audiofx/PresetReverb$Settings;-><init>()V

    #@6
    .line 285
    .local v0, "settings":Landroid/media/audiofx/PresetReverb$Settings;
    const/4 v2, 0x1

    #@7
    new-array v1, v2, [S

    #@9
    .line 286
    .local v1, "value":[S
    invoke-virtual {p0, v3, v1}, Landroid/media/audiofx/PresetReverb;->getParameter(I[S)I

    #@c
    move-result v2

    #@d
    invoke-virtual {p0, v2}, Landroid/media/audiofx/PresetReverb;->checkStatus(I)V

    #@10
    .line 287
    aget-short v2, v1, v3

    #@12
    iput-short v2, v0, Landroid/media/audiofx/PresetReverb$Settings;->preset:S

    #@14
    .line 288
    return-object v0
.end method

.method public setParameterListener(Landroid/media/audiofx/PresetReverb$OnParameterChangeListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/media/audiofx/PresetReverb$OnParameterChangeListener;

    #@0
    .prologue
    .line 216
    iget-object v1, p0, Landroid/media/audiofx/PresetReverb;->mParamListenerLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 217
    :try_start_0
    iget-object v0, p0, Landroid/media/audiofx/PresetReverb;->mParamListener:Landroid/media/audiofx/PresetReverb$OnParameterChangeListener;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 218
    iput-object p1, p0, Landroid/media/audiofx/PresetReverb;->mParamListener:Landroid/media/audiofx/PresetReverb$OnParameterChangeListener;

    #@9
    .line 219
    new-instance v0, Landroid/media/audiofx/PresetReverb$BaseParameterListener;

    #@b
    const/4 v2, 0x0

    #@c
    invoke-direct {v0, p0, v2}, Landroid/media/audiofx/PresetReverb$BaseParameterListener;-><init>(Landroid/media/audiofx/PresetReverb;Landroid/media/audiofx/PresetReverb$BaseParameterListener;)V

    #@f
    iput-object v0, p0, Landroid/media/audiofx/PresetReverb;->mBaseParamListener:Landroid/media/audiofx/PresetReverb$BaseParameterListener;

    #@11
    .line 220
    iget-object v0, p0, Landroid/media/audiofx/PresetReverb;->mBaseParamListener:Landroid/media/audiofx/PresetReverb$BaseParameterListener;

    #@13
    invoke-super {p0, v0}, Landroid/media/audiofx/AudioEffect;->setParameterListener(Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    :cond_0
    monitor-exit v1

    #@17
    .line 215
    return-void

    #@18
    .line 216
    :catchall_0
    move-exception v0

    #@19
    monitor-exit v1

    #@1a
    throw v0
.end method

.method public setPreset(S)V
    .locals 1
    .param p1, "preset"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    .line 144
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/PresetReverb;->setParameter(IS)I

    #@4
    move-result v0

    #@5
    invoke-virtual {p0, v0}, Landroid/media/audiofx/PresetReverb;->checkStatus(I)V

    #@8
    .line 143
    return-void
.end method

.method public setProperties(Landroid/media/audiofx/PresetReverb$Settings;)V
    .locals 2
    .param p1, "settings"    # Landroid/media/audiofx/PresetReverb$Settings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    .line 301
    iget-short v0, p1, Landroid/media/audiofx/PresetReverb$Settings;->preset:S

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/PresetReverb;->setParameter(IS)I

    #@6
    move-result v0

    #@7
    invoke-virtual {p0, v0}, Landroid/media/audiofx/PresetReverb;->checkStatus(I)V

    #@a
    .line 300
    return-void
.end method
