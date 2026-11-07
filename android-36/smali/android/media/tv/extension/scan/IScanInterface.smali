.class public interface abstract Landroid/media/tv/extension/scan/IScanInterface;
.super Ljava/lang/Object;
.source "IScanInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/scan/IScanInterface$Stub;,
        Landroid/media/tv/extension/scan/IScanInterface$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.tv.extension.scan.IScanInterface"


# virtual methods
.method public abstract blacklist createSession(ILjava/lang/String;Ljava/lang/String;Landroid/media/tv/extension/scan/IScanListener;Landroid/os/Bundle;)Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getParameters(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
