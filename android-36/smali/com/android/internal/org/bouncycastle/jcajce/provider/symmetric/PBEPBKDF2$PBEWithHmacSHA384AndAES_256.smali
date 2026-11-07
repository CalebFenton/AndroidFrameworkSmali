.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$PBEWithHmacSHA384AndAES_256;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;
.source "PBEPBKDF2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PBEWithHmacSHA384AndAES_256"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 8

    .line 600
    const/16 v5, 0x80

    const/4 v6, 0x0

    const-string v1, "PBEWithHmacSHA384AndAES_256"

    const/4 v2, 0x5

    const/16 v3, 0x8

    const/16 v4, 0x100

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;-><init>(Ljava/lang/String;IIIILcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2-IA;)V

    .line 601
    return-void
.end method
