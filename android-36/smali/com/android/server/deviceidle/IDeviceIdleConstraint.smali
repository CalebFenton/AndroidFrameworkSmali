.class public interface abstract Lcom/android/server/deviceidle/IDeviceIdleConstraint;
.super Ljava/lang/Object;
.source "IDeviceIdleConstraint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/deviceidle/IDeviceIdleConstraint$MinimumState;
    }
.end annotation


# static fields
.field public static final blacklist ACTIVE:I = 0x0

.field public static final blacklist SENSING_OR_ABOVE:I = 0x1


# virtual methods
.method public abstract blacklist startMonitoring()V
.end method

.method public abstract blacklist stopMonitoring()V
.end method
