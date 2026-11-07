.class public interface abstract Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStore;
.super Ljava/lang/Object;
.source "PKIXCRLStore.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/util/Store;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/security/cert/CRL;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/internal/org/bouncycastle/util/Store<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract blacklist getMatches(Lcom/android/internal/org/bouncycastle/util/Selector;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/org/bouncycastle/util/Selector<",
            "TT;>;)",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/util/StoreException;
        }
    .end annotation
.end method
