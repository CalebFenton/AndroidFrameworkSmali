.class public abstract Landroid/service/euicc/EuiccService$OtaStatusChangedCallback;
.super Ljava/lang/Object;
.source "EuiccService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/euicc/EuiccService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OtaStatusChangedCallback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract whitelist onOtaStatusChanged(I)V
.end method
