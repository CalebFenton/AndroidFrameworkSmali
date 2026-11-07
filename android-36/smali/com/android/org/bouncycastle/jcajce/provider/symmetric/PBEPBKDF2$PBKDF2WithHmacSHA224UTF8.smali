.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$PBKDF2WithHmacSHA224UTF8;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2WithHmacSHA224;
.source "PBEPBKDF2.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 442
    const-string v0, "PBKDF2WithHmacSHA224"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2WithHmacSHA224;-><init>(Ljava/lang/String;I)V

    return-void
.end method
