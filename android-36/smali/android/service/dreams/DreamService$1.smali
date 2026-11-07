.class Landroid/service/dreams/DreamService$1;
.super Landroid/app/KeyguardManager$KeyguardDismissCallback;
.source "DreamService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/dreams/DreamService;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/service/dreams/DreamService;)V
    .registers 2
    .param p1, "this$0"    # Landroid/service/dreams/DreamService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 535
    invoke-direct {p0}, Landroid/app/KeyguardManager$KeyguardDismissCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onDismissError()V
    .registers 3

    .line 538
    invoke-static {}, Landroid/service/dreams/DreamService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Could not dismiss keyguard on confirm key"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    return-void
.end method
