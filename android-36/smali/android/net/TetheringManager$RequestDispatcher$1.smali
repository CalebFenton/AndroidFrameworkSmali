.class Landroid/net/TetheringManager$RequestDispatcher$1;
.super Landroid/net/IIntResultListener$Stub;
.source "TetheringManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/TetheringManager$RequestDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/net/TetheringManager$RequestDispatcher;


# direct methods
.method constructor blacklist <init>(Landroid/net/TetheringManager$RequestDispatcher;)V
    .registers 2
    .param p1, "this$0"    # Landroid/net/TetheringManager$RequestDispatcher;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 534
    iput-object p1, p0, Landroid/net/TetheringManager$RequestDispatcher$1;->this$0:Landroid/net/TetheringManager$RequestDispatcher;

    invoke-direct {p0}, Landroid/net/IIntResultListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onResult(I)V
    .registers 3
    .param p1, "resultCode"    # I

    .line 537
    iget-object v0, p0, Landroid/net/TetheringManager$RequestDispatcher$1;->this$0:Landroid/net/TetheringManager$RequestDispatcher;

    iput p1, v0, Landroid/net/TetheringManager$RequestDispatcher;->mRemoteResult:I

    .line 538
    iget-object v0, p0, Landroid/net/TetheringManager$RequestDispatcher$1;->this$0:Landroid/net/TetheringManager$RequestDispatcher;

    invoke-static {v0}, Landroid/net/TetheringManager$RequestDispatcher;->-$$Nest$fgetmWaiting(Landroid/net/TetheringManager$RequestDispatcher;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 539
    return-void
.end method
