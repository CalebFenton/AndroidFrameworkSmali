.class final Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$BCJKSTrustedCertEntry;
.super Ljava/lang/Object;
.source "JKSKeyStoreSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BCJKSTrustedCertEntry"
.end annotation


# instance fields
.field final blacklist cert:Ljava/security/cert/Certificate;

.field final blacklist date:Ljava/util/Date;


# direct methods
.method public constructor blacklist <init>(Ljava/util/Date;Ljava/security/cert/Certificate;)V
    .registers 3
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "cert"    # Ljava/security/cert/Certificate;

    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 406
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$BCJKSTrustedCertEntry;->date:Ljava/util/Date;

    .line 407
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$BCJKSTrustedCertEntry;->cert:Ljava/security/cert/Certificate;

    .line 408
    return-void
.end method
