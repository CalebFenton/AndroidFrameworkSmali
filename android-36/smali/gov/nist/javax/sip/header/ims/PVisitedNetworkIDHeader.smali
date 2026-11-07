.class public interface abstract Lgov/nist/javax/sip/header/ims/PVisitedNetworkIDHeader;
.super Ljava/lang/Object;
.source "PVisitedNetworkIDHeader.java"

# interfaces
.implements Ljavax/sip/header/Parameters;
.implements Ljavax/sip/header/Header;


# static fields
.field public static final greylist NAME:Ljava/lang/String; = "P-Visited-Network-ID"


# virtual methods
.method public abstract greylist getVisitedNetworkID()Ljava/lang/String;
.end method

.method public abstract greylist setVisitedNetworkID(Lgov/nist/core/Token;)V
.end method

.method public abstract greylist setVisitedNetworkID(Ljava/lang/String;)V
.end method
