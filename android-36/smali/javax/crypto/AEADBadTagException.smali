.class public Ljavax/crypto/AEADBadTagException;
.super Ljavax/crypto/BadPaddingException;
.source "AEADBadTagException.java"


# static fields
.field private static final whitelist serialVersionUID:J = -0x6c5ef28d211e605L


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljavax/crypto/BadPaddingException;-><init>()V

    .line 44
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 53
    invoke-direct {p0, p1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    .line 54
    return-void
.end method
