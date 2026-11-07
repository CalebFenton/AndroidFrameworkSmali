.class public interface abstract Ljavax/sip/header/MimeVersionHeader;
.super Ljava/lang/Object;
.source "MimeVersionHeader.java"

# interfaces
.implements Ljavax/sip/header/Header;


# static fields
.field public static final blacklist NAME:Ljava/lang/String; = "MIME-Version"


# virtual methods
.method public abstract blacklist getMajorVersion()I
.end method

.method public abstract blacklist getMinorVersion()I
.end method

.method public abstract blacklist setMajorVersion(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method

.method public abstract blacklist setMinorVersion(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method
