.class public Ljavax/sip/TimeoutEvent;
.super Ljavax/sip/TransactionTerminatedEvent;
.source "TimeoutEvent.java"


# instance fields
.field private mTimeout:Ljavax/sip/Timeout;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljavax/sip/ClientTransaction;Ljavax/sip/Timeout;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "clientTransaction"    # Ljavax/sip/ClientTransaction;
    .param p3, "timeout"    # Ljavax/sip/Timeout;

    #@0
    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljavax/sip/TransactionTerminatedEvent;-><init>(Ljava/lang/Object;Ljavax/sip/ClientTransaction;)V

    #@3
    .line 15
    iput-object p3, p0, Ljavax/sip/TimeoutEvent;->mTimeout:Ljavax/sip/Timeout;

    #@5
    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljavax/sip/ServerTransaction;Ljavax/sip/Timeout;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "serverTransaction"    # Ljavax/sip/ServerTransaction;
    .param p3, "timeout"    # Ljavax/sip/Timeout;

    #@0
    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Ljavax/sip/TransactionTerminatedEvent;-><init>(Ljava/lang/Object;Ljavax/sip/ServerTransaction;)V

    #@3
    .line 9
    iput-object p3, p0, Ljavax/sip/TimeoutEvent;->mTimeout:Ljavax/sip/Timeout;

    #@5
    .line 7
    return-void
.end method


# virtual methods
.method public getTimeout()Ljavax/sip/Timeout;
    .locals 1

    #@0
    .prologue
    .line 19
    iget-object v0, p0, Ljavax/sip/TimeoutEvent;->mTimeout:Ljavax/sip/Timeout;

    #@2
    return-object v0
.end method
