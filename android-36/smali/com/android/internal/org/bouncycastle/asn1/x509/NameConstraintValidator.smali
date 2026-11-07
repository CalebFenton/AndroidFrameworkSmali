.class public interface abstract Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraintValidator;
.super Ljava/lang/Object;
.source "NameConstraintValidator.java"


# virtual methods
.method public abstract blacklist addExcludedSubtree(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;)V
.end method

.method public abstract blacklist checkExcluded(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraintValidatorException;
        }
    .end annotation
.end method

.method public abstract blacklist checkPermitted(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraintValidatorException;
        }
    .end annotation
.end method

.method public abstract blacklist intersectEmptyPermittedSubtree(I)V
.end method

.method public abstract blacklist intersectPermittedSubtree(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;)V
.end method

.method public abstract blacklist intersectPermittedSubtree([Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;)V
.end method
