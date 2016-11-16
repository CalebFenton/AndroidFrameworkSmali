.class public interface abstract Lcom/android/org/bouncycastle/asn1/x509/NameConstraintValidator;
.super Ljava/lang/Object;
.source "NameConstraintValidator.java"


# virtual methods
.method public abstract addExcludedSubtree(Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;)V
.end method

.method public abstract checkExcluded(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/asn1/x509/NameConstraintValidatorException;
        }
    .end annotation
.end method

.method public abstract checkPermitted(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/asn1/x509/NameConstraintValidatorException;
        }
    .end annotation
.end method

.method public abstract intersectEmptyPermittedSubtree(I)V
.end method

.method public abstract intersectPermittedSubtree(Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;)V
.end method

.method public abstract intersectPermittedSubtree([Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;)V
.end method
