.class final Landroid/telephony/data/DataService$DeactivateDataCallRequest;
.super Ljava/lang/Object;
.source "DataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/DataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DeactivateDataCallRequest"
.end annotation


# instance fields
.field public final greylist-max-o callback:Landroid/telephony/data/IDataServiceCallback;

.field public final greylist-max-o cid:I

.field public final greylist-max-o reason:I


# direct methods
.method constructor greylist-max-o <init>(IILandroid/telephony/data/IDataServiceCallback;)V
    .registers 4
    .param p1, "cid"    # I
    .param p2, "reason"    # I
    .param p3, "callback"    # Landroid/telephony/data/IDataServiceCallback;

    .line 517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 518
    iput p1, p0, Landroid/telephony/data/DataService$DeactivateDataCallRequest;->cid:I

    .line 519
    iput p2, p0, Landroid/telephony/data/DataService$DeactivateDataCallRequest;->reason:I

    .line 520
    iput-object p3, p0, Landroid/telephony/data/DataService$DeactivateDataCallRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    .line 521
    return-void
.end method
