.class public abstract Lcom/android/org/conscrypt/HandshakeListener;
.super Ljava/lang/Object;
.source "HandshakeListener.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist onHandshakeFinished()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method
