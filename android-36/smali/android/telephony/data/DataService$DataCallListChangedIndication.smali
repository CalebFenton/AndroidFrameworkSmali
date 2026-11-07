.class final Landroid/telephony/data/DataService$DataCallListChangedIndication;
.super Ljava/lang/Object;
.source "DataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/DataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DataCallListChangedIndication"
.end annotation


# instance fields
.field public final greylist-max-o callback:Landroid/telephony/data/IDataServiceCallback;

.field public final greylist-max-o dataCallList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/data/DataCallResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/List;Landroid/telephony/data/IDataServiceCallback;)V
    .registers 3
    .param p2, "callback"    # Landroid/telephony/data/IDataServiceCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/data/DataCallResponse;",
            ">;",
            "Landroid/telephony/data/IDataServiceCallback;",
            ")V"
        }
    .end annotation

    .line 562
    .local p1, "dataCallList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/DataCallResponse;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 563
    iput-object p1, p0, Landroid/telephony/data/DataService$DataCallListChangedIndication;->dataCallList:Ljava/util/List;

    .line 564
    iput-object p2, p0, Landroid/telephony/data/DataService$DataCallListChangedIndication;->callback:Landroid/telephony/data/IDataServiceCallback;

    .line 565
    return-void
.end method
