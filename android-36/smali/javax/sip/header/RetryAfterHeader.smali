.class public interface abstract Ljavax/sip/header/RetryAfterHeader;
.super Ljava/lang/Object;
.source "RetryAfterHeader.java"

# interfaces
.implements Ljavax/sip/header/Header;
.implements Ljavax/sip/header/Parameters;


# static fields
.field public static final blacklist NAME:Ljava/lang/String; = "Retry-After"


# virtual methods
.method public abstract blacklist getComment()Ljava/lang/String;
.end method

.method public abstract blacklist getDuration()I
.end method

.method public abstract blacklist getRetryAfter()I
.end method

.method public abstract blacklist hasComment()Z
.end method

.method public abstract blacklist removeComment()V
.end method

.method public abstract blacklist removeDuration()V
.end method

.method public abstract blacklist setComment(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract blacklist setDuration(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method

.method public abstract blacklist setRetryAfter(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method
