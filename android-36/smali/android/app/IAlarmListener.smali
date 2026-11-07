.class public interface abstract Landroid/app/IAlarmListener;
.super Ljava/lang/Object;
.source "IAlarmListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IAlarmListener$Stub;,
        Landroid/app/IAlarmListener$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o doAlarm(Landroid/app/IAlarmCompleteListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
