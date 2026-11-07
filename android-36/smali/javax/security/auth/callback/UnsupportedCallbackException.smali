.class public Ljavax/security/auth/callback/UnsupportedCallbackException;
.super Ljava/lang/Exception;
.source "UnsupportedCallbackException.java"


# static fields
.field private static final whitelist serialVersionUID:J = -0x5f63c70ff58df497L


# instance fields
.field private greylist-max-o callback:Ljavax/security/auth/callback/Callback;


# direct methods
.method public constructor whitelist test-api <init>(Ljavax/security/auth/callback/Callback;)V
    .registers 2
    .param p1, "callback"    # Ljavax/security/auth/callback/Callback;

    .line 51
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 52
    iput-object p1, p0, Ljavax/security/auth/callback/UnsupportedCallbackException;->callback:Ljavax/security/auth/callback/Callback;

    .line 53
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljavax/security/auth/callback/Callback;Ljava/lang/String;)V
    .registers 3
    .param p1, "callback"    # Ljavax/security/auth/callback/Callback;
    .param p2, "msg"    # Ljava/lang/String;

    .line 67
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 68
    iput-object p1, p0, Ljavax/security/auth/callback/UnsupportedCallbackException;->callback:Ljavax/security/auth/callback/Callback;

    .line 69
    return-void
.end method


# virtual methods
.method public whitelist test-api getCallback()Ljavax/security/auth/callback/Callback;
    .registers 2

    .line 79
    iget-object v0, p0, Ljavax/security/auth/callback/UnsupportedCallbackException;->callback:Ljavax/security/auth/callback/Callback;

    return-object v0
.end method
