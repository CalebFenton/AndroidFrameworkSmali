.class public final Landroid/adservices/ondevicepersonalization/EventOutput$Builder;
.super Ljava/lang/Object;
.source "EventOutput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/ondevicepersonalization/EventOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilderFieldsSet:J

.field private blacklist mEventLogRecord:Landroid/adservices/ondevicepersonalization/EventLogRecord;


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/EventOutput$Builder;->mBuilderFieldsSet:J

    .line 108
    return-void
.end method

.method private blacklist checkNotUsed()V
    .registers 5

    .line 137
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/EventOutput$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 141
    return-void

    .line 138
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/adservices/ondevicepersonalization/EventOutput;
    .registers 5

    .line 125
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/EventOutput$Builder;->checkNotUsed()V

    .line 126
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/EventOutput$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/EventOutput$Builder;->mBuilderFieldsSet:J

    .line 128
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/EventOutput$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_18

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/EventOutput$Builder;->mEventLogRecord:Landroid/adservices/ondevicepersonalization/EventLogRecord;

    .line 131
    :cond_18
    new-instance v0, Landroid/adservices/ondevicepersonalization/EventOutput;

    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/EventOutput$Builder;->mEventLogRecord:Landroid/adservices/ondevicepersonalization/EventLogRecord;

    invoke-direct {v0, v1}, Landroid/adservices/ondevicepersonalization/EventOutput;-><init>(Landroid/adservices/ondevicepersonalization/EventLogRecord;)V

    .line 133
    .local v0, "o":Landroid/adservices/ondevicepersonalization/EventOutput;
    return-object v0
.end method

.method public whitelist setEventLogRecord(Landroid/adservices/ondevicepersonalization/EventLogRecord;)Landroid/adservices/ondevicepersonalization/EventOutput$Builder;
    .registers 6
    .param p1, "value"    # Landroid/adservices/ondevicepersonalization/EventLogRecord;

    .line 117
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/EventOutput$Builder;->checkNotUsed()V

    .line 118
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/EventOutput$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/EventOutput$Builder;->mBuilderFieldsSet:J

    .line 119
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/EventOutput$Builder;->mEventLogRecord:Landroid/adservices/ondevicepersonalization/EventLogRecord;

    .line 120
    return-object p0
.end method
