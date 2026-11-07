.class public final Lgov/nist/javax/sip/header/AllowEvents;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "AllowEvents.java"

# interfaces
.implements Ljavax/sip/header/AllowEventsHeader;


# static fields
.field private static final whitelist serialVersionUID:J = 0x893718ec0c30d9aL


# instance fields
.field protected greylist eventType:Ljava/lang/String;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 58
    const-string v0, "Allow-Events"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "m"    # Ljava/lang/String;

    .line 65
    const-string v0, "Allow-Events"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 66
    iput-object p1, p0, Lgov/nist/javax/sip/header/AllowEvents;->eventType:Ljava/lang/String;

    .line 67
    return-void
.end method


# virtual methods
.method protected greylist encodeBody()Ljava/lang/String;
    .registers 2

    .line 98
    iget-object v0, p0, Lgov/nist/javax/sip/header/AllowEvents;->eventType:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getEventType()Ljava/lang/String;
    .registers 2

    .line 91
    iget-object v0, p0, Lgov/nist/javax/sip/header/AllowEvents;->eventType:Ljava/lang/String;

    return-object v0
.end method

.method public greylist setEventType(Ljava/lang/String;)V
    .registers 4
    .param p1, "eventType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 78
    if-eqz p1, :cond_5

    .line 82
    iput-object p1, p0, Lgov/nist/javax/sip/header/AllowEvents;->eventType:Ljava/lang/String;

    .line 83
    return-void

    .line 79
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception,AllowEvents, setEventType(), the eventType parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
