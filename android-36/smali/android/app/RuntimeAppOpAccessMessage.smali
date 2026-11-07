.class public final Landroid/app/RuntimeAppOpAccessMessage;
.super Ljava/lang/Object;
.source "RuntimeAppOpAccessMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/RuntimeAppOpAccessMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAttributionTag:Ljava/lang/String;

.field private final blacklist mMessage:Ljava/lang/String;

.field private final blacklist mOpCode:I

.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mSamplingStrategy:I

.field private final blacklist mUid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 218
    new-instance v0, Landroid/app/RuntimeAppOpAccessMessage$1;

    invoke-direct {v0}, Landroid/app/RuntimeAppOpAccessMessage$1;-><init>()V

    sput-object v0, Landroid/app/RuntimeAppOpAccessMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 17
    .param p1, "uid"    # I
    .param p2, "opCode"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;
    .param p6, "samplingStrategy"    # I

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput p1, p0, Landroid/app/RuntimeAppOpAccessMessage;->mUid:I

    .line 80
    const-class v0, Landroid/annotation/IntRange;

    iget v2, p0, Landroid/app/RuntimeAppOpAccessMessage;->mUid:I

    const-string v3, "from"

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;J)V

    .line 83
    iput p2, p0, Landroid/app/RuntimeAppOpAccessMessage;->mOpCode:I

    .line 84
    const-class v1, Landroid/annotation/IntRange;

    iget v3, p0, Landroid/app/RuntimeAppOpAccessMessage;->mOpCode:I

    const-string/jumbo v7, "to"

    const-wide/16 v8, 0xa2

    const/4 v2, 0x0

    const-string v4, "from"

    const-wide/16 v5, 0x0

    invoke-static/range {v1 .. v9}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;JLjava/lang/String;J)V

    .line 88
    iput-object p3, p0, Landroid/app/RuntimeAppOpAccessMessage;->mPackageName:Ljava/lang/String;

    .line 89
    const-class v2, Landroid/annotation/NonNull;

    iget-object v3, p0, Landroid/app/RuntimeAppOpAccessMessage;->mPackageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 91
    move-object v2, p4

    iput-object v2, p0, Landroid/app/RuntimeAppOpAccessMessage;->mAttributionTag:Ljava/lang/String;

    .line 92
    move-object v3, p5

    iput-object v3, p0, Landroid/app/RuntimeAppOpAccessMessage;->mMessage:Ljava/lang/String;

    .line 93
    const-class v5, Landroid/annotation/NonNull;

    iget-object v6, p0, Landroid/app/RuntimeAppOpAccessMessage;->mMessage:Ljava/lang/String;

    invoke-static {v5, v4, v6}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 95
    move/from16 v5, p6

    iput v5, p0, Landroid/app/RuntimeAppOpAccessMessage;->mSamplingStrategy:I

    .line 96
    const-class v6, Landroid/app/AppOpsManager$SamplingStrategy;

    iget v7, p0, Landroid/app/RuntimeAppOpAccessMessage;->mSamplingStrategy:I

    invoke-static {v6, v4, v7}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 100
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 26
    .param p1, "in"    # Landroid/os/Parcel;

    .line 182
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 186
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 187
    .local v1, "flg":B
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 188
    .local v2, "uid":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 189
    .local v3, "opCode":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 190
    .local v4, "packageName":Ljava/lang/String;
    and-int/lit8 v5, v1, 0x8

    const/4 v6, 0x0

    if-nez v5, :cond_1c

    move-object v5, v6

    goto :goto_20

    :cond_1c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 191
    .local v5, "attributionTag":Ljava/lang/String;
    :goto_20
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 192
    .local v7, "message":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 194
    .local v8, "samplingStrategy":I
    iput v2, v0, Landroid/app/RuntimeAppOpAccessMessage;->mUid:I

    .line 195
    const-class v9, Landroid/annotation/IntRange;

    iget v11, v0, Landroid/app/RuntimeAppOpAccessMessage;->mUid:I

    const-string v12, "from"

    const-wide/16 v13, 0x0

    const/4 v10, 0x0

    invoke-static/range {v9 .. v14}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;J)V

    .line 198
    iput v3, v0, Landroid/app/RuntimeAppOpAccessMessage;->mOpCode:I

    .line 199
    const-class v15, Landroid/annotation/IntRange;

    iget v9, v0, Landroid/app/RuntimeAppOpAccessMessage;->mOpCode:I

    const-string/jumbo v21, "to"

    const-wide/16 v22, 0xa2

    const/16 v16, 0x0

    const-string v18, "from"

    const-wide/16 v19, 0x0

    move/from16 v17, v9

    invoke-static/range {v15 .. v23}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;JLjava/lang/String;J)V

    .line 203
    iput-object v4, v0, Landroid/app/RuntimeAppOpAccessMessage;->mPackageName:Ljava/lang/String;

    .line 204
    const-class v9, Landroid/annotation/NonNull;

    iget-object v10, v0, Landroid/app/RuntimeAppOpAccessMessage;->mPackageName:Ljava/lang/String;

    invoke-static {v9, v6, v10}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 206
    iput-object v5, v0, Landroid/app/RuntimeAppOpAccessMessage;->mAttributionTag:Ljava/lang/String;

    .line 207
    iput-object v7, v0, Landroid/app/RuntimeAppOpAccessMessage;->mMessage:Ljava/lang/String;

    .line 208
    const-class v9, Landroid/annotation/NonNull;

    iget-object v10, v0, Landroid/app/RuntimeAppOpAccessMessage;->mMessage:Ljava/lang/String;

    invoke-static {v9, v6, v10}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 210
    iput v8, v0, Landroid/app/RuntimeAppOpAccessMessage;->mSamplingStrategy:I

    .line 211
    const-class v9, Landroid/app/AppOpsManager$SamplingStrategy;

    iget v10, v0, Landroid/app/RuntimeAppOpAccessMessage;->mSamplingStrategy:I

    invoke-static {v9, v6, v10}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 215
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 237
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAttributionTag()Ljava/lang/String;
    .registers 2

    .line 139
    iget-object v0, p0, Landroid/app/RuntimeAppOpAccessMessage;->mAttributionTag:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getMessage()Ljava/lang/String;
    .registers 2

    .line 147
    iget-object v0, p0, Landroid/app/RuntimeAppOpAccessMessage;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getOp()Ljava/lang/String;
    .registers 2

    .line 52
    iget v0, p0, Landroid/app/RuntimeAppOpAccessMessage;->mOpCode:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 2

    .line 131
    iget-object v0, p0, Landroid/app/RuntimeAppOpAccessMessage;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSamplingStrategy()I
    .registers 2

    .line 155
    iget v0, p0, Landroid/app/RuntimeAppOpAccessMessage;->mSamplingStrategy:I

    return v0
