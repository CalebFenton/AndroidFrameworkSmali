.class final Landroid/net/metrics/DhcpErrorEvent$Decoder;
.super Ljava/lang/Object;
.source "DhcpErrorEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/metrics/DhcpErrorEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Decoder"
.end annotation


# static fields
.field static final constants:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 117
    new-array v0, v4, [Ljava/lang/Class;

    #@4
    const-class v1, Landroid/net/metrics/DhcpErrorEvent;

    #@6
    aput-object v1, v0, v3

    #@8
    .line 118
    const/4 v1, 0x7

    #@9
    new-array v1, v1, [Ljava/lang/String;

    #@b
    const-string/jumbo v2, "L2_"

    #@e
    aput-object v2, v1, v3

    #@10
    const-string/jumbo v2, "L3_"

    #@13
    aput-object v2, v1, v4

    #@15
    const-string/jumbo v2, "L4_"

    #@18
    const/4 v3, 0x2

    #@19
    aput-object v2, v1, v3

    #@1b
    const-string/jumbo v2, "BOOTP_"

    #@1e
    const/4 v3, 0x3

    #@1f
    aput-object v2, v1, v3

    #@21
    const-string/jumbo v2, "DHCP_"

    #@24
    const/4 v3, 0x4

    #@25
    aput-object v2, v1, v3

    #@27
    const-string/jumbo v2, "BUFFER_"

    #@2a
    const/4 v3, 0x5

    #@2b
    aput-object v2, v1, v3

    #@2d
    const-string/jumbo v2, "RECEIVE_"

    #@30
    const/4 v3, 0x6

    #@31
    aput-object v2, v1, v3

    #@33
    .line 117
    invoke-static {v0, v1}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;[Ljava/lang/String;)Landroid/util/SparseArray;

    #@36
    move-result-object v0

    #@37
    .line 116
    sput-object v0, Landroid/net/metrics/DhcpErrorEvent$Decoder;->constants:Landroid/util/SparseArray;

    #@39
    .line 115
    return-void
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
