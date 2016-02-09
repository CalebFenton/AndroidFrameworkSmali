.class public Lgov/nist/javax/sip/header/MaxForwards;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "MaxForwards.java"

# interfaces
.implements Ljavax/sip/header/MaxForwardsHeader;


# static fields
.field private static final serialVersionUID:J = -0x2afa4eca0522fa07L


# instance fields
.field protected maxForwards:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 55
    const-string/jumbo v0, "Max-Forwards"

    #@3
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    #@6
    .line 54
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "m"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 59
    const-string/jumbo v0, "Max-Forwards"

    #@3
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    #@6
    .line 60
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/MaxForwards;->setMaxForwards(I)V

    #@9
    .line 58
    return-void
.end method


# virtual methods
.method public decrementMaxForwards()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/header/TooManyHopsException;
        }
    .end annotation

    #@0
    .prologue
    .line 105
    iget v0, p0, Lgov/nist/javax/sip/header/MaxForwards;->maxForwards:I

    #@2
    if-lez v0, :cond_0

    #@4
    .line 106
    iget v0, p0, Lgov/nist/javax/sip/header/MaxForwards;->maxForwards:I

    #@6
    add-int/lit8 v0, v0, -0x1

    #@8
    iput v0, p0, Lgov/nist/javax/sip/header/MaxForwards;->maxForwards:I

    #@a
    .line 104
    return-void

    #@b
    .line 107
    :cond_0
    new-instance v0, Ljavax/sip/header/TooManyHopsException;

    #@d
    const-string/jumbo v1, "has already reached 0!"

    #@10
    invoke-direct {v0, v1}, Ljavax/sip/header/TooManyHopsException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0
.end method

.method public encodeBody()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/MaxForwards;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method protected encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    .line 92
    iget v0, p0, Lgov/nist/javax/sip/header/MaxForwards;->maxForwards:I

    #@2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 111
    if-ne p0, p1, :cond_0

    #@4
    return v1

    #@5
    .line 112
    :cond_0
    instance-of v3, p1, Ljavax/sip/header/MaxForwardsHeader;

    #@7
    if-eqz v3, :cond_2

    #@9
    move-object v0, p1

    #@a
    .line 113
    check-cast v0, Ljavax/sip/header/MaxForwardsHeader;

    #@c
    .line 114
    .local v0, "o":Ljavax/sip/header/MaxForwardsHeader;
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/MaxForwards;->getMaxForwards()I

    #@f
    move-result v3

    #@10
    invoke-interface {v0}, Ljavax/sip/header/MaxForwardsHeader;->getMaxForwards()I

    #@13
    move-result v4

    #@14
    if-ne v3, v4, :cond_1

    #@16
    :goto_0
    return v1

    #@17
    :cond_1
    move v1, v2

    #@18
    goto :goto_0

    #@19
    .line 116
    .end local v0    # "o":Ljavax/sip/header/MaxForwardsHeader;
    :cond_2
    return v2
.end method

.method public getMaxForwards()I
    .locals 1

    #@0
    .prologue
    .line 67
    iget v0, p0, Lgov/nist/javax/sip/header/MaxForwards;->maxForwards:I

    #@2
    return v0
.end method

.method public hasReachedZero()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 99
    iget v1, p0, Lgov/nist/javax/sip/header/MaxForwards;->maxForwards:I

    #@3
    if-nez v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public setMaxForwards(I)V
    .locals 3
    .param p1, "maxForwards"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 76
    if-ltz p1, :cond_0

    #@2
    const/16 v0, 0xff

    #@4
    if-le p1, v0, :cond_1

    #@6
    .line 77
    :cond_0
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    #@8
    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "bad max forwards value "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    .line 77
    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 79
    :cond_1
    iput p1, p0, Lgov/nist/javax/sip/header/MaxForwards;->maxForwards:I

    #@22
    .line 75
    return-void
.end method
