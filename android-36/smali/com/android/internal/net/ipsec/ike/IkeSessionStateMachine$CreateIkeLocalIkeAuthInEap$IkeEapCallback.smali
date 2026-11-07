.class Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthInEap$IkeEapCallback;
.super Ljava/lang/Object;
.source "IkeSessionStateMachine.java"

# interfaces
.implements Lcom/android/internal/net/eap/IEapCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthInEap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IkeEapCallback"
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthInEap;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthInEap;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 4612
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthInEap$IkeEapCallback;->this$1:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthInEap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthInEap;Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthInEap$IkeEapCallback;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthInEap;)V

    return-void
.end method


# virtual methods
.method public blacklist onError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 4640
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthInEap$IkeEapCallback;->this$1:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthInEap;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthInEap;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    const/16 v1, 0x137

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 4641
    return-void
.end method

.method public blacklist onFail()V
    .registers 3

    .line 4622
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthInEap$IkeEapCallback;->this$1:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthInEap;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthInEap;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    const/16 v1, 0x138

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->sendMessage(I)V

    .line 4623
    return-void
.end method

.method public blacklist onResponse([BI)V
    .registers 7
    .param p1, "eapMsg"    # [B
    .param p2, "flagMask"    # I

    .line 4629
    nop

    .line 4630
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/android/internal/net/eap/EapResult$EapResponse;->hasFlag(II)Z

    move-result v0

    .line 4633
    .local v0, "serverAuthenticated":Z
    new-instance v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeEapOutboundMsgWrapper;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeEapOutboundMsgWrapper;-><init>(Z[B)V

    .line 4635
    .local v1, "msg":Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeEapOutboundMsgWrapper;
    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthInEap$IkeEapCallback;->this$1:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthInEap;

    iget-object v2, v2, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthInEap;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    const/16 v3, 0x136

    invoke-virtual {v2, v3, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 4636
    return-void
.end method

.method public blacklist onSuccess([B[BLandroid/net/eap/EapInfo;)V
    .registers 6
    .param p1, "msk"    # [B
    .param p2, "emsk"    # [B
    .param p3, "eapInfo"    # Landroid/net/eap/EapInfo;

    .line 4616
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthInEap$IkeEapCallback;->this$1:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthInEap;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthInEap;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCreateIkeLocalIkeAuthPostEap:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthPostEap;

    invoke-virtual {v0, p3}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthPostEap;->setEapInfo(Landroid/net/eap/EapInfo;)V

    .line 4617
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthInEap$IkeEapCallback;->this$1:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthInEap;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthInEap;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    const/16 v1, 0x13a

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 4618
    return-void
.end method
