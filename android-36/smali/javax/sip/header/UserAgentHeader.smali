.class public interface abstract Ljavax/sip/header/UserAgentHeader;
.super Ljava/lang/Object;
.source "UserAgentHeader.java"

# interfaces
.implements Ljavax/sip/header/Header;


# static fields
.field public static final blacklist NAME:Ljava/lang/String; = "User-Agent"


# virtual methods
.method public abstract blacklist addProductToken(Ljava/lang/String;)V
.end method

.method public abstract blacklist getProduct()Ljava/util/ListIterator;
.end method

.method public abstract blacklist setProduct(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method
