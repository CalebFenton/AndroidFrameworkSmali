.class public interface abstract Landroid/media/tv/extension/event/IEventMonitorListener;
.super Ljava/lang/Object;
.source "IEventMonitorListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/event/IEventMonitorListener$Stub;,
        Landroid/media/tv/extension/event/IEventMonitorListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.tv.extension.event.IEventMonitorListener"


# virtual methods
.method public abstract blacklist onInfoChanged(JLandroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
