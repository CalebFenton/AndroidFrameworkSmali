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
.field private final handler:Ljavax/security/auth/callback/CallbackHandler;


# direct methods
.method public constructor <init>(Ljavax/security/auth/callback/CallbackHandler;)V
    .locals 2
    .param p1, "handler"    # Ljavax/security/auth/callback/CallbackHandler;

    #@0
    .prologue
    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 362
    if-nez p1, :cond_0

    #@5
    .line 363
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "handler must not be null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 365
    :cond_0
    iput-object p1, p0, Ljava/security/KeyStore$CallbackHandlerProtection;->handler:Ljavax/security/auth/callback/CallbackHandler;

    #@10
    .line 361
    return-void
.end method


# virtual methods
.method public getCallbackHandler()Ljavax/security/auth/callback/CallbackHandler;
    .locals 1

    #@0
    .prologue
    .line 374
    iget-object v0, p0, Ljava/security/KeyStore$CallbackHandlerProtection;->handler:Ljavax/security/auth/callback/CallbackHandler;

    #@2
    return-object v0
.end method
