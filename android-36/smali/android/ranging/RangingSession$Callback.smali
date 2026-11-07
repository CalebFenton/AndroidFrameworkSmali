.class public interface abstract Landroid/ranging/RangingSession$Callback;
.super Ljava/lang/Object;
.source "RangingSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/ranging/RangingSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/ranging/RangingSession$Callback$Reason;
    }
.end annotation


# static fields
.field public static final whitelist REASON_LOCAL_REQUEST:I = 0x1

.field public static final whitelist REASON_NO_PEERS_FOUND:I = 0x5

.field public static final whitelist REASON_REMOTE_REQUEST:I = 0x2

.field public static final whitelist REASON_SYSTEM_POLICY:I = 0x4

.field public static final whitelist REASON_UNKNOWN:I = 0x0

.field public static final whitelist REASON_UNSUPPORTED:I = 0x3


# virtual methods
.method public abstract whitelist onClosed(I)V
.end method

.method public abstract whitelist onOpenFailed(I)V
.end method

.method public abstract whitelist onOpened()V
.end method

.method public abstract whitelist onResults(Landroid/ranging/RangingDevice;Landroid/ranging/RangingData;)V
.end method

.method public abstract whitelist onStarted(Landroid/ranging/RangingDevice;I)V
.end method

.method public abstract whitelist onStopped(Landroid/ranging/RangingDevice;I)V
.end method
