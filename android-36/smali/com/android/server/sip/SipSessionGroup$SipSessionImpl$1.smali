.class Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$1;
.super Ljava/lang/Object;
.source "SipSessionGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->doCommandAsync(Ljava/util/EventObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

.field final synthetic blacklist val$command:Ljava/util/EventObject;


# direct methods
.method constructor blacklist <init>(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/util/EventObject;)V
    .registers 3
    .param p1, "this$1"    # Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 682
    iput-object p1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$1;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iput-object p2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$1;->val$command:Ljava/util/EventObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 5

    .line 686
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$1;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$1;->val$command:Ljava/util/EventObject;

    invoke-static {v0, v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->-$$Nest$mprocessCommand(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/util/EventObject;)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    .line 692
    goto :goto_48

    .line 687
    :catchall_8
    move-exception v0

    .line 688
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$1;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v1, v1, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "command error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$1;->val$command:Ljava/util/EventObject;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$1;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v3, v3, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-static {v3}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$fgetmLocalProfile(Lcom/android/server/sip/SipSessionGroup;)Landroid/net/sip/SipProfile;

    move-result-object v3

    .line 689
    invoke-virtual {v3}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$1;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v3, v3, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    .line 690
    invoke-static {v3, v0}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$mgetRootCause(Lcom/android/server/sip/SipSessionGroup;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    .line 688
    invoke-static {v1, v2, v3}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$mloge(Lcom/android/server/sip/SipSessionGroup;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 691
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$1;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-static {v1, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->-$$Nest$monError(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/lang/Throwable;)V

    .line 693
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_48
    return-void
.end method
