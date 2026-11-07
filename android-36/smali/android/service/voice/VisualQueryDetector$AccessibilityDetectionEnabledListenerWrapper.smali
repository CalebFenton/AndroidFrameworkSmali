.class final Landroid/service/voice/VisualQueryDetector$AccessibilityDetectionEnabledListenerWrapper;
.super Lcom/android/internal/app/IVoiceInteractionAccessibilitySettingsListener$Stub;
.source "VisualQueryDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/VisualQueryDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AccessibilityDetectionEnabledListenerWrapper"
.end annotation


# instance fields
.field private blacklist mListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Landroid/service/voice/VisualQueryDetector;Ljava/util/function/Consumer;)V
    .registers 3
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 272
    .local p2, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Lcom/android/internal/app/IVoiceInteractionAccessibilitySettingsListener$Stub;-><init>()V

    .line 273
    iput-object p2, p0, Landroid/service/voice/VisualQueryDetector$AccessibilityDetectionEnabledListenerWrapper;->mListener:Ljava/util/function/Consumer;

    .line 274
    return-void
.end method


# virtual methods
.method public blacklist onAccessibilityDetectionChanged(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 278
    iget-object v0, p0, Landroid/service/voice/VisualQueryDetector$AccessibilityDetectionEnabledListenerWrapper;->mListener:Ljava/util/function/Consumer;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 279
    return-void
.end method
