.class Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$2$1;
.super Ljava/lang/Object;
.source "SipSessionGroup.java"

# interfaces
.implements Lgov/nist/javax/sip/clientauthutils/UserCredentials;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$2;->getCredentials(Ljavax/sip/ClientTransaction;Ljava/lang/String;)Lgov/nist/javax/sip/clientauthutils/UserCredentials;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$2;


# direct methods
.method constructor <init>(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$2;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$2;

    #@0
    .prologue
    .line 1016
    iput-object p1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$2$1;->this$2:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$2;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public getPassword()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1026
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$2$1;->this$2:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$2;

    #@2
    iget-object v0, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$2;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@4
    iget-object v0, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@6
    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->-get6(Lcom/android/server/sip/SipSessionGroup;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getSipDomain()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1031
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$2$1;->this$2:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$2;

    #@2
    iget-object v0, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$2;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@4
    iget-object v0, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@6
    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->-get5(Lcom/android/server/sip/SipSessionGroup;)Landroid/net/sip/SipProfile;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Landroid/net/sip/SipProfile;->getSipDomain()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1019
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$2$1;->this$2:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$2;

    #@2
    iget-object v1, v1, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$2;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@4
    iget-object v1, v1, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@6
    invoke-static {v1}, Lcom/android/server/sip/SipSessionGroup;->-get5(Lcom/android/server/sip/SipSessionGroup;)Landroid/net/sip/SipProfile;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1}, Landroid/net/sip/SipProfile;->getAuthUserName()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    .line 1020
    .local v0, "username":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@11
    move-result v1

    #@12
    if-nez v1, :cond_0

    #@14
    .end local v0    # "username":Ljava/lang/String;
    :goto_0
    return-object v0

    #@15
    .line 1021
    .restart local v0    # "username":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$2$1;->this$2:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$2;

    #@17
    iget-object v1, v1, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$2;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@19
    iget-object v1, v1, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@1b
    invoke-static {v1}, Lcom/android/server/sip/SipSessionGroup;->-get5(Lcom/android/server/sip/SipSessionGroup;)Landroid/net/sip/SipProfile;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Landroid/net/sip/SipProfile;->getUserName()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    goto :goto_0
.end method
