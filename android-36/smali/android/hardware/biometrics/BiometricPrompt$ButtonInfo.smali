.class Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;
.super Ljava/lang/Object;
.source "BiometricPrompt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/BiometricPrompt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ButtonInfo"
.end annotation


# instance fields
.field greylist-max-o executor:Ljava/util/concurrent/Executor;

.field greylist-max-o listener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 3
    .param p1, "ex"    # Ljava/util/concurrent/Executor;
    .param p2, "l"    # Landroid/content/DialogInterface$OnClickListener;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-object p1, p0, Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;->executor:Ljava/util/concurrent/Executor;

    .line 167
    iput-object p2, p0, Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;->listener:Landroid/content/DialogInterface$OnClickListener;

    .line 168
    return-void
.end method
