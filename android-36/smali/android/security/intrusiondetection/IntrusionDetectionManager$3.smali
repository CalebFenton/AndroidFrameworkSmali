.class Landroid/security/intrusiondetection/IntrusionDetectionManager$3;
.super Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback$Stub;
.source "IntrusionDetectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/security/intrusiondetection/IntrusionDetectionManager;->disable(Ljava/util/concurrent/Executor;Landroid/security/intrusiondetection/IntrusionDetectionManager$CommandCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/security/intrusiondetection/IntrusionDetectionManager$CommandCallback;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Landroid/security/intrusiondetection/IntrusionDetectionManager;Ljava/util/concurrent/Executor;Landroid/security/intrusiondetection/IntrusionDetectionManager$CommandCallback;)V
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

    .line 247
    iput-object p2, p0, Landroid/security/intrusiondetection/IntrusionDetectionManager$3;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/security/intrusiondetection/IntrusionDetectionManager$3;->val$callback:Landroid/security/intrusiondetection/IntrusionDetectionManager$CommandCallback;

    invoke-direct {p0}, Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onFailure$0(Landroid/security/intrusiondetection/IntrusionDetectionManager$CommandCallback;I)V
    .registers 2
    .param p0, "callback"    # Landroid/security/intrusiondetection/IntrusionDetectionManager$CommandCallback;
    .param p1, "error"    # I

    .line 255
    invoke-interface {p0, p1}, Landroid/security/intrusiondetection/IntrusionDetectionManager$CommandCallback;->onFailure(I)V

    return-void
.end method


# virtual methods
.method public blacklist onFailure(I)V
    .registers 5
    .param p1, "error"    # I

    .line 255
    iget-object v0, p0, Landroid/security/intrusiondetection/IntrusionDetectionManager$3;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/security/intrusiondetection/IntrusionDetectionManager$3;->val$callback:Landroid/security/intrusiondetection/IntrusionDetectionManager$CommandCallback;

    new-instance v2, Landroid/security/intrusiondetection/IntrusionDetectionManager$3$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Landroid/security/intrusiondetection/IntrusionDetectionManager$3$$ExternalSyntheticLambda0;-><init>(Landroid/security/intrusiondetection/IntrusionDetectionManager$CommandCallback;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 256
    return-void
.end method

.method public blacklist onSuccess()V
    .registers 4

    .line 250
    iget-object v0, p0, Landroid/security/intrusiondetection/IntrusionDetectionManager$3;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/security/intrusiondetection/IntrusionDetectionManager$3;->val$callback:Landroid/security/intrusiondetection/IntrusionDetectionManager$CommandCallback;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/security/intrusiondetection/IntrusionDetectionManager$2$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Landroid/security/intrusiondetection/IntrusionDetectionManager$2$$ExternalSyntheticLambda1;-><init>(Landroid/security/intrusiondetection/IntrusionDetectionManager$CommandCallback;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 251
    return-void
.end method
