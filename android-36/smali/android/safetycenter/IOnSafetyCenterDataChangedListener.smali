.class public interface abstract Landroid/safetycenter/IOnSafetyCenterDataChangedListener;
.super Ljava/lang/Object;
.source "IOnSafetyCenterDataChangedListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/safetycenter/IOnSafetyCenterDataChangedListener$Stub;,
        Landroid/safetycenter/IOnSafetyCenterDataChangedListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.safetycenter.IOnSafetyCenterDataChangedListener"


# virtual methods
.method public abstract blacklist onError(Landroid/safetycenter/SafetyCenterErrorDetails;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onSafetyCenterDataChanged(Landroid/safetycenter/SafetyCenterData;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
