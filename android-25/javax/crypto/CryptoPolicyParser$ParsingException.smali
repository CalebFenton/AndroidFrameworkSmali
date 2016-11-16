.class final Ljavax/crypto/CryptoPolicyParser$ParsingException;
.super Ljava/security/GeneralSecurityException;
.source "CryptoPolicyParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/crypto/CryptoPolicyParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ParsingException"
.end annotation


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "line"    # I
    .param p2, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 52
    const-string/jumbo v0, ""

    #@3
    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    #@6
    .line 51
    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "line"    # I
    .param p2, "expect"    # Ljava/lang/String;
    .param p3, "actual"    # Ljava/lang/String;

    #@0
    .prologue
    .line 56
    const-string/jumbo v0, ""

    #@3
    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    #@6
    .line 55
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 48
    const-string/jumbo v0, ""

    #@3
    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    #@6
    .line 47
    return-void
.end method
