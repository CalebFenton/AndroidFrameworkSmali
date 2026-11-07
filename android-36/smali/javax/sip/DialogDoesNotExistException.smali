.class public Ljavax/sip/DialogDoesNotExistException;
.super Ljavax/sip/SipException;
.source "DialogDoesNotExistException.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljavax/sip/SipException;-><init>()V

    .line 5
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 8
    invoke-direct {p0, p1}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 12
    invoke-direct {p0, p1, p2}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    return-void
.end method
