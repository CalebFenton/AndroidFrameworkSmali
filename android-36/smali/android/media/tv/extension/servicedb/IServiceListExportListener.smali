.class public interface abstract Landroid/media/tv/extension/servicedb/IServiceListExportListener;
.super Ljava/lang/Object;
.source "IServiceListExportListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/servicedb/IServiceListExportListener$Stub;,
        Landroid/media/tv/extension/servicedb/IServiceListExportListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.tv.extension.servicedb.IServiceListExportListener"


# virtual methods
.method public abstract blacklist onExported(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
