.class public final synthetic Landroid/media/CallbackUtil$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/media/CallbackUtil$CallbackMethod;

.field public final synthetic blacklist f$1:Landroid/media/CallbackUtil$ListenerInfo;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/media/CallbackUtil$CallbackMethod;Landroid/media/CallbackUtil$ListenerInfo;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/CallbackUtil$$ExternalSyntheticLambda0;->f$0:Landroid/media/CallbackUtil$CallbackMethod;

    iput-object p2, p0, Landroid/media/CallbackUtil$$ExternalSyntheticLambda0;->f$1:Landroid/media/CallbackUtil$ListenerInfo;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/media/CallbackUtil$$ExternalSyntheticLambda0;->f$0:Landroid/media/CallbackUtil$CallbackMethod;

    iget-object v1, p0, Landroid/media/CallbackUtil$$ExternalSyntheticLambda0;->f$1:Landroid/media/CallbackUtil$ListenerInfo;

    invoke-static {v0, v1}, Landroid/media/CallbackUtil;->lambda$callListeners$0(Landroid/media/CallbackUtil$CallbackMethod;Landroid/media/CallbackUtil$ListenerInfo;)V

    return-void
.end method
