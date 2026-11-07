.class public interface abstract Landroid/media/tv/extension/scan/ILcnConflictListener;
.super Ljava/lang/Object;
.source "ILcnConflictListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/scan/ILcnConflictListener$Stub;,
        Landroid/media/tv/extension/scan/ILcnConflictListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.tv.extension.scan.ILcnConflictListener"


# virtual methods
.method public abstract blacklist onDetectLcnConflict(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
