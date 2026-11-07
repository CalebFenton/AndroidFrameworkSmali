.class public Ljavax/net/ssl/SSLSessionBindingEvent;
.super Ljava/util/EventObject;
.source "SSLSessionBindingEvent.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0xe2c21a1fb80a9L


# instance fields
.field private greylist-max-o name:Ljava/lang/String;


# direct methods
.method public constructor whitelist test-api <init>(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V
    .registers 3
    .param p1, "session"    # Ljavax/net/ssl/SSLSession;
    .param p2, "name"    # Ljava/lang/String;

    .line 68
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 69
    iput-object p2, p0, Ljavax/net/ssl/SSLSessionBindingEvent;->name:Ljava/lang/String;

    .line 70
    return-void
.end method


# virtual methods
.method public whitelist test-api getName()Ljava/lang/String;
    .registers 2

    .line 80
    iget-object v0, p0, Ljavax/net/ssl/SSLSessionBindingEvent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getSession()Ljavax/net/ssl/SSLSession;
    .registers 2

    .line 91
    invoke-virtual {p0}, Ljavax/net/ssl/SSLSessionBindingEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSession;

    return-object v0
.end method
