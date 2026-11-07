.class public interface abstract Lcom/android/internal/org/bouncycastle/cms/PasswordRecipient;
.super Ljava/lang/Object;
.source "PasswordRecipient.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/cms/Recipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/cms/PasswordRecipient$PRF;
    }
.end annotation


# static fields
.field public static final blacklist PKCS5_SCHEME2:I = 0x0

.field public static final blacklist PKCS5_SCHEME2_UTF8:I = 0x1


# virtual methods
.method public abstract blacklist calculateDerivedKey(ILcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;I)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation
.end method

.method public abstract blacklist getPassword()[C
.end method

.method public abstract blacklist getPasswordConversionScheme()I
.end method

.method public abstract blacklist getRecipientOperator(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[B)Lcom/android/internal/org/bouncycastle/cms/RecipientOperator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation
.end method
