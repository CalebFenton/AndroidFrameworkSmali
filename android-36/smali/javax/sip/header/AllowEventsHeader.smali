.class public interface abstract Ljavax/sip/header/AllowEventsHeader;
.super Ljava/lang/Object;
.source "AllowEventsHeader.java"

# interfaces
.implements Ljavax/sip/header/Header;


# static fields
.field public static final blacklist NAME:Ljava/lang/String; = "Allow-Events"


# virtual methods
.method public abstract blacklist getEventType()Ljava/lang/String;
.end method

.method public abstract blacklist setEventType(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method
