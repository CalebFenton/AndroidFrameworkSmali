.class public final Landroid/adservices/ondevicepersonalization/ExecuteOutputParcel;
.super Ljava/lang/Object;
.source "ExecuteOutputParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/ondevicepersonalization/ExecuteOutputParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mBestValue:I

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
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 259
    new-instance v0, Landroid/adservices/ondevicepersonalization/ExecuteOutputParcel$1;

    invoke-direct {v0}, Landroid/adservices/ondevicepersonalization/ExecuteOutputParcel$1;-><init>()V

    sput-object v0, Landroid/adservices/ondevicepersonalization/ExecuteOutputParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/adservices/ondevicepersonalization/ExecuteOutput;)V
    .registers 8
    .param p1, "value"    # Landroid/adservices/ondevicepersonalization/ExecuteOutput;

    .line 84
    nop

    .line 85
    invoke-virtual {p1}, Landroid/adservices/ondevicepersonalization/ExecuteOutput;->getRequestLogRecord()Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    move-result-object v1

    .line 86
    invoke-virtual {p1}, Landroid/adservices/ondevicepersonalization/ExecuteOutput;->getRenderingConfig()Landroid/adservices/ondevicepersonalization/RenderingConfig;

    move-result-object v2

    .line 87
    invoke-virtual {p1}, Landroid/adservices/ondevicepersonalization/ExecuteOutput;->getEventLogRecords()Ljava/util/List;

    move-result-object v3

    .line 88
    invoke-virtual {p1}, Landroid/adservices/ondevicepersonalization/ExecuteOutput;->getOutputData()[B

    move-result-object v4

    .line 89
    invoke-virtual {p1}, Landroid/adservices/ondevicepersonalization/ExecuteOutput;->getBestValue()I

    move-result v5

    .line 84
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/adservices/ondevicepersonalization/ExecuteOutputParcel;-><init>(Landroid/adservices/ondevicepersonalization/RequestLogRecord;Landroid/adservices/ondevicepersonalization/RenderingConfig;Ljava/util/List;[BI)V

    .line 90
    return-void
.end method

.method public constructor blacklist <init>(Landroid/adservices/ondevicepersonalization/RequestLogRecord;Landroid/adservices/ondevicepersonalization/RenderingConfig;Ljava/util/List;[BI)V
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

    .line 139
    .local p3, "eventLogRecords":Ljava/util/List;, "Ljava/util/List<Landroid/adservices/ondevicepersonalization/EventLogRecord;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutputParcel;->mRequestLogRecord:Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    .line 46
    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutputParcel;->mRenderingConfig:Landroid/adservices/ondevicepersonalization/RenderingConfig;

    .line 56
    nop

    .line 57
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutputParcel;->mEventLogRecords:Ljava/util/List;

    .line 68
    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutputParcel;->mOutputData:[B

    .line 80
    const/4 v1, -0x1

    iput v1, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutputParcel;->mBestValue:I

    .line 140
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutputParcel;->mRequestLogRecord:Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    .line 141
    iput-object p2, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutputParcel;->mRenderingConfig:Landroid/adservices/ondevicepersonalization/RenderingConfig;

    .line 142
    iput-object p3, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutputParcel;->mEventLogRecords:Ljava/util/List;

    .line 143
    const-class v1, Landroid/annotation/NonNull;

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutputParcel;->mEventLogRecords:Ljava/util/List;

    invoke-static {v1, v0, v2}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 145
    iput-object p4, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutputParcel;->mOutputData:[B

    .line 146
    iput p5, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutputParcel;->mBestValue:I

    .line 149
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 11
    .param p1, "in"    # Landroid/os/Parcel;

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutputParcel;->mRequestLogRecord:Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    .line 46
    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutputParcel;->mRenderingConfig:Landroid/adservices/ondevicepersonalization/RenderingConfig;

    .line 56
    nop

    .line 57
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutputParcel;->mEventLogRecords:Ljava/util/List;

    .line 68
    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutputParcel;->mOutputData:[B

    .line 80
    const/4 v1, -0x1

    iput v1, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutputParcel;->mBestValue:I

    .line 239
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 240
    .local v1, "flg":B
    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_1e

    move-object v2, v0

    goto :goto_26

    :cond_1e
    sget-object v2, Landroid/adservices/ondevicepersonalization/RequestLogRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    .line 241
    .local v2, "requestLogRecord":Landroid/adservices/ondevicepersonalization/RequestLogRecord;
    :goto_26
    and-int/lit8 v3, v1, 0x2

    if-nez v3, :cond_2c

    move-object v3, v0

    goto :goto_34

    :cond_2c
    sget-object v3, Landroid/adservices/ondevicepersonalization/RenderingConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/adservices/ondevicepersonalization/RenderingConfig;

    .line 242
    .local v3, "renderingConfig":Landroid/adservices/ondevicepersonalization/RenderingConfig;
    :goto_34
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .local v4, "eventLogRecords":Ljava/util/List;, "Ljava/util/List<Landroid/adservices/ondevicepersonalization/EventLogRecord;>;"
    const-class v5, Landroid/adservices/ondevicepersonalization/EventLogRecord;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;)Ljava/util/List;

    .line 244
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 245
    .local v5, "outputData":[B
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 247
    .local v6, "bestValue":I
    iput-object v2, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutputParcel;->mRequestLogRecord:Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    .line 248
    iput-object v3, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutputParcel;->mRenderingConfig:Landroid/adservices/ondevicepersonalization/RenderingConfig;

    .line 249
    iput-object v4, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutputParcel;->mEventLogRecords:Ljava/util/List;

    .line 250
    const-class v7, Landroid/annotation/NonNull;

    iget-object v8, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutputParcel;->mEventLogRecords:Ljava/util/List;

    invoke-static {v7, v0, v8}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 252
    iput-object v5, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutputParcel;->mOutputData:[B

    .line 253
    iput v6, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutputParcel;->mBestValue:I

    .line 256
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 280
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 230
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getBestValue()I
    .registers 2

    .line 208
    iget v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutputParcel;->mBestValue:I

    return v0
.end method

.method public blacklist getEventLogRecords()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/adservices/ondevicepersonalization/EventLogRecord;",
            ">;"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutputParcel;->mEventLogRecords:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getOutputData()[B
    .registers 2

    .line 193
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutputParcel;->mOutputData:[B

    return-object v0
.end method

.method public blacklist getRenderingConfig()Landroid/adservices/ondevicepersonalization/RenderingConfig;
    .registers 2

    .line 167
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutputParcel;->mRenderingConfig:Landroid/adservices/ondevicepersonalization/RenderingConfig;

    return-object v0
.end method

.method public blacklist getRequestLogRecord()Landroid/adservices/ondevicepersonalization/RequestLogRecord;
    .registers 2

    .line 158
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutputParcel;->mRequestLogRecord:Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 217
    const/4 v0, 0x0

    .line 218
    .local v0, "flg":B
    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutputParcel;->mRequestLogRecord:Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    if-eqz v1, :cond_8

    or-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    .line 219
    :cond_8
    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutputParcel;->mRenderingConfig:Landroid/adservices/ondevicepersonalization/RenderingConfig;

    if-eqz v1, :cond_f

    or-int/lit8 v1, v0, 0x2

    int-to-byte v0, v1

    .line 220
    :cond_f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 221
    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutputParcel;->mRequestLogRecord:Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutputParcel;->mRequestLogRecord:Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 222
    :cond_1b
    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutputParcel;->mRenderingConfig:Landroid/adservices/ondevicepersonalization/RenderingConfig;

    if-eqz v1, :cond_24

    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutputParcel;->mRenderingConfig:Landroid/adservices/ondevicepersonalization/RenderingConfig;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 223
    :cond_24
    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutputParcel;->mEventLogRecords:Ljava/util/List;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 224
    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutputParcel;->mOutputData:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 225
    iget v1, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutputParcel;->mBestValue:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    return-void
.end method
