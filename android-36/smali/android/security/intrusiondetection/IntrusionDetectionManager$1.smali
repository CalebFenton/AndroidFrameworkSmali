.class Landroid/security/intrusiondetection/IntrusionDetectionManager$1;
.super Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback$Stub;
.source "IntrusionDetectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/security/intrusiondetection/IntrusionDetectionManager;->addStateCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Ljava/util/function/Consumer;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Landroid/security/intrusiondetection/IntrusionDetectionManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 4
    .param p1, "this$0"    # Landroid/security/intrusiondetection/IntrusionDetectionManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 158
    iput-object p2, p0, Landroid/security/intrusiondetection/IntrusionDetectionManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/security/intrusiondetection/IntrusionDetectionManager$1;->val$callback:Ljava/util/function/Consumer;

    invoke-direct {p0}, Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onStateChange$0(Ljava/util/function/Consumer;I)V
    .registers 3
    .param p0, "callback"    # Ljava/util/function/Consumer;
    .param p1, "state"    # I

    .line 161
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist onStateChange(I)V
    .registers 5
    .param p1, "state"    # I

    .line 161
    iget-object v0, p0, Landroid/security/intrusiondetection/IntrusionDetectionManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/security/intrusiondetection/IntrusionDetectionManager$1;->val$callback:Ljava/util/function/Consumer;

    new-instance v2, Landroid/security/intrusiondetection/IntrusionDetectionManager$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Landroid/security/intrusiondetection/IntrusionDetectionManager$1$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 162
    return-void
.end method
