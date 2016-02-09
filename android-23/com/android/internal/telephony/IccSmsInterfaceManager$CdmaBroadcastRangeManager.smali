.class Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;
.super Lcom/android/internal/telephony/IntRangeManager;
.source "IccSmsInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccSmsInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CdmaBroadcastRangeManager"
.end annotation


# instance fields
.field private mConfigList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/IccSmsInterfaceManager;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #@0
    .prologue
    .line 802
    iput-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #@2
    invoke-direct {p0}, Lcom/android/internal/telephony/IntRangeManager;-><init>()V

    #@5
    .line 804
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@a
    .line 803
    iput-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;->mConfigList:Ljava/util/ArrayList;

    #@c
    .line 802
    return-void
.end method


# virtual methods
.method protected addRange(IIZ)V
    .locals 3
    .param p1, "startId"    # I
    .param p2, "endId"    # I
    .param p3, "selected"    # Z

    #@0
    .prologue
    .line 822
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;->mConfigList:Ljava/util/ArrayList;

    #@2
    new-instance v1, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;

    #@4
    .line 823
    const/4 v2, 0x1

    #@5
    .line 822
    invoke-direct {v1, p1, p2, v2, p3}, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;-><init>(IIIZ)V

    #@8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@b
    .line 821
    return-void
.end method

.method protected finishUpdate()Z
    .locals 3

    #@0
    .prologue
    .line 832
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;->mConfigList:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 833
    const/4 v1, 0x1

    #@9
    return v1

    #@a
    .line 836
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;->mConfigList:Ljava/util/ArrayList;

    #@c
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;->mConfigList:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@11
    move-result v2

    #@12
    new-array v2, v2, [Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;

    #@14
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, [Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;

    #@1a
    .line 837
    .local v0, "configs":[Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #@1c
    invoke-static {v1, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-wrap0(Lcom/android/internal/telephony/IccSmsInterfaceManager;[Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;)Z

    #@1f
    move-result v1

    #@20
    return v1
.end method

.method protected startUpdate()V
    .locals 1

    #@0
    .prologue
    .line 812
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;->mConfigList:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@5
    .line 811
    return-void
.end method
