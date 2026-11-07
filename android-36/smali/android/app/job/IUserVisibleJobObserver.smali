.class public interface abstract Landroid/app/job/IUserVisibleJobObserver;
.super Ljava/lang/Object;
.source "IUserVisibleJobObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/job/IUserVisibleJobObserver$Stub;,
        Landroid/app/job/IUserVisibleJobObserver$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.app.job.IUserVisibleJobObserver"


# virtual methods
.method public abstract blacklist onUserVisibleJobStateChanged(Landroid/app/job/UserVisibleJobSummary;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
