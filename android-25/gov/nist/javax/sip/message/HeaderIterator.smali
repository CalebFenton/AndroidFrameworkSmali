.class public Lgov/nist/javax/sip/message/HeaderIterator;
.super Ljava/lang/Object;
.source "HeaderIterator.java"

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field private index:I

.field private sipHeader:Lgov/nist/javax/sip/header/SIPHeader;

.field private sipMessage:Lgov/nist/javax/sip/message/SIPMessage;

.field private toRemove:Z


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/message/SIPMessage;Lgov/nist/javax/sip/header/SIPHeader;)V
    .locals 0
    .param p1, "sipMessage"    # Lgov/nist/javax/sip/message/SIPMessage;
    .param p2, "sipHeader"    # Lgov/nist/javax/sip/header/SIPHeader;

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 45
    iput-object p1, p0, Lgov/nist/javax/sip/message/HeaderIterator;->sipMessage:Lgov/nist/javax/sip/message/SIPMessage;

    #@5
    .line 46
    iput-object p2, p0, Lgov/nist/javax/sip/message/HeaderIterator;->sipHeader:Lgov/nist/javax/sip/header/SIPHeader;

    #@7
    .line 44
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .param p1, "header"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 78
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public hasNext()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 93
    iget v1, p0, Lgov/nist/javax/sip/message/HeaderIterator;->index:I

    #@3
    if-nez v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public hasPrevious()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 97
    iget v1, p0, Lgov/nist/javax/sip/message/HeaderIterator;->index:I

    #@3
    if-ne v1, v0, :cond_0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 50
    iget-object v0, p0, Lgov/nist/javax/sip/message/HeaderIterator;->sipHeader:Lgov/nist/javax/sip/header/SIPHeader;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget v0, p0, Lgov/nist/javax/sip/message/HeaderIterator;->index:I

    #@7
    if-ne v0, v1, :cond_1

    #@9
    .line 51
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    #@b
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    #@e
    throw v0

    #@f
    .line 52
    :cond_1
    iput-boolean v1, p0, Lgov/nist/javax/sip/message/HeaderIterator;->toRemove:Z

    #@11
    .line 53
    iput v1, p0, Lgov/nist/javax/sip/message/HeaderIterator;->index:I

    #@13
    .line 54
    iget-object v0, p0, Lgov/nist/javax/sip/message/HeaderIterator;->sipHeader:Lgov/nist/javax/sip/header/SIPHeader;

    #@15
    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    #@0
    .prologue
    .line 66
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 58
    iget-object v0, p0, Lgov/nist/javax/sip/message/HeaderIterator;->sipHeader:Lgov/nist/javax/sip/header/SIPHeader;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget v0, p0, Lgov/nist/javax/sip/message/HeaderIterator;->index:I

    #@7
    if-nez v0, :cond_1

    #@9
    .line 59
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    #@b
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    #@e
    throw v0

    #@f
    .line 60
    :cond_1
    const/4 v0, 0x1

    #@10
    iput-boolean v0, p0, Lgov/nist/javax/sip/message/HeaderIterator;->toRemove:Z

    #@12
    .line 61
    iput v1, p0, Lgov/nist/javax/sip/message/HeaderIterator;->index:I

    #@14
    .line 62
    iget-object v0, p0, Lgov/nist/javax/sip/message/HeaderIterator;->sipHeader:Lgov/nist/javax/sip/header/SIPHeader;

    #@16
    return-object v0
.end method

.method public previousIndex()I
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 70
    iget v1, p0, Lgov/nist/javax/sip/message/HeaderIterator;->index:I

    #@3
    if-nez v1, :cond_0

    #@5
    const/4 v0, -0x1

    #@6
    :cond_0
    return v0
.end method

.method public remove()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 82
    iget-object v0, p0, Lgov/nist/javax/sip/message/HeaderIterator;->sipHeader:Lgov/nist/javax/sip/header/SIPHeader;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 83
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@a
    throw v0

    #@b
    .line 84
    :cond_0
    iget-boolean v0, p0, Lgov/nist/javax/sip/message/HeaderIterator;->toRemove:Z

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 85
    iput-object v1, p0, Lgov/nist/javax/sip/message/HeaderIterator;->sipHeader:Lgov/nist/javax/sip/header/SIPHeader;

    #@11
    .line 86
    iget-object v0, p0, Lgov/nist/javax/sip/message/HeaderIterator;->sipMessage:Lgov/nist/javax/sip/message/SIPMessage;

    #@13
    iget-object v1, p0, Lgov/nist/javax/sip/message/HeaderIterator;->sipHeader:Lgov/nist/javax/sip/header/SIPHeader;

    #@15
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/SIPHeader;->getName()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPMessage;->removeHeader(Ljava/lang/String;)V

    #@1c
    .line 81
    return-void

    #@1d
    .line 88
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    #@1f
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@22
    throw v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .param p1, "header"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 74
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method
