.class final Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager$CinematicEffectListenerWrapper;
.super Landroid/app/wallpapereffectsgeneration/ICinematicEffectListener$Stub;
.source "WallpaperEffectsGenerationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CinematicEffectListenerWrapper"
.end annotation


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mListener:Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager$CinematicEffectListener;


# direct methods
.method public static synthetic blacklist $r8$lambda$ycLM0dd7mnKKBVoEDonQh3rkovM(Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager$CinematicEffectListenerWrapper;Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager$CinematicEffectListenerWrapper;->lambda$onCinematicEffectGenerated$0(Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager$CinematicEffectListener;Ljava/util/concurrent/Executor;)V
    .registers 3
    .param p1, "listener"    # Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager$CinematicEffectListener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 104
    invoke-direct {p0}, Landroid/app/wallpapereffectsgeneration/ICinematicEffectListener$Stub;-><init>()V

    .line 105
    iput-object p1, p0, Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager$CinematicEffectListenerWrapper;->mListener:Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager$CinematicEffectListener;

    .line 106
    iput-object p2, p0, Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager$CinematicEffectListenerWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    .line 107
    return-void
.end method

.method private synthetic blacklist lambda$onCinematicEffectGenerated$0(Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;)V
    .registers 3
    .param p1, "response"    # Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;

    .line 111
    iget-object v0, p0, Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager$CinematicEffectListenerWrapper;->mListener:Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager$CinematicEffectListener;

    invoke-interface {v0, p1}, Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager$CinematicEffectListener;->onCinematicEffectGenerated(Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;)V

    return-void
.end method


# virtual methods
.method public blacklist onCinematicEffectGenerated(Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;)V
    .registers 4
    .param p1, "response"    # Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;

    .line 111
    iget-object v0, p0, Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager$CinematicEffectListenerWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager$CinematicEffectListenerWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager$CinematicEffectListenerWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager$CinematicEffectListenerWrapper;Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 112
    return-void
.end method
