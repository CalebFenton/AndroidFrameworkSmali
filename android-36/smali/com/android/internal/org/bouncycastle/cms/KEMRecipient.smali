.class public interface abstract Lcom/android/internal/org/bouncycastle/cms/KEMRecipient;
.super Ljava/lang/Object;
.source "KEMRecipient.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/cms/Recipient;


# virtual methods
.method public abstract blacklist getRecipientOperator(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Lcom/android/internal/org/bouncycastle/cms/RecipientOperator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation
.end method
