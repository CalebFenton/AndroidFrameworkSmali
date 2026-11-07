.class public Lcom/android/org/conscrypt/HpkeDecryptException;
.super Ljava/security/GeneralSecurityException;
.source "HpkeDecryptException.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x51ec6b63226493d2L


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 14
    return-void
.end method
