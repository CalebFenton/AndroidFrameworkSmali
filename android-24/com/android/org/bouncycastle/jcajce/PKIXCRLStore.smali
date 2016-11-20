.class public interface abstract Lcom/android/org/bouncycastle/jcajce/PKIXCRLStore;
.super Ljava/lang/Object;
.source "PKIXCRLStore.java"

# interfaces
.implements Lcom/android/org/bouncycastle/util/Store;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/security/cert/CRL;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/org/bouncycastle/util/Store",
        "<TT;>;"
    }
.end annotation


# virtual methods
.method public abstract getMatches(Lcom/android/org/bouncycastle/util/Selector;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/org/bouncycastle/util/Selector",
            "<TT;>;)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/util/StoreException;
        }
    .end annotation
.end method
