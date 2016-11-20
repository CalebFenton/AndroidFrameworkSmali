.class public Lcom/android/org/bouncycastle/jce/exception/ExtCertPathBuilderException;
.super Ljava/security/cert/CertPathBuilderException;
.source "ExtCertPathBuilderException.java"

# interfaces
.implements Lcom/android/org/bouncycastle/jce/exception/ExtException;


# instance fields
.field private cause:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 14
    invoke-direct {p0, p1}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;)V

    #@3
    .line 15
    iput-object p2, p0, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathBuilderException;->cause:Ljava/lang/Throwable;

    #@5
    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .param p3, "certPath"    # Ljava/security/cert/CertPath;
    .param p4, "index"    # I

    #@0
    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3
    .line 22
    iput-object p2, p0, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathBuilderException;->cause:Ljava/lang/Throwable;

    #@5
    .line 19
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    #@0
    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathBuilderException;->cause:Ljava/lang/Throwable;

    #@2
    return-object v0
.end method
