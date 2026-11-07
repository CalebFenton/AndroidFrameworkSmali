.class public interface abstract Ljavax/sip/header/CallIdHeader;
.super Ljava/lang/Object;
.source "CallIdHeader.java"

# interfaces
.implements Ljavax/sip/header/Header;


# static fields
.field public static final blacklist NAME:Ljava/lang/String; = "Call-ID"


# virtual methods
.method public abstract blacklist getCallId()Ljava/lang/String;
.end method

.method public abstract blacklist setCallId(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method
