.class public Ljavax/net/ssl/SSLSessionBindingEvent;
.super Ljava/util/EventObject;
.source "SSLSessionBindingEvent.java"


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V
    .locals 0
    .param p1, "session"    # Ljavax/net/ssl/SSLSession;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 41
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    #@3
    .line 42
    iput-object p2, p0, Ljavax/net/ssl/SSLSessionBindingEvent;->name:Ljava/lang/String;

    #@5
    .line 40
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 51
    iget-object v0, p0, Ljavax/net/ssl/SSLSessionBindingEvent;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSession()Ljavax/net/ssl/SSLSession;
    .locals 1

    #@0
    .prologue
    .line 62
    iget-object v0, p0, Ljavax/net/ssl/SSLSessionBindingEvent;->source:Ljava/lang/Object;

    #@2
    check-cast v0, Ljavax/net/ssl/SSLSession;

    #@4
    return-object v0
.end method
