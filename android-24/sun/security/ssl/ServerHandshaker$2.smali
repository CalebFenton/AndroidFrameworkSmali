.class Lsun/security/ssl/ServerHandshaker$2;
.super Ljava/lang/Object;
.source "ServerHandshaker.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/security/ssl/ServerHandshaker;->setupKerberosKeys()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction",
        "<[",
        "Ljavax/crypto/SecretKey;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lsun/security/ssl/ServerHandshaker;

.field final synthetic val$acc:Ljava/security/AccessControlContext;


# direct methods
.method constructor <init>(Lsun/security/ssl/ServerHandshaker;Ljava/security/AccessControlContext;)V
    .locals 0
    .param p1, "this$0"    # Lsun/security/ssl/ServerHandshaker;
    .param p2, "val$acc"    # Ljava/security/AccessControlContext;

    #@0
    .prologue
    .line 1284
    iput-object p1, p0, Lsun/security/ssl/ServerHandshaker$2;->this$0:Lsun/security/ssl/ServerHandshaker;

    #@2
    iput-object p2, p0, Lsun/security/ssl/ServerHandshaker$2;->val$acc:Ljava/security/AccessControlContext;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
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
    .line 1285
    invoke-virtual {p0}, Lsun/security/ssl/ServerHandshaker$2;->run()[Ljavax/crypto/SecretKey;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public run()[Ljavax/crypto/SecretKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 1287
    iget-object v0, p0, Lsun/security/ssl/ServerHandshaker$2;->val$acc:Ljava/security/AccessControlContext;

    #@2
    invoke-static {v0}, Lsun/security/ssl/Krb5Helper;->getServerKeys(Ljava/security/AccessControlContext;)[Ljavax/crypto/SecretKey;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
