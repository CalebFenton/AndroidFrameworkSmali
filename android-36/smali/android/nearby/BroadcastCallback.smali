.class public interface abstract Landroid/nearby/BroadcastCallback;
.super Ljava/lang/Object;
.source "BroadcastCallback.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nearby/BroadcastCallback$BroadcastStatus;
    }
.end annotation


# static fields
.field public static final whitelist STATUS_FAILURE:I = 0x1

.field public static final whitelist STATUS_FAILURE_ALREADY_REGISTERED:I = 0x2

.field public static final whitelist STATUS_FAILURE_MISSING_PERMISSIONS:I = 0x4

.field public static final whitelist STATUS_FAILURE_SIZE_EXCEED_LIMIT:I = 0x3

.field public static final whitelist STATUS_OK:I


# virtual methods
.method public abstract whitelist onStatusChanged(I)V
.end method
