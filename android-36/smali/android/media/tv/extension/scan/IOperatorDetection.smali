.class public interface abstract Landroid/media/tv/extension/scan/IOperatorDetection;
.super Ljava/lang/Object;
.source "IOperatorDetection.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/scan/IOperatorDetection$Stub;,
        Landroid/media/tv/extension/scan/IOperatorDetection$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.tv.extension.scan.IOperatorDetection"


# virtual methods
.method public abstract blacklist setListener(Landroid/media/tv/extension/scan/IOperatorDetectionListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setOperatorDetection(Landroid/os/Bundle;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
