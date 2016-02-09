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
.field private final mHorizontalDpi:I

.field private final mId:Ljava/lang/String;

.field private final mLabel:Ljava/lang/String;

.field private final mVerticalDpi:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "horizontalDpi"    # I
    .param p4, "verticalDpi"    # I

    #@0
    .prologue
    .line 1066
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1067
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 1068
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    const-string/jumbo v1, "id cannot be empty."

    #@e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 1070
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_1

    #@18
    .line 1071
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1a
    const-string/jumbo v1, "label cannot be empty."

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 1073
    :cond_1
    if-gtz p3, :cond_2

    #@23
    .line 1074
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@25
    const-string/jumbo v1, "horizontalDpi cannot be less than or equal to zero."

    #@28
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v0

    #@2c
    .line 1077
    :cond_2
    if-gtz p4, :cond_3

    #@2e
    .line 1078
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@30
    const-string/jumbo v1, "verticalDpi cannot be less than or equal to zero."

    #@33
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@36
    throw v0

    #@37
    .line 1081
    :cond_3
    iput-object p1, p0, Landroid/print/PrintAttributes$Resolution;->mId:Ljava/lang/String;

    #@39
    .line 1082
    iput-object p2, p0, Landroid/print/PrintAttributes$Resolution;->mLabel:Ljava/lang/String;

    #@3b
    .line 1083
    iput p3, p0, Landroid/print/PrintAttributes$Resolution;->mHorizontalDpi:I

    #@3d
    .line 1084
    iput p4, p0, Landroid/print/PrintAttributes$Resolution;->mVerticalDpi:I

    #@3f
    .line 1066
    return-void
.end method

.method static createFromParcel(Landroid/os/Parcel;)Landroid/print/PrintAttributes$Resolution;
    .locals 5
    .param p0, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1136
    new-instance v0, Landroid/print/PrintAttributes$Resolution;

    #@2
    .line 1137
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    .line 1138
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    .line 1139
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@d
    move-result v3

    #@e
    .line 1140
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@11
    move-result v4

    #@12
    .line 1136
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/print/PrintAttributes$Resolution;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    #@15
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 1154
    if-ne p0, p1, :cond_0

    #@4
    .line 1155
    return v4

    #@5
    .line 1157
    :cond_0
    if-nez p1, :cond_1

    #@7
    .line 1158
    return v3

    #@8
    .line 1160
    :cond_1
    invoke-virtual {p0}, Landroid/print/PrintAttributes$Resolution;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@f
    move-result-object v2

    #@10
    if-eq v1, v2, :cond_2

    #@12
    .line 1161
    return v3

    #@13
    :cond_2
    move-object v0, p1

    #@14
    .line 1163
    check-cast v0, Landroid/print/PrintAttributes$Resolution;

    #@16
    .line 1164
    .local v0, "other":Landroid/print/PrintAttributes$Resolution;
    iget v1, p0, Landroid/print/PrintAttributes$Resolution;->mHorizontalDpi:I

    #@18
    iget v2, v0, Landroid/print/PrintAttributes$Resolution;->mHorizontalDpi:I

    #@1a
    if-eq v1, v2, :cond_3

    #@1c
    .line 1165
    return v3

    #@1d
    .line 1167
    :cond_3
    iget v1, p0, Landroid/print/PrintAttributes$Resolution;->mVerticalDpi:I

    #@1f
    iget v2, v0, Landroid/print/PrintAttributes$Resolution;->mVerticalDpi:I

    #@21
    if-eq v1, v2, :cond_4

    #@23
    .line 1168
    return v3

    #@24
    .line 1170
    :cond_4
    return v4
.end method

.method public getHorizontalDpi()I
    .locals 1

    #@0
    .prologue
    .line 1116
    iget v0, p0, Landroid/print/PrintAttributes$Resolution;->mHorizontalDpi:I

    #@2
    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1098
    iget-object v0, p0, Landroid/print/PrintAttributes$Resolution;->mId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1107
    iget-object v0, p0, Landroid/print/PrintAttributes$Resolution;->mLabel:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getVerticalDpi()I
    .locals 1

    #@0
    .prologue
    .line 1125
    iget v0, p0, Landroid/print/PrintAttributes$Resolution;->mVerticalDpi:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    .line 1145
    const/16 v0, 0x1f

    #@2
    .line 1147
    .local v0, "prime":I
    iget v2, p0, Landroid/print/PrintAttributes$Resolution;->mHorizontalDpi:I

    #@4
    add-int/lit8 v1, v2, 0x1f

    #@6
    .line 1148
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    #@8
    iget v3, p0, Landroid/print/PrintAttributes$Resolution;->mVerticalDpi:I

    #@a
    add-int v1, v2, v3

    #@c
    .line 1149
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 1175
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 1176
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "Resolution{"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 1177
    const-string/jumbo v1, "id: "

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    iget-object v2, p0, Landroid/print/PrintAttributes$Resolution;->mId:Ljava/lang/String;

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    .line 1178
    const-string/jumbo v1, ", label: "

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    iget-object v2, p0, Landroid/print/PrintAttributes$Resolution;->mLabel:Ljava/lang/String;

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    .line 1179
    const-string/jumbo v1, ", horizontalDpi: "

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    iget v2, p0, Landroid/print/PrintAttributes$Resolution;->mHorizontalDpi:I

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    .line 1180
    const-string/jumbo v1, ", verticalDpi: "

    #@32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    iget v2, p0, Landroid/print/PrintAttributes$Resolution;->mVerticalDpi:I

    #@38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    .line 1181
    const-string/jumbo v1, "}"

    #@3e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    .line 1182
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v1

    #@45
    return-object v1
.end method

.method writeToParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1129
    iget-object v0, p0, Landroid/print/PrintAttributes$Resolution;->mId:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 1130
    iget-object v0, p0, Landroid/print/PrintAttributes$Resolution;->mLabel:Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a
    .line 1131
    iget v0, p0, Landroid/print/PrintAttributes$Resolution;->mHorizontalDpi:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 1132
    iget v0, p0, Landroid/print/PrintAttributes$Resolution;->mVerticalDpi:I

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1128
    return-void
.end method
