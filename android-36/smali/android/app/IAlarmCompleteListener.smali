.class public interface abstract Landroid/app/IAlarmCompleteListener;
.super Ljava/lang/Object;
.source "IAlarmCompleteListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IAlarmCompleteListener$Stub;,
        Landroid/app/IAlarmCompleteListener$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o alarmComplete(Landroid/os/IBinder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
