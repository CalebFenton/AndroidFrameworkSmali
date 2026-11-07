.class Lcom/android/internal/telephony/uicc/IccRecords$SmssRecord;
.super Ljava/lang/Object;
.source "IccRecords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/IccRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SmssRecord"
.end annotation


# instance fields
.field private blacklist mMsg:Landroid/os/Message;

.field private blacklist mSmss:[B


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetMessage(Lcom/android/internal/telephony/uicc/IccRecords$SmssRecord;)Landroid/os/Message;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccRecords$SmssRecord;->getMessage()Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetSmssValue(Lcom/android/internal/telephony/uicc/IccRecords$SmssRecord;)[B
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccRecords$SmssRecord;->getSmssValue()[B

    move-result-object p0

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/os/Message;[B)V
    .registers 3

    .line 1685
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1686
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords$SmssRecord;->mMsg:Landroid/os/Message;

    .line 1687
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/IccRecords$SmssRecord;->mSmss:[B

    return-void
.end method

.method private blacklist getMessage()Landroid/os/Message;
    .registers 1

    .line 1695
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords$SmssRecord;->mMsg:Landroid/os/Message;

    return-object p0
.end method

.method private blacklist getSmssValue()[B
    .registers 1

    .line 1691
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords$SmssRecord;->mSmss:[B

    return-object p0
.end method
