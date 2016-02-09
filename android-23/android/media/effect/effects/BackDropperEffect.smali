.class public Landroid/media/effect/effects/BackDropperEffect;
.super Landroid/media/effect/FilterGraphEffect;
.source "BackDropperEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/effect/effects/BackDropperEffect$1;
    }
.end annotation


# static fields
.field private static final mGraphDefinition:Ljava/lang/String; = "@import android.filterpacks.base;\n@import android.filterpacks.videoproc;\n@import android.filterpacks.videosrc;\n\n@filter GLTextureSource foreground {\n  texId = 0;\n  width = 0;\n  height = 0;\n  repeatFrame = true;\n}\n\n@filter MediaSource background {\n  sourceUrl = \"no_file_specified\";\n  waitForNewFrame = false;\n  sourceIsUrl = true;\n}\n\n@filter BackDropperFilter replacer {\n  autowbToggle = 1;\n}\n\n@filter GLTextureTarget output {\n  texId = 0;\n}\n\n@connect foreground[frame]  => replacer[video];\n@connect background[video]  => replacer[background];\n@connect replacer[video]    => output[frame];\n"


# instance fields
.field private mEffectListener:Landroid/media/effect/EffectUpdateListener;

.field private mLearningListener:Landroid/filterpacks/videoproc/BackDropperFilter$LearningDoneListener;


# direct methods
.method static synthetic -get0(Landroid/media/effect/effects/BackDropperEffect;)Landroid/media/effect/EffectUpdateListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/effect/effects/BackDropperEffect;->mEffectListener:Landroid/media/effect/EffectUpdateListener;

    #@2
    return-object v0
.end method

.method public constructor <init>(Landroid/media/effect/EffectContext;Ljava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/media/effect/EffectContext;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 83
    const-string/jumbo v3, "@import android.filterpacks.base;\n@import android.filterpacks.videoproc;\n@import android.filterpacks.videosrc;\n\n@filter GLTextureSource foreground {\n  texId = 0;\n  width = 0;\n  height = 0;\n  repeatFrame = true;\n}\n\n@filter MediaSource background {\n  sourceUrl = \"no_file_specified\";\n  waitForNewFrame = false;\n  sourceIsUrl = true;\n}\n\n@filter BackDropperFilter replacer {\n  autowbToggle = 1;\n}\n\n@filter GLTextureTarget output {\n  texId = 0;\n}\n\n@connect foreground[frame]  => replacer[video];\n@connect background[video]  => replacer[background];\n@connect replacer[video]    => output[frame];\n"

    #@3
    const-string/jumbo v4, "foreground"

    #@6
    const-string/jumbo v5, "output"

    #@9
    const-class v6, Landroid/filterfw/core/OneShotScheduler;

    #@b
    move-object v0, p0

    #@c
    move-object v1, p1

    #@d
    move-object v2, p2

    #@e
    invoke-direct/range {v0 .. v6}, Landroid/media/effect/FilterGraphEffect;-><init>(Landroid/media/effect/EffectContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    #@11
    .line 72
    const/4 v0, 0x0

    #@12
    iput-object v0, p0, Landroid/media/effect/effects/BackDropperEffect;->mEffectListener:Landroid/media/effect/EffectUpdateListener;

    #@14
    .line 74
    new-instance v0, Landroid/media/effect/effects/BackDropperEffect$1;

    #@16
    invoke-direct {v0, p0}, Landroid/media/effect/effects/BackDropperEffect$1;-><init>(Landroid/media/effect/effects/BackDropperEffect;)V

    #@19
    iput-object v0, p0, Landroid/media/effect/effects/BackDropperEffect;->mLearningListener:Landroid/filterpacks/videoproc/BackDropperFilter$LearningDoneListener;

    #@1b
    .line 85
    iget-object v0, p0, Landroid/media/effect/effects/BackDropperEffect;->mGraph:Landroid/filterfw/core/FilterGraph;

    #@1d
    const-string/jumbo v1, "replacer"

    #@20
    invoke-virtual {v0, v1}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    #@23
    move-result-object v7

    #@24
    .line 86
    .local v7, "replacer":Landroid/filterfw/core/Filter;
    const-string/jumbo v0, "learningDoneListener"

    #@27
    iget-object v1, p0, Landroid/media/effect/effects/BackDropperEffect;->mLearningListener:Landroid/filterpacks/videoproc/BackDropperFilter$LearningDoneListener;

    #@29
    invoke-virtual {v7, v0, v1}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@2c
    .line 82
    return-void
.end method


# virtual methods
.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "parameterKey"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 91
    const-string/jumbo v1, "source"

    #@3
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_1

    #@9
    .line 92
    iget-object v1, p0, Landroid/media/effect/effects/BackDropperEffect;->mGraph:Landroid/filterfw/core/FilterGraph;

    #@b
    const-string/jumbo v2, "background"

    #@e
    invoke-virtual {v1, v2}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    #@11
    move-result-object v0

    #@12
    .line 93
    .local v0, "background":Landroid/filterfw/core/Filter;
    const-string/jumbo v1, "sourceUrl"

    #@15
    invoke-virtual {v0, v1, p2}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@18
    .line 90
    .end local v0    # "background":Landroid/filterfw/core/Filter;
    :cond_0
    :goto_0
    return-void

    #@19
    .line 94
    :cond_1
    const-string/jumbo v1, "context"

    #@1c
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v1

    #@20
    if-eqz v1, :cond_0

    #@22
    .line 95
    iget-object v1, p0, Landroid/media/effect/effects/BackDropperEffect;->mGraph:Landroid/filterfw/core/FilterGraph;

    #@24
    const-string/jumbo v2, "background"

    #@27
    invoke-virtual {v1, v2}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    #@2a
    move-result-object v0

    #@2b
    .line 96
    .restart local v0    # "background":Landroid/filterfw/core/Filter;
    const-string/jumbo v1, "context"

    #@2e
    invoke-virtual {v0, v1, p2}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@31
    goto :goto_0
.end method

.method public setUpdateListener(Landroid/media/effect/EffectUpdateListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/effect/EffectUpdateListener;

    #@0
    .prologue
    .line 102
    iput-object p1, p0, Landroid/media/effect/effects/BackDropperEffect;->mEffectListener:Landroid/media/effect/EffectUpdateListener;

    #@2
    .line 101
    return-void
.end method
