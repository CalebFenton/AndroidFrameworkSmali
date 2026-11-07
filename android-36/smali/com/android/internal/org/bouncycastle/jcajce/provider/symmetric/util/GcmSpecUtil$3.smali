.class Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil$3;
.super Ljava/lang/Object;
.source "GcmSpecUtil.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->extractAeadParameters(Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;Ljava/security/spec/AlgorithmParameterSpec;)Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$keyParam:Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

.field final synthetic blacklist val$params:Ljava/security/spec/AlgorithmParameterSpec;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 126
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil$3;->val$keyParam:Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil$3;->val$params:Ljava/security/spec/AlgorithmParameterSpec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 130
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil$3;->val$keyParam:Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    invoke-static {}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->-$$Nest$sfgettLen()Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil$3;->val$params:Ljava/security/spec/AlgorithmParameterSpec;

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->-$$Nest$sfgetiv()Ljava/lang/reflect/Method;

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil$3;->val$params:Ljava/security/spec/AlgorithmParameterSpec;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;-><init>(Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;I[B)V

    return-object v0
.end method
