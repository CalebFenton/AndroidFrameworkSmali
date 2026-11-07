.class public Lcom/android/os/coregraphics/HwuiStatsLog;
.super Ljava/lang/Object;
.source "HwuiStatsLog.java"


# static fields
.field public static final blacklist ANNOTATION_ID_DEFAULT_STATE:B = 0x6t

.field public static final blacklist ANNOTATION_ID_EXCLUSIVE_STATE:B = 0x4t

.field public static final blacklist ANNOTATION_ID_IS_UID:B = 0x1t

.field public static final blacklist ANNOTATION_ID_PRIMARY_FIELD:B = 0x3t

.field public static final blacklist ANNOTATION_ID_PRIMARY_FIELD_FIRST_UID:B = 0x5t

.field public static final blacklist ANNOTATION_ID_STATE_NESTED:B = 0x8t

.field public static final blacklist ANNOTATION_ID_TRIGGER_STATE_RESET:B = 0x7t

.field public static final blacklist ANNOTATION_ID_TRUNCATE_TIMESTAMP:B = 0x2t

.field public static final blacklist GRAPHICS_STATS:I = 0x2754

.field public static final blacklist GRAPHICS_STATS__PIPELINE__GL:I = 0x1

.field public static final blacklist GRAPHICS_STATS__PIPELINE__UNKNOWN:I = 0x0

.field public static final blacklist GRAPHICS_STATS__PIPELINE__VULKAN:I = 0x2

.field public static final blacklist HARDWARE_RENDERER_EVENT:I = 0x3b2

.field public static final blacklist HARDWARE_RENDERER_EVENT__PREVIOUS_COLOR_MODE__DEFAULT:I = 0x0

.field public static final blacklist HARDWARE_RENDERER_EVENT__PREVIOUS_COLOR_MODE__HDR:I = 0x2

.field public static final blacklist HARDWARE_RENDERER_EVENT__PREVIOUS_COLOR_MODE__WIDE_COLOR:I = 0x1

.field public static final blacklist IMAGE_DECODED:I = 0x3d1

.field public static final blacklist IMAGE_DECODED__COLOR_SPACE_TRANSFER__COLOR_SPACE_TRANSFER_HLGISH:I = 0x3

.field public static final blacklist IMAGE_DECODED__COLOR_SPACE_TRANSFER__COLOR_SPACE_TRANSFER_PQISH:I = 0x2

.field public static final blacklist IMAGE_DECODED__COLOR_SPACE_TRANSFER__COLOR_SPACE_TRANSFER_SRGBISH:I = 0x1

.field public static final blacklist IMAGE_DECODED__COLOR_SPACE_TRANSFER__COLOR_SPACE_TRANSFER_UNKNOWN:I = 0x0

.field public static final blacklist IMAGE_DECODED__FORMAT__BITMAP_FORMAT_ARGB_8888:I = 0x3

.field public static final blacklist IMAGE_DECODED__FORMAT__BITMAP_FORMAT_A_8:I = 0x1

.field public static final blacklist IMAGE_DECODED__FORMAT__BITMAP_FORMAT_RGBA_1010102:I = 0x5

.field public static final blacklist IMAGE_DECODED__FORMAT__BITMAP_FORMAT_RGBA_F16:I = 0x4

.field public static final blacklist IMAGE_DECODED__FORMAT__BITMAP_FORMAT_RGB_565:I = 0x2

.field public static final blacklist IMAGE_DECODED__FORMAT__BITMAP_FORMAT_UNKNOWN:I = 0x0

