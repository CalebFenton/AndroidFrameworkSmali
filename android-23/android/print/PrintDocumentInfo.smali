.class public final Landroid/print/PrintDocumentInfo;
.super Ljava/lang/Object;
.source "PrintDocumentInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/PrintDocumentInfo$Builder;,
        Landroid/print/PrintDocumentInfo$1;
    }
.end annotation


# static fields
.field public static final CONTENT_TYPE_DOCUMENT:I = 0x0

.field public static final CONTENT_TYPE_PHOTO:I = 0x1

.field public static final CONTENT_TYPE_UNKNOWN:I = -0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/print/PrintDocumentInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final PAGE_COUNT_UNKNOWN:I = -0x1


# instance fields
.field private mContentType:I

.field private mDataSize:J

.field private mName:Ljava/lang/String;

.field private mPageCount:I


# direct methods
.method static synthetic -get0(Landroid/print/PrintDocumentInfo;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/print/PrintDocumentInfo;->mPageCount:I

    #@2
    return v0
.end method

.method static synthetic -set0(Landroid/print/PrintDocumentInfo;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/print/PrintDocumentInfo;->mContentType:I

    #@2
    return p1
.end method

.method static synthetic -set1(Landroid/print/PrintDocumentInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/print/PrintDocumentInfo;->mName:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set2(Landroid/print/PrintDocumentInfo;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/print/PrintDocumentInfo;->mPageCount:I

    #@2
    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 352
    new-instance v0, Landroid/print/PrintDocumentInfo$1;

    #@2
    invoke-direct {v0}, Landroid/print/PrintDocumentInfo$1;-><init>()V

    #@5
    .line 351
    sput-object v0, Landroid/print/PrintDocumentInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 70
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/print/PrintDocumentInfo;->mName:Ljava/lang/String;

    #@9
    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/print/PrintDocumentInfo;->mPageCount:I

    #@f
    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@12
    move-result v0

    #@13
    iput v0, p0, Landroid/print/PrintDocumentInfo;->mContentType:I

    #@15
    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@18
    move-result-wide v0

    #@19
    iput-wide v0, p0, Landroid/print/PrintDocumentInfo;->mDataSize:J

    #@1b
    .line 133
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/print/PrintDocumentInfo;)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/print/PrintDocumentInfo;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/print/PrintDocumentInfo;)V
    .locals 2
    .param p1, "prototype"    # Landroid/print/PrintDocumentInfo;

    #@0
    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 122
    iget-object v0, p1, Landroid/print/PrintDocumentInfo;->mName:Ljava/lang/String;

    #@5
    iput-object v0, p0, Landroid/print/PrintDocumentInfo;->mName:Ljava/lang/String;

    #@7
    .line 123
    iget v0, p1, Landroid/print/PrintDocumentInfo;->mPageCount:I

    #@9
    iput v0, p0, Landroid/print/PrintDocumentInfo;->mPageCount:I

    #@b
    .line 124
    iget v0, p1, Landroid/print/PrintDocumentInfo;->mContentType:I

    #@d
    iput v0, p0, Landroid/print/PrintDocumentInfo;->mContentType:I

    #@f
    .line 125
    iget-wide v0, p1, Landroid/print/PrintDocumentInfo;->mDataSize:J

    #@11
    iput-wide v0, p0, Landroid/print/PrintDocumentInfo;->mDataSize:J

    #@13
    .line 121
    return-void
.end method

.method synthetic constructor <init>(Landroid/print/PrintDocumentInfo;Landroid/print/PrintDocumentInfo;)V
    .locals 0
    .param p1, "prototype"    # Landroid/print/PrintDocumentInfo;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/print/PrintDocumentInfo;-><init>(Landroid/print/PrintDocumentInfo;)V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Landroid/print/PrintDocumentInfo;Landroid/print/PrintDocumentInfo;Landroid/print/PrintDocumentInfo;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/print/PrintDocumentInfo;-><init>()V

    #@3
    return-void
.end method

.method private contentTyepToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "contentType"    # I

    #@0
    .prologue
    .line 259
    packed-switch p1, :pswitch_data_0

    #@3
    .line 267
    const-string/jumbo v0, "CONTENT_TYPE_UNKNOWN"

    #@6
    return-object v0

    #@7
    .line 261
    :pswitch_0
    const-string/jumbo v0, "CONTENT_TYPE_DOCUMENT"

    #@a
    return-object v0

    #@b
    .line 264
    :pswitch_1
    const-string/jumbo v0, "CONTENT_TYPE_PHOTO"

    #@e
    return-object v0

    #@f
    .line 259
    nop

    #@10
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 196
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 221
    if-ne p0, p1, :cond_0

    #@4
    .line 222
    return v7

    #@5
    .line 224
    :cond_0
    if-nez p1, :cond_1

    #@7
    .line 225
    return v6

    #@8
    .line 227
    :cond_1
    invoke-virtual {p0}, Landroid/print/PrintDocumentInfo;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@f
    move-result-object v2

    #@10
    if-eq v1, v2, :cond_2

    #@12
    .line 228
    return v6

    #@13
    :cond_2
    move-object v0, p1

    #@14
    .line 230
    check-cast v0, Landroid/print/PrintDocumentInfo;

    #@16
    .line 231
    .local v0, "other":Landroid/print/PrintDocumentInfo;
    iget-object v1, p0, Landroid/print/PrintDocumentInfo;->mName:Ljava/lang/String;

    #@18
    iget-object v2, v0, Landroid/print/PrintDocumentInfo;->mName:Ljava/lang/String;

    #@1a
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@1d
    move-result v1

    #@1e
    if-nez v1, :cond_3

    #@20
    .line 232
    return v6

    #@21
    .line 234
    :cond_3
    iget v1, p0, Landroid/print/PrintDocumentInfo;->mContentType:I

    #@23
    iget v2, v0, Landroid/print/PrintDocumentInfo;->mContentType:I

    #@25
    if-eq v1, v2, :cond_4

    #@27
    .line 235
    return v6

    #@28
    .line 237
    :cond_4
    iget v1, p0, Landroid/print/PrintDocumentInfo;->mPageCount:I

    #@2a
    iget v2, v0, Landroid/print/PrintDocumentInfo;->mPageCount:I

    #@2c
    if-eq v1, v2, :cond_5

    #@2e
    .line 238
    return v6

    #@2f
    .line 240
    :cond_5
    iget-wide v2, p0, Landroid/print/PrintDocumentInfo;->mDataSize:J

    #@31
    iget-wide v4, v0, Landroid/print/PrintDocumentInfo;->mDataSize:J

    #@33
    cmp-long v1, v2, v4

    #@35
    if-eqz v1, :cond_6

    #@37
    .line 241
    return v6

    #@38
    .line 243
    :cond_6
    return v7
.end method

.method public getContentType()I
    .locals 1

    #@0
    .prologue
    .line 171
    iget v0, p0, Landroid/print/PrintDocumentInfo;->mContentType:I

    #@2
    return v0
.end method

.method public getDataSize()J
    .locals 2

    #@0
    .prologue
    .line 180
    iget-wide v0, p0, Landroid/print/PrintDocumentInfo;->mDataSize:J

    #@2
    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 147
    iget-object v0, p0, Landroid/print/PrintDocumentInfo;->mName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPageCount()I
    .locals 1

    #@0
    .prologue
    .line 158
    iget v0, p0, Landroid/print/PrintDocumentInfo;->mPageCount:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 6

    #@0
    .prologue
    .line 209
    const/16 v0, 0x1f

    #@2
    .line 211
    .local v0, "prime":I
    iget-object v2, p0, Landroid/print/PrintDocumentInfo;->mName:Ljava/lang/String;

    #@4
    if-eqz v2, :cond_0

    #@6
    iget-object v2, p0, Landroid/print/PrintDocumentInfo;->mName:Ljava/lang/String;

    #@8
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    #@b
    move-result v2

    #@c
    :goto_0
    add-int/lit8 v1, v2, 0x1f

    #@e
    .line 212
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    #@10
    iget v3, p0, Landroid/print/PrintDocumentInfo;->mContentType:I

    #@12
    add-int v1, v2, v3

    #@14
    .line 213
    mul-int/lit8 v2, v1, 0x1f

    #@16
    iget v3, p0, Landroid/print/PrintDocumentInfo;->mPageCount:I

    #@18
    add-int v1, v2, v3

    #@1a
    .line 214
    mul-int/lit8 v2, v1, 0x1f

    #@1c
    iget-wide v4, p0, Landroid/print/PrintDocumentInfo;->mDataSize:J

    #@1e
    long-to-int v3, v4

    #@1f
    add-int v1, v2, v3

    #@21
    .line 215
    mul-int/lit8 v2, v1, 0x1f

    #@23
    iget-wide v4, p0, Landroid/print/PrintDocumentInfo;->mDataSize:J

    #@25
    const/16 v3, 0x20

    #@27
    shr-long/2addr v4, v3

    #@28
    long-to-int v3, v4

    #@29
    add-int v1, v2, v3

    #@2b
    .line 216
    return v1

    #@2c
    .line 211
    .end local v1    # "result":I
    :cond_0
    const/4 v2, 0x0

    #@2d
    goto :goto_0
.end method

.method public setDataSize(J)V
    .locals 1
    .param p1, "dataSize"    # J

    #@0
    .prologue
    .line 191
    iput-wide p1, p0, Landroid/print/PrintDocumentInfo;->mDataSize:J

    #@2
    .line 190
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 249
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "PrintDocumentInfo{"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 250
    const-string/jumbo v1, "name="

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    iget-object v2, p0, Landroid/print/PrintDocumentInfo;->mName:Ljava/lang/String;

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    .line 251
    const-string/jumbo v1, ", pageCount="

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    iget v2, p0, Landroid/print/PrintDocumentInfo;->mPageCount:I

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    .line 252
    const-string/jumbo v1, ", contentType="

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    iget v2, p0, Landroid/print/PrintDocumentInfo;->mContentType:I

    #@2c
    invoke-direct {p0, v2}, Landroid/print/PrintDocumentInfo;->contentTyepToString(I)Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    .line 253
    const-string/jumbo v1, ", dataSize="

    #@36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    iget-wide v2, p0, Landroid/print/PrintDocumentInfo;->mDataSize:J

    #@3c
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@3f
    .line 254
    const-string/jumbo v1, "}"

    #@42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    .line 255
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v1

    #@49
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 201
    iget-object v0, p0, Landroid/print/PrintDocumentInfo;->mName:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 202
    iget v0, p0, Landroid/print/PrintDocumentInfo;->mPageCount:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 203
    iget v0, p0, Landroid/print/PrintDocumentInfo;->mContentType:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 204
    iget-wide v0, p0, Landroid/print/PrintDocumentInfo;->mDataSize:J

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@14
    .line 200
    return-void
.end method
