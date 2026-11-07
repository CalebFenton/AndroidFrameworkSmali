.class Lsun/security/provider/certpath/PKIX$CertStoreTypeException;
.super Ljava/security/cert/CertStoreException;
.source "PKIX.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/provider/certpath/PKIX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CertStoreTypeException"
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x679327aecf46397cL


# instance fields
.field private final blacklist type:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Ljava/security/cert/CertStoreException;)V
    .registers 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "cse"    # Ljava/security/cert/CertStoreException;

    .line 283
    invoke-virtual {p2}, Ljava/security/cert/CertStoreException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/security/cert/CertStoreException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/security/cert/CertStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 284
    iput-object p1, p0, Lsun/security/provider/certpath/PKIX$CertStoreTypeException;->type:Ljava/lang/String;

    .line 285
    return-void
.end method


# virtual methods
.method blacklist getType()Ljava/lang/String;
    .registers 2

    .line 287
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$CertStoreTypeException;->type:Ljava/lang/String;

    return-object v0
.end method
