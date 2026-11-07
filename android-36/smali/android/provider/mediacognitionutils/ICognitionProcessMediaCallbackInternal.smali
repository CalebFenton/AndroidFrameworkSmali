.class public interface abstract Landroid/provider/mediacognitionutils/ICognitionProcessMediaCallbackInternal;
.super Ljava/lang/Object;
.source "ICognitionProcessMediaCallbackInternal.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/mediacognitionutils/ICognitionProcessMediaCallbackInternal$Stub;,
        Landroid/provider/mediacognitionutils/ICognitionProcessMediaCallbackInternal$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.provider.mediacognitionutils.ICognitionProcessMediaCallbackInternal"


# virtual methods
.method public abstract blacklist onProcessMediaFailure(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onProcessMediaSuccess([Landroid/database/CursorWindow;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
