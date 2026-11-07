.class public final synthetic Landroid/app/UiModeManager$Globals$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/app/UiModeManager$ContrastChangeListener;

.field public final synthetic blacklist f$1:F


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/app/UiModeManager$ContrastChangeListener;F)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/UiModeManager$Globals$$ExternalSyntheticLambda3;->f$0:Landroid/app/UiModeManager$ContrastChangeListener;

    iput p2, p0, Landroid/app/UiModeManager$Globals$$ExternalSyntheticLambda3;->f$1:F

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/app/UiModeManager$Globals$$ExternalSyntheticLambda3;->f$0:Landroid/app/UiModeManager$ContrastChangeListener;

    iget v1, p0, Landroid/app/UiModeManager$Globals$$ExternalSyntheticLambda3;->f$1:F

    invoke-static {v0, v1}, Landroid/app/UiModeManager$Globals;->lambda$notifyContrastChanged$2(Landroid/app/UiModeManager$ContrastChangeListener;F)V

    return-void
.end method
