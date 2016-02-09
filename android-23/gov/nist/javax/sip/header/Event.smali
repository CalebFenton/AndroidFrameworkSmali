.class public Lgov/nist/javax/sip/header/Event;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "Event.java"

# interfaces
.implements Ljavax/sip/header/EventHeader;


# static fields
.field private static final serialVersionUID:J = -0x59a0cd7ede813719L


# instance fields
.field protected eventType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 58
    const-string/jumbo v0, "Event"

    #@3
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    #@6
    .line 57
    return-void
.end method


# virtual methods
.method public encodeBody()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/Event;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

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
    .line 115
    iget-object v0, p0, Lgov/nist/javax/sip/header/Event;->eventType:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 116
    iget-object v0, p0, Lgov/nist/javax/sip/header/Event;->eventType:Ljava/lang/String;

    #@6
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@9
    .line 118
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/Event;->parameters:Lgov/nist/core/NameValueList;

    #@b
    invoke-virtual {v0}, Lgov/nist/core/NameValueList;->isEmpty()Z

    #@e
    move-result v0

    #@f
    if-nez v0, :cond_1

    #@11
    .line 119
    const-string/jumbo v0, ";"

    #@14
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@17
    .line 120
    iget-object v0, p0, Lgov/nist/javax/sip/header/Event;->parameters:Lgov/nist/core/NameValueList;

    #@19
    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@1c
    .line 122
    :cond_1
    return-object p1
.end method

.method public getEventId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 103
    const-string/jumbo v0, "id"

    #@3
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/Event;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getEventType()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 81
    iget-object v0, p0, Lgov/nist/javax/sip/header/Event;->eventType:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public match(Lgov/nist/javax/sip/header/Event;)Z
    .locals 3
    .param p1, "matchTarget"    # Lgov/nist/javax/sip/header/Event;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 131
    iget-object v1, p1, Lgov/nist/javax/sip/header/Event;->eventType:Ljava/lang/String;

    #@3
    if-nez v1, :cond_0

    #@5
    iget-object v1, p0, Lgov/nist/javax/sip/header/Event;->eventType:Ljava/lang/String;

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 132
    return v0

    #@a
    .line 133
    :cond_0
    iget-object v1, p1, Lgov/nist/javax/sip/header/Event;->eventType:Ljava/lang/String;

    #@c
    if-eqz v1, :cond_1

    #@e
    iget-object v1, p0, Lgov/nist/javax/sip/header/Event;->eventType:Ljava/lang/String;

    #@10
    if-nez v1, :cond_1

    #@12
    .line 134
    return v0

    #@13
    .line 135
    :cond_1
    iget-object v1, p0, Lgov/nist/javax/sip/header/Event;->eventType:Ljava/lang/String;

    #@15
    if-nez v1, :cond_2

    #@17
    iget-object v1, p1, Lgov/nist/javax/sip/header/Event;->eventType:Ljava/lang/String;

    #@19
    if-nez v1, :cond_2

    #@1b
    .line 136
    return v0

    #@1c
    .line 137
    :cond_2
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/Event;->getEventId()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    if-nez v1, :cond_3

    #@22
    invoke-virtual {p1}, Lgov/nist/javax/sip/header/Event;->getEventId()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    if-eqz v1, :cond_3

    #@28
    .line 138
    return v0

    #@29
    .line 139
    :cond_3
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/Event;->getEventId()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    if-eqz v1, :cond_4

    #@2f
    invoke-virtual {p1}, Lgov/nist/javax/sip/header/Event;->getEventId()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    if-nez v1, :cond_4

    #@35
    .line 140
    return v0

    #@36
    .line 141
    :cond_4
    iget-object v1, p1, Lgov/nist/javax/sip/header/Event;->eventType:Ljava/lang/String;

    #@38
    iget-object v2, p0, Lgov/nist/javax/sip/header/Event;->eventType:Ljava/lang/String;

    #@3a
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@3d
    move-result v1

    #@3e
    if-eqz v1, :cond_5

    #@40
    .line 142
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/Event;->getEventId()Ljava/lang/String;

    #@43
    move-result-object v0

    #@44
    invoke-virtual {p1}, Lgov/nist/javax/sip/header/Event;->getEventId()Ljava/lang/String;

    #@47
    move-result-object v1

    #@48
    if-eq v0, v1, :cond_6

    #@4a
    .line 143
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/Event;->getEventId()Ljava/lang/String;

    #@4d
    move-result-object v0

    #@4e
    invoke-virtual {p1}, Lgov/nist/javax/sip/header/Event;->getEventId()Ljava/lang/String;

    #@51
    move-result-object v1

    #@52
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@55
    move-result v0

    #@56
    .line 141
    :cond_5
    :goto_0
    return v0

    #@57
    .line 142
    :cond_6
    const/4 v0, 0x1

    #@58
    goto :goto_0
.end method

.method public setEventId(Ljava/lang/String;)V
    .locals 2
    .param p1, "eventId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 92
    if-nez p1, :cond_0

    #@2
    .line 93
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, " the eventId parameter is null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 94
    :cond_0
    const-string/jumbo v0, "id"

    #@e
    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/Event;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    #@11
    .line 91
    return-void
.end method

.method public setEventType(Ljava/lang/String;)V
    .locals 2
    .param p1, "eventType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 70
    if-nez p1, :cond_0

    #@2
    .line 71
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, " the eventType is null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 72
    :cond_0
    iput-object p1, p0, Lgov/nist/javax/sip/header/Event;->eventType:Ljava/lang/String;

    #@d
    .line 69
    return-void
.end method
