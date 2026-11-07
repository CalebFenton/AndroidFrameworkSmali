.class public Lcom/android/internal/telephony/d2d/MessageTypeAndValueHelper;
.super Ljava/lang/Object;
.source "MessageTypeAndValueHelper.java"


# static fields
.field public static final blacklist BATTERY_STATE_TO_DC_BATTERY_STATE:Lcom/android/internal/telephony/BiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/telephony/BiMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist CODEC_TO_DC_CODEC:Lcom/android/internal/telephony/BiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/telephony/BiMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist COVERAGE_TO_DC_COVERAGE:Lcom/android/internal/telephony/BiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/telephony/BiMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist MSG_TYPE_TO_DC_MSG_TYPE:Lcom/android/internal/telephony/BiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/telephony/BiMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist RAT_TYPE_TO_DC_NETWORK_TYPE:Lcom/android/internal/telephony/BiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/telephony/BiMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 9

    .line 39
    new-instance v0, Lcom/android/internal/telephony/BiMap;

    invoke-direct {v0}, Lcom/android/internal/telephony/BiMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/d2d/MessageTypeAndValueHelper;->MSG_TYPE_TO_DC_MSG_TYPE:Lcom/android/internal/telephony/BiMap;

    .line 46
    new-instance v1, Lcom/android/internal/telephony/BiMap;

    invoke-direct {v1}, Lcom/android/internal/telephony/BiMap;-><init>()V

    sput-object v1, Lcom/android/internal/telephony/d2d/MessageTypeAndValueHelper;->RAT_TYPE_TO_DC_NETWORK_TYPE:Lcom/android/internal/telephony/BiMap;

    .line 52
    new-instance v2, Lcom/android/internal/telephony/BiMap;

    invoke-direct {v2}, Lcom/android/internal/telephony/BiMap;-><init>()V

    sput-object v2, Lcom/android/internal/telephony/d2d/MessageTypeAndValueHelper;->CODEC_TO_DC_CODEC:Lcom/android/internal/telephony/BiMap;

    .line 58
    new-instance v3, Lcom/android/internal/telephony/BiMap;

    invoke-direct {v3}, Lcom/android/internal/telephony/BiMap;-><init>()V

    sput-object v3, Lcom/android/internal/telephony/d2d/MessageTypeAndValueHelper;->BATTERY_STATE_TO_DC_BATTERY_STATE:Lcom/android/internal/telephony/BiMap;

    .line 64
    new-instance v4, Lcom/android/internal/telephony/BiMap;

    invoke-direct {v4}, Lcom/android/internal/telephony/BiMap;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/d2d/MessageTypeAndValueHelper;->COVERAGE_TO_DC_COVERAGE:Lcom/android/internal/telephony/BiMap;

    const/4 v5, 0x1

    .line 67
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5, v5}, Lcom/android/internal/telephony/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    const/4 v6, 0x2

    .line 69
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6, v6}, Lcom/android/internal/telephony/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    const/4 v7, 0x3

    .line 71
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7, v7}, Lcom/android/internal/telephony/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    const/4 v8, 0x4

    .line 73
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8, v8}, Lcom/android/internal/telephony/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    const/16 v0, 0xd

    .line 77
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 76
    invoke-virtual {v1, v5, v0}, Lcom/android/internal/telephony/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    const/16 v0, 0x12

    .line 79
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 78
    invoke-virtual {v1, v6, v0}, Lcom/android/internal/telephony/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    const/16 v8, 0x14

    .line 81
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 80
    invoke-virtual {v1, v7, v8}, Lcom/android/internal/telephony/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 83
    invoke-virtual {v2, v5, v0}, Lcom/android/internal/telephony/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    invoke-virtual {v2, v6, v6}, Lcom/android/internal/telephony/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 85
    invoke-virtual {v2, v7, v5}, Lcom/android/internal/telephony/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 87
    invoke-virtual {v3, v5, v5}, Lcom/android/internal/telephony/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 89
    invoke-virtual {v3, v6, v6}, Lcom/android/internal/telephony/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    invoke-virtual {v3, v7, v7}, Lcom/android/internal/telephony/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 94
    invoke-virtual {v4, v5, v5}, Lcom/android/internal/telephony/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    invoke-virtual {v4, v6, v6}, Lcom/android/internal/telephony/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
