.class public final Landroid/app/SyncNotedAppOp;
.super Ljava/lang/Object;
.source "SyncNotedAppOp.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/SyncNotedAppOp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAttributionTag:Ljava/lang/String;

.field private final blacklist mOpCode:I

.field private final blacklist mOpMode:I

.field private final blacklist mPackageName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 252
    new-instance v0, Landroid/app/SyncNotedAppOp$1;

    invoke-direct {v0}, Landroid/app/SyncNotedAppOp$1;-><init>()V

    sput-object v0, Landroid/app/SyncNotedAppOp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IILjava/lang/String;Ljava/lang/String;)V
    .registers 14
    .param p1, "opMode"    # I
    .param p2, "opCode"    # I
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput p2, p0, Landroid/app/SyncNotedAppOp;->mOpCode:I

    .line 69
    const-class v0, Landroid/annotation/IntRange;

    iget v2, p0, Landroid/app/SyncNotedAppOp;->mOpCode:I

    const-string/jumbo v6, "to"

    const-wide/16 v7, 0xa2

    const/4 v1, 0x0

    const-string v3, "from"

    const-wide/16 v4, 0x0

    invoke-static/range {v0 .. v8}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;JLjava/lang/String;J)V

    .line 73
    iput-object p3, p0, Landroid/app/SyncNotedAppOp;->mAttributionTag:Ljava/lang/String;

    .line 74
    iput p1, p0, Landroid/app/SyncNotedAppOp;->mOpMode:I

    .line 75
    iput-object p4, p0, Landroid/app/SyncNotedAppOp;->mPackageName:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public constructor whitelist <init>(ILjava/lang/String;)V
    .registers 5
    .param p1, "opCode"    # I
    .param p2, "attributionTag"    # Ljava/lang/String;

    .line 87
    nop

    .line 88
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    .line 87
    const/4 v1, 0x1

    invoke-direct {p0, v1, p1, p2, v0}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "opCode"    # I
    .param p2, "attributionTag"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 105
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 16
    .param p1, "in"    # Landroid/os/Parcel;

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 234
    .local v0, "flg":B
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 235
    .local v1, "opMode":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 236
    .local v2, "opCode":I
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x0

    if-nez v3, :cond_16

    move-object v3, v4

    goto :goto_1a

    :cond_16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 237
    .local v3, "attributionTag":Ljava/lang/String;
    :goto_1a
    and-int/lit8 v5, v0, 0x8

    if-nez v5, :cond_1f

    goto :goto_23

    :cond_1f
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 239
    .local v4, "packageName":Ljava/lang/String;
    :goto_23
    iput v1, p0, Landroid/app/SyncNotedAppOp;->mOpMode:I

    .line 240
    iput v2, p0, Landroid/app/SyncNotedAppOp;->mOpCode:I

    .line 241
    const-class v5, Landroid/annotation/IntRange;

    iget v7, p0, Landroid/app/SyncNotedAppOp;->mOpCode:I

    const-string/jumbo v11, "to"

    const-wide/16 v12, 0xa2

    const/4 v6, 0x0

    const-string v8, "from"

    const-wide/16 v9, 0x0

    invoke-static/range {v5 .. v13}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;JLjava/lang/String;J)V

    .line 245
    iput-object v3, p0, Landroid/app/SyncNotedAppOp;->mAttributionTag:Ljava/lang/String;

    .line 246
    iput-object v4, p0, Landroid/app/SyncNotedAppOp;->mPackageName:Ljava/lang/String;

    .line 249
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 271
    return-void
.end method

.method private blacklist opCodeToString()Ljava/lang/String;
    .registers 2

    .line 123
    invoke-virtual {p0}, Landroid/app/SyncNotedAppOp;->getOp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 224
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 180
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 181
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_38

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_38

    .line 183
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/app/SyncNotedAppOp;

    .line 185
    .local v2, "that":Landroid/app/SyncNotedAppOp;
    iget v3, p0, Landroid/app/SyncNotedAppOp;->mOpMode:I

    iget v4, v2, Landroid/app/SyncNotedAppOp;->mOpMode:I

    if-ne v3, v4, :cond_36

    iget v3, p0, Landroid/app/SyncNotedAppOp;->mOpCode:I

    iget v4, v2, Landroid/app/SyncNotedAppOp;->mOpCode:I

    if-ne v3, v4, :cond_36

    iget-object v3, p0, Landroid/app/SyncNotedAppOp;->mAttributionTag:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/SyncNotedAppOp;->mAttributionTag:Ljava/lang/String;

    .line 188
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    iget-object v3, p0, Landroid/app/SyncNotedAppOp;->mPackageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/SyncNotedAppOp;->mPackageName:Ljava/lang/String;

    .line 189
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    goto :goto_37

    :cond_36
    move v0, v1

    .line 185
    :goto_37
    return v0

    .line 181
    .end local v2    # "that":Landroid/app/SyncNotedAppOp;
    :cond_38
    :goto_38
    return v1
.end method

.method public whitelist getAttributionTag()Ljava/lang/String;
    .registers 2

    .line 146
    iget-object v0, p0, Landroid/app/SyncNotedAppOp;->mAttributionTag:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getOp()Ljava/lang/String;
    .registers 2

    .line 112
    iget v0, p0, Landroid/app/SyncNotedAppOp;->mOpCode:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getOpMode()I
    .registers 2

    .line 119
    iget v0, p0, Landroid/app/SyncNotedAppOp;->mOpMode:I

    return v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .registers 2

    .line 156
    iget-object v0, p0, Landroid/app/SyncNotedAppOp;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 198
    const/4 v0, 0x1

    .line 199
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/SyncNotedAppOp;->mOpMode:I

    add-int/2addr v1, v2

    .line 200
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/app/SyncNotedAppOp;->mOpCode:I

    add-int/2addr v0, v2

    .line 201
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/SyncNotedAppOp;->mAttributionTag:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 202
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/app/SyncNotedAppOp;->mPackageName:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 203
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SyncNotedAppOp { opMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/SyncNotedAppOp;->mOpMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", opCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 167
    invoke-direct {p0}, Landroid/app/SyncNotedAppOp;->opCodeToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", attributionTag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/SyncNotedAppOp;->mAttributionTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/SyncNotedAppOp;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 212
    const/4 v0, 0x0

    .line 213
    .local v0, "flg":B
    iget-object v1, p0, Landroid/app/SyncNotedAppOp;->mAttributionTag:Ljava/lang/String;

    if-eqz v1, :cond_8

    or-int/lit8 v1, v0, 0x4

    int-to-byte v0, v1

    .line 214
    :cond_8
    iget-object v1, p0, Landroid/app/SyncNotedAppOp;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_f

    or-int/lit8 v1, v0, 0x8

    int-to-byte v0, v1

    .line 215
    :cond_f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 216
    iget v1, p0, Landroid/app/SyncNotedAppOp;->mOpMode:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    iget v1, p0, Landroid/app/SyncNotedAppOp;->mOpCode:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    iget-object v1, p0, Landroid/app/SyncNotedAppOp;->mAttributionTag:Ljava/lang/String;

    if-eqz v1, :cond_25

    iget-object v1, p0, Landroid/app/SyncNotedAppOp;->mAttributionTag:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 219
    :cond_25
    iget-object v1, p0, Landroid/app/SyncNotedAppOp;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_2e

    iget-object v1, p0, Landroid/app/SyncNotedAppOp;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 220
    :cond_2e
    return-void
.end method
