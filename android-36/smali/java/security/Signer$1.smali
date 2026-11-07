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
        "Ljava/security/PrivilegedExceptionAction<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/security/Signer;

.field final synthetic blacklist val$pub:Ljava/security/PublicKey;


# direct methods
.method constructor blacklist <init>(Ljava/security/Signer;Ljava/security/PublicKey;)V
    .registers 3
    .param p1, "this$0"    # Ljava/security/Signer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 145
    iput-object p1, p0, Ljava/security/Signer$1;->this$0:Ljava/security/Signer;

    iput-object p2, p0, Ljava/security/Signer$1;->val$pub:Ljava/security/PublicKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 145
    invoke-virtual {p0}, Ljava/security/Signer$1;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljava/lang/Void;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .line 147
    iget-object v0, p0, Ljava/security/Signer$1;->this$0:Ljava/security/Signer;

    iget-object v1, p0, Ljava/security/Signer$1;->val$pub:Ljava/security/PublicKey;

    invoke-virtual {v0, v1}, Ljava/security/Signer;->setPublicKey(Ljava/security/PublicKey;)V

    .line 148
    const/4 v0, 0x0

    return-object v0
.end method
