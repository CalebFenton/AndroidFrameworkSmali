.class public abstract Lcom/android/internal/telephony/data/AutoDataSwitchController$AutoDataSwitchControllerCallback;
.super Ljava/lang/Object;
.source "AutoDataSwitchController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/AutoDataSwitchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AutoDataSwitchControllerCallback"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist onRequireCancelAnyPendingAutoSwitchValidation()V
.end method

.method public abstract blacklist onRequireImmediatelySwitchToPhone(II)V
.end method

.method public abstract blacklist onRequireValidation(IZ)V
.end method
