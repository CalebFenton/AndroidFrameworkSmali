.class Lsun/security/ssl/SSLSocketImpl$NotifyHandshakeThread$1;
.super Ljava/lang/Object;
.source "SSLSocketImpl.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/security/ssl/SSLSocketImpl$NotifyHandshakeThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lsun/security/ssl/SSLSocketImpl$NotifyHandshakeThread;

.field final synthetic val$l:Ljavax/net/ssl/HandshakeCompletedListener;


# direct methods
.method constructor <init>(Lsun/security/ssl/SSLSocketImpl$NotifyHandshakeThread;Ljavax/net/ssl/HandshakeCompletedListener;)V
    .locals 0
    .param p1, "this$1"    # Lsun/security/ssl/SSLSocketImpl$NotifyHandshakeThread;
    .param p2, "val$l"    # Ljavax/net/ssl/HandshakeCompletedListener;

    #@0
    .prologue
    .line 2508
    iput-object p1, p0, Lsun/security/ssl/SSLSocketImpl$NotifyHandshakeThread$1;->this$1:Lsun/security/ssl/SSLSocketImpl$NotifyHandshakeThread;

    #@2
    iput-object p2, p0, Lsun/security/ssl/SSLSocketImpl$NotifyHandshakeThread$1;->val$l:Ljavax/net/ssl/HandshakeCompletedListener;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 2509
    invoke-virtual {p0}, Lsun/security/ssl/SSLSocketImpl$NotifyHandshakeThread$1;->run()Ljava/lang/Void;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 2

    #@0
    .prologue
    .line 2510
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl$NotifyHandshakeThread$1;->val$l:Ljavax/net/ssl/HandshakeCompletedListener;

    #@2
    iget-object v1, p0, Lsun/security/ssl/SSLSocketImpl$NotifyHandshakeThread$1;->this$1:Lsun/security/ssl/SSLSocketImpl$NotifyHandshakeThread;

    #@4
    invoke-static {v1}, Lsun/security/ssl/SSLSocketImpl$NotifyHandshakeThread;->-get0(Lsun/security/ssl/SSLSocketImpl$NotifyHandshakeThread;)Ljavax/net/ssl/HandshakeCompletedEvent;

    #@7
    move-result-object v1

    #@8
    invoke-interface {v0, v1}, Ljavax/net/ssl/HandshakeCompletedListener;->handshakeCompleted(Ljavax/net/ssl/HandshakeCompletedEvent;)V

    #@b
    .line 2511
    const/4 v0, 0x0

    #@c
    return-object v0
.end method
