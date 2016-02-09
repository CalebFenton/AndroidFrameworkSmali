.class public Ljava/security/NoSuchProviderException;
.super Ljava/security/GeneralSecurityException;
.source "NoSuchProviderException.java"


# static fields
.field private static final serialVersionUID:J = 0x75cbd4abb73cabcaL


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 42
    invoke-direct {p0}, Ljava/security/GeneralSecurityException;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 36
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    #@3
    .line 35
    return-void
.end method
