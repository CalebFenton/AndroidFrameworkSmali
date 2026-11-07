.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$PBKDF2withUTF8;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;
.source "PBEPBKDF2.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 290
    const-string v0, "PBKDF2"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;-><init>(Ljava/lang/String;I)V

    return-void
.end method
