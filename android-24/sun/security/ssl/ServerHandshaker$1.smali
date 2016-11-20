.class Lsun/security/ssl/ServerHandshaker$1;
.super Ljava/lang/Object;
.source "ServerHandshaker.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/security/ssl/ServerHandshaker;->clientHello(Lsun/security/ssl/HandshakeMessage$ClientHello;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction",
        "<",
        "Ljavax/security/auth/Subject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lsun/security/ssl/ServerHandshaker;


# direct methods
.method constructor <init>(Lsun/security/ssl/ServerHandshaker;)V
    .locals 0
    .param p1, "this$0"    # Lsun/security/ssl/ServerHandshaker;

    #@0
    .prologue
    .line 498
    iput-object p1, p0, Lsun/security/ssl/ServerHandshaker$1;->this$0:Lsun/security/ssl/ServerHandshaker;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 499
    invoke-virtual {p0}, Lsun/security/ssl/ServerHandshaker$1;->run()Ljavax/security/auth/Subject;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public run()Ljavax/security/auth/Subject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 501
    iget-object v0, p0, Lsun/security/ssl/ServerHandshaker$1;->this$0:Lsun/security/ssl/ServerHandshaker;

    #@2
    invoke-virtual {v0}, Lsun/security/ssl/Handshaker;->getAccSE()Ljava/security/AccessControlContext;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Lsun/security/ssl/Krb5Helper;->getServerSubject(Ljava/security/AccessControlContext;)Ljavax/security/auth/Subject;

    #@9
    move-result-object v0

    #@a
    .line 500
    return-object v0
.end method
