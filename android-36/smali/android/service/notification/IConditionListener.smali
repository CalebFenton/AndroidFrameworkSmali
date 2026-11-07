.class public interface abstract Landroid/service/notification/IConditionListener;
.super Ljava/lang/Object;
.source "IConditionListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/IConditionListener$Stub;,
        Landroid/service/notification/IConditionListener$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o onConditionsReceived([Landroid/service/notification/Condition;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
