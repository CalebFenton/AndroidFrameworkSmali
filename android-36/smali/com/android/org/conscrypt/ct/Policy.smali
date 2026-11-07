.class public interface abstract Lcom/android/org/conscrypt/ct/Policy;
.super Ljava/lang/Object;
.source "Policy.java"


# virtual methods
.method public abstract blacklist doesResultConformToPolicy(Lcom/android/org/conscrypt/ct/VerificationResult;Ljava/security/cert/X509Certificate;)Lcom/android/org/conscrypt/ct/PolicyCompliance;
.end method

.method public abstract blacklist isLogStoreCompliant(Lcom/android/org/conscrypt/ct/LogStore;)Z
.end method
