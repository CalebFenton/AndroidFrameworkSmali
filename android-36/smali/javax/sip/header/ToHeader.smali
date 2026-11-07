.class public interface abstract Ljavax/sip/header/ToHeader;
.super Ljava/lang/Object;
.source "ToHeader.java"

# interfaces
.implements Ljavax/sip/header/HeaderAddress;
.implements Ljavax/sip/header/Header;
.implements Ljavax/sip/header/Parameters;


# static fields
.field public static final blacklist NAME:Ljava/lang/String; = "To"


# virtual methods
.method public abstract blacklist getDisplayName()Ljava/lang/String;
.end method

.method public abstract blacklist getTag()Ljava/lang/String;
.end method

.method public abstract blacklist getUserAtHostPort()Ljava/lang/String;
.end method

.method public abstract blacklist hasTag()Z
.end method

.method public abstract blacklist removeTag()V
.end method

.method public abstract blacklist setTag(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method
