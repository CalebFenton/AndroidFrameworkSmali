.class Landroid/hardware/biometrics/BiometricPrompt$1;
.super Landroid/hardware/biometrics/IBiometricServiceReceiver$Stub;
.source "BiometricPrompt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/BiometricPrompt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/biometrics/BiometricPrompt;


# direct methods
.method public static synthetic blacklist $r8$lambda$KK3v4A4tlSygNnptkuXfMvNJWUY(Landroid/hardware/biometrics/BiometricPrompt$1;)V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricPrompt$1;->lambda$onAuthenticationFailed$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Y3r-VATQnkqye2GuRCPQHGqwsG4(Landroid/hardware/biometrics/BiometricPrompt$1;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/biometrics/BiometricPrompt$1;->lambda$onError$2(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$b9EWctL_uARGk94clIfDvIwGVKU(Landroid/hardware/biometrics/BiometricPrompt$1;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/biometrics/BiometricPrompt$1;->lambda$onSystemEvent$6(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ctdUWPrSVN4D8B_F3LaNYv7UHMk(Landroid/hardware/biometrics/BiometricPrompt$1;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/biometrics/BiometricPrompt$1;->lambda$onAcquired$3(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$iGVj7X4xvgBUdbN5VHn0TjzjmEc(Landroid/hardware/biometrics/BiometricPrompt$1;)V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricPrompt$1;->lambda$onDialogDismissed$5()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$njKlgu1brpOPWC-xU6JhJHFapKo(Landroid/hardware/biometrics/BiometricPrompt$1;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/biometrics/BiometricPrompt$1;->lambda$onAuthenticationSucceeded$0(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$wj2tMZKpKpc568YkEyh4DhoxYTM(Landroid/hardware/biometrics/BiometricPrompt$1;)V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricPrompt$1;->lambda$onDialogDismissed$4()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/hardware/biometrics/BiometricPrompt;)V
    .registers 2
    .param p1, "this$0"    # Landroid/hardware/biometrics/BiometricPrompt;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 723
    iput-object p1, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-direct {p0}, Landroid/hardware/biometrics/IBiometricServiceReceiver$Stub;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$onAcquired$3(ILjava/lang/String;)V
    .registers 4
    .param p1, "acquireInfo"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 793
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v0}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmAuthenticationCallback(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    .line 794
    return-void
.end method

.method private synthetic blacklist lambda$onAuthenticationFailed$1()V
    .registers 2

    .line 738
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v0}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmAuthenticationCallback(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onAuthenticationFailed()V

    .line 739
    return-void
.end method

.method private synthetic blacklist lambda$onAuthenticationSucceeded$0(I)V
    .registers 5
    .param p1, "authenticationType"    # I

    .line 728
    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;

    iget-object v1, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v1}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmCryptoObject(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;-><init>(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;I)V

    .line 730
    .local v0, "result":Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;
    iget-object v1, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v1}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmAuthenticationCallback(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onAuthenticationSucceeded(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)V

    .line 731
    iget-object v1, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fputmIsPromptShowing(Landroid/hardware/biometrics/BiometricPrompt;Z)V

    .line 732
    return-void
.end method

.method private synthetic blacklist lambda$onDialogDismissed$4()V
    .registers 4

    .line 803
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v0}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmNegativeButtonInfo(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;->listener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 804
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fputmIsPromptShowing(Landroid/hardware/biometrics/BiometricPrompt;Z)V

    .line 805
    return-void
.end method

.method private synthetic blacklist lambda$onDialogDismissed$5()V
    .registers 4

    .line 813
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v0}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmContentViewMoreOptionsButtonInfo(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;->listener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 815
    return-void
.end method

.method private synthetic blacklist lambda$onError$2(ILjava/lang/String;)V
    .registers 5
    .param p1, "error"    # I
    .param p2, "stringToSend"    # Ljava/lang/String;

    .line 785
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v0}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmAuthenticationCallback(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    .line 786
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fputmIsPromptShowing(Landroid/hardware/biometrics/BiometricPrompt;Z)V

    .line 787
    return-void
.end method

.method private synthetic blacklist lambda$onSystemEvent$6(I)V
    .registers 3
    .param p1, "event"    # I

    .line 826
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v0}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmAuthenticationCallback(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onSystemEvent(I)V

    .line 827
    return-void
.end method


# virtual methods
.method public blacklist onAcquired(ILjava/lang/String;)V
    .registers 5
    .param p1, "acquireInfo"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 792
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v0}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmExecutor(Landroid/hardware/biometrics/BiometricPrompt;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/hardware/biometrics/BiometricPrompt$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Landroid/hardware/biometrics/BiometricPrompt$1$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/biometrics/BiometricPrompt$1;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 795
    return-void
.end method

.method public blacklist onAuthenticationFailed()V
    .registers 3

    .line 737
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v0}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmExecutor(Landroid/hardware/biometrics/BiometricPrompt;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/hardware/biometrics/BiometricPrompt$1$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Landroid/hardware/biometrics/BiometricPrompt$1$$ExternalSyntheticLambda6;-><init>(Landroid/hardware/biometrics/BiometricPrompt$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 740
    return-void
.end method

.method public blacklist onAuthenticationSucceeded(I)V
    .registers 4
    .param p1, "authenticationType"    # I

    .line 727
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v0}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmExecutor(Landroid/hardware/biometrics/BiometricPrompt;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/hardware/biometrics/BiometricPrompt$1$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Landroid/hardware/biometrics/BiometricPrompt$1$$ExternalSyntheticLambda4;-><init>(Landroid/hardware/biometrics/BiometricPrompt$1;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 733
    return-void
.end method

.method public blacklist onDialogDismissed(I)V
    .registers 5
    .param p1, "reason"    # I

    .line 800
    const/4 v0, 0x2

    if-ne p1, v0, :cond_29

    .line 801
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v0}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmNegativeButtonInfo(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 802
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v0}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmNegativeButtonInfo(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/hardware/biometrics/BiometricPrompt$1$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroid/hardware/biometrics/BiometricPrompt$1$$ExternalSyntheticLambda2;-><init>(Landroid/hardware/biometrics/BiometricPrompt$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_64

    .line 807
    :cond_1c
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v0}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmAuthenticationCallback(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    move-result-object v0

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    goto :goto_64

    .line 810
    :cond_29
    const/16 v0, 0x8

    if-ne p1, v0, :cond_46

    .line 811
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v0}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmContentViewMoreOptionsButtonInfo(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    move-result-object v0

    if-eqz v0, :cond_64

    .line 812
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v0}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmContentViewMoreOptionsButtonInfo(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/hardware/biometrics/BiometricPrompt$1$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Landroid/hardware/biometrics/BiometricPrompt$1$$ExternalSyntheticLambda3;-><init>(Landroid/hardware/biometrics/BiometricPrompt$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_64

    .line 818
    :cond_46
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fputmIsPromptShowing(Landroid/hardware/biometrics/BiometricPrompt;Z)V

    .line 819
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricPrompt"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    :cond_64
    :goto_64
    return-void
.end method

.method public blacklist onError(III)V
    .registers 8
    .param p1, "modality"    # I
    .param p2, "error"    # I
    .param p3, "vendorCode"    # I

    .line 746
    const/4 v0, 0x0

    .line 747
    .local v0, "errorMessage":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_a2

    goto :goto_1a

    .line 749
    :sswitch_5
    iget-object v1, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v1}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmContext(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2, p3}, Landroid/hardware/face/FaceManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 750
    goto :goto_1a

    .line 753
    :sswitch_10
    iget-object v1, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v1}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmContext(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2, p3}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 759
    :goto_1a
    if-nez v0, :cond_91

    .line 760
    sparse-switch p2, :sswitch_data_ac

    .line 775
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown error, modality: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " vendorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BiometricPrompt"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    iget-object v1, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v1}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmContext(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x10401af

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_91

    .line 771
    :sswitch_59
    iget-object v1, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v1}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmContext(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x10401ae

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 773
    goto :goto_91

    .line 768
    :sswitch_67
    iget-object v1, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v1}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmContext(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x10401b0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 769
    goto :goto_91

    .line 765
    :sswitch_75
    iget-object v1, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v1}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmContext(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x10401b1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 766
    goto :goto_91

    .line 762
    :sswitch_83
    iget-object v1, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v1}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmContext(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x10401ad

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 763
    nop

    .line 783
    :cond_91
    :goto_91
    move-object v1, v0

    .line 784
    .local v1, "stringToSend":Ljava/lang/String;
    iget-object v2, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v2}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmExecutor(Landroid/hardware/biometrics/BiometricPrompt;)Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Landroid/hardware/biometrics/BiometricPrompt$1$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, p2, v1}, Landroid/hardware/biometrics/BiometricPrompt$1$$ExternalSyntheticLambda5;-><init>(Landroid/hardware/biometrics/BiometricPrompt$1;ILjava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 788
    return-void

    nop

    :sswitch_data_a2
    .sparse-switch
        0x2 -> :sswitch_10
        0x8 -> :sswitch_5
    .end sparse-switch

    :sswitch_data_ac
    .sparse-switch
        0x5 -> :sswitch_83
        0xa -> :sswitch_75
        0xc -> :sswitch_67
        0xe -> :sswitch_59
    .end sparse-switch
.end method

.method public blacklist onSystemEvent(I)V
    .registers 4
    .param p1, "event"    # I

    .line 825
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v0}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmExecutor(Landroid/hardware/biometrics/BiometricPrompt;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/hardware/biometrics/BiometricPrompt$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/hardware/biometrics/BiometricPrompt$1$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/biometrics/BiometricPrompt$1;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 828
    return-void
.end method
