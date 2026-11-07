.class public final synthetic Lsun/security/x509/X509CertImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Lsun/security/x509/X509CertImpl;

.field public final synthetic blacklist f$1:Lsun/security/util/Debug;


# direct methods
.method public synthetic constructor blacklist <init>(Lsun/security/x509/X509CertImpl;Lsun/security/util/Debug;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun/security/x509/X509CertImpl$$ExternalSyntheticLambda0;->f$0:Lsun/security/x509/X509CertImpl;

    iput-object p2, p0, Lsun/security/x509/X509CertImpl$$ExternalSyntheticLambda0;->f$1:Lsun/security/util/Debug;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Lsun/security/x509/X509CertImpl$$ExternalSyntheticLambda0;->f$0:Lsun/security/x509/X509CertImpl;

    iget-object v1, p0, Lsun/security/x509/X509CertImpl$$ExternalSyntheticLambda0;->f$1:Lsun/security/util/Debug;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lsun/security/x509/X509CertImpl;->$r8$lambda$a0Dw5qRSaagH0cyV1FecS5v2uyc(Lsun/security/x509/X509CertImpl;Lsun/security/util/Debug;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
