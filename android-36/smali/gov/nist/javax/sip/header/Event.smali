.class public Lgov/nist/javax/sip/header/Event;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "Event.java"

# interfaces
.implements Ljavax/sip/header/EventHeader;


# static fields
.field private static final whitelist serialVersionUID:J = -0x59a0cd7ede813719L


# instance fields
.field protected greylist eventType:Ljava/lang/String;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 58
    const-string v0, "Event"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    .line 59
    return-void
.end method


# virtual methods
.method public greylist encodeBody()Ljava/lang/String;
    .registers 2

    .line 111
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/Event;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected greylist encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 3
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .line 115
    iget-object v0, p0, Lgov/nist/javax/sip/header/Event;->eventType:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 116
    iget-object v0, p0, Lgov/nist/javax/sip/header/Event;->eventType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    :cond_9
    iget-object v0, p0, Lgov/nist/javax/sip/header/Event;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0}, Lgov/nist/core/NameValueList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 119
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    iget-object v0, p0, Lgov/nist/javax/sip/header/Event;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 122
    :cond_1b
    return-object p1
.end method

.method public greylist getEventId()Ljava/lang/String;
    .registers 2

    .line 103
    const-string v0, "id"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/Event;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getEventType()Ljava/lang/String;
    .registers 2

    .line 81
    iget-object v0, p0, Lgov/nist/javax/sip/header/Event;->eventType:Ljava/lang/String;

    return-object v0
.end method

.method public greylist match(Lgov/nist/javax/sip/header/Event;)Z
    .registers 5
    .param p1, "matchTarget"    # Lgov/nist/javax/sip/header/Event;

    .line 131
    iget-object v0, p1, Lgov/nist/javax/sip/header/Event;->eventType:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    iget-object v0, p0, Lgov/nist/javax/sip/header/Event;->eventType:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 132
    return v1

    .line 133
    :cond_a
    iget-object v0, p1, Lgov/nist/javax/sip/header/Event;->eventType:Ljava/lang/String;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lgov/nist/javax/sip/header/Event;->eventType:Ljava/lang/String;

    if-nez v0, :cond_13

    .line 134
    return v1

    .line 135
    :cond_13
    iget-object v0, p0, Lgov/nist/javax/sip/header/Event;->eventType:Ljava/lang/String;

    if-nez v0, :cond_1c

    iget-object v0, p1, Lgov/nist/javax/sip/header/Event;->eventType:Ljava/lang/String;

    if-nez v0, :cond_1c

    .line 136
    return v1

    .line 137
    :cond_1c
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/Event;->getEventId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_29

    invoke-virtual {p1}, Lgov/nist/javax/sip/header/Event;->getEventId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 138
    return v1

    .line 139
    :cond_29
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/Event;->getEventId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_36

    invoke-virtual {p1}, Lgov/nist/javax/sip/header/Event;->getEventId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_36

    .line 140
    return v1

    .line 141
    :cond_36
    iget-object v0, p1, Lgov/nist/javax/sip/header/Event;->eventType:Ljava/lang/String;

    iget-object v2, p0, Lgov/nist/javax/sip/header/Event;->eventType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 142
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/Event;->getEventId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lgov/nist/javax/sip/header/Event;->getEventId()Ljava/lang/String;

    move-result-object v2

    if-eq v0, v2, :cond_58

    .line 143
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/Event;->getEventId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lgov/nist/javax/sip/header/Event;->getEventId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5a

    :cond_58
    const/4 v1, 0x1

    goto :goto_5b

    :cond_5a
    nop

    .line 141
    :goto_5b
    return v1
.end method

.method public greylist setEventId(Ljava/lang/String;)V
    .registers 4
    .param p1, "eventId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 92
    if-eqz p1, :cond_8

    .line 94
    const-string v0, "id"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/Event;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-void

    .line 93
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, " the eventId parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setEventType(Ljava/lang/String;)V
    .registers 4
    .param p1, "eventType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 70
    if-eqz p1, :cond_5

    .line 72
    iput-object p1, p0, Lgov/nist/javax/sip/header/Event;->eventType:Ljava/lang/String;

    .line 73
    return-void

    .line 71
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, " the eventType is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
