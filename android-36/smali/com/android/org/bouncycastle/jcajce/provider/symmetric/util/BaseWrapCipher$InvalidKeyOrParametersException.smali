.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$InvalidKeyOrParametersException;
.super Ljava/security/InvalidKeyException;
.source "BaseWrapCipher.java"


# instance fields
.field private final blacklist cause:Ljava/lang/Throwable;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 600
    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 601
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$InvalidKeyOrParametersException;->cause:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public whitelist test-api getCause()Ljava/lang/Throwable;
    .registers 1

    .line 606
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$InvalidKeyOrParametersException;->cause:Ljava/lang/Throwable;

    return-object p0
.end method
