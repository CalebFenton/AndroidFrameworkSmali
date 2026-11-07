.class public interface abstract Ljavax/sip/header/MediaType;
.super Ljava/lang/Object;
.source "MediaType.java"


# virtual methods
.method public abstract blacklist getContentSubType()Ljava/lang/String;
.end method

.method public abstract blacklist getContentType()Ljava/lang/String;
.end method

.method public abstract blacklist setContentSubType(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract blacklist setContentType(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method
