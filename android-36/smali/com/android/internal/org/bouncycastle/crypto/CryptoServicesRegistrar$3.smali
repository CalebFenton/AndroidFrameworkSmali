.class Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$3;
.super Ljava/lang/Object;
.source "CryptoServicesRegistrar.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->checkPermission(Ljava/security/Permission;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$permission:Ljava/security/Permission;

.field final synthetic blacklist val$securityManager:Ljava/lang/SecurityManager;


# direct methods
.method constructor blacklist <init>(Ljava/lang/SecurityManager;Ljava/security/Permission;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 449
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$3;->val$securityManager:Ljava/lang/SecurityManager;

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$3;->val$permission:Ljava/security/Permission;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()Ljava/lang/Object;
    .registers 3

    .line 452
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$3;->val$securityManager:Ljava/lang/SecurityManager;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$3;->val$permission:Ljava/security/Permission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 454
    const/4 v0, 0x0

    return-object v0
.end method
