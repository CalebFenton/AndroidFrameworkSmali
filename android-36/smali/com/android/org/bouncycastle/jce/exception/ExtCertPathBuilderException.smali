.class public Lcom/android/org/bouncycastle/jce/exception/ExtCertPathBuilderException;
.super Ljava/security/cert/CertPathBuilderException;
.source "ExtCertPathBuilderException.java"


# instance fields
.field private blacklist cause:Ljava/lang/Throwable;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 18
    invoke-direct {p0, p1}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;)V

    .line 19
    iput-object p2, p0, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathBuilderException;->cause:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public whitelist test-api getCause()Ljava/lang/Throwable;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathBuilderException;->cause:Ljava/lang/Throwable;

    return-object p0
.end method
