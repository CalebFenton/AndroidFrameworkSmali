.class final Landroid/telephony/data/DataService$SetInitialAttachApnRequest;
.super Ljava/lang/Object;
.source "DataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/DataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SetInitialAttachApnRequest"
.end annotation


# instance fields
.field public final greylist-max-o callback:Landroid/telephony/data/IDataServiceCallback;

.field public final greylist-max-o dataProfile:Landroid/telephony/data/DataProfile;

.field public final greylist-max-o isRoaming:Z


# direct methods
.method constructor greylist-max-o <init>(Landroid/telephony/data/DataProfile;ZLandroid/telephony/data/IDataServiceCallback;)V
    .registers 4
    .param p1, "dataProfile"    # Landroid/telephony/data/DataProfile;
    .param p2, "isRoaming"    # Z
    .param p3, "callback"    # Landroid/telephony/data/IDataServiceCallback;

    .line 529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 530
    iput-object p1, p0, Landroid/telephony/data/DataService$SetInitialAttachApnRequest;->dataProfile:Landroid/telephony/data/DataProfile;

    .line 531
    iput-boolean p2, p0, Landroid/telephony/data/DataService$SetInitialAttachApnRequest;->isRoaming:Z

    .line 532
    iput-object p3, p0, Landroid/telephony/data/DataService$SetInitialAttachApnRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    .line 533
    return-void
.end method
