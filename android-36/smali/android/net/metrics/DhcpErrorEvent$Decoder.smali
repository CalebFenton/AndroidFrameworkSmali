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
.field static final greylist-max-o constants:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 11

    .line 121
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/net/metrics/DhcpErrorEvent;

    aput-object v2, v0, v1

    const-string v9, "RECEIVE_"

    const-string v10, "PARSING_"

    const-string v3, "L2_"

    const-string v4, "L3_"

    const-string v5, "L4_"

    const-string v6, "BOOTP_"

    const-string v7, "DHCP_"

    const-string v8, "BUFFER_"

    filled-new-array/range {v3 .. v10}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;[Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    sput-object v0, Landroid/net/metrics/DhcpErrorEvent$Decoder;->constants:Landroid/util/SparseArray;

    return-void
.end method

.method constructor greylist-max-o <init>()V
    .registers 1

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
