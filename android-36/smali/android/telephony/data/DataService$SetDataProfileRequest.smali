.class final Landroid/telephony/data/DataService$SetDataProfileRequest;
.super Ljava/lang/Object;
.source "DataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/DataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SetDataProfileRequest"
.end annotation


# instance fields
.field public final greylist-max-o callback:Landroid/telephony/data/IDataServiceCallback;

.field public final greylist-max-o dps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/data/DataProfile;",
            ">;"
        }
    .end annotation
.end field

.field public final greylist-max-o isRoaming:Z


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/List;ZLandroid/telephony/data/IDataServiceCallback;)V
    .registers 4
    .param p2, "isRoaming"    # Z
    .param p3, "callback"    # Landroid/telephony/data/IDataServiceCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/data/DataProfile;",
            ">;Z",
            "Landroid/telephony/data/IDataServiceCallback;",
            ")V"
        }
    .end annotation

    .line 541
    .local p1, "dps":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/DataProfile;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 542
    iput-object p1, p0, Landroid/telephony/data/DataService$SetDataProfileRequest;->dps:Ljava/util/List;

    .line 543
    iput-boolean p2, p0, Landroid/telephony/data/DataService$SetDataProfileRequest;->isRoaming:Z

    .line 544
    iput-object p3, p0, Landroid/telephony/data/DataService$SetDataProfileRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    .line 545
    return-void
.end method
