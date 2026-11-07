.class public interface abstract Landroid/scheduling/IRequestRebootReadinessStatusListener;
.super Ljava/lang/Object;
.source "IRequestRebootReadinessStatusListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/scheduling/IRequestRebootReadinessStatusListener$Stub;,
        Landroid/scheduling/IRequestRebootReadinessStatusListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.scheduling.IRequestRebootReadinessStatusListener"


# virtual methods
.method public abstract blacklist onRequestRebootReadinessStatus(Landroid/os/RemoteCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
