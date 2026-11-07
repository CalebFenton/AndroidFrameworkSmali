.class public final Landroid/print/PrintAttributes$Resolution;
.super Ljava/lang/Object;
.source "PrintAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Resolution"
.end annotation


# instance fields
.field private final greylist-max-o mHorizontalDpi:I

.field private final greylist-max-o mId:Ljava/lang/String;

.field private final greylist-max-o mLabel:Ljava/lang/String;

.field private final greylist-max-o mVerticalDpi:I


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "horizontalDpi"    # I
    .param p4, "verticalDpi"    # I

    .line 1144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1145
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 1148
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 1151
    if-lez p3, :cond_25

    .line 1155
    if-lez p4, :cond_1c

    .line 1159
    iput-object p1, p0, Landroid/print/PrintAttributes$Resolution;->mId:Ljava/lang/String;

    .line 1160
    iput-object p2, p0, Landroid/print/PrintAttributes$Resolution;->mLabel:Ljava/lang/String;

    .line 1161
    iput p3, p0, Landroid/print/PrintAttributes$Resolution;->mHorizontalDpi:I

    .line 1162
    iput p4, p0, Landroid/print/PrintAttributes$Resolution;->mVerticalDpi:I

    .line 1163
    return-void

    .line 1156
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "verticalDpi cannot be less than or equal to zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1152
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "horizontalDpi cannot be less than or equal to zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1149
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "label cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1146
    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "id cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static greylist-max-o createFromParcel(Landroid/os/Parcel;)Landroid/print/PrintAttributes$Resolution;
    .registers 6
    .param p0, "parcel"    # Landroid/os/Parcel;

    .line 1214
    new-instance v0, Landroid/print/PrintAttributes$Resolution;

    .line 1215
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1216
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1217
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1218
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/print/PrintAttributes$Resolution;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 1214
    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1232
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1233
    return v0

    .line 1235
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 1236
    return v1

    .line 1238
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 1239
    return v1

    .line 1241
    :cond_13
    move-object v2, p1

    check-cast v2, Landroid/print/PrintAttributes$Resolution;

    .line 1242
    .local v2, "other":Landroid/print/PrintAttributes$Resolution;
    iget v3, p0, Landroid/print/PrintAttributes$Resolution;->mHorizontalDpi:I

    iget v4, v2, Landroid/print/PrintAttributes$Resolution;->mHorizontalDpi:I

    if-eq v3, v4, :cond_1d

    .line 1243
    return v1

    .line 1245
    :cond_1d
    iget v3, p0, Landroid/print/PrintAttributes$Resolution;->mVerticalDpi:I

    iget v4, v2, Landroid/print/PrintAttributes$Resolution;->mVerticalDpi:I

    if-eq v3, v4, :cond_24

    .line 1246
    return v1

    .line 1248
    :cond_24
    return v0
.end method

.method public whitelist getHorizontalDpi()I
    .registers 2

    .line 1194
    iget v0, p0, Landroid/print/PrintAttributes$Resolution;->mHorizontalDpi:I

    return v0
.end method

.method public whitelist getId()Ljava/lang/String;
    .registers 2

    .line 1176
    iget-object v0, p0, Landroid/print/PrintAttributes$Resolution;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getLabel()Ljava/lang/String;
    .registers 2

    .line 1185
    iget-object v0, p0, Landroid/print/PrintAttributes$Resolution;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getVerticalDpi()I
    .registers 2

    .line 1203
    iget v0, p0, Landroid/print/PrintAttributes$Resolution;->mVerticalDpi:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 1223
    const/16 v0, 0x1f

    .line 1224
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 1225
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/print/PrintAttributes$Resolution;->mHorizontalDpi:I

    add-int/2addr v2, v3

    .line 1226
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget v3, p0, Landroid/print/PrintAttributes$Resolution;->mVerticalDpi:I

    add-int/2addr v1, v3

    .line 1227
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 1253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1254
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "Resolution{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1255
    const-string/jumbo v1, "id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/print/PrintAttributes$Resolution;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1256
    const-string v1, ", label: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/print/PrintAttributes$Resolution;->mLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1257
    const-string v1, ", horizontalDpi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/print/PrintAttributes$Resolution;->mHorizontalDpi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1258
    const-string v1, ", verticalDpi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/print/PrintAttributes$Resolution;->mVerticalDpi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1259
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1260
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method greylist-max-o writeToParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 1207
    iget-object v0, p0, Landroid/print/PrintAttributes$Resolution;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1208
    iget-object v0, p0, Landroid/print/PrintAttributes$Resolution;->mLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1209
    iget v0, p0, Landroid/print/PrintAttributes$Resolution;->mHorizontalDpi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1210
    iget v0, p0, Landroid/print/PrintAttributes$Resolution;->mVerticalDpi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1211
    return-void
.end method
