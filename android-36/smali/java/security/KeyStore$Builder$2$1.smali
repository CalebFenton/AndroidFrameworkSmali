.class Ljava/security/KeyStore$Builder$2$1;
.super Ljava/lang/Object;
.source "KeyStore.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/KeyStore$Builder$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction<",
        "Ljava/security/KeyStore;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/security/KeyStore$Builder$2;


# direct methods
.method constructor blacklist <init>(Ljava/security/KeyStore$Builder$2;)V
    .registers 2
    .param p1, "this$0"    # Ljava/security/KeyStore$Builder$2;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2217
    iput-object p1, p0, Ljava/security/KeyStore$Builder$2$1;->this$0:Ljava/security/KeyStore$Builder$2;

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

    .line 2217
    invoke-virtual {p0}, Ljava/security/KeyStore$Builder$2$1;->run()Ljava/security/KeyStore;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljava/security/KeyStore;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2221
    iget-object v0, p0, Ljava/security/KeyStore$Builder$2$1;->this$0:Ljava/security/KeyStore$Builder$2;

    iget-object v0, v0, Ljava/security/KeyStore$Builder$2;->val$provider:Ljava/security/Provider;

    if-nez v0, :cond_f

    .line 2222
    iget-object v0, p0, Ljava/security/KeyStore$Builder$2$1;->this$0:Ljava/security/KeyStore$Builder$2;

    iget-object v0, v0, Ljava/security/KeyStore$Builder$2;->val$type:Ljava/lang/String;

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .local v0, "ks":Ljava/security/KeyStore;
    goto :goto_1b

    .line 2224
    .end local v0    # "ks":Ljava/security/KeyStore;
    :cond_f
    iget-object v0, p0, Ljava/security/KeyStore$Builder$2$1;->this$0:Ljava/security/KeyStore$Builder$2;

    iget-object v0, v0, Ljava/security/KeyStore$Builder$2;->val$type:Ljava/lang/String;

    iget-object v1, p0, Ljava/security/KeyStore$Builder$2$1;->this$0:Ljava/security/KeyStore$Builder$2;

    iget-object v1, v1, Ljava/security/KeyStore$Builder$2;->val$provider:Ljava/security/Provider;

    invoke-static {v0, v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyStore;

    move-result-object v0

    .line 2226
    .restart local v0    # "ks":Ljava/security/KeyStore;
    :goto_1b
    new-instance v1, Ljava/security/KeyStore$SimpleLoadStoreParameter;

    iget-object v2, p0, Ljava/security/KeyStore$Builder$2$1;->this$0:Ljava/security/KeyStore$Builder$2;

    iget-object v2, v2, Ljava/security/KeyStore$Builder$2;->val$protection:Ljava/security/KeyStore$ProtectionParameter;

    invoke-direct {v1, v2}, Ljava/security/KeyStore$SimpleLoadStoreParameter;-><init>(Ljava/security/KeyStore$ProtectionParameter;)V

    .line 2227
    .local v1, "param":Ljava/security/KeyStore$LoadStoreParameter;
    iget-object v2, p0, Ljava/security/KeyStore$Builder$2$1;->this$0:Ljava/security/KeyStore$Builder$2;

    iget-object v2, v2, Ljava/security/KeyStore$Builder$2;->val$protection:Ljava/security/KeyStore$ProtectionParameter;

    instance-of v2, v2, Ljava/security/KeyStore$CallbackHandlerProtection;

    const/4 v3, 0x1

    if-nez v2, :cond_31

    .line 2228
    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    goto :goto_37

    .line 2232
    :cond_31
    const/4 v2, 0x0

    .line 2234
    .local v2, "tries":I
    :goto_32
    add-int/2addr v2, v3

    .line 2236
    :try_start_33
    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_3d

    .line 2237
    nop

    .line 2250
    .end local v2    # "tries":I
    :goto_37
    iget-object v2, p0, Ljava/security/KeyStore$Builder$2$1;->this$0:Ljava/security/KeyStore$Builder$2;

    invoke-static {v2, v3}, Ljava/security/KeyStore$Builder$2;->-$$Nest$fputgetCalled(Ljava/security/KeyStore$Builder$2;Z)V

    .line 2251
    return-object v0

    .line 2238
    .restart local v2    # "tries":I
    :catch_3d
    move-exception v4

    .line 2239
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    instance-of v5, v5, Ljava/security/UnrecoverableKeyException;

    if-eqz v5, :cond_4f

    .line 2240
    const/4 v5, 0x3

    if-ge v2, v5, :cond_4a

    .line 2241
    goto :goto_32

    .line 2243
    :cond_4a
    iget-object v3, p0, Ljava/security/KeyStore$Builder$2$1;->this$0:Ljava/security/KeyStore$Builder$2;

    invoke-static {v3, v4}, Ljava/security/KeyStore$Builder$2;->-$$Nest$fputoldException(Ljava/security/KeyStore$Builder$2;Ljava/io/IOException;)V

    .line 2246
    :cond_4f
    throw v4
.end method
