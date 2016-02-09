.class public Ljava/security/InvalidKeyException;
.super Ljava/security/KeyException;
.source "InvalidKeyException.java"


# static fields
.field private static final serialVersionUID:J = 0x4f15114bc2a9d3c8L


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 42
    invoke-direct {p0}, Ljava/security/KeyException;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 36
    invoke-direct {p0, p1}, Ljava/security/KeyException;-><init>(Ljava/lang/String;)V

    #@3
    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Ljava/security/KeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3
    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 65
    invoke-direct {p0, p1}, Ljava/security/KeyException;-><init>(Ljava/lang/Throwable;)V

    #@3
    .line 64
    return-void
.end method
