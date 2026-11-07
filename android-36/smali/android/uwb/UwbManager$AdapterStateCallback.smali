.class public interface abstract Landroid/uwb/UwbManager$AdapterStateCallback;
.super Ljava/lang/Object;
.source "UwbManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/uwb/UwbManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AdapterStateCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/uwb/UwbManager$AdapterStateCallback$State;,
        Landroid/uwb/UwbManager$AdapterStateCallback$StateChangedReason;
    }
.end annotation


# static fields
.field public static final whitelist STATE_CHANGED_REASON_ALL_SESSIONS_CLOSED:I = 0x1

.field public static final whitelist STATE_CHANGED_REASON_ERROR_UNKNOWN:I = 0x4

.field public static final whitelist STATE_CHANGED_REASON_SESSION_STARTED:I = 0x0

.field public static final whitelist STATE_CHANGED_REASON_SYSTEM_BOOT:I = 0x3

.field public static final whitelist STATE_CHANGED_REASON_SYSTEM_POLICY:I = 0x2

.field public static final whitelist STATE_CHANGED_REASON_SYSTEM_REGULATION:I = 0x5

.field public static final whitelist STATE_DISABLED:I = 0x0

.field public static final whitelist STATE_ENABLED_ACTIVE:I = 0x2

.field public static final whitelist STATE_ENABLED_HW_IDLE:I = 0x3

.field public static final whitelist STATE_ENABLED_INACTIVE:I = 0x1


# virtual methods
.method public abstract whitelist onStateChanged(II)V
.end method
