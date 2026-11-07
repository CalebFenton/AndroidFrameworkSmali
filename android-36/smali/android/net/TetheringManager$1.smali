.class Landroid/net/TetheringManager$1;
.super Landroid/net/IIntResultListener$Stub;
.source "TetheringManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/TetheringManager;->startTethering(Landroid/net/TetheringManager$TetheringRequest;Ljava/util/concurrent/Executor;Landroid/net/TetheringManager$StartTetheringCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/net/TetheringManager$StartTetheringCallback;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Landroid/net/TetheringManager;Ljava/util/concurrent/Executor;Landroid/net/TetheringManager$StartTetheringCallback;)V
    .registers 4
    .param p1, "this$0"    # Landroid/net/TetheringManager;
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

    .line 1408
    iput-object p2, p0, Landroid/net/TetheringManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/net/TetheringManager$1;->val$callback:Landroid/net/TetheringManager$StartTetheringCallback;

    invoke-direct {p0}, Landroid/net/IIntResultListener$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onResult$0(ILandroid/net/TetheringManager$StartTetheringCallback;)V
    .registers 2
    .param p0, "resultCode"    # I
    .param p1, "callback"    # Landroid/net/TetheringManager$StartTetheringCallback;

    .line 1412
    if-nez p0, :cond_6

    .line 1413
    invoke-interface {p1}, Landroid/net/TetheringManager$StartTetheringCallback;->onTetheringStarted()V

    goto :goto_9

    .line 1415
    :cond_6
    invoke-interface {p1, p0}, Landroid/net/TetheringManager$StartTetheringCallback;->onTetheringFailed(I)V

    .line 1417
    :goto_9
    return-void
.end method


# virtual methods
.method public blacklist onResult(I)V
    .registers 5
    .param p1, "resultCode"    # I

    .line 1411
    iget-object v0, p0, Landroid/net/TetheringManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/net/TetheringManager$1;->val$callback:Landroid/net/TetheringManager$StartTetheringCallback;

    new-instance v2, Landroid/net/TetheringManager$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, v1}, Landroid/net/TetheringManager$1$$ExternalSyntheticLambda0;-><init>(ILandroid/net/TetheringManager$StartTetheringCallback;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1418
    return-void
.end method
