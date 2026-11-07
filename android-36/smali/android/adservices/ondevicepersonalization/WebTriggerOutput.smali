.class public final Landroid/adservices/ondevicepersonalization/WebTriggerOutput;
.super Ljava/lang/Object;
.source "WebTriggerOutput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/ondevicepersonalization/WebTriggerOutput$Builder;
    }
.end annotation


# instance fields
.field private blacklist mEventLogRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/adservices/ondevicepersonalization/EventLogRecord;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRequestLogRecord:Landroid/adservices/ondevicepersonalization/RequestLogRecord;


# direct methods
.method constructor blacklist <init>(Landroid/adservices/ondevicepersonalization/RequestLogRecord;Ljava/util/List;)V
    .registers 6
    .param p1, "requestLogRecord"    # Landroid/adservices/ondevicepersonalization/RequestLogRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/adservices/ondevicepersonalization/RequestLogRecord;",
            "Ljava/util/List<",
            "Landroid/adservices/ondevicepersonalization/EventLogRecord;",
            ">;)V"
        }
    .end annotation

    .line 75
    .local p2, "eventLogRecords":Ljava/util/List;, "Ljava/util/List<Landroid/adservices/ondevicepersonalization/EventLogRecord;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/WebTriggerOutput;->mRequestLogRecord:Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    .line 54
    nop

    .line 55
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/adservices/ondevicepersonalization/WebTriggerOutput;->mEventLogRecords:Ljava/util/List;

    .line 76
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/WebTriggerOutput;->mRequestLogRecord:Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    .line 77
    iput-object p2, p0, Landroid/adservices/ondevicepersonalization/WebTriggerOutput;->mEventLogRecords:Ljava/util/List;

    .line 78
    const-class v1, Landroid/annotation/NonNull;

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/WebTriggerOutput;->mEventLogRecords:Ljava/util/List;

    invoke-static {v1, v0, v2}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 82
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 221
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 115
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 116
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2c

    .line 118
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/adservices/ondevicepersonalization/WebTriggerOutput;

    .line 120
    .local v2, "that":Landroid/adservices/ondevicepersonalization/WebTriggerOutput;
    iget-object v3, p0, Landroid/adservices/ondevicepersonalization/WebTriggerOutput;->mRequestLogRecord:Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    iget-object v4, v2, Landroid/adservices/ondevicepersonalization/WebTriggerOutput;->mRequestLogRecord:Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    .line 121
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    iget-object v3, p0, Landroid/adservices/ondevicepersonalization/WebTriggerOutput;->mEventLogRecords:Ljava/util/List;

    iget-object v4, v2, Landroid/adservices/ondevicepersonalization/WebTriggerOutput;->mEventLogRecords:Ljava/util/List;

    .line 122
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_2b

    :cond_2a
    move v0, v1

    .line 120
    :goto_2b
    return v0

    .line 116
    .end local v2    # "that":Landroid/adservices/ondevicepersonalization/WebTriggerOutput;
    :cond_2c
    :goto_2c
    return v1
.end method

.method public whitelist getEventLogRecords()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/adservices/ondevicepersonalization/EventLogRecord;",
            ">;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/WebTriggerOutput;->mEventLogRecords:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getRequestLogRecord()Landroid/adservices/ondevicepersonalization/RequestLogRecord;
    .registers 2

    .line 92
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/WebTriggerOutput;->mRequestLogRecord:Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 131
    const/4 v0, 0x1

    .line 132
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/WebTriggerOutput;->mRequestLogRecord:Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 133
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/WebTriggerOutput;->mEventLogRecords:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 134
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    return v0
.end method
