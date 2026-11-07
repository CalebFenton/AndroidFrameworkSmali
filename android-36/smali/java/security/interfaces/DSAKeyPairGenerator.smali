.class public interface abstract Ljava/security/interfaces/DSAKeyPairGenerator;
.super Ljava/lang/Object;
.source "DSAKeyPairGenerator.java"


# virtual methods
.method public abstract whitelist test-api initialize(IZLjava/security/SecureRandom;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api initialize(Ljava/security/interfaces/DSAParams;Ljava/security/SecureRandom;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation
.end method
