.class Lcom/android/server/job/controllers/ConnectivityController$2;
.super Landroid/net/INetworkPolicyListener$Stub;
.source "ConnectivityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/ConnectivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/controllers/ConnectivityController;


# direct methods
.method constructor <init>(Lcom/android/server/job/controllers/ConnectivityController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/job/controllers/ConnectivityController;

    #@0
    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    #@2
    invoke-direct {p0}, Landroid/net/INetworkPolicyListener$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onMeteredIfacesChanged([Ljava/lang/String;)V
    .locals 2
    .param p1, "meteredIfaces"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    #@2
    const/4 v1, -0x1

    #@3
    invoke-static {v0, v1}, Lcom/android/server/job/controllers/ConnectivityController;->-wrap0(Lcom/android/server/job/controllers/ConnectivityController;I)V

    #@6
    .line 168
    return-void
.end method

.method public onRestrictBackgroundBlacklistChanged(IZ)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "blacklisted"    # Z

    #@0
    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    #@2
    invoke-static {v0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->-wrap0(Lcom/android/server/job/controllers/ConnectivityController;I)V

    #@5
    .line 183
    return-void
.end method

.method public onRestrictBackgroundChanged(Z)V
    .locals 2
    .param p1, "restrictBackground"    # Z

    #@0
    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    #@2
    const/4 v1, -0x1

    #@3
    invoke-static {v0, v1}, Lcom/android/server/job/controllers/ConnectivityController;->-wrap0(Lcom/android/server/job/controllers/ConnectivityController;I)V

    #@6
    .line 173
    return-void
.end method

.method public onRestrictBackgroundWhitelistChanged(IZ)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "whitelisted"    # Z

    #@0
    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    #@2
    invoke-static {v0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->-wrap0(Lcom/android/server/job/controllers/ConnectivityController;I)V

    #@5
    .line 178
    return-void
.end method

.method public onUidRulesChanged(II)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "uidRules"    # I

    #@0
    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    #@2
    invoke-static {v0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->-wrap0(Lcom/android/server/job/controllers/ConnectivityController;I)V

    #@5
    .line 163
    return-void
.end method
