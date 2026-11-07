.class public abstract Ljava/security/AuthProvider;
.super Ljava/security/Provider;
.source "AuthProvider.java"


# direct methods
.method protected constructor whitelist test-api <init>(Ljava/lang/String;DLjava/lang/String;)V
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # D
    .param p4, "info"    # Ljava/lang/String;

    .line 40
    const-string v0, ""

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2, v0}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    .line 41
    return-void
.end method


# virtual methods
.method public abstract whitelist test-api login(Ljavax/security/auth/Subject;Ljavax/security/auth/callback/CallbackHandler;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/auth/login/LoginException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api logout()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/auth/login/LoginException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api setCallbackHandler(Ljavax/security/auth/callback/CallbackHandler;)V
.end method
