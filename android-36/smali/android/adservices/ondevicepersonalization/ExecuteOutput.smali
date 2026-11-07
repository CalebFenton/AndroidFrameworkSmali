.class public final Landroid/adservices/ondevicepersonalization/ExecuteOutput;
.super Ljava/lang/Object;
.source "ExecuteOutput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/ondevicepersonalization/ExecuteOutput$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mBestValue:I

.field private blacklist mEventLogRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/adservices/ondevicepersonalization/EventLogRecord;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mOutputData:[B

.field private blacklist mRenderingConfig:Landroid/adservices/ondevicepersonalization/RenderingConfig;

.field private blacklist mRequestLogRecord:Landroid/adservices/ondevicepersonalization/RequestLogRecord;


# direct methods
.method constructor blacklist <init>(Landroid/adservices/ondevicepersonalization/RequestLogRecord;Landroid/adservices/ondevicepersonalization/RenderingConfig;Ljava/util/List;[BI)V
    .registers 9
    .param p1, "requestLogRecord"    # Landroid/adservices/ondevicepersonalization/RequestLogRecord;
    .param p2, "renderingConfig"    # Landroid/adservices/ondevicepersonalization/RenderingConfig;
    .param p4, "outputData"    # [B
    .param p5, "bestValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/adservices/ondevicepersonalization/RequestLogRecord;",
            "Landroid/adservices/ondevicepersonalization/RenderingConfig;",
            "Ljava/util/List<",
            "Landroid/adservices/ondevicepersonalization/EventLogRecord;",
            ">;[BI)V"
        }
    .end annotation

    .line 109
    .local p3, "eventLogRecords":Ljava/util/List;, "Ljava/util/List<Landroid/adservices/ondevicepersonalization/EventLogRecord;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutput;->mRequestLogRecord:Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    .line 55
    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutput;->mRenderingConfig:Landroid/adservices/ondevicepersonalization/RenderingConfig;

    .line 66
    nop

    .line 67
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutput;->mEventLogRecords:Ljava/util/List;

    .line 76
    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutput;->mOutputData:[B

    .line 110
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutput;->mRequestLogRecord:Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    .line 111
    iput-object p2, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutput;->mRenderingConfig:Landroid/adservices/ondevicepersonalization/RenderingConfig;

    .line 112
    iput-object p3, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutput;->mEventLogRecords:Ljava/util/List;

    .line 113
    const-class v1, Landroid/annotation/NonNull;

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutput;->mEventLogRecords:Ljava/util/List;

    invoke-static {v1, v0, v2}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 115
    iput-object p4, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutput;->mOutputData:[B

    .line 116
    iput p5, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutput;->mBestValue:I

    .line 119
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 349
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 188
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 189
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_46

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_46

    .line 191
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/adservices/ondevicepersonalization/ExecuteOutput;

    .line 193
    .local v2, "that":Landroid/adservices/ondevicepersonalization/ExecuteOutput;
    iget-object v3, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutput;->mRequestLogRecord:Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    iget-object v4, v2, Landroid/adservices/ondevicepersonalization/ExecuteOutput;->mRequestLogRecord:Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    .line 194
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    iget-object v3, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutput;->mRenderingConfig:Landroid/adservices/ondevicepersonalization/RenderingConfig;

    iget-object v4, v2, Landroid/adservices/ondevicepersonalization/ExecuteOutput;->mRenderingConfig:Landroid/adservices/ondevicepersonalization/RenderingConfig;

    .line 195
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    iget-object v3, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutput;->mEventLogRecords:Ljava/util/List;

    iget-object v4, v2, Landroid/adservices/ondevicepersonalization/ExecuteOutput;->mEventLogRecords:Ljava/util/List;

    .line 196
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    iget-object v3, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutput;->mOutputData:[B

    iget-object v4, v2, Landroid/adservices/ondevicepersonalization/ExecuteOutput;->mOutputData:[B

    .line 197
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_44

    iget v3, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutput;->mBestValue:I

    iget v4, v2, Landroid/adservices/ondevicepersonalization/ExecuteOutput;->mBestValue:I

    if-ne v3, v4, :cond_44

    goto :goto_45

    :cond_44
    move v0, v1

    .line 193
    :goto_45
    return v0

    .line 189
    .end local v2    # "that":Landroid/adservices/ondevicepersonalization/ExecuteOutput;
    :cond_46
    :goto_46
    return v1
.end method

.method public whitelist getBestValue()I
    .registers 2

    .line 178
    iget v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutput;->mBestValue:I

    return v0
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

    .line 150
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutput;->mEventLogRecords:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getOutputData()[B
    .registers 2

    .line 162
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutput;->mOutputData:[B

    return-object v0
.end method

.method public whitelist getRenderingConfig()Landroid/adservices/ondevicepersonalization/RenderingConfig;
    .registers 2

    .line 137
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutput;->mRenderingConfig:Landroid/adservices/ondevicepersonalization/RenderingConfig;

    return-object v0
.end method

.method public whitelist getRequestLogRecord()Landroid/adservices/ondevicepersonalization/RequestLogRecord;
    .registers 2

    .line 128
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutput;->mRequestLogRecord:Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 207
    const/4 v0, 0x1

    .line 208
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutput;->mRequestLogRecord:Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 209
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutput;->mRenderingConfig:Landroid/adservices/ondevicepersonalization/RenderingConfig;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 210
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutput;->mEventLogRecords:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 211
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutput;->mOutputData:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    .line 212
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutput;->mBestValue:I

    add-int/2addr v1, v2

    .line 213
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    return v1
.end method
