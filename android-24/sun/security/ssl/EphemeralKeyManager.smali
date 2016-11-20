.class final Lsun/security/ssl/EphemeralKeyManager;
.super Ljava/lang/Object;
.source "EphemeralKeyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;
    }
.end annotation


# static fields
.field private static final INDEX_RSA1024:I = 0x1

.field private static final INDEX_RSA512:I


# instance fields
.field private final keys:[Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;


# direct methods
.method constructor <init>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 46
    const/4 v0, 0x2

    #@5
    new-array v0, v0, [Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;

    #@7
    .line 47
    new-instance v1, Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;

    #@9
    invoke-direct {v1, v3, v3}, Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;-><init>(Ljava/security/KeyPair;Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;)V

    #@c
    const/4 v2, 0x0

    #@d
    aput-object v1, v0, v2

    #@f
    .line 48
    new-instance v1, Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;

    #@11
    invoke-direct {v1, v3, v3}, Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;-><init>(Ljava/security/KeyPair;Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;)V

    #@14
    const/4 v2, 0x1

    #@15
    aput-object v1, v0, v2

    #@17
    .line 46
    iput-object v0, p0, Lsun/security/ssl/EphemeralKeyManager;->keys:[Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;

    #@19
    .line 51
    return-void
.end method


# virtual methods
.method getRSAKeyPair(ZLjava/security/SecureRandom;)Ljava/security/KeyPair;
    .locals 10
    .param p1, "export"    # Z
    .param p2, "random"    # Ljava/security/SecureRandom;

    #@0
    .prologue
    .line 60
    if-eqz p1, :cond_1

    #@2
    .line 61
    const/16 v4, 0x200

    #@4
    .line 62
    .local v4, "length":I
    const/4 v1, 0x0

    #@5
    .line 68
    .local v1, "index":I
    :goto_0
    iget-object v6, p0, Lsun/security/ssl/EphemeralKeyManager;->keys:[Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;

    #@7
    monitor-enter v6

    #@8
    .line 69
    :try_start_0
    iget-object v5, p0, Lsun/security/ssl/EphemeralKeyManager;->keys:[Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;

    #@a
    aget-object v5, v5, v1

    #@c
    invoke-static {v5}, Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;->-wrap0(Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;)Ljava/security/KeyPair;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    move-result-object v3

    #@10
    .line 70
    .local v3, "kp":Ljava/security/KeyPair;
    if-nez v3, :cond_0

    #@12
    .line 72
    :try_start_1
    const-string/jumbo v5, "RSA"

    #@15
    invoke-static {v5}, Lsun/security/ssl/JsseJce;->getKeyPairGenerator(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    #@18
    move-result-object v2

    #@19
    .line 73
    .local v2, "kgen":Ljava/security/KeyPairGenerator;
    invoke-virtual {v2, v4, p2}, Ljava/security/KeyPairGenerator;->initialize(ILjava/security/SecureRandom;)V

    #@1c
    .line 74
    iget-object v5, p0, Lsun/security/ssl/EphemeralKeyManager;->keys:[Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;

    #@1e
    new-instance v7, Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;

    #@20
    invoke-virtual {v2}, Ljava/security/KeyPairGenerator;->genKeyPair()Ljava/security/KeyPair;

    #@23
    move-result-object v8

    #@24
    const/4 v9, 0x0

    #@25
    invoke-direct {v7, v8, v9}, Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;-><init>(Ljava/security/KeyPair;Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;)V

    #@28
    aput-object v7, v5, v1

    #@2a
    .line 75
    iget-object v5, p0, Lsun/security/ssl/EphemeralKeyManager;->keys:[Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;

    #@2c
    aget-object v5, v5, v1

    #@2e
    invoke-static {v5}, Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;->-wrap0(Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;)Ljava/security/KeyPair;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@31
    move-result-object v3

    #@32
    .end local v2    # "kgen":Ljava/security/KeyPairGenerator;
    :cond_0
    :goto_1
    monitor-exit v6

    #@33
    .line 80
    return-object v3

    #@34
    .line 64
    .end local v1    # "index":I
    .end local v3    # "kp":Ljava/security/KeyPair;
    .end local v4    # "length":I
    :cond_1
    const/16 v4, 0x400

    #@36
    .line 65
    .restart local v4    # "length":I
    const/4 v1, 0x1

    #@37
    .restart local v1    # "index":I
    goto :goto_0

    #@38
    .line 68
    :catchall_0
    move-exception v5

    #@39
    monitor-exit v6

    #@3a
    throw v5

    #@3b
    .line 76
    .restart local v3    # "kp":Ljava/security/KeyPair;
    :catch_0
    move-exception v0

    #@3c
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_1
.end method
