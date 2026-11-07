.class public Lgov/nist/javax/sip/message/HeaderIterator;
.super Ljava/lang/Object;
.source "HeaderIterator.java"

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field private greylist index:I

.field private greylist sipHeader:Lgov/nist/javax/sip/header/SIPHeader;

.field private greylist sipMessage:Lgov/nist/javax/sip/message/SIPMessage;

.field private greylist toRemove:Z


# direct methods
.method protected constructor greylist <init>(Lgov/nist/javax/sip/message/SIPMessage;Lgov/nist/javax/sip/header/SIPHeader;)V
    .registers 3
    .param p1, "sipMessage"    # Lgov/nist/javax/sip/message/SIPMessage;
    .param p2, "sipHeader"    # Lgov/nist/javax/sip/header/SIPHeader;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lgov/nist/javax/sip/message/HeaderIterator;->sipMessage:Lgov/nist/javax/sip/message/SIPMessage;

    .line 46
    iput-object p2, p0, Lgov/nist/javax/sip/message/HeaderIterator;->sipHeader:Lgov/nist/javax/sip/header/SIPHeader;

    .line 47
    return-void
.end method


# virtual methods
.method public whitelist test-api add(Ljava/lang/Object;)V
    .registers 3
    .param p1, "header"    # Ljava/lang/Object;

    .line 78
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api hasNext()Z
    .registers 2

    .line 93
    iget v0, p0, Lgov/nist/javax/sip/message/HeaderIterator;->index:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist test-api hasPrevious()Z
    .registers 3

    .line 97
    iget v0, p0, Lgov/nist/javax/sip/message/HeaderIterator;->index:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public whitelist test-api next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lgov/nist/javax/sip/message/HeaderIterator;->sipHeader:Lgov/nist/javax/sip/header/SIPHeader;

    if-eqz v0, :cond_10

    iget v0, p0, Lgov/nist/javax/sip/message/HeaderIterator;->index:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    .line 52
    iput-boolean v1, p0, Lgov/nist/javax/sip/message/HeaderIterator;->toRemove:Z

    .line 53
    iput v1, p0, Lgov/nist/javax/sip/message/HeaderIterator;->index:I

    .line 54
    iget-object v0, p0, Lgov/nist/javax/sip/message/HeaderIterator;->sipHeader:Lgov/nist/javax/sip/header/SIPHeader;

    return-object v0

    .line 51
    :cond_10
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public whitelist test-api nextIndex()I
    .registers 2

    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api previous()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lgov/nist/javax/sip/message/HeaderIterator;->sipHeader:Lgov/nist/javax/sip/header/SIPHeader;

    if-eqz v0, :cond_11

    iget v0, p0, Lgov/nist/javax/sip/message/HeaderIterator;->index:I

    if-eqz v0, :cond_11

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/javax/sip/message/HeaderIterator;->toRemove:Z

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lgov/nist/javax/sip/message/HeaderIterator;->index:I

    .line 62
    iget-object v0, p0, Lgov/nist/javax/sip/message/HeaderIterator;->sipHeader:Lgov/nist/javax/sip/header/SIPHeader;

    return-object v0

    .line 59
    :cond_11
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public whitelist test-api previousIndex()I
    .registers 2

    .line 70
    iget v0, p0, Lgov/nist/javax/sip/message/HeaderIterator;->index:I

    if-nez v0, :cond_6

    const/4 v0, -0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist test-api remove()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lgov/nist/javax/sip/message/HeaderIterator;->sipHeader:Lgov/nist/javax/sip/header/SIPHeader;

    if-eqz v0, :cond_1d

    .line 84
    iget-boolean v0, p0, Lgov/nist/javax/sip/message/HeaderIterator;->toRemove:Z

    if-eqz v0, :cond_17

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/javax/sip/message/HeaderIterator;->sipHeader:Lgov/nist/javax/sip/header/SIPHeader;

    .line 86
    iget-object v0, p0, Lgov/nist/javax/sip/message/HeaderIterator;->sipMessage:Lgov/nist/javax/sip/message/SIPMessage;

    iget-object v1, p0, Lgov/nist/javax/sip/message/HeaderIterator;->sipHeader:Lgov/nist/javax/sip/header/SIPHeader;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/SIPHeader;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPMessage;->removeHeader(Ljava/lang/String;)V

    .line 90
    return-void

    .line 88
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 83
    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public whitelist test-api set(Ljava/lang/Object;)V
    .registers 3
    .param p1, "header"    # Ljava/lang/Object;

    .line 74
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
