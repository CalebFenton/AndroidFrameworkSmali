.class public abstract Ljava/security/AuthProvider;
.super Ljava/security/Provider;
.source "AuthProvider.java"


# direct methods
.method protected constructor <init>(Ljava/lang/String;DLjava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # D
    .param p4, "info"    # Ljava/lang/String;

    #@0
    .prologue
    .line 38
    const-string/jumbo v0, ""

    #@3
    const-string/jumbo v1, ""

    #@6
    const-wide/16 v2, 0x0

    #@8
    invoke-direct {p0, v0, v2, v3, v1}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    #@b
    .line 37
    return-void
.end method


# virtual methods
.method public abstract login(Ljavax/security/auth/Subject;Ljavax/security/auth/callback/CallbackHandler;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/auth/login/LoginException;
        }
    .end annotation
.end method

.method public abstract logout()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/auth/login/LoginException;
        }
    .end annotation
.end method

.method public abstract setCallbackHandler(Ljavax/security/auth/callback/CallbackHandler;)V
.end method
