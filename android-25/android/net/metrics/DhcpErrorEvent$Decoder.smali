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
    .line 123
    new-array v0, v4, [Ljava/lang/Class;

    #@4
    const-class v1, Landroid/net/metrics/DhcpErrorEvent;

    #@6
    aput-object v1, v0, v3

    #@8
    .line 124
    const/16 v1, 0x8

    #@a
    new-array v1, v1, [Ljava/lang/String;

    #@c
    const-string/jumbo v2, "L2_"

    #@f
    aput-object v2, v1, v3

    #@11
    const-string/jumbo v2, "L3_"

    #@14
    aput-object v2, v1, v4

    #@16
    const-string/jumbo v2, "L4_"

    #@19
    const/4 v3, 0x2

    #@1a
    aput-object v2, v1, v3

    #@1c
    const-string/jumbo v2, "BOOTP_"

    #@1f
    const/4 v3, 0x3

    #@20
    aput-object v2, v1, v3

    #@22
    const-string/jumbo v2, "DHCP_"

    #@25
    const/4 v3, 0x4

    #@26
    aput-object v2, v1, v3

    #@28
    const-string/jumbo v2, "BUFFER_"

    #@2b
    const/4 v3, 0x5

    #@2c
    aput-object v2, v1, v3

    #@2e
    const-string/jumbo v2, "RECEIVE_"

    #@31
    const/4 v3, 0x6

    #@32
    aput-object v2, v1, v3

    #@34
    .line 125
    const-string/jumbo v2, "PARSING_"

    #@37
    const/4 v3, 0x7

    #@38
    aput-object v2, v1, v3

    #@3a
    .line 122
    invoke-static {v0, v1}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;[Ljava/lang/String;)Landroid/util/SparseArray;

    #@3d
    move-result-object v0

    #@3e
    sput-object v0, Landroid/net/metrics/DhcpErrorEvent$Decoder;->constants:Landroid/util/SparseArray;

    #@40
    .line 121
    return-void
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
