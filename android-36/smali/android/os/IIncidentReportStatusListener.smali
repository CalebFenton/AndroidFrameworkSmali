.class public interface abstract Landroid/os/IIncidentReportStatusListener;
.super Ljava/lang/Object;
.source "IIncidentReportStatusListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IIncidentReportStatusListener$Stub;,
        Landroid/os/IIncidentReportStatusListener$Default;
    }
.end annotation


# static fields
.field public static final greylist-max-o STATUS_FINISHED:I = 0x2

.field public static final greylist-max-o STATUS_STARTING:I = 0x1


# virtual methods
.method public abstract greylist-max-o onReportFailed()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o onReportFinished()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o onReportSectionStatus(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o onReportStarted()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
