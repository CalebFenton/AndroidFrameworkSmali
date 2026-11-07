.class public interface abstract Landroid/media/tv/extension/servicedb/IServiceList;
.super Ljava/lang/Object;
.source "IServiceList.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/servicedb/IServiceList$Stub;,
        Landroid/media/tv/extension/servicedb/IServiceList$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.tv.extension.servicedb.IServiceList"


# virtual methods
.method public abstract blacklist getServiceListIds()[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getServiceListInfo(Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
