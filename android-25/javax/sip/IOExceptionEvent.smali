.class public Ljavax/sip/IOExceptionEvent;
.super Ljava/util/EventObject;
.source "IOExceptionEvent.java"


# instance fields
.field private mHost:Ljava/lang/String;

.field private mPort:I

.field private mTransport:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "transport"    # Ljava/lang/String;

    #@0
    .prologue
    .line 12
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    #@3
    .line 13
    iput-object p2, p0, Ljavax/sip/IOExceptionEvent;->mHost:Ljava/lang/String;

    #@5
    .line 14
    iput p3, p0, Ljavax/sip/IOExceptionEvent;->mPort:I

    #@7
    .line 15
    iput-object p4, p0, Ljavax/sip/IOExceptionEvent;->mTransport:Ljava/lang/String;

    #@9
    .line 11
    return-void
.end method


# virtual methods
.method public getHost()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 19
    iget-object v0, p0, Ljavax/sip/IOExceptionEvent;->mHost:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPort()I
    .locals 1

    #@0
    .prologue
    .line 23
    iget v0, p0, Ljavax/sip/IOExceptionEvent;->mPort:I

    #@2
    return v0
.end method

.method public getTransport()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 27
    iget-object v0, p0, Ljavax/sip/IOExceptionEvent;->mTransport:Ljava/lang/String;

    #@2
    return-object v0
.end method
