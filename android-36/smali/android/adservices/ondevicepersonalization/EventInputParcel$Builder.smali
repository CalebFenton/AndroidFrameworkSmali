.class public final Landroid/adservices/ondevicepersonalization/EventInputParcel$Builder;
.super Ljava/lang/Object;
.source "EventInputParcel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/ondevicepersonalization/EventInputParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilderFieldsSet:J

.field private blacklist mParameters:Landroid/os/PersistableBundle;

.field private blacklist mRequestLogRecord:Landroid/adservices/ondevicepersonalization/RequestLogRecord;


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/EventInputParcel$Builder;->mBuilderFieldsSet:J

    .line 156
    return-void
.end method

.method private blacklist checkNotUsed()V
    .registers 5

    .line 201
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/EventInputParcel$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 205
    return-void

    .line 202
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist build()Landroid/adservices/ondevicepersonalization/EventInputParcel;
    .registers 7

    .line 185
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/EventInputParcel$Builder;->checkNotUsed()V

    .line 186
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/EventInputParcel$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/EventInputParcel$Builder;->mBuilderFieldsSet:J

    .line 188
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/EventInputParcel$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_18

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/EventInputParcel$Builder;->mRequestLogRecord:Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    .line 191
    :cond_18
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/EventInputParcel$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x2

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_25

    .line 192
    sget-object v0, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/EventInputParcel$Builder;->mParameters:Landroid/os/PersistableBundle;

    .line 194
    :cond_25
    new-instance v0, Landroid/adservices/ondevicepersonalization/EventInputParcel;

    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/EventInputParcel$Builder;->mRequestLogRecord:Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/EventInputParcel$Builder;->mParameters:Landroid/os/PersistableBundle;

    invoke-direct {v0, v1, v2}, Landroid/adservices/ondevicepersonalization/EventInputParcel;-><init>(Landroid/adservices/ondevicepersonalization/RequestLogRecord;Landroid/os/PersistableBundle;)V

    .line 197
    .local v0, "o":Landroid/adservices/ondevicepersonalization/EventInputParcel;
    return-object v0
.end method

.method public blacklist setParameters(Landroid/os/PersistableBundle;)Landroid/adservices/ondevicepersonalization/EventInputParcel$Builder;
    .registers 6
    .param p1, "value"    # Landroid/os/PersistableBundle;

    .line 177
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/EventInputParcel$Builder;->checkNotUsed()V

    .line 178
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/EventInputParcel$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/EventInputParcel$Builder;->mBuilderFieldsSet:J

    .line 179
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/EventInputParcel$Builder;->mParameters:Landroid/os/PersistableBundle;

    .line 180
    return-object p0
.end method

.method public blacklist setRequestLogRecord(Landroid/adservices/ondevicepersonalization/RequestLogRecord;)Landroid/adservices/ondevicepersonalization/EventInputParcel$Builder;
    .registers 6
    .param p1, "value"    # Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    .line 164
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/EventInputParcel$Builder;->checkNotUsed()V

    .line 165
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/EventInputParcel$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/EventInputParcel$Builder;->mBuilderFieldsSet:J

    .line 166
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/EventInputParcel$Builder;->mRequestLogRecord:Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    .line 167
    return-object p0
.end method
