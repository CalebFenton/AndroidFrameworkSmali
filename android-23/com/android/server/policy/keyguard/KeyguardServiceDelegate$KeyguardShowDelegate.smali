.class final Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardShowDelegate;
.super Lcom/android/internal/policy/IKeyguardDrawnCallback$Stub;
.source "KeyguardServiceDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "KeyguardShowDelegate"
.end annotation


# instance fields
.field private mDrawnListener:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

.field final synthetic this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;


# direct methods
.method constructor <init>(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;
    .param p2, "drawnListener"    # Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

    #@0
    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardShowDelegate;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@2
    invoke-direct {p0}, Lcom/android/internal/policy/IKeyguardDrawnCallback$Stub;-><init>()V

    #@5
    .line 75
    iput-object p2, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardShowDelegate;->mDrawnListener:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

    #@7
    .line 74
    return-void
.end method


# virtual methods
.method public onDrawn()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 80
    const-string/jumbo v0, "KeyguardServiceDelegate"

    #@3
    const-string/jumbo v1, "**** SHOWN CALLED ****"

    #@6
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 81
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardShowDelegate;->mDrawnListener:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 82
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardShowDelegate;->mDrawnListener:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

    #@f
    invoke-interface {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;->onDrawn()V

    #@12
    .line 84
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardShowDelegate;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@14
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->hideScrim()V

    #@17
    .line 79
    return-void
.end method
