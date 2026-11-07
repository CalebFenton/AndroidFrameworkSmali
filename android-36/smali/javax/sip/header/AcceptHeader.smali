.class public interface abstract Ljavax/sip/header/AcceptHeader;
.super Ljava/lang/Object;
.source "AcceptHeader.java"

# interfaces
.implements Ljavax/sip/header/Header;
.implements Ljavax/sip/header/MediaType;
.implements Ljavax/sip/header/Parameters;


# static fields
.field public static final blacklist NAME:Ljava/lang/String; = "Accept"


# virtual methods
.method public abstract blacklist allowsAllContentSubTypes()Z
.end method

.method public abstract blacklist allowsAllContentTypes()Z
.end method

.method public abstract blacklist getQValue()F
.end method

.method public abstract blacklist hasQValue()Z
.end method

.method public abstract blacklist removeQValue()V
.end method

.method public abstract blacklist setQValue(F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method
