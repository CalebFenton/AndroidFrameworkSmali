.class Ljava/security/Signer$1;
.super Ljava/lang/Object;
.source "Signer.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/security/Signer;->setKeyPair(Ljava/security/KeyPair;)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/security/Signer;

.field final synthetic val$pub:Ljava/security/PublicKey;


# direct methods
.method constructor <init>(Ljava/security/Signer;Ljava/security/PublicKey;)V
    .locals 0
    .param p1, "this$0"    # Ljava/security/Signer;
    .param p2, "val$pub"    # Ljava/security/PublicKey;

    #@0
    .prologue
    .line 143
    iput-object p1, p0, Ljava/security/Signer$1;->this$0:Ljava/security/Signer;

    #@2
    iput-object p2, p0, Ljava/security/Signer$1;->val$pub:Ljava/security/PublicKey;

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
    .line 144
    invoke-virtual {p0}, Ljava/security/Signer$1;->run()Ljava/lang/Void;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    #@0
    .prologue
    .line 145
    iget-object v0, p0, Ljava/security/Signer$1;->this$0:Ljava/security/Signer;

    #@2
    iget-object v1, p0, Ljava/security/Signer$1;->val$pub:Ljava/security/PublicKey;

    #@4
    invoke-virtual {v0, v1}, Ljava/security/Identity;->setPublicKey(Ljava/security/PublicKey;)V

    #@7
    .line 146
    const/4 v0, 0x0

    #@8
    return-object v0
.end method
