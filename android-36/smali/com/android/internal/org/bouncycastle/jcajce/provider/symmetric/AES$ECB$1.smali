.class Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$ECB$1;
.super Ljava/lang/Object;
.source "AES.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BlockCipherProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$ECB;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist get()Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;
    .registers 2

    .line 95
    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->newInstance()Lcom/android/internal/org/bouncycastle/crypto/MultiBlockCipher;

    move-result-object v0

    return-object v0
.end method
