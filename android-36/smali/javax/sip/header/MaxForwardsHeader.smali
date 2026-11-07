.class public interface abstract Ljavax/sip/header/MaxForwardsHeader;
.super Ljava/lang/Object;
.source "MaxForwardsHeader.java"

# interfaces
.implements Ljavax/sip/header/Header;


# static fields
.field public static final blacklist NAME:Ljava/lang/String; = "Max-Forwards"


# virtual methods
.method public abstract blacklist decrementMaxForwards()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/header/TooManyHopsException;
        }
    .end annotation
.end method

.method public abstract blacklist getMaxForwards()I
.end method

.method public abstract blacklist hasReachedZero()Z
.end method

.method public abstract blacklist setMaxForwards(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method
