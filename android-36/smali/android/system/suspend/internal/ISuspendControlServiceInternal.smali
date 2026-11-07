.class public interface abstract Landroid/system/suspend/internal/ISuspendControlServiceInternal;
.super Ljava/lang/Object;
.source "ISuspendControlServiceInternal.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/system/suspend/internal/ISuspendControlServiceInternal$Stub;,
        Landroid/system/suspend/internal/ISuspendControlServiceInternal$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.system.suspend.internal.ISuspendControlServiceInternal"

.field public static final blacklist WAKE_LOCK_INFO_ACTIVE_COUNT:I = 0x1

.field public static final blacklist WAKE_LOCK_INFO_ACTIVE_TIME:I = 0x20

.field public static final blacklist WAKE_LOCK_INFO_ALL_FIELDS:I = 0xfff

.field public static final blacklist WAKE_LOCK_INFO_EVENT_COUNT:I = 0x100

.field public static final blacklist WAKE_LOCK_INFO_EXPIRE_COUNT:I = 0x200

.field public static final blacklist WAKE_LOCK_INFO_IS_ACTIVE:I = 0x10

.field public static final blacklist WAKE_LOCK_INFO_IS_KERNEL_WAKELOCK:I = 0x40

.field public static final blacklist WAKE_LOCK_INFO_LAST_CHANGE:I = 0x2

.field public static final blacklist WAKE_LOCK_INFO_MAX_TIME:I = 0x4

.field public static final blacklist WAKE_LOCK_INFO_PID:I = 0x80

.field public static final blacklist WAKE_LOCK_INFO_PREVENT_SUSPEND_TIME:I = 0x400

.field public static final blacklist WAKE_LOCK_INFO_TOTAL_TIME:I = 0x8

.field public static final blacklist WAKE_LOCK_INFO_WAKEUP_COUNT:I = 0x800


# virtual methods
.method public abstract blacklist enableAutosuspend(Landroid/os/IBinder;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist forceSuspend()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getSuspendStats()Landroid/system/suspend/internal/SuspendInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getWakeLockStats()[Landroid/system/suspend/internal/WakeLockInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getWakeLockStatsFiltered(I)[Landroid/system/suspend/internal/WakeLockInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getWakeupStats()[Landroid/system/suspend/internal/WakeupInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
