.class public interface abstract Lgov/nist/javax/sip/header/ims/PAssociatedURIHeader;
.super Ljava/lang/Object;
.source "PAssociatedURIHeader.java"

# interfaces
.implements Ljavax/sip/header/HeaderAddress;
.implements Ljavax/sip/header/Parameters;
.implements Ljavax/sip/header/Header;


# static fields
.field public static final greylist NAME:Ljava/lang/String; = "P-Associated-URI"


# virtual methods
.method public abstract greylist getAssociatedURI()Ljavax/sip/address/URI;
.end method

.method public abstract greylist setAssociatedURI(Ljavax/sip/address/URI;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation
.end method
