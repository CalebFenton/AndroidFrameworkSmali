.class public final Lgov/nist/javax/sip/header/AllowEvents;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "AllowEvents.java"

# interfaces
.implements Ljavax/sip/header/AllowEventsHeader;


# static fields
.field private static final serialVersionUID:J = 0x893718ec0c30d9aL


# instance fields
.field protected eventType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 58
    const-string/jumbo v0, "Allow-Events"

    #@3
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    #@6
    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "m"    # Ljava/lang/String;

    #@0
    .prologue
    .line 65
    const-string/jumbo v0, "Allow-Events"

    #@3
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    #@6
    .line 66
    iput-object p1, p0, Lgov/nist/javax/sip/header/AllowEvents;->eventType:Ljava/lang/String;

    #@8
    .line 64
    return-void
.end method


# virtual methods
.method protected encodeBody()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 98
    iget-object v0, p0, Lgov/nist/javax/sip/header/AllowEvents;->eventType:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getEventType()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 91
    iget-object v0, p0, Lgov/nist/javax/sip/header/AllowEvents;->eventType:Ljava/lang/String;

    #@2
    return-object v0
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
    .line 78
    if-nez p1, :cond_0

    #@2
    .line 79
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    .line 80
    const-string/jumbo v1, "JAIN-SIP Exception,AllowEvents, setEventType(), the eventType parameter is null"

    #@7
    .line 79
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 82
    :cond_0
    iput-object p1, p0, Lgov/nist/javax/sip/header/AllowEvents;->eventType:Ljava/lang/String;

    #@d
    .line 77
    return-void
.end method
