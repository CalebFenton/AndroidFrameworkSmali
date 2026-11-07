.class Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil$1;
.super Ljava/lang/Object;
.source "ECUtil.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getNameFrom(Ljava/security/spec/AlgorithmParameterSpec;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$paramSpec:Ljava/security/spec/AlgorithmParameterSpec;


# direct methods
.method constructor blacklist <init>(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 436
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil$1;->val$paramSpec:Ljava/security/spec/AlgorithmParameterSpec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()Ljava/lang/Object;
    .registers 5

    .line 441
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil$1;->val$paramSpec:Ljava/security/spec/AlgorithmParameterSpec;

    invoke-interface {v0}, Ljava/security/spec/AlgorithmParameterSpec;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getName"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 443
    .local v0, "m":Ljava/lang/reflect/Method;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil$1;->val$paramSpec:Ljava/security/spec/AlgorithmParameterSpec;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    return-object v1

    .line 445
    .end local v0    # "m":Ljava/lang/reflect/Method;
    :catch_18
    move-exception v0

    .line 450
    const/4 v0, 0x0

    return-object v0
.end method
