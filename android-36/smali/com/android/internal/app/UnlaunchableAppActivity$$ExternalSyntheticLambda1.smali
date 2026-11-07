.class public final synthetic Lcom/android/internal/app/UnlaunchableAppActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/app/UnlaunchableAppActivity;

.field public final synthetic blacklist f$1:Landroid/os/UserManager;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/app/UnlaunchableAppActivity;Landroid/os/UserManager;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/UnlaunchableAppActivity$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/app/UnlaunchableAppActivity;

    iput-object p2, p0, Lcom/android/internal/app/UnlaunchableAppActivity$$ExternalSyntheticLambda1;->f$1:Landroid/os/UserManager;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/internal/app/UnlaunchableAppActivity$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/app/UnlaunchableAppActivity;

    iget-object v1, p0, Lcom/android/internal/app/UnlaunchableAppActivity$$ExternalSyntheticLambda1;->f$1:Landroid/os/UserManager;

    invoke-static {v0, v1}, Lcom/android/internal/app/UnlaunchableAppActivity;->$r8$lambda$eXS4Ll3R6ndWQp0eep2QsVSUcDY(Lcom/android/internal/app/UnlaunchableAppActivity;Landroid/os/UserManager;)V

    return-void
.end method
