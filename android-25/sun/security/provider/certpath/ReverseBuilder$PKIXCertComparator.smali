.class Lsun/security/provider/certpath/ReverseBuilder$PKIXCertComparator;
.super Ljava/lang/Object;
.source "ReverseBuilder.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/provider/certpath/ReverseBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PKIXCertComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/security/cert/X509Certificate;",
        ">;"
    }
.end annotation


# instance fields
.field private debug:Lsun/security/util/Debug;

.field final synthetic this$0:Lsun/security/provider/certpath/ReverseBuilder;


# direct methods
.method constructor <init>(Lsun/security/provider/certpath/ReverseBuilder;)V
    .locals 1
    .param p1, "this$0"    # Lsun/security/provider/certpath/ReverseBuilder;

    #@0
    .prologue
    .line 274
    iput-object p1, p0, Lsun/security/provider/certpath/ReverseBuilder$PKIXCertComparator;->this$0:Lsun/security/provider/certpath/ReverseBuilder;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 276
    const-string/jumbo v0, "certpath"

    #@8
    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Lsun/security/provider/certpath/ReverseBuilder$PKIXCertComparator;->debug:Lsun/security/util/Debug;

    #@e
    .line 274
    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "cert1"    # Ljava/lang/Object;
    .param p2, "cert2"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 279
    check-cast p1, Ljava/security/cert/X509Certificate;

    #@2
    .end local p1    # "cert1":Ljava/lang/Object;
    check-cast p2, Ljava/security/cert/X509Certificate;

    #@4
    .end local p2    # "cert2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lsun/security/provider/certpath/ReverseBuilder$PKIXCertComparator;->compare(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public compare(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)I
    .locals 8
    .param p1, "cert1"    # Ljava/security/cert/X509Certificate;
    .param p2, "cert2"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, -0x1

    #@2
    .line 285
    iget-object v5, p0, Lsun/security/provider/certpath/ReverseBuilder$PKIXCertComparator;->this$0:Lsun/security/provider/certpath/ReverseBuilder;

    #@4
    iget-object v5, v5, Lsun/security/provider/certpath/Builder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    #@6
    invoke-virtual {v5}, Lsun/security/provider/certpath/PKIX$BuilderParams;->targetSubject()Ljavax/security/auth/x500/X500Principal;

    #@9
    move-result-object v3

    #@a
    .line 286
    .local v3, "targetSubject":Ljavax/security/auth/x500/X500Principal;
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@d
    move-result-object v5

    #@e
    invoke-virtual {v5, v3}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v5

    #@12
    if-eqz v5, :cond_0

    #@14
    .line 287
    return v6

    #@15
    .line 289
    :cond_0
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@18
    move-result-object v5

    #@19
    invoke-virtual {v5, v3}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v5

    #@1d
    if-eqz v5, :cond_1

    #@1f
    .line 290
    return v7

    #@20
    .line 296
    :cond_1
    :try_start_0
    invoke-static {v3}, Lsun/security/x509/X500Name;->asX500Name(Ljavax/security/auth/x500/X500Principal;)Lsun/security/x509/X500Name;

    #@23
    move-result-object v4

    #@24
    .line 298
    .local v4, "targetSubjectName":Lsun/security/x509/X500Name;
    const/4 v5, 0x0

    #@25
    .line 297
    invoke-static {v5, p1, v4}, Lsun/security/provider/certpath/Builder;->targetDistance(Lsun/security/x509/NameConstraintsExtension;Ljava/security/cert/X509Certificate;Lsun/security/x509/GeneralNameInterface;)I

    #@28
    move-result v1

    #@29
    .line 300
    .local v1, "targetDist1":I
    const/4 v5, 0x0

    #@2a
    .line 299
    invoke-static {v5, p2, v4}, Lsun/security/provider/certpath/Builder;->targetDistance(Lsun/security/x509/NameConstraintsExtension;Ljava/security/cert/X509Certificate;Lsun/security/x509/GeneralNameInterface;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@2d
    move-result v2

    #@2e
    .line 310
    .local v2, "targetDist2":I
    if-ne v1, v2, :cond_3

    #@30
    .line 311
    const/4 v5, 0x0

    #@31
    return v5

    #@32
    .line 301
    .end local v1    # "targetDist1":I
    .end local v2    # "targetDist2":I
    .end local v4    # "targetSubjectName":Lsun/security/x509/X500Name;
    :catch_0
    move-exception v0

    #@33
    .line 302
    .local v0, "e":Ljava/io/IOException;
    iget-object v5, p0, Lsun/security/provider/certpath/ReverseBuilder$PKIXCertComparator;->debug:Lsun/security/util/Debug;

    #@35
    if-eqz v5, :cond_2

    #@37
    .line 303
    iget-object v5, p0, Lsun/security/provider/certpath/ReverseBuilder$PKIXCertComparator;->debug:Lsun/security/util/Debug;

    #@39
    const-string/jumbo v6, "IOException in call to Builder.targetDistance"

    #@3c
    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@3f
    .line 304
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    #@42
    .line 306
    :cond_2
    new-instance v5, Ljava/lang/ClassCastException;

    #@44
    .line 307
    const-string/jumbo v6, "Invalid target subject distinguished name"

    #@47
    .line 306
    invoke-direct {v5, v6}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    #@4a
    throw v5

    #@4b
    .line 313
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "targetDist1":I
    .restart local v2    # "targetDist2":I
    .restart local v4    # "targetSubjectName":Lsun/security/x509/X500Name;
    :cond_3
    if-ne v1, v6, :cond_4

    #@4d
    .line 314
    return v7

    #@4e
    .line 316
    :cond_4
    if-ge v1, v2, :cond_5

    #@50
    .line 317
    return v6

    #@51
    .line 319
    :cond_5
    return v7
.end method
