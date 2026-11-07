.class public interface abstract Landroid/os/IIncidentAuthListener;
.super Ljava/lang/Object;
.source "IIncidentAuthListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IIncidentAuthListener$Stub;,
        Landroid/os/IIncidentAuthListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.os.IIncidentAuthListener"


# virtual methods
.method public abstract blacklist onReportApproved()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onReportDenied()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
