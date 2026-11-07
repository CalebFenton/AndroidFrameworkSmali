.class public interface abstract Landroid/print/IPrintSpoolerClient;
.super Ljava/lang/Object;
.source "IPrintSpoolerClient.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/IPrintSpoolerClient$Stub;,
        Landroid/print/IPrintSpoolerClient$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o onAllPrintJobsForServiceHandled(Landroid/content/ComponentName;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o onAllPrintJobsHandled()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o onPrintJobQueued(Landroid/print/PrintJobInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o onPrintJobStateChanged(Landroid/print/PrintJobInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
