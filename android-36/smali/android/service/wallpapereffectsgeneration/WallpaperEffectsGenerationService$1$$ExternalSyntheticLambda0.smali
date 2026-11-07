.class public final synthetic Landroid/service/wallpapereffectsgeneration/WallpaperEffectsGenerationService$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 0
    check-cast p1, Landroid/service/wallpapereffectsgeneration/WallpaperEffectsGenerationService;

    check-cast p2, Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;

    invoke-virtual {p1, p2}, Landroid/service/wallpapereffectsgeneration/WallpaperEffectsGenerationService;->onGenerateCinematicEffect(Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;)V

    return-void
.end method
