.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/DESede$KeyGenerator3;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;
.source "DESede.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/DESede;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyGenerator3"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 4

    .line 231
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DESedeKeyGenerator;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/generators/DESedeKeyGenerator;-><init>()V

    const-string v1, "DESede3"

    const/16 v2, 0xc0

    invoke-direct {p0, v1, v2, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;-><init>(Ljava/lang/String;ILcom/android/internal/org/bouncycastle/crypto/CipherKeyGenerator;)V

    .line 232
    return-void
.end method
