.class Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;
.super Ljava/lang/Object;
.source "AccessibilityShortcutController.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/accessibility/AccessibilityShortcutController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TtsPrompt"
.end annotation


# static fields
.field private static final blacklist RETRY_MILLIS:I = 0x3e8


# instance fields
.field private blacklist mDismiss:Z

.field private blacklist mLanguageReady:Z

.field private blacklist mRetryCount:I

.field private final blacklist mText:Ljava/lang/CharSequence;

.field private blacklist mTts:Landroid/speech/tts/TextToSpeech;

.field final synthetic blacklist this$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;


# direct methods
.method public static synthetic blacklist $r8$lambda$Cg3Av96EIVIE4Y9BdbcKaeGD-vg(Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;->waitForTtsReady()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$gXRs-1uKDkbw-tt5GJ2cJZDnKOo(Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;->play()V

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/accessibility/AccessibilityShortcutController;Ljava/lang/String;)V
    .registers 6
    .param p2, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 604
    iput-object p1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;->this$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 599
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;->mRetryCount:I

    .line 601
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;->mLanguageReady:Z

    .line 605
    invoke-static {p1}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->-$$Nest$fgetmContext(Lcom/android/internal/accessibility/AccessibilityShortcutController;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x104010c

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;->mText:Ljava/lang/CharSequence;

    .line 607
    iget-object v0, p1, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mFrameworkObjectProvider:Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;

    invoke-static {p1}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->-$$Nest$fgetmContext(Lcom/android/internal/accessibility/AccessibilityShortcutController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;->getTextToSpeech(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)Landroid/speech/tts/TextToSpeech;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 608
    return-void
.end method

.method private blacklist play()V
    .registers 5

    .line 630
    iget-boolean v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;->mDismiss:Z

    if-eqz v0, :cond_5

    .line 631
    return-void

    .line 633
    :cond_5
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;->mText:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    .line 634
    .local v0, "status":I
    if-eqz v0, :cond_1d

    .line 635
    const-string v1, "AccessibilityShortcutController"

    const-string v2, "Tts play fail"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;->this$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-static {v1}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->-$$Nest$mplayNotificationTone(Lcom/android/internal/accessibility/AccessibilityShortcutController;)V

    .line 638
    :cond_1d
    return-void
.end method

.method private blacklist waitForTtsReady()V
    .registers 6

    .line 645
    iget-boolean v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;->mDismiss:Z

    if-eqz v0, :cond_5

    .line 646
    return-void

    .line 648
    :cond_5
    iget-boolean v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;->mLanguageReady:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_20

    .line 649
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v0

    .line 652
    .local v0, "status":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1d

    const/4 v3, -0x2

    if-eq v0, v3, :cond_1d

    move v3, v2

    goto :goto_1e

    :cond_1d
    move v3, v1

    :goto_1e
    iput-boolean v3, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;->mLanguageReady:Z

    .line 655
    .end local v0    # "status":I
    :cond_20
    iget-boolean v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;->mLanguageReady:Z

    if-eqz v0, :cond_56

    .line 656
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getVoice()Landroid/speech/tts/Voice;

    move-result-object v0

    .line 657
    .local v0, "voice":Landroid/speech/tts/Voice;
    if-eqz v0, :cond_40

    .line 658
    invoke-virtual {v0}, Landroid/speech/tts/Voice;->getFeatures()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_40

    .line 659
    invoke-virtual {v0}, Landroid/speech/tts/Voice;->getFeatures()Ljava/util/Set;

    move-result-object v3

    const-string v4, "notInstalled"

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    move v1, v2

    goto :goto_41

    :cond_40
    nop

    .line 661
    .local v1, "voiceDataInstalled":Z
    :goto_41
    if-eqz v1, :cond_56

    .line 662
    iget-object v2, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;->this$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-static {v2}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->-$$Nest$fgetmHandler(Lcom/android/internal/accessibility/AccessibilityShortcutController;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v3, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 664
    return-void

    .line 668
    .end local v0    # "voice":Landroid/speech/tts/Voice;
    .end local v1    # "voiceDataInstalled":Z
    :cond_56
    iget v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;->mRetryCount:I

    if-nez v0, :cond_67

    .line 669
    const-string v0, "AccessibilityShortcutController"

    const-string v1, "Tts not ready to speak."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;->this$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-static {v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->-$$Nest$mplayNotificationTone(Lcom/android/internal/accessibility/AccessibilityShortcutController;)V

    .line 671
    return-void

    .line 674
    :cond_67
    iget v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;->mRetryCount:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;->mRetryCount:I

    .line 675
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;->this$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-static {v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->-$$Nest$fgetmHandler(Lcom/android/internal/accessibility/AccessibilityShortcutController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 677
    return-void
.end method


# virtual methods
.method public blacklist dismiss()V
    .registers 4

    .line 614
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;->mDismiss:Z

    .line 615
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;->this$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-static {v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->-$$Nest$fgetmHandler(Lcom/android/internal/accessibility/AccessibilityShortcutController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt$$ExternalSyntheticLambda2;-><init>()V

    iget-object v2, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-static {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 616
    return-void
.end method

.method public whitelist onInit(I)V
    .registers 4
    .param p1, "status"    # I

    .line 620
    if-eqz p1, :cond_24

    .line 621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tts init fail, status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccessibilityShortcutController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;->this$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-static {v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->-$$Nest$mplayNotificationTone(Lcom/android/internal/accessibility/AccessibilityShortcutController;)V

    .line 623
    return-void

    .line 625
    :cond_24
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;->this$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-static {v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->-$$Nest$fgetmHandler(Lcom/android/internal/accessibility/AccessibilityShortcutController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 627
    return-void
.end method
