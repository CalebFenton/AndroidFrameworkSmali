.class final Lcom/android/internal/telephony/satellite/PointingAppController$DatagramTransferStateHandlerRequest;
.super Ljava/lang/Object;
.source "PointingAppController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/satellite/PointingAppController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DatagramTransferStateHandlerRequest"
.end annotation


# instance fields
.field public blacklist datagramTransferState:I

.field public blacklist datagramType:I

.field public blacklist errorCode:I

.field public blacklist pendingCount:I


# direct methods
.method constructor blacklist <init>(IIII)V
    .registers 5

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput p1, p0, Lcom/android/internal/telephony/satellite/PointingAppController$DatagramTransferStateHandlerRequest;->datagramType:I

    .line 182
    iput p2, p0, Lcom/android/internal/telephony/satellite/PointingAppController$DatagramTransferStateHandlerRequest;->datagramTransferState:I

    .line 183
    iput p3, p0, Lcom/android/internal/telephony/satellite/PointingAppController$DatagramTransferStateHandlerRequest;->pendingCount:I

    .line 184
    iput p4, p0, Lcom/android/internal/telephony/satellite/PointingAppController$DatagramTransferStateHandlerRequest;->errorCode:I

    return-void
.end method
