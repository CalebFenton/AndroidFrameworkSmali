.class public abstract Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;
.super Ljava/lang/Object;
.source "AppStandbyInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/AppStandbyInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AppIdleStateChangeListener"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist onAppIdleStateChanged(Ljava/lang/String;IZII)V
.end method

.method public blacklist onParoleStateChanged(Z)V
    .registers 2
    .param p1, "isParoleOn"    # Z

    .line 53
    return-void
.end method

.method public blacklist onUserInteractionStarted(Ljava/lang/String;I)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 61
    return-void
.end method

.method public blacklist triggerTemporaryQuotaBump(Ljava/lang/String;I)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 68
    return-void
.end method
