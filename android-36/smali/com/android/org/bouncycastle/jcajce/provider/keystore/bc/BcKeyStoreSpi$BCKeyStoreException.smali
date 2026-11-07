.class Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BCKeyStoreException;
.super Ljava/security/KeyStoreException;
.source "BcKeyStoreSpi.java"


# instance fields
.field private final blacklist cause:Ljava/lang/Exception;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3

    .line 1161
    invoke-direct {p0, p1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    .line 1162
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BCKeyStoreException;->cause:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public whitelist test-api getCause()Ljava/lang/Throwable;
    .registers 1

    .line 1167
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BCKeyStoreException;->cause:Ljava/lang/Exception;

    return-object p0
.end method
