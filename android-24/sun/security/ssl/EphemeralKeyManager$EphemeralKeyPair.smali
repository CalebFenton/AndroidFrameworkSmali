.class Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;
.super Ljava/lang/Object;
.source "EphemeralKeyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ssl/EphemeralKeyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EphemeralKeyPair"
.end annotation


# static fields
.field private static final MAX_USE:I = 0xc8

.field private static final USE_INTERVAL:J = 0x36ee80L


# instance fields
.field private expirationTime:J

.field private keyPair:Ljava/security/KeyPair;

.field private uses:I


# direct methods
.method static synthetic -wrap0(Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;)Ljava/security/KeyPair;
    .locals 1

    #@0
    invoke-direct {p0}, Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;->getKeyPair()Ljava/security/KeyPair;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private constructor <init>(Ljava/security/KeyPair;)V
    .locals 4
    .param p1, "keyPair"    # Ljava/security/KeyPair;

    #@0
    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 100
    iput-object p1, p0, Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;->keyPair:Ljava/security/KeyPair;

    #@5
    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@8
    move-result-wide v0

    #@9
    const-wide/32 v2, 0x36ee80

    #@c
    add-long/2addr v0, v2

    #@d
    iput-wide v0, p0, Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;->expirationTime:J

    #@f
    .line 99
    return-void
.end method

.method synthetic constructor <init>(Ljava/security/KeyPair;Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;)V
    .locals 0
    .param p1, "keyPair"    # Ljava/security/KeyPair;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;-><init>(Ljava/security/KeyPair;)V

    #@3
    return-void
.end method

.method private getKeyPair()Ljava/security/KeyPair;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 116
    invoke-direct {p0}, Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;->isValid()Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    .line 117
    iput-object v1, p0, Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;->keyPair:Ljava/security/KeyPair;

    #@9
    .line 118
    return-object v1

    #@a
    .line 120
    :cond_0
    iget v0, p0, Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;->uses:I

    #@c
    add-int/lit8 v0, v0, 0x1

    #@e
    iput v0, p0, Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;->uses:I

    #@10
    .line 121
    iget-object v0, p0, Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;->keyPair:Ljava/security/KeyPair;

    #@12
    return-object v0
.end method

.method private isValid()Z
    .locals 6

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 108
    iget-object v1, p0, Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;->keyPair:Ljava/security/KeyPair;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget v1, p0, Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;->uses:I

    #@7
    const/16 v2, 0xc8

    #@9
    if-ge v1, v2, :cond_0

    #@b
    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@e
    move-result-wide v2

    #@f
    iget-wide v4, p0, Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;->expirationTime:J

    #@11
    cmp-long v1, v2, v4

    #@13
    if-gez v1, :cond_0

    #@15
    const/4 v0, 0x1

    #@16
    .line 108
    :cond_0
    return v0
.end method
