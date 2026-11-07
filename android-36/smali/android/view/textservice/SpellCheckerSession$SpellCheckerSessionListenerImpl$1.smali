.class Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$1;
.super Landroid/os/Handler;
.source "SpellCheckerSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->onServiceConnected(Lcom/android/internal/textservice/ISpellCheckerSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;


# direct methods
.method constructor blacklist <init>(Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 407
    iput-object p1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$1;->this$0:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 409
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;

    .line 410
    .local v0, "scp":Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;
    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$1;->this$0:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;

    iget-object v2, v0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mSession:Lcom/android/internal/textservice/ISpellCheckerSession;

    const/4 v3, 0x1

    invoke-static {v1, v2, v0, v3}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->-$$Nest$mprocessTask(Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;Lcom/android/internal/textservice/ISpellCheckerSession;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;Z)V

    .line 411
    return-void
.end method