.end method

.method public whitelist getUid()I
    .registers 2

    .line 123
    iget v0, p0, Landroid/app/RuntimeAppOpAccessMessage;->mUid:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 164
    const/4 v0, 0x0

    .line 165
    .local v0, "flg":B
    iget-object v1, p0, Landroid/app/RuntimeAppOpAccessMessage;->mAttributionTag:Ljava/lang/String;

    if-eqz v1, :cond_8

    or-int/lit8 v1, v0, 0x8

    int-to-byte v0, v1

    .line 166
    :cond_8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 167
    iget v1, p0, Landroid/app/RuntimeAppOpAccessMessage;->mUid:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    iget v1, p0, Landroid/app/RuntimeAppOpAccessMessage;->mOpCode:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    iget-object v1, p0, Landroid/app/RuntimeAppOpAccessMessage;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 170
    iget-object v1, p0, Landroid/app/RuntimeAppOpAccessMessage;->mAttributionTag:Ljava/lang/String;

    if-eqz v1, :cond_23

    iget-object v1, p0, Landroid/app/RuntimeAppOpAccessMessage;->mAttributionTag:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 171
    :cond_23
    iget-object v1, p0, Landroid/app/RuntimeAppOpAccessMessage;->mMessage:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 172
    iget v1, p0, Landroid/app/RuntimeAppOpAccessMessage;->mSamplingStrategy:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    return-void
.end method
