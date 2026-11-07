.class public interface abstract Landroid/os/IPowerStatsService;
.super Ljava/lang/Object;
.source "IPowerStatsService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IPowerStatsService$Stub;,
        Landroid/os/IPowerStatsService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.os.IPowerStatsService"

.field public static final blacklist KEY_ENERGY:Ljava/lang/String; = "energy"

.field public static final blacklist KEY_GRANULARITY:Ljava/lang/String; = "granularity"

.field public static final blacklist KEY_MONITORS:Ljava/lang/String; = "monitors"

.field public static final blacklist KEY_TIMESTAMPS:Ljava/lang/String; = "timestamps"

.field public static final blacklist RESULT_SUCCESS:I = 0x0

.field public static final blacklist RESULT_UNSUPPORTED_POWER_MONITOR:I = 0x1


# virtual methods
.method public abstract blacklist getPowerMonitorReadings([ILandroid/os/ResultReceiver;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getSupportedPowerMonitors(Landroid/os/ResultReceiver;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
