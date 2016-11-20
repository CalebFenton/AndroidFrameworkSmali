.class Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer$1;
.super Ljava/lang/Object;
.source "SipSessionGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;->start(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;

.field final synthetic val$timeout:I


# direct methods
.method constructor <init>(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;I)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;
    .param p2, "val$timeout"    # I

    #@0
    .prologue
    .line 563
    iput-object p1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer$1;->this$2:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;

    #@2
    iput p2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer$1;->val$timeout:I

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 566
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer$1;->this$2:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;

    #@2
    iget v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer$1;->val$timeout:I

    #@4
    invoke-static {v0, v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;->-wrap0(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;I)V

    #@7
    .line 567
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer$1;->this$2:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;

    #@9
    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;->-get0(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer$1;->this$2:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;

    #@11
    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;->-wrap1(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;)V

    #@14
    .line 565
    :cond_0
    return-void
.end method
