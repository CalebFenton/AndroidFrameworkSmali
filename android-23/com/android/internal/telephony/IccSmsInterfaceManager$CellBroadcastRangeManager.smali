.class Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;
.super Lcom/android/internal/telephony/IntRangeManager;
.source "IccSmsInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccSmsInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CellBroadcastRangeManager"
.end annotation


# instance fields
.field private mConfigList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;",
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
    .line 762
    iput-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #@2
    invoke-direct {p0}, Lcom/android/internal/telephony/IntRangeManager;-><init>()V

    #@5
    .line 764
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@a
    .line 763
    iput-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;->mConfigList:Ljava/util/ArrayList;

    #@c
    .line 762
    return-void
.end method


# virtual methods
.method protected addRange(IIZ)V
    .locals 7
    .param p1, "startId"    # I
    .param p2, "endId"    # I
    .param p3, "selected"    # Z

    #@0
    .prologue
    .line 782
    iget-object v6, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;->mConfigList:Ljava/util/ArrayList;

    #@2
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    #@4
    .line 783
    const/4 v3, 0x0

    #@5
    const/16 v4, 0xff

    #@7
    move v1, p1

    #@8
    move v2, p2

    #@9
    move v5, p3

    #@a
    .line 782
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;-><init>(IIIIZ)V

    #@d
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@10
    .line 781
    return-void
.end method

.method protected finishUpdate()Z
    .locals 3

    #@0
    .prologue
    .line 792
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;->mConfigList:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 793
    const/4 v1, 0x1

    #@9
    return v1

    #@a
    .line 796
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;->mConfigList:Ljava/util/ArrayList;

    #@c
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;->mConfigList:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@11
    move-result v2

    #@12
    new-array v2, v2, [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    #@14
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    #@1a
    .line 797
    .local v0, "configs":[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #@1c
    invoke-static {v1, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-wrap1(Lcom/android/internal/telephony/IccSmsInterfaceManager;[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)Z

    #@1f
    move-result v1

    #@20
    return v1
.end method

.method protected startUpdate()V
    .locals 1

    #@0
    .prologue
    .line 772
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;->mConfigList:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@5
    .line 771
    return-void
.end method
