.class public interface abstract Ljavax/sip/header/ContactHeader;
.super Ljava/lang/Object;
.source "ContactHeader.java"

# interfaces
.implements Ljavax/sip/header/HeaderAddress;
.implements Ljavax/sip/header/Header;
.implements Ljavax/sip/header/Parameters;


# static fields
.field public static final blacklist NAME:Ljava/lang/String; = "Contact"


# virtual methods
.method public abstract blacklist getExpires()I
.end method

.method public abstract blacklist getQValue()F
.end method

.method public abstract blacklist isWildCard()Z
.end method

.method public abstract blacklist setExpires(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method

.method public abstract blacklist setQValue(F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method

.method public abstract blacklist setWildCard()V
.end method

.method public abstract blacklist setWildCardFlag(Z)V
.end method
