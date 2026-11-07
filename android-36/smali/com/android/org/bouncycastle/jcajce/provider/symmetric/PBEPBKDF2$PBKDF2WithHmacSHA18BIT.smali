.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$PBKDF2WithHmacSHA18BIT;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2WithHmacSHA1;
.source "PBEPBKDF2.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 420
    const-string v0, "PBKDF2WithHmacSHA1And8bit"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2WithHmacSHA1;-><init>(Ljava/lang/String;I)V

    return-void
.end method
