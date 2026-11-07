.class public interface abstract Ljavax/sip/header/Encoding;
.super Ljava/lang/Object;
.source "Encoding.java"


# virtual methods
.method public abstract blacklist getEncoding()Ljava/lang/String;
.end method

.method public abstract blacklist setEncoding(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method
