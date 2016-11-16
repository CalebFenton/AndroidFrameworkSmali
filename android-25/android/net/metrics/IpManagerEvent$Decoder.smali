.class final Landroid/net/metrics/IpManagerEvent$Decoder;
.super Ljava/lang/Object;
.source "IpManagerEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/metrics/IpManagerEvent;
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
    .line 98
    new-array v0, v4, [Ljava/lang/Class;

    #@4
    const-class v1, Landroid/net/metrics/IpManagerEvent;

    #@6
    aput-object v1, v0, v3

    #@8
    const/4 v1, 0x2

    #@9
    new-array v1, v1, [Ljava/lang/String;

    #@b
    const-string/jumbo v2, "PROVISIONING_"

    #@e
    aput-object v2, v1, v3

    #@10
    const-string/jumbo v2, "COMPLETE_"

    #@13
    aput-object v2, v1, v4

    #@15
    .line 97
    invoke-static {v0, v1}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;[Ljava/lang/String;)Landroid/util/SparseArray;

    #@18
    move-result-object v0

    #@19
    sput-object v0, Landroid/net/metrics/IpManagerEvent$Decoder;->constants:Landroid/util/SparseArray;

    #@1b
    .line 96
    return-void
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
