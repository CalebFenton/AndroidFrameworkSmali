.class Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$1;
.super Ljava/security/InvalidKeyException;
.source "BaseCipherSpi.java"


# instance fields
.field final synthetic blacklist this$0:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;

.field final synthetic blacklist val$e:Ljavax/crypto/BadPaddingException;


# direct methods
.method constructor blacklist <init>(Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;Ljava/lang/String;Ljavax/crypto/BadPaddingException;)V
    .registers 4

    .line 166
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$1;->this$0:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;

    iput-object p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$1;->val$e:Ljavax/crypto/BadPaddingException;

    invoke-direct {p0, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized whitelist test-api getCause()Ljava/lang/Throwable;
    .registers 2

    monitor-enter p0

    .line 169
    :try_start_1
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$1;->val$e:Ljavax/crypto/BadPaddingException;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method
