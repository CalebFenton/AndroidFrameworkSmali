.class public interface abstract Landroid/media/IMediaSession2Service;
.super Ljava/lang/Object;
.source "IMediaSession2Service.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IMediaSession2Service$Stub;,
        Landroid/media/IMediaSession2Service$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.IMediaSession2Service"


# virtual methods
.method public abstract blacklist connect(Landroid/media/Controller2Link;ILandroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
