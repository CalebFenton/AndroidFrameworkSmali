.class public Landroid/security/keystore/UserNotAuthenticatedException;
.super Ljava/security/InvalidKeyException;
.source "UserNotAuthenticatedException.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 31
    const-string/jumbo v0, "User not authenticated"

    #@3
    invoke-direct {p0, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@6
    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 39
    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@3
    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3
    .line 46
    return-void
.end method
