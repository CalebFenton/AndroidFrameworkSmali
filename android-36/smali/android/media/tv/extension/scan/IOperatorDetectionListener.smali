.class public interface abstract Landroid/media/tv/extension/scan/IOperatorDetectionListener;
.super Ljava/lang/Object;
.source "IOperatorDetectionListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/scan/IOperatorDetectionListener$Stub;,
        Landroid/media/tv/extension/scan/IOperatorDetectionListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.tv.extension.scan.IOperatorDetectionListener"


# virtual methods
.method public abstract blacklist onDetectOperatorDetectionList([Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
