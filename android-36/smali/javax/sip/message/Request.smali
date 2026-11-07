.class public interface abstract Ljavax/sip/message/Request;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Ljavax/sip/message/Message;


# static fields
.field public static final blacklist ACK:Ljava/lang/String; = "ACK"

.field public static final blacklist BYE:Ljava/lang/String; = "BYE"

.field public static final blacklist CANCEL:Ljava/lang/String; = "CANCEL"

.field public static final blacklist INFO:Ljava/lang/String; = "INFO"

.field public static final blacklist INVITE:Ljava/lang/String; = "INVITE"

.field public static final blacklist MESSAGE:Ljava/lang/String; = "MESSAGE"

.field public static final blacklist NOTIFY:Ljava/lang/String; = "NOTIFY"

.field public static final blacklist OPTIONS:Ljava/lang/String; = "OPTIONS"

.field public static final blacklist PRACK:Ljava/lang/String; = "PRACK"

.field public static final blacklist PUBLISH:Ljava/lang/String; = "PUBLISH"

.field public static final blacklist REFER:Ljava/lang/String; = "REFER"

.field public static final blacklist REGISTER:Ljava/lang/String; = "REGISTER"

.field public static final blacklist SUBSCRIBE:Ljava/lang/String; = "SUBSCRIBE"

.field public static final blacklist UPDATE:Ljava/lang/String; = "UPDATE"


# virtual methods
.method public abstract blacklist getMethod()Ljava/lang/String;
.end method

.method public abstract blacklist getRequestURI()Ljavax/sip/address/URI;
.end method

.method public abstract blacklist setMethod(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract blacklist setRequestURI(Ljavax/sip/address/URI;)V
.end method
