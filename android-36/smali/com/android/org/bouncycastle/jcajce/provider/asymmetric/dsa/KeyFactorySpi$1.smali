.class Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyFactorySpi$1;
.super Ljava/security/spec/InvalidKeySpecException;
.source "KeyFactorySpi.java"


# instance fields
.field final synthetic blacklist this$0:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyFactorySpi;

.field final synthetic blacklist val$e:Ljava/lang/Exception;


# direct methods
.method constructor blacklist <init>(Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyFactorySpi;Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4

    .line 207
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyFactorySpi$1;->this$0:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyFactorySpi;

    iput-object p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyFactorySpi$1;->val$e:Ljava/lang/Exception;

    invoke-direct {p0, p2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api getCause()Ljava/lang/Throwable;
    .registers 1

    .line 210
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyFactorySpi$1;->val$e:Ljava/lang/Exception;

    return-object p0
.end method
