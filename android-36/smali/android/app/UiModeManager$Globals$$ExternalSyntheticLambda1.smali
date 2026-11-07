.class public final synthetic Landroid/app/UiModeManager$Globals$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic blacklist f$0:F


# direct methods
.method public synthetic constructor blacklist <init>(F)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/UiModeManager$Globals$$ExternalSyntheticLambda1;->f$0:F

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget v0, p0, Landroid/app/UiModeManager$Globals$$ExternalSyntheticLambda1;->f$0:F

    check-cast p1, Landroid/app/UiModeManager$ContrastChangeListener;

    check-cast p2, Ljava/util/concurrent/Executor;

    invoke-static {v0, p1, p2}, Landroid/app/UiModeManager$Globals;->lambda$notifyContrastChanged$3(FLandroid/app/UiModeManager$ContrastChangeListener;Ljava/util/concurrent/Executor;)V

    return-void
.end method
