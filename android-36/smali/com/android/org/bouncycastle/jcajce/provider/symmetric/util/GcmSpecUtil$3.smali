.class Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil$3;
.super Ljava/lang/Object;
.source "GcmSpecUtil.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# instance fields
.field final synthetic blacklist val$keyParam:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

.field final synthetic blacklist val$params:Ljava/security/spec/AlgorithmParameterSpec;


# direct methods
.method constructor blacklist <init>(Lcom/android/org/bouncycastle/crypto/params/KeyParameter;Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 3

    .line 126
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil$3;->val$keyParam:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil$3;->val$params:Ljava/security/spec/AlgorithmParameterSpec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()Ljava/lang/Object;
    .registers 6

    .line 130
    new-instance v0, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;

    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil$3;->val$keyParam:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    invoke-static {}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->-$$Nest$sfgettLen()Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil$3;->val$params:Ljava/security/spec/AlgorithmParameterSpec;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->-$$Nest$sfgetiv()Ljava/lang/reflect/Method;

    move-result-object v3

    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil$3;->val$params:Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    invoke-direct {v0, v1, v2, p0}, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;-><init>(Lcom/android/org/bouncycastle/crypto/params/KeyParameter;I[B)V

    return-object v0
.end method
