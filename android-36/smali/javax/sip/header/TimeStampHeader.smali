.class public interface abstract Ljavax/sip/header/TimeStampHeader;
.super Ljava/lang/Object;
.source "TimeStampHeader.java"

# interfaces
.implements Ljavax/sip/header/Header;


# static fields
.field public static final blacklist NAME:Ljava/lang/String; = "Timestamp"


# virtual methods
.method public abstract blacklist getDelay()F
.end method

.method public abstract blacklist getTime()J
.end method

.method public abstract blacklist getTimeDelay()I
.end method

.method public abstract blacklist getTimeStamp()F
.end method

.method public abstract blacklist hasDelay()Z
.end method

.method public abstract blacklist removeDelay()V
.end method

.method public abstract blacklist setDelay(F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method

.method public abstract blacklist setTime(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method

.method public abstract blacklist setTimeDelay(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method

.method public abstract blacklist setTimeStamp(F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method
