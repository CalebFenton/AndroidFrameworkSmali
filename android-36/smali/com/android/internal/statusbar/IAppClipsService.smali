.class public interface abstract Lcom/android/internal/statusbar/IAppClipsService;
.super Ljava/lang/Object;
.source "IAppClipsService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/statusbar/IAppClipsService$Stub;,
        Lcom/android/internal/statusbar/IAppClipsService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.statusbar.IAppClipsService"


# virtual methods
.method public abstract blacklist canLaunchCaptureContentActivityForNote(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist canLaunchCaptureContentActivityForNoteInternal(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
