.class public Ljavax/crypto/ShortBufferException;
.super Ljava/security/GeneralSecurityException;
.source "ShortBufferException.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x74f54573adc91683L


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/security/GeneralSecurityException;-><init>()V

    .line 50
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 59
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 60
    return-void
.end method
