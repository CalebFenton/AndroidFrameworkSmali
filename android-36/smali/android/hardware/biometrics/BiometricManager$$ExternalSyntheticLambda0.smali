.class public final synthetic Landroid/hardware/biometrics/BiometricManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/hardware/biometrics/BiometricTestSession$TestSessionProvider;


# instance fields
.field public final synthetic blacklist f$0:Landroid/hardware/biometrics/BiometricManager;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/hardware/biometrics/BiometricManager;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/biometrics/BiometricManager$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/biometrics/BiometricManager;

    return-void
.end method


# virtual methods
.method public final blacklist createTestSession(Landroid/content/Context;ILandroid/hardware/biometrics/ITestSessionCallback;)Landroid/hardware/biometrics/ITestSession;
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricManager$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/biometrics/BiometricManager;

    invoke-static {v0, p1, p2, p3}, Landroid/hardware/biometrics/BiometricManager;->$r8$lambda$rNhzStGx9AjYXKh7DINpugLYd8g(Landroid/hardware/biometrics/BiometricManager;Landroid/content/Context;ILandroid/hardware/biometrics/ITestSessionCallback;)Landroid/hardware/biometrics/ITestSession;

    move-result-object p1

    return-object p1
.end method
