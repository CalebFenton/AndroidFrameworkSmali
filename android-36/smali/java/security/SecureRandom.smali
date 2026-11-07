.class public Ljava/security/SecureRandom;
.super Ljava/util/Random;
.source "SecureRandom.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/SecureRandom$StrongPatternHolder;
    }
.end annotation

.annotation runtime Ljdk/internal/util/random/RandomSupport$RandomGeneratorProperties;
    isStochastic = true
    name = "SecureRandom"
.end annotation


# static fields
.field private static volatile greylist-max-o seedGenerator:Ljava/security/SecureRandom; = null

.field static final whitelist serialVersionUID:J = 0x118d8360a24b4bL


# instance fields
.field private greylist-max-o algorithm:Ljava/lang/String;

.field private greylist-max-o counter:J

.field private greylist-max-o digest:Ljava/security/MessageDigest;

.field private greylist-max-o provider:Ljava/security/Provider;

.field private greylist-max-o randomBytes:[B

.field private greylist-max-o randomBytesUsed:I

.field private greylist-max-o secureRandomSpi:Ljava/security/SecureRandomSpi;

.field private greylist-max-o state:[B

.field private final blacklist threadSafe:Z


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 3

    .line 234
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/Random;-><init>(J)V

    .line 179
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/SecureRandom;->provider:Ljava/security/Provider;

    .line 187
    iput-object v0, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    .line 1098
    iput-object v0, p0, Ljava/security/SecureRandom;->digest:Ljava/security/MessageDigest;

    .line 235
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Ljava/security/SecureRandom;->getDefaultPRNG(Z[B)V

    .line 236
    invoke-direct {p0}, Ljava/security/SecureRandom;->getThreadSafe()Z

    move-result v0

    iput-boolean v0, p0, Ljava/security/SecureRandom;->threadSafe:Z

    .line 237
    return-void
.end method

.method protected constructor whitelist test-api <init>(Ljava/security/SecureRandomSpi;Ljava/security/Provider;)V
    .registers 4
    .param p1, "secureRandomSpi"    # Ljava/security/SecureRandomSpi;
    .param p2, "provider"    # Ljava/security/Provider;

    .line 380
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/security/SecureRandom;-><init>(Ljava/security/SecureRandomSpi;Ljava/security/Provider;Ljava/lang/String;)V

    .line 381
    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/security/SecureRandomSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .registers 6
    .param p1, "secureRandomSpi"    # Ljava/security/SecureRandomSpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "algorithm"    # Ljava/lang/String;

    .line 385
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/Random;-><init>(J)V

    .line 179
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/SecureRandom;->provider:Ljava/security/Provider;

    .line 187
    iput-object v0, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    .line 1098
    iput-object v0, p0, Ljava/security/SecureRandom;->digest:Ljava/security/MessageDigest;

    .line 386
    iput-object p1, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    .line 387
    iput-object p2, p0, Ljava/security/SecureRandom;->provider:Ljava/security/Provider;

    .line 388
    iput-object p3, p0, Ljava/security/SecureRandom;->algorithm:Ljava/lang/String;

    .line 389
    invoke-direct {p0}, Ljava/security/SecureRandom;->getThreadSafe()Z

    move-result v0

    iput-boolean v0, p0, Ljava/security/SecureRandom;->threadSafe:Z

    .line 399
    return-void
.end method

.method public constructor whitelist test-api <init>([B)V
    .registers 4
    .param p1, "seed"    # [B

    .line 272
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/Random;-><init>(J)V

    .line 179
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/SecureRandom;->provider:Ljava/security/Provider;

    .line 187
    iput-object v0, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    .line 1098
    iput-object v0, p0, Ljava/security/SecureRandom;->digest:Ljava/security/MessageDigest;

    .line 273
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Ljava/security/SecureRandom;->getDefaultPRNG(Z[B)V

    .line 274
    invoke-direct {p0}, Ljava/security/SecureRandom;->getThreadSafe()Z

    move-result v0

    iput-boolean v0, p0, Ljava/security/SecureRandom;->threadSafe:Z

    .line 275
    return-void
.end method

.method private greylist-max-o getDefaultPRNG(Z[B)V
    .registers 6
    .param p1, "setSeed"    # Z
    .param p2, "seed"    # [B

    .line 327
    invoke-static {}, Ljava/security/SecureRandom;->getPrngAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 328
    .local v0, "prng":Ljava/lang/String;
    if-eqz v0, :cond_2e

    .line 333
    :try_start_6
    invoke-static {v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v1

    .line 334
    .local v1, "random":Ljava/security/SecureRandom;
    iget-object v2, v1, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    iput-object v2, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    .line 335
    invoke-virtual {v1}, Ljava/security/SecureRandom;->getProvider()Ljava/security/Provider;

    move-result-object v2

    iput-object v2, p0, Ljava/security/SecureRandom;->provider:Ljava/security/Provider;

    .line 336
    if-eqz p1, :cond_1b

    .line 337
    iget-object v2, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    invoke-virtual {v2, p2}, Ljava/security/SecureRandomSpi;->engineSetSeed([B)V
    :try_end_1b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_1b} :catch_27

    .line 342
    .end local v1    # "random":Ljava/security/SecureRandom;
    :cond_1b
    nop

    .line 349
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/security/SecureRandom;

    if-ne v1, v2, :cond_26

    .line 350
    iput-object v0, p0, Ljava/security/SecureRandom;->algorithm:Ljava/lang/String;

    .line 352
    :cond_26
    return-void

    .line 339
    :catch_27
    move-exception v1

    .line 341
    .local v1, "nsae":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 330
    .end local v1    # "nsae":Ljava/security/NoSuchAlgorithmException;
    :cond_2e
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No SecureRandom implementation!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist test-api getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;
    .registers 5
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 446
    const-string v0, "null algorithm name"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 447
    const-string v0, "SecureRandom"

    const-class v1, Ljava/security/SecureRandomSpi;

    invoke-static {v0, v1, p0}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 449
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v1, Ljava/security/SecureRandom;

    iget-object v2, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v2, Ljava/security/SecureRandomSpi;

    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    invoke-direct {v1, v2, v3, p0}, Ljava/security/SecureRandom;-><init>(Ljava/security/SecureRandomSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v1
.end method

.method public static whitelist test-api getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/SecureRandom;
    .registers 6
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 493
    const-string v0, "null algorithm name"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 494
    const-string v0, "SecureRandom"

    const-class v1, Ljava/security/SecureRandomSpi;

    invoke-static {v0, v1, p0, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 496
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v1, Ljava/security/SecureRandom;

    iget-object v2, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v2, Ljava/security/SecureRandomSpi;

    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    invoke-direct {v1, v2, v3, p0}, Ljava/security/SecureRandom;-><init>(Ljava/security/SecureRandomSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v1
.end method

.method public static whitelist test-api getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/SecureRandom;
    .registers 6
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 534
    const-string v0, "null algorithm name"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 535
    const-string v0, "SecureRandom"

    const-class v1, Ljava/security/SecureRandomSpi;

    invoke-static {v0, v1, p0, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/security/Provider;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 537
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v1, Ljava/security/SecureRandom;

    iget-object v2, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v2, Ljava/security/SecureRandomSpi;

    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    invoke-direct {v1, v2, v3, p0}, Ljava/security/SecureRandom;-><init>(Ljava/security/SecureRandomSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v1
.end method

.method public static whitelist test-api getInstance(Ljava/lang/String;Ljava/security/SecureRandomParameters;)Ljava/security/SecureRandom;
    .registers 6
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "params"    # Ljava/security/SecureRandomParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 590
    const-string v0, "null algorithm name"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 591
    if-eqz p1, :cond_1b

    .line 594
    const-string v0, "SecureRandom"

    const-class v1, Ljava/security/SecureRandomSpi;

    invoke-static {v0, v1, p0, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 596
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v1, Ljava/security/SecureRandom;

    iget-object v2, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v2, Ljava/security/SecureRandomSpi;

    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    invoke-direct {v1, v2, v3, p0}, Ljava/security/SecureRandom;-><init>(Ljava/security/SecureRandomSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v1

    .line 592
    .end local v0    # "instance":Lsun/security/jca/GetInstance$Instance;
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "params cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api getInstance(Ljava/lang/String;Ljava/security/SecureRandomParameters;Ljava/lang/String;)Ljava/security/SecureRandom;
    .registers 7
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "params"    # Ljava/security/SecureRandomParameters;
    .param p2, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 645
    const-string v0, "null algorithm name"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 646
    if-eqz p1, :cond_1b

    .line 649
    const-string v0, "SecureRandom"

    const-class v1, Ljava/security/SecureRandomSpi;

    invoke-static {v0, v1, p0, p1, p2}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 651
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v1, Ljava/security/SecureRandom;

    iget-object v2, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v2, Ljava/security/SecureRandomSpi;

    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    invoke-direct {v1, v2, v3, p0}, Ljava/security/SecureRandom;-><init>(Ljava/security/SecureRandomSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v1

    .line 647
    .end local v0    # "instance":Lsun/security/jca/GetInstance$Instance;
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "params cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api getInstance(Ljava/lang/String;Ljava/security/SecureRandomParameters;Ljava/security/Provider;)Ljava/security/SecureRandom;
    .registers 7
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "params"    # Ljava/security/SecureRandomParameters;
    .param p2, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 695
    const-string v0, "null algorithm name"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 696
    if-eqz p1, :cond_1b

    .line 699
    const-string v0, "SecureRandom"

    const-class v1, Ljava/security/SecureRandomSpi;

    invoke-static {v0, v1, p0, p1, p2}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/security/Provider;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 701
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v1, Ljava/security/SecureRandom;

    iget-object v2, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v2, Ljava/security/SecureRandomSpi;

    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    invoke-direct {v1, v2, v3, p0}, Ljava/security/SecureRandom;-><init>(Ljava/security/SecureRandomSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v1

    .line 697
    .end local v0    # "instance":Lsun/security/jca/GetInstance$Instance;
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "params cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api getInstanceStrong()Ljava/security/SecureRandom;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 996
    new-instance v0, Ljava/security/SecureRandom$1;

    invoke-direct {v0}, Ljava/security/SecureRandom$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1005
    .local v0, "property":Ljava/lang/String;
    if-eqz v0, :cond_5d

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5d

    .line 1010
    move-object v1, v0

    .line 1011
    .local v1, "remainder":Ljava/lang/String;
    :goto_14
    if-eqz v1, :cond_44

    .line 1013
    invoke-static {}, Ljava/security/SecureRandom$StrongPatternHolder;->-$$Nest$sfgetpattern()Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    move-object v3, v2

    .line 1014
    .local v3, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 1016
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 1017
    .local v2, "alg":Ljava/lang/String;
    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 1020
    .local v4, "prov":Ljava/lang/String;
    if-nez v4, :cond_36

    .line 1021
    :try_start_31
    invoke-static {v2}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v5

    return-object v5

    .line 1023
    :cond_36
    invoke-static {v2, v4}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v5
    :try_end_3a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_31 .. :try_end_3a} :catch_3b
    .catch Ljava/security/NoSuchProviderException; {:try_start_31 .. :try_end_3a} :catch_3b

    return-object v5

    .line 1025
    :catch_3b
    move-exception v5

    .line 1028
    const/4 v5, 0x5

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 1029
    .end local v2    # "alg":Ljava/lang/String;
    .end local v4    # "prov":Ljava/lang/String;
    goto :goto_43

    .line 1030
    :cond_42
    const/4 v1, 0x0

    .line 1032
    .end local v3    # "m":Ljava/util/regex/Matcher;
    :goto_43
    goto :goto_14

    .line 1034
    :cond_44
    new-instance v2, Ljava/security/NoSuchAlgorithmException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No strong SecureRandom impls available: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1006
    .end local v1    # "remainder":Ljava/lang/String;
    :cond_5d
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    const-string v2, "Null/empty securerandom.strongAlgorithms Security Property"

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static greylist-max-o getPrngAlgorithm()Ljava/lang/String;
    .registers 6

    .line 362
    invoke-static {}, Lsun/security/jca/Providers;->getProviderList()Lsun/security/jca/ProviderList;

    move-result-object v0

    invoke-virtual {v0}, Lsun/security/jca/ProviderList;->providers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Provider;

    .line 363
    .local v1, "p":Ljava/security/Provider;
    invoke-virtual {v1}, Ljava/security/Provider;->getServices()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/Provider$Service;

    .line 364
    .local v3, "s":Ljava/security/Provider$Service;
    invoke-virtual {v3}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SecureRandom"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 365
    invoke-virtual {v3}, Ljava/security/Provider$Service;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 367
    .end local v3    # "s":Ljava/security/Provider$Service;
    :cond_3d
    goto :goto_20

    .line 368
    .end local v1    # "p":Ljava/security/Provider;
    :cond_3e
    goto :goto_c

    .line 369
    :cond_3f
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getProviderName()Ljava/lang/String;
    .registers 2

    .line 402
    iget-object v0, p0, Ljava/security/SecureRandom;->provider:Ljava/security/Provider;

    if-nez v0, :cond_7

    const-string v0, "(no provider)"

    goto :goto_d

    :cond_7
    iget-object v0, p0, Ljava/security/SecureRandom;->provider:Ljava/security/Provider;

    invoke-virtual {v0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method public static whitelist test-api getSeed(I)[B
    .registers 3
    .param p0, "numBytes"    # I

    .line 902
    sget-object v0, Ljava/security/SecureRandom;->seedGenerator:Ljava/security/SecureRandom;

    .line 903
    .local v0, "seedGen":Ljava/security/SecureRandom;
    if-nez v0, :cond_c

    .line 904
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    move-object v0, v1

    .line 905
    sput-object v0, Ljava/security/SecureRandom;->seedGenerator:Ljava/security/SecureRandom;

    .line 907
    :cond_c
    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v1

    return-object v1
.end method

.method private blacklist getThreadSafe()Z
    .registers 4

    .line 240
    iget-object v0, p0, Ljava/security/SecureRandom;->provider:Ljava/security/Provider;

    if-eqz v0, :cond_31

    iget-object v0, p0, Ljava/security/SecureRandom;->algorithm:Ljava/lang/String;

    if-nez v0, :cond_9

    goto :goto_31

    .line 243
    :cond_9
    iget-object v0, p0, Ljava/security/SecureRandom;->provider:Ljava/security/Provider;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecureRandom."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/SecureRandom;->algorithm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ThreadSafe"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 241
    :cond_31
    :goto_31
    const/4 v0, 0x0

    return v0
.end method

.method private static greylist-max-o longToByteArray(J)[B
    .registers 6
    .param p0, "l"    # J

    .line 937
    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 939
    .local v1, "retVal":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v0, :cond_f

    .line 940
    long-to-int v3, p0

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 941
    shr-long/2addr p0, v0

    .line 939
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 944
    .end local v2    # "i":I
    :cond_f
    return-object v1
.end method


# virtual methods
.method public whitelist test-api generateSeed(I)[B
    .registers 4
    .param p1, "numBytes"    # I

    .line 920
    if-ltz p1, :cond_19

    .line 923
    iget-boolean v0, p0, Ljava/security/SecureRandom;->threadSafe:Z

    if-eqz v0, :cond_d

    .line 924
    iget-object v0, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    invoke-virtual {v0, p1}, Ljava/security/SecureRandomSpi;->engineGenerateSeed(I)[B

    move-result-object v0

    return-object v0

    .line 926
    :cond_d
    monitor-enter p0

    .line 927
    :try_start_e
    iget-object v0, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    invoke-virtual {v0, p1}, Ljava/security/SecureRandomSpi;->engineGenerateSeed(I)[B

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 928
    :catchall_16
    move-exception v0

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_16

    throw v0

    .line 921
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "numBytes cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getAlgorithm()Ljava/lang/String;
    .registers 3

    .line 723
    iget-object v0, p0, Ljava/security/SecureRandom;->algorithm:Ljava/lang/String;

    const-string v1, "unknown"

    invoke-static {v0, v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getParameters()Ljava/security/SecureRandomParameters;
    .registers 2

    .line 756
    iget-object v0, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    invoke-virtual {v0}, Ljava/security/SecureRandomSpi;->engineGetParameters()Ljava/security/SecureRandomParameters;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getProvider()Ljava/security/Provider;
    .registers 2

    .line 711
    iget-object v0, p0, Ljava/security/SecureRandom;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method protected final whitelist test-api next(I)I
    .registers 8
    .param p1, "numBits"    # I

    .line 871
    add-int/lit8 v0, p1, 0x7

    div-int/lit8 v0, v0, 0x8

    .line 872
    .local v0, "numBytes":I
    new-array v1, v0, [B

    .line 873
    .local v1, "b":[B
    const/4 v2, 0x0

    .line 875
    .local v2, "next":I
    invoke-virtual {p0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 876
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    if-ge v3, v0, :cond_18

    .line 877
    shl-int/lit8 v4, v2, 0x8

    aget-byte v5, v1, v3

    and-int/lit16 v5, v5, 0xff

    add-int v2, v4, v5

    .line 876
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 880
    .end local v3    # "i":I
    :cond_18
    mul-int/lit8 v3, v0, 0x8

    sub-int/2addr v3, p1

    ushr-int v3, v2, v3

    return v3
.end method

.method public whitelist test-api nextBytes([B)V
    .registers 3
    .param p1, "bytes"    # [B

    .line 817
    iget-boolean v0, p0, Ljava/security/SecureRandom;->threadSafe:Z

    if-eqz v0, :cond_a

    .line 818
    iget-object v0, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    invoke-virtual {v0, p1}, Ljava/security/SecureRandomSpi;->engineNextBytes([B)V

    goto :goto_11

    .line 820
    :cond_a
    monitor-enter p0

    .line 821
    :try_start_b
    iget-object v0, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    invoke-virtual {v0, p1}, Ljava/security/SecureRandomSpi;->engineNextBytes([B)V

    .line 822
    monitor-exit p0

    .line 824
    :goto_11
    return-void

    .line 822
    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_12

    throw v0
.end method

.method public whitelist test-api nextBytes([BLjava/security/SecureRandomParameters;)V
    .registers 5
    .param p1, "bytes"    # [B
    .param p2, "params"    # Ljava/security/SecureRandomParameters;

    .line 841
    if-eqz p2, :cond_23

    .line 844
    iget-boolean v0, p0, Ljava/security/SecureRandom;->threadSafe:Z

    if-eqz v0, :cond_12

    .line 845
    iget-object v0, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    .line 846
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 845
    invoke-virtual {v0, v1, p2}, Ljava/security/SecureRandomSpi;->engineNextBytes([BLjava/security/SecureRandomParameters;)V

    goto :goto_1f

    .line 848
    :cond_12
    monitor-enter p0

    .line 849
    :try_start_13
    iget-object v0, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    .line 850
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 849
    invoke-virtual {v0, v1, p2}, Ljava/security/SecureRandomSpi;->engineNextBytes([BLjava/security/SecureRandomParameters;)V

    .line 851
    monitor-exit p0

    .line 853
    :goto_1f
    return-void

    .line 851
    :catchall_20
    move-exception v0

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_13 .. :try_end_22} :catchall_20

    throw v0

    .line 842
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "params cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api reseed()V
    .registers 3

    .line 1048
    iget-boolean v0, p0, Ljava/security/SecureRandom;->threadSafe:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 1049
    iget-object v0, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    invoke-virtual {v0, v1}, Ljava/security/SecureRandomSpi;->engineReseed(Ljava/security/SecureRandomParameters;)V

    goto :goto_12

    .line 1051
    :cond_b
    monitor-enter p0

    .line 1052
    :try_start_c
    iget-object v0, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    invoke-virtual {v0, v1}, Ljava/security/SecureRandomSpi;->engineReseed(Ljava/security/SecureRandomParameters;)V

    .line 1053
    monitor-exit p0

    .line 1055
    :goto_12
    return-void

    .line 1053
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_13

    throw v0
.end method

.method public whitelist test-api reseed(Ljava/security/SecureRandomParameters;)V
    .registers 4
    .param p1, "params"    # Ljava/security/SecureRandomParameters;

    .line 1074
    if-eqz p1, :cond_17

    .line 1077
    iget-boolean v0, p0, Ljava/security/SecureRandom;->threadSafe:Z

    if-eqz v0, :cond_c

    .line 1078
    iget-object v0, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    invoke-virtual {v0, p1}, Ljava/security/SecureRandomSpi;->engineReseed(Ljava/security/SecureRandomParameters;)V

    goto :goto_13

    .line 1080
    :cond_c
    monitor-enter p0

    .line 1081
    :try_start_d
    iget-object v0, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    invoke-virtual {v0, p1}, Ljava/security/SecureRandomSpi;->engineReseed(Ljava/security/SecureRandomParameters;)V

    .line 1082
    monitor-exit p0

    .line 1084
    :goto_13
    return-void

    .line 1082
    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_14

    throw v0

    .line 1075
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "params cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setSeed(J)V
    .registers 5
    .param p1, "seed"    # J

    .line 805
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_d

    .line 806
    invoke-static {p1, p2}, Ljava/security/SecureRandom;->longToByteArray(J)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->setSeed([B)V

    .line 808
    :cond_d
    return-void
.end method

.method public whitelist test-api setSeed([B)V
    .registers 3
    .param p1, "seed"    # [B

    .line 774
    iget-boolean v0, p0, Ljava/security/SecureRandom;->threadSafe:Z

    if-eqz v0, :cond_a

    .line 775
    iget-object v0, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    invoke-virtual {v0, p1}, Ljava/security/SecureRandomSpi;->engineSetSeed([B)V

    goto :goto_11

    .line 777
    :cond_a
    monitor-enter p0

    .line 778
    :try_start_b
    iget-object v0, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    invoke-virtual {v0, p1}, Ljava/security/SecureRandomSpi;->engineSetSeed([B)V

    .line 779
    monitor-exit p0

    .line 781
    :goto_11
    return-void

    .line 779
    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_12

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 734
    iget-object v0, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    invoke-virtual {v0}, Ljava/security/SecureRandomSpi;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
