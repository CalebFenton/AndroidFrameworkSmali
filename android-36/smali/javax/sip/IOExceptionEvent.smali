.class public Ljavax/sip/IOExceptionEvent;
.super Ljava/util/EventObject;
.source "IOExceptionEvent.java"


# instance fields
.field private blacklist mHost:Ljava/lang/String;

.field private blacklist mPort:I

.field private blacklist mTransport:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "transport"    # Ljava/lang/String;

    .line 12
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 13
    iput-object p2, p0, Ljavax/sip/IOExceptionEvent;->mHost:Ljava/lang/String;

    .line 14
    iput p3, p0, Ljavax/sip/IOExceptionEvent;->mPort:I

    .line 15
    iput-object p4, p0, Ljavax/sip/IOExceptionEvent;->mTransport:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public blacklist getHost()Ljava/lang/String;
    .registers 2

    .line 19
    iget-object v0, p0, Ljavax/sip/IOExceptionEvent;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPort()I
    .registers 2

    .line 23
    iget v0, p0, Ljavax/sip/IOExceptionEvent;->mPort:I

    return v0
.end method

.method public blacklist getTransport()Ljava/lang/String;
    .registers 2

    .line 27
    iget-object v0, p0, Ljavax/sip/IOExceptionEvent;->mTransport:Ljava/lang/String;

    return-object v0
.end method
