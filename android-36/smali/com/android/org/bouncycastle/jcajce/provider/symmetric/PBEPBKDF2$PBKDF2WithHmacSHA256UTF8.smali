.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$PBKDF2WithHmacSHA256UTF8;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2WithHmacSHA256;
.source "PBEPBKDF2.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 464
    const-string v0, "PBKDF2WithHmacSHA256"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2WithHmacSHA256;-><init>(Ljava/lang/String;I)V

    return-void
.end method
