.class public abstract Lcom/android/internal/org/bouncycastle/x509/X509StoreSpi;
.super Ljava/lang/Object;
.source "X509StoreSpi.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist engineGetMatches(Lcom/android/internal/org/bouncycastle/util/Selector;)Ljava/util/Collection;
.end method

.method public abstract blacklist engineInit(Lcom/android/internal/org/bouncycastle/x509/X509StoreParameters;)V
.end method
