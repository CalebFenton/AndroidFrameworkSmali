.class public interface abstract Ljavax/sip/header/ExpiresHeader;
.super Ljava/lang/Object;
.source "ExpiresHeader.java"

# interfaces
.implements Ljavax/sip/header/Header;


# static fields
.field public static final blacklist NAME:Ljava/lang/String; = "Expires"


# virtual methods
.method public abstract blacklist getExpires()I
.end method

.method public abstract blacklist setExpires(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method
