.class Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$2;
.super Ljava/lang/Object;
.source "SipSessionGroup.java"

# interfaces
.implements Lgov/nist/javax/sip/clientauthutils/AccountManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getAccountManager()Lgov/nist/javax/sip/clientauthutils/AccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;


# direct methods
.method constructor <init>(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@0
    .prologue
    .line 1012
    iput-object p1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$2;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public getCredentials(Ljavax/sip/ClientTransaction;Ljava/lang/String;)Lgov/nist/javax/sip/clientauthutils/UserCredentials;
    .locals 1
    .param p1, "challengedTransaction"    # Ljavax/sip/ClientTransaction;
    .param p2, "realm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1016
    new-instance v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$2$1;

    #@2
    invoke-direct {v0, p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$2$1;-><init>(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$2;)V

    #@5
    return-object v0
.end method
