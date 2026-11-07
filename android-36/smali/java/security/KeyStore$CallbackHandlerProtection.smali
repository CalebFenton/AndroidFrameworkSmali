.class public Ljava/security/KeyStore$CallbackHandlerProtection;
.super Ljava/lang/Object;
.source "KeyStore.java"

# interfaces
.implements Ljava/security/KeyStore$ProtectionParameter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/KeyStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallbackHandlerProtection"
.end annotation


# instance fields
.field private final greylist-max-o handler:Ljavax/security/auth/callback/CallbackHandler;


# direct methods
.method public constructor whitelist test-api <init>(Ljavax/security/auth/callback/CallbackHandler;)V
    .registers 4
    .param p1, "handler"    # Ljavax/security/auth/callback/CallbackHandler;

    .line 443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 444
    if-eqz p1, :cond_8

    .line 447
    iput-object p1, p0, Ljava/security/KeyStore$CallbackHandlerProtection;->handler:Ljavax/security/auth/callback/CallbackHandler;

    .line 448
    return-void

    .line 445
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "handler must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api getCallbackHandler()Ljavax/security/auth/callback/CallbackHandler;
    .registers 2

    .line 456
    iget-object v0, p0, Ljava/security/KeyStore$CallbackHandlerProtection;->handler:Ljavax/security/auth/callback/CallbackHandler;

    return-object v0
.end method
