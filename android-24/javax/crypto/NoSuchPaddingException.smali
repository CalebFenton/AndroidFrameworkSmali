.class public Ljavax/crypto/NoSuchPaddingException;
.super Ljava/security/GeneralSecurityException;
.source "NoSuchPaddingException.java"


# static fields
.field private static final serialVersionUID:J = -0x3f7626dcc02d596aL


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 49
    invoke-direct {p0}, Ljava/security/GeneralSecurityException;-><init>()V

    #@3
    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 59
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    #@3
    .line 58
    return-void
.end method
