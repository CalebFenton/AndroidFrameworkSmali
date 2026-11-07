.class public Landroid/adservices/ondevicepersonalization/InferenceInputParcel;
.super Ljava/lang/Object;
.source "InferenceInputParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/ondevicepersonalization/InferenceInputParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mBatchSize:I

.field private blacklist mCpuNumThread:I

.field private blacklist mDelegate:I

.field private blacklist mExpectedOutputStructure:Landroid/adservices/ondevicepersonalization/InferenceOutputParcel;

.field private blacklist mInputData:[B

.field private blacklist mModelId:Landroid/adservices/ondevicepersonalization/ModelId;

.field private blacklist mModelType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 258
    new-instance v0, Landroid/adservices/ondevicepersonalization/InferenceInputParcel$1;

    invoke-direct {v0}, Landroid/adservices/ondevicepersonalization/InferenceInputParcel$1;-><init>()V

    sput-object v0, Landroid/adservices/ondevicepersonalization/InferenceInputParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/adservices/ondevicepersonalization/InferenceInput;)V
    .registers 11
    .param p1, "value"    # Landroid/adservices/ondevicepersonalization/InferenceInput;

    .line 73
    new-instance v0, Landroid/adservices/ondevicepersonalization/ModelId$Builder;

    invoke-direct {v0}, Landroid/adservices/ondevicepersonalization/ModelId$Builder;-><init>()V

    .line 75
    invoke-virtual {p1}, Landroid/adservices/ondevicepersonalization/InferenceInput;->getParams()Landroid/adservices/ondevicepersonalization/InferenceInput$Params;

    move-result-object v1

    invoke-virtual {v1}, Landroid/adservices/ondevicepersonalization/InferenceInput$Params;->getKeyValueStore()Landroid/adservices/ondevicepersonalization/KeyValueStore;

    move-result-object v1

    invoke-interface {v1}, Landroid/adservices/ondevicepersonalization/KeyValueStore;->getTableId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/adservices/ondevicepersonalization/ModelId$Builder;->setTableId(I)Landroid/adservices/ondevicepersonalization/ModelId$Builder;

    move-result-object v0

    .line 76
    invoke-virtual {p1}, Landroid/adservices/ondevicepersonalization/InferenceInput;->getParams()Landroid/adservices/ondevicepersonalization/InferenceInput$Params;

    move-result-object v1

    invoke-virtual {v1}, Landroid/adservices/ondevicepersonalization/InferenceInput$Params;->getModelKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/adservices/ondevicepersonalization/ModelId$Builder;->setKey(Ljava/lang/String;)Landroid/adservices/ondevicepersonalization/ModelId$Builder;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Landroid/adservices/ondevicepersonalization/ModelId$Builder;->build()Landroid/adservices/ondevicepersonalization/ModelId;

    move-result-object v2

    .line 78
    invoke-virtual {p1}, Landroid/adservices/ondevicepersonalization/InferenceInput;->getParams()Landroid/adservices/ondevicepersonalization/InferenceInput$Params;

    move-result-object v0

    invoke-virtual {v0}, Landroid/adservices/ondevicepersonalization/InferenceInput$Params;->getDelegateType()I

    move-result v3

    .line 79
    invoke-virtual {p1}, Landroid/adservices/ondevicepersonalization/InferenceInput;->getParams()Landroid/adservices/ondevicepersonalization/InferenceInput$Params;

    move-result-object v0

    invoke-virtual {v0}, Landroid/adservices/ondevicepersonalization/InferenceInput$Params;->getRecommendedNumThreads()I

    move-result v4

    .line 80
    invoke-virtual {p1}, Landroid/adservices/ondevicepersonalization/InferenceInput;->getData()[B

    move-result-object v5

    .line 81
    invoke-virtual {p1}, Landroid/adservices/ondevicepersonalization/InferenceInput;->getBatchSize()I

    move-result v6

    .line 82
    invoke-virtual {p1}, Landroid/adservices/ondevicepersonalization/InferenceInput;->getParams()Landroid/adservices/ondevicepersonalization/InferenceInput$Params;

    move-result-object v0

    invoke-virtual {v0}, Landroid/adservices/ondevicepersonalization/InferenceInput$Params;->getModelType()I

    move-result v7

    new-instance v8, Landroid/adservices/ondevicepersonalization/InferenceOutputParcel;

    .line 83
    invoke-virtual {p1}, Landroid/adservices/ondevicepersonalization/InferenceInput;->getExpectedOutputStructure()Landroid/adservices/ondevicepersonalization/InferenceOutput;

    move-result-object v0

    invoke-direct {v8, v0}, Landroid/adservices/ondevicepersonalization/InferenceOutputParcel;-><init>(Landroid/adservices/ondevicepersonalization/InferenceOutput;)V

    .line 73
    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Landroid/adservices/ondevicepersonalization/InferenceInputParcel;-><init>(Landroid/adservices/ondevicepersonalization/ModelId;II[BIILandroid/adservices/ondevicepersonalization/InferenceOutputParcel;)V

    .line 84
    return-void
.end method

.method public constructor blacklist <init>(Landroid/adservices/ondevicepersonalization/ModelId;II[BIILandroid/adservices/ondevicepersonalization/InferenceOutputParcel;)V
    .registers 17
    .param p1, "modelId"    # Landroid/adservices/ondevicepersonalization/ModelId;
    .param p2, "delegate"    # I
    .param p3, "cpuNumThread"    # I
    .param p4, "inputData"    # [B
    .param p5, "batchSize"    # I
    .param p6, "modelType"    # I
    .param p7, "expectedOutputStructure"    # Landroid/adservices/ondevicepersonalization/InferenceOutputParcel;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x1

    iput v0, p0, Landroid/adservices/ondevicepersonalization/InferenceInputParcel;->mModelType:I

    .line 128
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/InferenceInputParcel;->mModelId:Landroid/adservices/ondevicepersonalization/ModelId;

    .line 129
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/InferenceInputParcel;->mModelId:Landroid/adservices/ondevicepersonalization/ModelId;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 130
    iput p2, p0, Landroid/adservices/ondevicepersonalization/InferenceInputParcel;->mDelegate:I

    .line 131
    const-class v0, Landroid/adservices/ondevicepersonalization/InferenceInput$Params$Delegate;

    iget v1, p0, Landroid/adservices/ondevicepersonalization/InferenceInputParcel;->mDelegate:I

    invoke-static {v0, v2, v1}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 132
    iput p3, p0, Landroid/adservices/ondevicepersonalization/InferenceInputParcel;->mCpuNumThread:I

    .line 133
    const-class v3, Landroid/annotation/IntRange;

    iget v5, p0, Landroid/adservices/ondevicepersonalization/InferenceInputParcel;->mCpuNumThread:I

    const-string v6, "from"

    const-wide/16 v7, 0x1

    const/4 v4, 0x0

    invoke-static/range {v3 .. v8}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;J)V

    .line 134
    iput-object p4, p0, Landroid/adservices/ondevicepersonalization/InferenceInputParcel;->mInputData:[B

    .line 135
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/InferenceInputParcel;->mInputData:[B

    invoke-static {v0, v2, v1}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 136
    iput p5, p0, Landroid/adservices/ondevicepersonalization/InferenceInputParcel;->mBatchSize:I

    .line 137
    iput p6, p0, Landroid/adservices/ondevicepersonalization/InferenceInputParcel;->mModelType:I

    .line 138
    const-class v1, Landroid/adservices/ondevicepersonalization/InferenceInput$Params$ModelType;

    iget v3, p0, Landroid/adservices/ondevicepersonalization/InferenceInputParcel;->mModelType:I

    invoke-static {v1, v2, v3}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 139
    move-object/from16 v1, p7

    iput-object v1, p0, Landroid/adservices/ondevicepersonalization/InferenceInputParcel;->mExpectedOutputStructure:Landroid/adservices/ondevicepersonalization/InferenceOutputParcel;

    .line 140
    const-class v3, Landroid/annotation/NonNull;

    iget-object v4, p0, Landroid/adservices/ondevicepersonalization/InferenceInputParcel;->mExpectedOutputStructure:Landroid/adservices/ondevicepersonalization/InferenceOutputParcel;

    invoke-static {v3, v2, v4}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 143
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 20
    .param p1, "in"    # Landroid/os/Parcel;

    .line 227
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v2, 0x1

    iput v2, v0, Landroid/adservices/ondevicepersonalization/InferenceInputParcel;->mModelType:I

    .line 231
    sget-object v2, Landroid/adservices/ondevicepersonalization/ModelId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/adservices/ondevicepersonalization/ModelId;

    .line 232
    .local v2, "modelId":Landroid/adservices/ondevicepersonalization/ModelId;
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 233
    .local v3, "delegate":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 234
    .local v4, "cpuNumThread":I
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 235
    .local v5, "inputData":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 236
    .local v6, "batchSize":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 237
    .local v7, "modelType":I
    sget-object v8, Landroid/adservices/ondevicepersonalization/InferenceOutputParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 238
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/adservices/ondevicepersonalization/InferenceOutputParcel;

    .line 240
    .local v8, "expectedOutputStructure":Landroid/adservices/ondevicepersonalization/InferenceOutputParcel;
    iput-object v2, v0, Landroid/adservices/ondevicepersonalization/InferenceInputParcel;->mModelId:Landroid/adservices/ondevicepersonalization/ModelId;

    .line 241
    const-class v9, Landroid/annotation/NonNull;

    iget-object v10, v0, Landroid/adservices/ondevicepersonalization/InferenceInputParcel;->mModelId:Landroid/adservices/ondevicepersonalization/ModelId;

    const/4 v11, 0x0

    invoke-static {v9, v11, v10}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 242
    iput v3, v0, Landroid/adservices/ondevicepersonalization/InferenceInputParcel;->mDelegate:I

    .line 243
    const-class v9, Landroid/adservices/ondevicepersonalization/InferenceInput$Params$Delegate;

    iget v10, v0, Landroid/adservices/ondevicepersonalization/InferenceInputParcel;->mDelegate:I

    invoke-static {v9, v11, v10}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 244
    iput v4, v0, Landroid/adservices/ondevicepersonalization/InferenceInputParcel;->mCpuNumThread:I

    .line 245
    const-class v12, Landroid/annotation/IntRange;

    iget v14, v0, Landroid/adservices/ondevicepersonalization/InferenceInputParcel;->mCpuNumThread:I

    const-string v15, "from"

    const-wide/16 v16, 0x1

    const/4 v13, 0x0

    invoke-static/range {v12 .. v17}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;J)V

    .line 246
    iput-object v5, v0, Landroid/adservices/ondevicepersonalization/InferenceInputParcel;->mInputData:[B

    .line 247
    const-class v9, Landroid/annotation/NonNull;

    iget-object v10, v0, Landroid/adservices/ondevicepersonalization/InferenceInputParcel;->mInputData:[B

    invoke-static {v9, v11, v10}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 248
    iput v6, v0, Landroid/adservices/ondevicepersonalization/InferenceInputParcel;->mBatchSize:I

    .line 249
    iput v7, v0, Landroid/adservices/ondevicepersonalization/InferenceInputParcel;->mModelType:I

    .line 250
    const-class v9, Landroid/adservices/ondevicepersonalization/InferenceInput$Params$ModelType;

    iget v10, v0, Landroid/adservices/ondevicepersonalization/InferenceInputParcel;->mModelType:I

    invoke-static {v9, v11, v10}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 251
    iput-object v8, v0, Landroid/adservices/ondevicepersonalization/InferenceInputParcel;->mExpectedOutputStructure:Landroid/adservices/ondevicepersonalization/InferenceOutputParcel;

    .line 252
    const-class v9, Landroid/annotation/NonNull;

    iget-object v10, v0, Landroid/adservices/ondevicepersonalization/InferenceInputParcel;->mExpectedOutputStructure:Landroid/adservices/ondevicepersonalization/InferenceOutputParcel;

    invoke-static {v9, v11, v10}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 255
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 279
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 221
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getBatchSize()I
    .registers 2

    .line 185
    iget v0, p0, Landroid/adservices/ondevicepersonalization/InferenceInputParcel;->mBatchSize:I

    return v0
.end method

.method public blacklist getCpuNumThread()I
    .registers 2

    .line 167
    iget v0, p0, Landroid/adservices/ondevicepersonalization/InferenceInputParcel;->mCpuNumThread:I

    return v0
.end method

.method public blacklist getDelegate()I
    .registers 2

    .line 156
    iget v0, p0, Landroid/adservices/ondevicepersonalization/InferenceInputParcel;->mDelegate:I

    return v0
.end method

.method public blacklist getExpectedOutputStructure()Landroid/adservices/ondevicepersonalization/InferenceOutputParcel;
    .registers 2

    .line 200
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/InferenceInputParcel;->mExpectedOutputStructure:Landroid/adservices/ondevicepersonalization/InferenceOutputParcel;

    return-object v0
.end method

.method public blacklist getInputData()[B
    .registers 2

    .line 176
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/InferenceInputParcel;->mInputData:[B

    return-object v0
.end method

.method public blacklist getModelId()Landroid/adservices/ondevicepersonalization/ModelId;
    .registers 2

    .line 150
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/InferenceInputParcel;->mModelId:Landroid/adservices/ondevicepersonalization/ModelId;

    return-object v0
.end method

.method public blacklist getModelType()I
    .registers 2

    .line 190
    iget v0, p0, Landroid/adservices/ondevicepersonalization/InferenceInputParcel;->mModelType:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 209
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/InferenceInputParcel;->mModelId:Landroid/adservices/ondevicepersonalization/ModelId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 210
    iget v0, p0, Landroid/adservices/ondevicepersonalization/InferenceInputParcel;->mDelegate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    iget v0, p0, Landroid/adservices/ondevicepersonalization/InferenceInputParcel;->mCpuNumThread:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/InferenceInputParcel;->mInputData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 213
    iget v0, p0, Landroid/adservices/ondevicepersonalization/InferenceInputParcel;->mBatchSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    iget v0, p0, Landroid/adservices/ondevicepersonalization/InferenceInputParcel;->mModelType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/InferenceInputParcel;->mExpectedOutputStructure:Landroid/adservices/ondevicepersonalization/InferenceOutputParcel;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 216
    return-void
.end method
