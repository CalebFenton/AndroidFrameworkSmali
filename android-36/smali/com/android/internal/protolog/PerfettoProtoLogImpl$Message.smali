.class public Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;
.super Ljava/lang/Object;
.source "PerfettoProtoLogImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/protolog/PerfettoProtoLogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Message"
.end annotation


# instance fields
.field private final blacklist mMessageHash:Ljava/lang/Long;

.field private final blacklist mMessageMask:I

.field private final blacklist mMessageString:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmMessageHash(Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;)Ljava/lang/Long;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->mMessageHash:Ljava/lang/Long;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMessageString(Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->mMessageString:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetMessageMask(Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;)I
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->getMessageMask()I

    move-result p0

    return p0
.end method

.method private constructor blacklist <init>(JI)V
    .registers 5
    .param p1, "messageHash"    # J
    .param p3, "messageMask"    # I

    .line 834
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 835
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->mMessageHash:Ljava/lang/Long;

    .line 836
    iput p3, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->mMessageMask:I

    .line 837
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->mMessageString:Ljava/lang/String;

    .line 838
    return-void
.end method

.method synthetic constructor blacklist <init>(JILcom/android/internal/protolog/PerfettoProtoLogImpl-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;-><init>(JI)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "messageString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/protolog/common/InvalidFormatStringException;
        }
    .end annotation

    .line 840
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 841
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->mMessageHash:Ljava/lang/Long;

    .line 842
    invoke-static {p1}, Lcom/android/internal/protolog/common/LogDataType;->parseFormatString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 843
    .local v0, "argTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v0}, Lcom/android/internal/protolog/common/LogDataType;->logDataTypesToBitMask(Ljava/util/List;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->mMessageMask:I

    .line 844
    iput-object p1, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->mMessageString:Ljava/lang/String;

    .line 845
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/protolog/PerfettoProtoLogImpl-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist getMessageMask()I
    .registers 2

    .line 848
    iget v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->mMessageMask:I

    return v0
.end method


# virtual methods
.method protected blacklist getMessage()Ljava/lang/String;
    .registers 2

    .line 858
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->mMessageString:Ljava/lang/String;

    return-object v0
.end method

.method protected blacklist getMessage(Lcom/android/internal/protolog/ProtoLogViewerConfigReader;)Ljava/lang/String;
    .registers 4
    .param p1, "viewerConfigReader"    # Lcom/android/internal/protolog/ProtoLogViewerConfigReader;

    .line 863
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->mMessageString:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 864
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->mMessageString:Ljava/lang/String;

    return-object v0

    .line 867
    :cond_7
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->mMessageHash:Ljava/lang/Long;

    if-eqz v0, :cond_16

    .line 868
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->mMessageHash:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->getViewerString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 871
    :cond_16
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Both mMessageString and mMessageHash should never be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected blacklist getMessageHash()Ljava/lang/Long;
    .registers 2

    .line 853
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->mMessageHash:Ljava/lang/Long;

    return-object v0
.end method
