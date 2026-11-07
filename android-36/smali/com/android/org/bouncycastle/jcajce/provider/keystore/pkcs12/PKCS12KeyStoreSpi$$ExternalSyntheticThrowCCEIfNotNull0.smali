.class public abstract synthetic Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$$ExternalSyntheticThrowCCEIfNotNull0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"


# direct methods
.method public static synthetic blacklist m(Ljava/lang/Object;)V
    .registers 1

    .line 0
    if-nez p0, :cond_3

    return-void

    :cond_3
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0
.end method
