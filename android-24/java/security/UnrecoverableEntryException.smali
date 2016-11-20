.class public Ljava/security/UnrecoverableEntryException;
.super Ljava/security/GeneralSecurityException;
.source "UnrecoverableEntryException.java"


# static fields
.field private static final serialVersionUID:J = -0x3ed3a485dad212c7L


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 43
    invoke-direct {p0}, Ljava/security/GeneralSecurityException;-><init>()V

    #@3
    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 54
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    #@3
    .line 53
    return-void
.end method
