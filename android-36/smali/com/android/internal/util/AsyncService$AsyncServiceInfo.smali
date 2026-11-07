.class public final Lcom/android/internal/util/AsyncService$AsyncServiceInfo;
.super Ljava/lang/Object;
.source "AsyncService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/AsyncService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AsyncServiceInfo"
.end annotation


# instance fields
.field public greylist-max-o mHandler:Landroid/os/Handler;

.field public greylist-max-o mRestartFlags:I


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
