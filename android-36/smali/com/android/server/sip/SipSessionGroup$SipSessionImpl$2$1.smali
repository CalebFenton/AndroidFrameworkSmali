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
.field final synthetic blacklist this$2:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$2;


# direct methods
.method constructor blacklist <init>(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$2;)V
    .registers 2
    .param p1, "this$2"    # Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$2;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1016
    iput-object p1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$2$1;->this$2:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getPassword()Ljava/lang/String;
    .registers 2

    .line 1026
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$2$1;->this$2:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$2;

    iget-object v0, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$2;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v0, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$fgetmPassword(Lcom/android/server/sip/SipSessionGroup;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSipDomain()Ljava/lang/String;
    .registers 2

    .line 1031
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$2$1;->this$2:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$2;

    iget-object v0, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$2;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v0, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$fgetmLocalProfile(Lcom/android/server/sip/SipSessionGroup;)Landroid/net/sip/SipProfile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/sip/SipProfile;->getSipDomain()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getUserName()Ljava/lang/String;
    .registers 3

    .line 1019
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$2$1;->this$2:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$2;

    iget-object v0, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$2;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v0, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$fgetmLocalProfile(Lcom/android/server/sip/SipSessionGroup;)Landroid/net/sip/SipProfile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/sip/SipProfile;->getAuthUserName()Ljava/lang/String;

    move-result-object v0

    .line 1020
    .local v0, "username":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    move-object v1, v0

    goto :goto_24

    .line 1021
    :cond_16
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$2$1;->this$2:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$2;

    iget-object v1, v1, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$2;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v1, v1, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-static {v1}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$fgetmLocalProfile(Lcom/android/server/sip/SipSessionGroup;)Landroid/net/sip/SipProfile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/sip/SipProfile;->getUserName()Ljava/lang/String;

    move-result-object v1

    .line 1020
    :goto_24
    return-object v1
.end method
