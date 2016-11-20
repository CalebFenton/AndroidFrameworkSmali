.class Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$1;
.super Ljava/security/InvalidKeyException;
.source "BaseBlockCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;
    .param p2, "$anonymous0"    # Ljava/lang/String;
    .param p3, "val$e"    # Ljava/lang/Exception;

    #@0
    .prologue
    .line 891
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$1;->this$0:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;

    #@2
    iput-object p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$1;->val$e:Ljava/lang/Exception;

    #@4
    invoke-direct {p0, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@7
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    #@0
    .prologue
    .line 895
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$1;->val$e:Ljava/lang/Exception;

    #@2
    return-object v0
.end method
