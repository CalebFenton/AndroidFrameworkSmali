.class final Landroid/location/GpsMeasurement$1;
.super Ljava/lang/Object;
.source "GpsMeasurement.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GpsMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/location/GpsMeasurement;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/location/GpsMeasurement;
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1163
    new-instance v0, Landroid/location/GpsMeasurement;

    #@3
    invoke-direct {v0}, Landroid/location/GpsMeasurement;-><init>()V

    #@6
    .line 1165
    .local v0, "gpsMeasurement":Landroid/location/GpsMeasurement;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@9
    move-result v2

    #@a
    invoke-static {v0, v2}, Landroid/location/GpsMeasurement;->-set17(Landroid/location/GpsMeasurement;I)I

    #@d
    .line 1166
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    #@10
    move-result v2

    #@11
    invoke-static {v0, v2}, Landroid/location/GpsMeasurement;->-set20(Landroid/location/GpsMeasurement;B)B

    #@14
    .line 1167
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    #@17
    move-result-wide v2

    #@18
    invoke-static {v0, v2, v3}, Landroid/location/GpsMeasurement;->-set30(Landroid/location/GpsMeasurement;D)D

    #@1b
    .line 1168
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v2

    #@1f
    int-to-short v2, v2

    #@20
    invoke-static {v0, v2}, Landroid/location/GpsMeasurement;->-set28(Landroid/location/GpsMeasurement;S)S

    #@23
    .line 1169
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@26
    move-result-wide v2

    #@27
    invoke-static {v0, v2, v3}, Landroid/location/GpsMeasurement;->-set25(Landroid/location/GpsMeasurement;J)J

    #@2a
    .line 1170
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@2d
    move-result-wide v2

    #@2e
    invoke-static {v0, v2, v3}, Landroid/location/GpsMeasurement;->-set26(Landroid/location/GpsMeasurement;J)J

    #@31
    .line 1171
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    #@34
    move-result-wide v2

    #@35
    invoke-static {v0, v2, v3}, Landroid/location/GpsMeasurement;->-set10(Landroid/location/GpsMeasurement;D)D

    #@38
    .line 1172
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    #@3b
    move-result-wide v2

    #@3c
    invoke-static {v0, v2, v3}, Landroid/location/GpsMeasurement;->-set22(Landroid/location/GpsMeasurement;D)D

    #@3f
    .line 1173
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    #@42
    move-result-wide v2

    #@43
    invoke-static {v0, v2, v3}, Landroid/location/GpsMeasurement;->-set23(Landroid/location/GpsMeasurement;D)D

    #@46
    .line 1174
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@49
    move-result v2

    #@4a
    int-to-short v2, v2

    #@4b
    invoke-static {v0, v2}, Landroid/location/GpsMeasurement;->-set1(Landroid/location/GpsMeasurement;S)S

    #@4e
    .line 1175
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    #@51
    move-result-wide v2

    #@52
    invoke-static {v0, v2, v3}, Landroid/location/GpsMeasurement;->-set0(Landroid/location/GpsMeasurement;D)D

    #@55
    .line 1176
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    #@58
    move-result-wide v2

    #@59
    invoke-static {v0, v2, v3}, Landroid/location/GpsMeasurement;->-set2(Landroid/location/GpsMeasurement;D)D

    #@5c
    .line 1177
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    #@5f
    move-result-wide v2

    #@60
    invoke-static {v0, v2, v3}, Landroid/location/GpsMeasurement;->-set21(Landroid/location/GpsMeasurement;D)D

    #@63
    .line 1178
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    #@66
    move-result-wide v2

    #@67
    invoke-static {v0, v2, v3}, Landroid/location/GpsMeasurement;->-set24(Landroid/location/GpsMeasurement;D)D

    #@6a
    .line 1179
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    #@6d
    move-result-wide v2

    #@6e
    invoke-static {v0, v2, v3}, Landroid/location/GpsMeasurement;->-set11(Landroid/location/GpsMeasurement;D)D

    #@71
    .line 1180
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    #@74
    move-result-wide v2

    #@75
    invoke-static {v0, v2, v3}, Landroid/location/GpsMeasurement;->-set12(Landroid/location/GpsMeasurement;D)D

    #@78
    .line 1181
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@7b
    move-result v2

    #@7c
    invoke-static {v0, v2}, Landroid/location/GpsMeasurement;->-set7(Landroid/location/GpsMeasurement;F)F

    #@7f
    .line 1182
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@82
    move-result-wide v2

    #@83
    invoke-static {v0, v2, v3}, Landroid/location/GpsMeasurement;->-set6(Landroid/location/GpsMeasurement;J)J

    #@86
    .line 1183
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    #@89
    move-result-wide v2

    #@8a
    invoke-static {v0, v2, v3}, Landroid/location/GpsMeasurement;->-set8(Landroid/location/GpsMeasurement;D)D

    #@8d
    .line 1184
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    #@90
    move-result-wide v2

    #@91
    invoke-static {v0, v2, v3}, Landroid/location/GpsMeasurement;->-set9(Landroid/location/GpsMeasurement;D)D

    #@94
    .line 1185
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    #@97
    move-result v2

    #@98
    invoke-static {v0, v2}, Landroid/location/GpsMeasurement;->-set18(Landroid/location/GpsMeasurement;B)B

    #@9b
    .line 1186
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@9e
    move-result v2

    #@9f
    invoke-static {v0, v2}, Landroid/location/GpsMeasurement;->-set5(Landroid/location/GpsMeasurement;I)I

    #@a2
    .line 1187
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@a5
    move-result v2

    #@a6
    int-to-short v2, v2

    #@a7
    invoke-static {v0, v2}, Landroid/location/GpsMeasurement;->-set29(Landroid/location/GpsMeasurement;S)S

    #@aa
    .line 1188
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    #@ad
    move-result-wide v2

    #@ae
    invoke-static {v0, v2, v3}, Landroid/location/GpsMeasurement;->-set13(Landroid/location/GpsMeasurement;D)D

    #@b1
    .line 1189
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    #@b4
    move-result-wide v2

    #@b5
    invoke-static {v0, v2, v3}, Landroid/location/GpsMeasurement;->-set14(Landroid/location/GpsMeasurement;D)D

    #@b8
    .line 1190
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    #@bb
    move-result v2

    #@bc
    invoke-static {v0, v2}, Landroid/location/GpsMeasurement;->-set19(Landroid/location/GpsMeasurement;B)B

    #@bf
    .line 1191
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    #@c2
    move-result-wide v2

    #@c3
    invoke-static {v0, v2, v3}, Landroid/location/GpsMeasurement;->-set27(Landroid/location/GpsMeasurement;D)D

    #@c6
    .line 1192
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    #@c9
    move-result-wide v2

    #@ca
    invoke-static {v0, v2, v3}, Landroid/location/GpsMeasurement;->-set15(Landroid/location/GpsMeasurement;D)D

    #@cd
    .line 1193
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    #@d0
    move-result-wide v2

    #@d1
    invoke-static {v0, v2, v3}, Landroid/location/GpsMeasurement;->-set16(Landroid/location/GpsMeasurement;D)D

    #@d4
    .line 1194
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    #@d7
    move-result-wide v2

    #@d8
    invoke-static {v0, v2, v3}, Landroid/location/GpsMeasurement;->-set3(Landroid/location/GpsMeasurement;D)D

    #@db
    .line 1195
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    #@de
    move-result-wide v2

    #@df
    invoke-static {v0, v2, v3}, Landroid/location/GpsMeasurement;->-set4(Landroid/location/GpsMeasurement;D)D

    #@e2
    .line 1196
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@e5
    move-result v2

    #@e6
    if-eqz v2, :cond_0

    #@e8
    const/4 v1, 0x1

    #@e9
    :cond_0
    invoke-static {v0, v1}, Landroid/location/GpsMeasurement;->-set31(Landroid/location/GpsMeasurement;Z)Z

    #@ec
    .line 1198
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1162
    invoke-virtual {p0, p1}, Landroid/location/GpsMeasurement$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GpsMeasurement;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/location/GpsMeasurement;
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 1203
    new-array v0, p1, [Landroid/location/GpsMeasurement;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 1202
    invoke-virtual {p0, p1}, Landroid/location/GpsMeasurement$1;->newArray(I)[Landroid/location/GpsMeasurement;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
