.class Ljava/util/Base64$DecInputStream;
.super Ljava/io/InputStream;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DecInputStream"
.end annotation


# instance fields
.field private final greylist-max-o base64:[I

.field private greylist-max-o bits:I

.field private greylist-max-o closed:Z

.field private greylist-max-o eof:Z

.field private final greylist-max-o is:Ljava/io/InputStream;

.field private final greylist-max-o isMIME:Z

.field private blacklist rpos:I

.field private greylist-max-o sbBuf:[B

.field private blacklist wpos:I


# direct methods
.method constructor greylist-max-o <init>(Ljava/io/InputStream;[IZ)V
    .registers 5
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "base64"    # [I
    .param p3, "isMIME"    # Z

    .line 1034
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 1023
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/Base64$DecInputStream;->bits:I

    .line 1026
    iput v0, p0, Ljava/util/Base64$DecInputStream;->wpos:I

    .line 1029
    iput v0, p0, Ljava/util/Base64$DecInputStream;->rpos:I

    .line 1031
    iput-boolean v0, p0, Ljava/util/Base64$DecInputStream;->eof:Z

    .line 1032
    iput-boolean v0, p0, Ljava/util/Base64$DecInputStream;->closed:Z

    .line 1040
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/util/Base64$DecInputStream;->sbBuf:[B

    .line 1035
    iput-object p1, p0, Ljava/util/Base64$DecInputStream;->is:Ljava/io/InputStream;

    .line 1036
    iput-object p2, p0, Ljava/util/Base64$DecInputStream;->base64:[I

    .line 1037
    iput-boolean p3, p0, Ljava/util/Base64$DecInputStream;->isMIME:Z

    .line 1038
    return-void
.end method

.method private blacklist eof([BIII)I
    .registers 7
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "pos"    # I
    .param p4, "limit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1068
    iget v0, p0, Ljava/util/Base64$DecInputStream;->wpos:I

    const/16 v1, 0x12

    if-eq v0, v1, :cond_f

    .line 1071
    const/16 v0, 0x18

    iput v0, p0, Ljava/util/Base64$DecInputStream;->rpos:I

    .line 1072
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/util/Base64$DecInputStream;->leftovers([BIII)I

    move-result v0

    return v0

    .line 1069
    :cond_f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Base64 stream has one un-decoded dangling byte."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist leftovers([BIII)I
    .registers 8
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "pos"    # I
    .param p4, "limit"    # I

    .line 1048
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/Base64$DecInputStream;->eof:Z

    .line 1054
    :goto_3
    iget v0, p0, Ljava/util/Base64$DecInputStream;->rpos:I

    add-int/lit8 v0, v0, -0x8

    iget v1, p0, Ljava/util/Base64$DecInputStream;->wpos:I

    if-lt v0, v1, :cond_1f

    if-eq p3, p4, :cond_1f

    .line 1055
    iget v0, p0, Ljava/util/Base64$DecInputStream;->rpos:I

    add-int/lit8 v0, v0, -0x8

    iput v0, p0, Ljava/util/Base64$DecInputStream;->rpos:I

    .line 1056
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "pos":I
    .local v0, "pos":I
    iget v1, p0, Ljava/util/Base64$DecInputStream;->bits:I

    iget v2, p0, Ljava/util/Base64$DecInputStream;->rpos:I

    shr-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, p3

    move p3, v0

    goto :goto_3

    .line 1058
    .end local v0    # "pos":I
    .restart local p3    # "pos":I
    :cond_1f
    sub-int v0, p3, p2

    if-nez v0, :cond_2e

    iget v0, p0, Ljava/util/Base64$DecInputStream;->rpos:I

    add-int/lit8 v0, v0, -0x8

    iget v1, p0, Ljava/util/Base64$DecInputStream;->wpos:I

    if-lt v0, v1, :cond_2c

    goto :goto_2e

    :cond_2c
    const/4 v0, -0x1

    goto :goto_30

    :cond_2e
    :goto_2e
    sub-int v0, p3, p2

    :goto_30
    return v0
.end method

.method private blacklist padding([BIII)I
    .registers 8
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "pos"    # I
    .param p4, "limit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1084
    iget v0, p0, Ljava/util/Base64$DecInputStream;->wpos:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_1f

    iget v0, p0, Ljava/util/Base64$DecInputStream;->wpos:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Ljava/util/Base64$DecInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_1f

    .line 1087
    :cond_16
    const/16 v0, 0x18

    iput v0, p0, Ljava/util/Base64$DecInputStream;->rpos:I

    .line 1088
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/util/Base64$DecInputStream;->leftovers([BIII)I

    move-result v0

    return v0

    .line 1085
    :cond_1f
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal base64 ending sequence:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/util/Base64$DecInputStream;->wpos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1198
    iget-boolean v0, p0, Ljava/util/Base64$DecInputStream;->closed:Z

    if-nez v0, :cond_b

    .line 1200
    iget-object v0, p0, Ljava/util/Base64$DecInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0

    .line 1199
    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1205
    iget-boolean v0, p0, Ljava/util/Base64$DecInputStream;->closed:Z

    if-nez v0, :cond_c

    .line 1206
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/Base64$DecInputStream;->closed:Z

    .line 1207
    iget-object v0, p0, Ljava/util/Base64$DecInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 1209
    :cond_c
    return-void
.end method

.method public whitelist test-api read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1044
    iget-object v0, p0, Ljava/util/Base64$DecInputStream;->sbBuf:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Ljava/util/Base64$DecInputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    goto :goto_12

    :cond_c
    iget-object v0, p0, Ljava/util/Base64$DecInputStream;->sbBuf:[B

    aget-byte v0, v0, v2

    and-int/lit16 v1, v0, 0xff

    :goto_12
    return v1
.end method

.method public whitelist test-api read([BII)I
    .registers 14
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1093
    iget-boolean v0, p0, Ljava/util/Base64$DecInputStream;->closed:Z

    if-nez v0, :cond_d3

    .line 1096
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/util/Objects;->checkFromIndexSize(III)I

    .line 1097
    const/4 v0, 0x0

    if-nez p3, :cond_c

    .line 1098
    return v0

    .line 1111
    :cond_c
    move v1, p2

    .line 1112
    .local v1, "pos":I
    add-int v2, p2, p3

    .line 1113
    .local v2, "limit":I
    iget-boolean v3, p0, Ljava/util/Base64$DecInputStream;->eof:Z

    if-eqz v3, :cond_18

    .line 1114
    invoke-direct {p0, p1, p2, v1, v2}, Ljava/util/Base64$DecInputStream;->leftovers([BIII)I

    move-result v0

    return v0

    .line 1126
    :cond_18
    iget v3, p0, Ljava/util/Base64$DecInputStream;->rpos:I

    const/16 v4, 0x10

    const/16 v5, 0x8

    if-ne v3, v4, :cond_2e

    .line 1127
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "pos":I
    .local v3, "pos":I
    iget v6, p0, Ljava/util/Base64$DecInputStream;->bits:I

    shr-int/2addr v6, v5

    int-to-byte v6, v6

    aput-byte v6, p1, v1

    .line 1128
    iput v5, p0, Ljava/util/Base64$DecInputStream;->rpos:I

    .line 1129
    if-ne v3, v2, :cond_2d

    .line 1130
    return p3

    .line 1129
    :cond_2d
    move v1, v3

    .line 1133
    .end local v3    # "pos":I
    .restart local v1    # "pos":I
    :cond_2e
    iget v3, p0, Ljava/util/Base64$DecInputStream;->rpos:I

    if-ne v3, v5, :cond_3f

    .line 1134
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "pos":I
    .restart local v3    # "pos":I
    iget v6, p0, Ljava/util/Base64$DecInputStream;->bits:I

    int-to-byte v6, v6

    aput-byte v6, p1, v1

    .line 1135
    iput v0, p0, Ljava/util/Base64$DecInputStream;->rpos:I

    .line 1136
    if-ne v3, v2, :cond_3e

    .line 1137
    return p3

    .line 1136
    :cond_3e
    move v1, v3

    .line 1141
    .end local v3    # "pos":I
    .restart local v1    # "pos":I
    :cond_3f
    iput v0, p0, Ljava/util/Base64$DecInputStream;->bits:I

    .line 1142
    const/16 v3, 0x18

    iput v3, p0, Ljava/util/Base64$DecInputStream;->wpos:I

    .line 1145
    :goto_45
    iget-object v6, p0, Ljava/util/Base64$DecInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 1146
    .local v6, "i":I
    if-gez v6, :cond_52

    .line 1147
    invoke-direct {p0, p1, p2, v1, v2}, Ljava/util/Base64$DecInputStream;->eof([BIII)I

    move-result v0

    return v0

    .line 1149
    :cond_52
    iget-object v7, p0, Ljava/util/Base64$DecInputStream;->base64:[I

    aget v7, v7, v6

    .line 1150
    .local v7, "v":I
    if-gez v7, :cond_82

    .line 1156
    const/4 v8, -0x1

    if-ne v7, v8, :cond_7d

    .line 1157
    iget-boolean v8, p0, Ljava/util/Base64$DecInputStream;->isMIME:Z

    if-eqz v8, :cond_60

    .line 1158
    goto :goto_45

    .line 1160
    :cond_60
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal base64 character 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1161
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1163
    :cond_7d
    invoke-direct {p0, p1, p2, v1, v2}, Ljava/util/Base64$DecInputStream;->padding([BIII)I

    move-result v0

    return v0

    .line 1165
    :cond_82
    iget v8, p0, Ljava/util/Base64$DecInputStream;->wpos:I

    add-int/lit8 v8, v8, -0x6

    iput v8, p0, Ljava/util/Base64$DecInputStream;->wpos:I

    .line 1166
    iget v8, p0, Ljava/util/Base64$DecInputStream;->bits:I

    iget v9, p0, Ljava/util/Base64$DecInputStream;->wpos:I

    shl-int v9, v7, v9

    or-int/2addr v8, v9

    iput v8, p0, Ljava/util/Base64$DecInputStream;->bits:I

    .line 1167
    iget v8, p0, Ljava/util/Base64$DecInputStream;->wpos:I

    if-eqz v8, :cond_96

    .line 1168
    goto :goto_45

    .line 1170
    :cond_96
    sub-int v8, v2, v1

    const/4 v9, 0x3

    if-lt v8, v9, :cond_bb

    .line 1172
    add-int/lit8 v8, v1, 0x1

    .end local v1    # "pos":I
    .local v8, "pos":I
    iget v9, p0, Ljava/util/Base64$DecInputStream;->bits:I

    shr-int/2addr v9, v4

    int-to-byte v9, v9

    aput-byte v9, p1, v1

    .line 1173
    add-int/lit8 v1, v8, 0x1

    .end local v8    # "pos":I
    .restart local v1    # "pos":I
    iget v9, p0, Ljava/util/Base64$DecInputStream;->bits:I

    shr-int/2addr v9, v5

    int-to-byte v9, v9

    aput-byte v9, p1, v8

    .line 1174
    add-int/lit8 v8, v1, 0x1

    .end local v1    # "pos":I
    .restart local v8    # "pos":I
    iget v9, p0, Ljava/util/Base64$DecInputStream;->bits:I

    int-to-byte v9, v9

    aput-byte v9, p1, v1

    .line 1175
    iput v0, p0, Ljava/util/Base64$DecInputStream;->bits:I

    .line 1176
    iput v3, p0, Ljava/util/Base64$DecInputStream;->wpos:I

    .line 1177
    if-ne v8, v2, :cond_b9

    .line 1178
    return p3

    .line 1177
    :cond_b9
    move v1, v8

    goto :goto_45

    .line 1184
    .end local v8    # "pos":I
    .restart local v1    # "pos":I
    :cond_bb
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "pos":I
    .local v0, "pos":I
    iget v3, p0, Ljava/util/Base64$DecInputStream;->bits:I

    shr-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p1, v1

    .line 1185
    if-ne v0, v2, :cond_c8

    .line 1186
    iput v4, p0, Ljava/util/Base64$DecInputStream;->rpos:I

    .line 1187
    return p3

    .line 1189
    :cond_c8
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "pos":I
    .restart local v1    # "pos":I
    iget v3, p0, Ljava/util/Base64$DecInputStream;->bits:I

    shr-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    .line 1191
    iput v5, p0, Ljava/util/Base64$DecInputStream;->rpos:I

    .line 1192
    return p3

    .line 1094
    .end local v1    # "pos":I
    .end local v2    # "limit":I
    .end local v6    # "i":I
    .end local v7    # "v":I
    :cond_d3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
