.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$PBEWithHmacSHA384AndAES_128;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;
.source "PBEPBKDF2.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 8

    const/16 v5, 0x80

    const/4 v6, 0x0

    .line 549
    const-string v1, "PBEWithHmacSHA384AndAES_128"

    const/4 v2, 0x5

    const/16 v3, 0x8

    const/16 v4, 0x80

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;-><init>(Ljava/lang/String;IIIILcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2-IA;)V

    return-void
.end method
