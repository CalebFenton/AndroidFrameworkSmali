.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/SHA1$PBEWithMacKeyFactory;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;
.source "SHA1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/SHA1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PBEWithMacKeyFactory"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 9

    .line 94
    const/16 v6, 0xa0

    const/4 v7, 0x0

    const-string v1, "PBEwithHmacSHA"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;-><init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZIIII)V

    .line 95
    return-void
.end method
