.class public interface abstract Ljavax/sip/ListeningPoint;
.super Ljava/lang/Object;
.source "ListeningPoint.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final blacklist PORT_5060:I = 0x13c4

.field public static final blacklist PORT_5061:I = 0x13c5

.field public static final blacklist SCTP:Ljava/lang/String; = "SCTP"

.field public static final blacklist TCP:Ljava/lang/String; = "TCP"

.field public static final blacklist TLS:Ljava/lang/String; = "TLS"

.field public static final blacklist UDP:Ljava/lang/String; = "UDP"


# virtual methods
.method public abstract blacklist createContactHeader()Ljavax/sip/header/ContactHeader;
.end method

.method public abstract blacklist getIPAddress()Ljava/lang/String;
.end method

.method public abstract blacklist getPort()I
.end method

.method public abstract blacklist getSentBy()Ljava/lang/String;
.end method

.method public abstract blacklist getTransport()Ljava/lang/String;
.end method

.method public abstract blacklist sendHeartbeat(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist setSentBy(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method
