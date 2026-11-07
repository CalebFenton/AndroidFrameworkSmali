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
.field private blacklist mConfigList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/IccSmsInterfaceManager;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1109
    iput-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-direct {p0}, Lcom/android/internal/telephony/IntRangeManager;-><init>()V

    .line 1110
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;->mConfigList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected blacklist addRange(IIZ)V
    .registers 10

    .line 1129
    iget-object p0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;->mConfigList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    const/4 v3, 0x0

    const/16 v4, 0xff

    move v1, p1

    move v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;-><init>(IIIIZ)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected blacklist finishUpdate()Z
    .registers 3

    .line 1139
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;->mConfigList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x1

    return p0

    .line 1142
    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;->mConfigList:Ljava/util/ArrayList;

    .line 1143
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    .line 1144
    iget-object p0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-static {p0, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-$$Nest$msetCellBroadcastConfig(Lcom/android/internal/telephony/IccSmsInterfaceManager;[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)Z

    move-result p0

    return p0
.end method

.method protected blacklist startUpdate()V
    .registers 1

    .line 1119
    iget-object p0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;->mConfigList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
