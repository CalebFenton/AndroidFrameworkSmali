.class public final Landroid/adservices/ondevicepersonalization/WebTriggerOutput$Builder;
.super Ljava/lang/Object;
.source "WebTriggerOutput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/ondevicepersonalization/WebTriggerOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilderFieldsSet:J

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
.method public constructor whitelist <init>()V
    .registers 3

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/WebTriggerOutput$Builder;->mBuilderFieldsSet:J

    .line 150
    return-void
.end method

.method private blacklist checkNotUsed()V
    .registers 5

    .line 208
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/WebTriggerOutput$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 212
    return-void

    .line 209
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist addEventLogRecord(Landroid/adservices/ondevicepersonalization/EventLogRecord;)Landroid/adservices/ondevicepersonalization/WebTriggerOutput$Builder;
    .registers 3
    .param p1, "value"    # Landroid/adservices/ondevicepersonalization/EventLogRecord;

    .line 185
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/WebTriggerOutput$Builder;->mEventLogRecords:Ljava/util/List;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Landroid/adservices/ondevicepersonalization/WebTriggerOutput$Builder;->setEventLogRecords(Ljava/util/List;)Landroid/adservices/ondevicepersonalization/WebTriggerOutput$Builder;

    .line 186
    :cond_c
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/WebTriggerOutput$Builder;->mEventLogRecords:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    return-object p0
.end method

.method public whitelist build()Landroid/adservices/ondevicepersonalization/WebTriggerOutput;
    .registers 7

    .line 192
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/WebTriggerOutput$Builder;->checkNotUsed()V

    .line 193
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/WebTriggerOutput$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/WebTriggerOutput$Builder;->mBuilderFieldsSet:J

    .line 195
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/WebTriggerOutput$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_18

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/WebTriggerOutput$Builder;->mRequestLogRecord:Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    .line 198
    :cond_18
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/WebTriggerOutput$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x2

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_27

    .line 199
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/WebTriggerOutput$Builder;->mEventLogRecords:Ljava/util/List;

    .line 201
    :cond_27
    new-instance v0, Landroid/adservices/ondevicepersonalization/WebTriggerOutput;

    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/WebTriggerOutput$Builder;->mRequestLogRecord:Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/WebTriggerOutput$Builder;->mEventLogRecords:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Landroid/adservices/ondevicepersonalization/WebTriggerOutput;-><init>(Landroid/adservices/ondevicepersonalization/RequestLogRecord;Ljava/util/List;)V

    .line 204
    .local v0, "o":Landroid/adservices/ondevicepersonalization/WebTriggerOutput;
    return-object v0
.end method

.method public whitelist setEventLogRecords(Ljava/util/List;)Landroid/adservices/ondevicepersonalization/WebTriggerOutput$Builder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/adservices/ondevicepersonalization/EventLogRecord;",
            ">;)",
            "Landroid/adservices/ondevicepersonalization/WebTriggerOutput$Builder;"
        }
    .end annotation

    .line 176
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Landroid/adservices/ondevicepersonalization/EventLogRecord;>;"
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/WebTriggerOutput$Builder;->checkNotUsed()V

    .line 177
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/WebTriggerOutput$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/WebTriggerOutput$Builder;->mBuilderFieldsSet:J

    .line 178
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/WebTriggerOutput$Builder;->mEventLogRecords:Ljava/util/List;

    .line 179
    return-object p0
.end method

.method public whitelist setRequestLogRecord(Landroid/adservices/ondevicepersonalization/RequestLogRecord;)Landroid/adservices/ondevicepersonalization/WebTriggerOutput$Builder;
    .registers 6
    .param p1, "value"    # Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    .line 160
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/WebTriggerOutput$Builder;->checkNotUsed()V

    .line 161
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/WebTriggerOutput$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/WebTriggerOutput$Builder;->mBuilderFieldsSet:J

    .line 162
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/WebTriggerOutput$Builder;->mRequestLogRecord:Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    .line 163
    return-object p0
.end method