.field public static final blacklist TEXTURE_VIEW_EVENT:I = 0x3b3


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist buildStatsEvent(ILjava/lang/String;JJJIIIIIIII[B[BJZI)Landroid/util/StatsEvent;
    .registers 38
    .param p0, "code"    # I
    .param p1, "arg1"    # Ljava/lang/String;
    .param p2, "arg2"    # J
    .param p4, "arg3"    # J
    .param p6, "arg4"    # J
    .param p8, "arg5"    # I
    .param p9, "arg6"    # I
    .param p10, "arg7"    # I
    .param p11, "arg8"    # I
    .param p12, "arg9"    # I
    .param p13, "arg10"    # I
    .param p14, "arg11"    # I
    .param p15, "arg12"    # I
    .param p16, "arg13"    # [B
    .param p17, "arg14"    # [B
    .param p18, "arg15"    # J
    .param p20, "arg16"    # Z
    .param p21, "arg17"    # I

    .line 128
    move/from16 v0, p0

    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 129
    .local v1, "builder":Landroid/util/StatsEvent$Builder;
    invoke-virtual {v1, v0}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 130
    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 131
    move-wide/from16 v3, p2

    invoke-virtual {v1, v3, v4}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 132
    move-wide/from16 v5, p4

    invoke-virtual {v1, v5, v6}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 133
    move-wide/from16 v7, p6

    invoke-virtual {v1, v7, v8}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 134
    move/from16 v9, p8

    invoke-virtual {v1, v9}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 135
    move/from16 v10, p9

    invoke-virtual {v1, v10}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 136
    move/from16 v11, p10

    invoke-virtual {v1, v11}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 137
    move/from16 v12, p11

    invoke-virtual {v1, v12}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 138
    move/from16 v13, p12

    invoke-virtual {v1, v13}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 139
    move/from16 v14, p13

    invoke-virtual {v1, v14}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 140
    move/from16 v15, p14

    invoke-virtual {v1, v15}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 141
    move/from16 v2, p15

    invoke-virtual {v1, v2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 142
    const/4 v2, 0x0

    if-nez p16, :cond_4b

    new-array v3, v2, [B

    goto :goto_4d

    :cond_4b
    move-object/from16 v3, p16

    :goto_4d
    invoke-virtual {v1, v3}, Landroid/util/StatsEvent$Builder;->writeByteArray([B)Landroid/util/StatsEvent$Builder;

    .line 143
    if-nez p17, :cond_55

    new-array v2, v2, [B

    goto :goto_57

    :cond_55
    move-object/from16 v2, p17

    :goto_57
    invoke-virtual {v1, v2}, Landroid/util/StatsEvent$Builder;->writeByteArray([B)Landroid/util/StatsEvent$Builder;

    .line 144
    move-wide/from16 v2, p18

    invoke-virtual {v1, v2, v3}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 145
    move/from16 v4, p20

    invoke-virtual {v1, v4}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 146
    move/from16 v2, p21

    invoke-virtual {v1, v2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 147
    const/16 v3, 0x2754

    if-ne v3, v0, :cond_71

    .line 148
    const/4 v3, 0x1

    invoke-virtual {v1, v3, v3}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    .line 151
    :cond_71
    invoke-virtual {v1}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v3

    return-object v3
.end method

.method public static blacklist write(IIIZI)V
    .registers 7
    .param p0, "code"    # I
    .param p1, "arg1"    # I
    .param p2, "arg2"    # I
    .param p3, "arg3"    # Z
    .param p4, "arg4"    # I

    .line 96
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 97
    .local v0, "builder":Landroid/util/StatsEvent$Builder;
    invoke-virtual {v0, p0}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 98
    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 99
    const/16 v1, 0x3d1

    if-ne v1, p0, :cond_12

    .line 100
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    .line 102
    :cond_12
    invoke-virtual {v0, p2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 103
    invoke-virtual {v0, p3}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 104
    invoke-virtual {v0, p4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 106
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 107
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v1

    invoke-static {v1}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 108
    return-void
.end method

.method public static blacklist write(IIJI)V
    .registers 8
    .param p0, "code"    # I
    .param p1, "arg1"    # I
    .param p2, "arg2"    # J
    .param p4, "arg3"    # I

    .line 111
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 112
    .local v0, "builder":Landroid/util/StatsEvent$Builder;
    invoke-virtual {v0, p0}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 113
    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 114
    const/16 v1, 0x3b2

    const/4 v2, 0x1

    if-ne v1, p0, :cond_12

    .line 115
    invoke-virtual {v0, v2, v2}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    .line 117
    :cond_12
    const/16 v1, 0x3b3

    if-ne v1, p0, :cond_19

    .line 118
    invoke-virtual {v0, v2, v2}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    .line 120
    :cond_19
    invoke-virtual {v0, p2, p3}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 121
    invoke-virtual {v0, p4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 123
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 124
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v1

    invoke-static {v1}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 125
    return-void
.end method
