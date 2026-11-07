.class public interface abstract Landroid/media/tv/extension/servicedb/IServiceListEditListener;
.super Ljava/lang/Object;
.source "IServiceListEditListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/servicedb/IServiceListEditListener$Stub;,
        Landroid/media/tv/extension/servicedb/IServiceListEditListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.tv.extension.servicedb.IServiceListEditListener"


# virtual methods
.method public abstract blacklist onCompleted(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
