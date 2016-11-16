.class final Landroid/net/metrics/IpReachabilityEvent$Decoder;
.super Ljava/lang/Object;
.source "IpReachabilityEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/metrics/IpReachabilityEvent;
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
    .line 118
    new-array v0, v4, [Ljava/lang/Class;

    #@4
    const-class v1, Landroid/net/metrics/IpReachabilityEvent;

    #@6
    aput-object v1, v0, v3

    #@8
    .line 119
    const/4 v1, 0x3

    #@9
    new-array v1, v1, [Ljava/lang/String;

    #@b
    const-string/jumbo v2, "PROBE"

    #@e
    aput-object v2, v1, v3

    #@10
    const-string/jumbo v2, "PROVISIONING_"

    #@13
    aput-object v2, v1, v4

    #@15
    const-string/jumbo v2, "NUD_"

    #@18
    const/4 v3, 0x2

    #@19
    aput-object v2, v1, v3

    #@1b
    .line 118
    invoke-static {v0, v1}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;[Ljava/lang/String;)Landroid/util/SparseArray;

    #@1e
    move-result-object v0

    #@1f
    .line 117
    sput-object v0, Landroid/net/metrics/IpReachabilityEvent$Decoder;->constants:Landroid/util/SparseArray;

    #@21
    .line 116
    return-void
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
