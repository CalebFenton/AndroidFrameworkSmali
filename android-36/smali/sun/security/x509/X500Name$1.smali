.class Lsun/security/x509/X500Name$1;
.super Ljava/lang/Object;
.source "X500Name.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/x509/X500Name;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction<",
        "[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1406
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

    .line 1406
    invoke-virtual {p0}, Lsun/security/x509/X500Name$1;->run()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1408
    const-class v0, Ljavax/security/auth/x500/X500Principal;

    .line 1409
    .local v0, "pClass":Ljava/lang/Class;, "Ljava/lang/Class<Ljavax/security/auth/x500/X500Principal;>;"
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lsun/security/x509/X500Name;

    aput-object v4, v2, v3

    .line 1410
    .local v2, "args":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 1411
    .local v3, "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljavax/security/auth/x500/X500Principal;>;"
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 1412
    const-string v4, "thisX500Name"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 1413
    .local v4, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1414
    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
