.class public Ljavax/sip/TransactionUnavailableException;
.super Ljavax/sip/SipException;
.source "TransactionUnavailableException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 4
    invoke-direct {p0}, Ljavax/sip/SipException;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 8
    invoke-direct {p0, p1}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@3
    .line 7
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3
    .line 11
    return-void
.end method
