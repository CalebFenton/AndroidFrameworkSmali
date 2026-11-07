.class Ljavax/crypto/JceSecurity$1;
.super Ljava/lang/Object;
.source "JceSecurity.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/crypto/JceSecurity;->getCodeBase(Ljava/lang/Class;)Ljava/net/URL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/net/URL;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$clazz:Ljava/lang/Class;


# direct methods
.method constructor blacklist <init>(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 238
    iput-object p1, p0, Ljavax/crypto/JceSecurity$1;->val$clazz:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 238
    invoke-virtual {p0}, Ljavax/crypto/JceSecurity$1;->run()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljava/net/URL;
    .registers 4

    .line 240
    iget-object v0, p0, Ljavax/crypto/JceSecurity$1;->val$clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getProtectionDomain()Ljava/security/ProtectionDomain;

    move-result-object v0

    .line 241
    .local v0, "pd":Ljava/security/ProtectionDomain;
    if-eqz v0, :cond_13

    .line 242
    invoke-virtual {v0}, Ljava/security/ProtectionDomain;->getCodeSource()Ljava/security/CodeSource;

    move-result-object v1

    .line 243
    .local v1, "cs":Ljava/security/CodeSource;
    if-eqz v1, :cond_13

    .line 244
    invoke-virtual {v1}, Ljava/security/CodeSource;->getLocation()Ljava/net/URL;

    move-result-object v2

    return-object v2

    .line 247
    .end local v1    # "cs":Ljava/security/CodeSource;
    :cond_13
    invoke-static {}, Ljavax/crypto/JceSecurity;->-$$Nest$sfgetNULL_URL()Ljava/net/URL;

    move-result-object v1

    return-object v1
.end method
