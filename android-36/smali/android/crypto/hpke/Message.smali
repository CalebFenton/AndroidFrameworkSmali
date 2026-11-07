.class public Landroid/crypto/hpke/Message;
.super Ljava/lang/Object;
.source "Message.java"


# instance fields
.field private final blacklist ciphertext:[B

.field private final blacklist encapsulated:[B


# direct methods
.method public constructor blacklist <init>([B[B)V
    .registers 3
    .param p1, "encapsulated"    # [B
    .param p2, "ciphertext"    # [B

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Landroid/crypto/hpke/Message;->encapsulated:[B

    .line 31
    iput-object p2, p0, Landroid/crypto/hpke/Message;->ciphertext:[B

    .line 32
    return-void
.end method


# virtual methods
.method public blacklist getCiphertext()[B
    .registers 2

    .line 39
    iget-object v0, p0, Landroid/crypto/hpke/Message;->ciphertext:[B

    return-object v0
.end method

.method public blacklist getEncapsulated()[B
    .registers 2

    .line 35
    iget-object v0, p0, Landroid/crypto/hpke/Message;->encapsulated:[B

    return-object v0
.end method
