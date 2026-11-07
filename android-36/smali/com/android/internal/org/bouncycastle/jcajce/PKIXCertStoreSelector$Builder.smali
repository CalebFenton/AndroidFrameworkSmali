.class public Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;
.super Ljava/lang/Object;
.source "PKIXCertStoreSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist baseSelector:Ljava/security/cert/CertSelector;


# direct methods
.method public constructor blacklist <init>(Ljava/security/cert/CertSelector;)V
    .registers 3
    .param p1, "certSelector"    # Ljava/security/cert/CertSelector;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-interface {p1}, Ljava/security/cert/CertSelector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/CertSelector;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;->baseSelector:Ljava/security/cert/CertSelector;

    .line 39
    return-void
.end method


# virtual methods
.method public blacklist build()Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector<",
            "+",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .line 48
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;->baseSelector:Ljava/security/cert/CertSelector;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;-><init>(Ljava/security/cert/CertSelector;Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector-IA;)V

    return-object v0
.end method
