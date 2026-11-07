.class public interface abstract Landroid/app/admin/IAuditLogEventsCallback;
.super Ljava/lang/Object;
.source "IAuditLogEventsCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/IAuditLogEventsCallback$Stub;,
        Landroid/app/admin/IAuditLogEventsCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.app.admin.IAuditLogEventsCallback"


# virtual methods
.method public abstract blacklist onNewAuditLogEvents(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/admin/SecurityLog$SecurityEvent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
