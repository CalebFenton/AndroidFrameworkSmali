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
.field final synthetic this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

.field final synthetic val$command:Ljava/util/EventObject;


# direct methods
.method constructor <init>(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/util/EventObject;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    .param p2, "val$command"    # Ljava/util/EventObject;

    #@0
    .prologue
    .line 682
    iput-object p1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$1;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@2
    iput-object p2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$1;->val$command:Ljava/util/EventObject;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    #@0
    .prologue
    .line 686
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$1;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@2
    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$1;->val$command:Ljava/util/EventObject;

    #@4
    invoke-static {v1, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->-wrap3(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/util/EventObject;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 684
    :goto_0
    return-void

    #@8
    .line 687
    :catch_0
    move-exception v0

    #@9
    .line 688
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$1;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@b
    iget-object v1, v1, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@d
    new-instance v2, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v3, "command error: "

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$1;->val$command:Ljava/util/EventObject;

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    const-string/jumbo v3, ": "

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    .line 689
    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$1;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@28
    iget-object v3, v3, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@2a
    invoke-static {v3}, Lcom/android/server/sip/SipSessionGroup;->-get5(Lcom/android/server/sip/SipSessionGroup;)Landroid/net/sip/SipProfile;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v3}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    .line 688
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v2

    #@3a
    .line 690
    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$1;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@3c
    iget-object v3, v3, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@3e
    invoke-static {v3, v0}, Lcom/android/server/sip/SipSessionGroup;->-wrap8(Lcom/android/server/sip/SipSessionGroup;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@41
    move-result-object v3

    #@42
    .line 688
    invoke-static {v1, v2, v3}, Lcom/android/server/sip/SipSessionGroup;->-wrap11(Lcom/android/server/sip/SipSessionGroup;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@45
    .line 691
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$1;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@47
    invoke-static {v1, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->-wrap2(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/lang/Throwable;)V

    #@4a
    goto :goto_0
.end method
