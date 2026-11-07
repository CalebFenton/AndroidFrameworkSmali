.class public Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "TimeAttribute.java"


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "TimeAttribute"

.field private static final blacklist OP_CODE:I = 0xac

.field public static final blacklist TIME_DAY_OF_MONTH:S = 0x9s

.field public static final blacklist TIME_DAY_OF_WEEK:S = 0xbs

.field public static final blacklist TIME_FROM_ARG_HR:S = 0x5s

.field public static final blacklist TIME_FROM_ARG_MIN:S = 0x4s

.field public static final blacklist TIME_FROM_ARG_SEC:S = 0x3s

.field public static final blacklist TIME_FROM_LOAD_SEC:S = 0xes

.field public static final blacklist TIME_FROM_NOW_HR:S = 0x2s

.field public static final blacklist TIME_FROM_NOW_MIN:S = 0x1s

.field public static final blacklist TIME_FROM_NOW_SEC:S = 0x0s

.field public static final blacklist TIME_IN_HR:S = 0x8s

.field public static final blacklist TIME_IN_MIN:S = 0x7s

.field public static final blacklist TIME_IN_SEC:S = 0x6s

.field public static final blacklist TIME_MONTH_VALUE:S = 0xas

.field public static final blacklist TIME_YEAR:S = 0xcs


# instance fields
.field private final blacklist mArgs:[I

.field blacklist mBounds:[F

.field public blacklist mId:I

.field public blacklist mTimeId:I

.field public blacklist mType:S


# direct methods
.method public constructor blacklist <init>(IIS[I)V
    .registers 6
    .param p1, "id"    # I
    .param p2, "longId"    # I
    .param p3, "type"    # S
    .param p4, "args"    # [I

    .line 99
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    .line 225
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mBounds:[F

    .line 100
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mId:I

    .line 101
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mTimeId:I

    .line 102
    iput-short p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mType:S

    .line 103
    iput-object p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mArgs:[I

    .line 104
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIS)V
    .registers 5
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "id"    # I
    .param p2, "textId"    # I
    .param p3, "type"    # S

    .line 155
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIS[I)V

    .line 156
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIS[I)V
    .registers 8
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "id"    # I
    .param p2, "textId"    # I
    .param p3, "type"    # S
    .param p4, "args"    # [I

    .line 169
    const/16 v0, 0xac

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 170
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 171
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 172
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeShort(I)V

    .line 173
    const/4 v0, 0x0

    if-nez p4, :cond_15

    .line 174
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeShort(I)V

    goto :goto_24

    .line 176
    :cond_15
    array-length v1, p4

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeShort(I)V

    .line 177
    array-length v1, p4

    :goto_1a
    if-ge v0, v1, :cond_24

    aget v2, p4, v0

    .line 178
    .local v2, "arg":I
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 177
    .end local v2    # "arg":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 181
    :cond_24
    :goto_24
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 6
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 210
    const/16 v0, 0xac

    const-string v1, "TimeAttribute"

    const-string v2, "Time Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 211
    const-string v1, "Calculate Information about time"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 212
    const/4 v1, 0x0

    const-string v2, "id"

    const-string v3, "id to output"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 213
    const-string v2, "longId"

    const-string v3, "id of time to calculate on"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 214
    const/16 v2, 0x9

    const-string/jumbo v3, "type"

    const-string/jumbo v4, "the type of calculation"

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 215
    const-string v3, "argsLength"

    const-string v4, "The number of additional args"

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 216
    const-string v2, "args"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 217
    return-void
.end method

.method private blacklist getTypeString()Ljava/lang/String;
    .registers 3

    .line 319
    iget-short v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mType:S

    and-int/lit16 v0, v0, 0xff

    .line 320
    .local v0, "val":I
    packed-switch v0, :pswitch_data_34

    .line 350
    :pswitch_7
    const-string v1, "INVALID_TIME_TYPE"

    return-object v1

    .line 348
    :pswitch_a
    const-string v1, "TIME_FROM_LOAD_SEC"

    return-object v1

    .line 346
    :pswitch_d
    const-string v1, "TIME_YEAR"

    return-object v1

    .line 344
    :pswitch_10
    const-string v1, "TIME_DAY_OF_WEEK"

    return-object v1

    .line 342
    :pswitch_13
    const-string v1, "TIME_MONTH_VALUE"

    return-object v1

    .line 340
    :pswitch_16
    const-string v1, "TIME_DAY_OF_MONTH"

    return-object v1

    .line 338
    :pswitch_19
    const-string v1, "TIME_IN_HR"

    return-object v1

    .line 336
    :pswitch_1c
    const-string v1, "TIME_IN_MIN"

    return-object v1

    .line 334
    :pswitch_1f
    const-string v1, "TIME_IN_SEC"

    return-object v1

    .line 332
    :pswitch_22
    const-string v1, "TIME_FROM_ARG_HR"

    return-object v1

    .line 330
    :pswitch_25
    const-string v1, "TIME_FROM_ARG_MIN"

    return-object v1

    .line 328
    :pswitch_28
    const-string v1, "TIME_FROM_ARG_SEC"

    return-object v1

    .line 326
    :pswitch_2b
    const-string v1, "TIME_FROM_NOW_HR"

    return-object v1

    .line 324
    :pswitch_2e
    const-string v1, "TIME_FROM_NOW_MIN"

    return-object v1

    .line 322
    :pswitch_31
    const-string v1, "TIME_FROM_NOW_SEC"

    return-object v1

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_d
        :pswitch_7
        :pswitch_a
    .end packed-switch
.end method

.method public static blacklist id()I
    .registers 1

    .line 143
    const/16 v0, 0xac

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 134
    const-string v0, "TimeAttribute"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 9
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    .line 190
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 191
    .local v0, "id":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 192
    .local v1, "textId":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readShort()I

    move-result v2

    int-to-short v2, v2

    .line 193
    .local v2, "type":S
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readShort()I

    move-result v3

    int-to-short v3, v3

    .line 194
    .local v3, "len":S
    const/4 v4, 0x0

    .line 195
    .local v4, "args":[I
    if-eqz v3, :cond_23

    .line 196
    new-array v4, v3, [I

    .line 197
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_18
    if-ge v5, v3, :cond_23

    .line 198
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v6

    aput v6, v4, v5

    .line 197
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 201
    .end local v5    # "i":I
    :cond_23
    new-instance v5, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;

    invoke-direct {v5, v0, v1, v2, v4}, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;-><init>(IIS[I)V

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    return-void
.end method


# virtual methods
.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "indent"    # Ljava/lang/String;

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 19
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;

    .line 229
    move-object/from16 v0, p0

    iget-short v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mType:S

    and-int/lit16 v1, v1, 0xff

    .line 230
    .local v1, "val":I
    iget-short v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mType:S

    shr-int/lit8 v2, v2, 0x8

    .line 231
    .local v2, "flags":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v3

    .line 232
    .local v3, "ctx":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getDocLoadTime()J

    move-result-wide v4

    .line 233
    .local v4, "load_time":J
    iget v6, v0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mTimeId:I

    invoke-virtual {v3, v6}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getObject(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;

    .line 234
    .local v6, "longConstant":Lcom/android/internal/widget/remotecompose/core/types/LongConstant;
    invoke-virtual {v6}, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;->getValue()J

    move-result-wide v7

    .line 235
    .local v7, "value":J
    const-wide/16 v9, 0x0

    .line 236
    .local v9, "delta":J
    const/4 v11, 0x0

    .line 238
    .local v11, "time":Ljava/time/LocalDateTime;
    packed-switch v1, :pswitch_data_f4

    goto :goto_50

    .line 257
    :pswitch_25
    nop

    .line 259
    invoke-static {v7, v8}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v12

    .line 260
    invoke-static {}, Ljava/time/ZoneOffset;->systemDefault()Ljava/time/ZoneId;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v12

    .line 261
    invoke-virtual {v12}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object v11

    goto :goto_50

    .line 247
    :pswitch_37
    iget-object v12, v0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mArgs:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    invoke-virtual {v3, v12}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getObject(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;

    .line 248
    .local v12, "lc2":Lcom/android/internal/widget/remotecompose/core/types/LongConstant;
    invoke-virtual {v12}, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;->getValue()J

    move-result-wide v13

    sub-long v9, v7, v13

    .line 249
    goto :goto_50

    .line 242
    .end local v12    # "lc2":Lcom/android/internal/widget/remotecompose/core/types/LongConstant;
    :pswitch_49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v9, v7, v12

    .line 243
    nop

    .line 265
    :goto_50
    packed-switch v1, :pswitch_data_112

    :pswitch_53
    goto/16 :goto_f3

    .line 302
    :pswitch_55
    iget v12, v0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mId:I

    const v16, 0x3a83126f    # 0.001f

    sub-long v14, v7, v4

    long-to-float v13, v14

    mul-float v13, v13, v16

    invoke-virtual {v3, v12, v13}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 303
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->needsRepaint()V

    goto/16 :goto_f3

    .line 299
    :pswitch_67
    iget v12, v0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mId:I

    invoke-virtual {v11}, Ljava/time/LocalDateTime;->getYear()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v3, v12, v13}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 300
    goto/16 :goto_f3

    .line 296
    :pswitch_73
    iget v12, v0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mId:I

    invoke-virtual {v11}, Ljava/time/LocalDateTime;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v13

    invoke-virtual {v13}, Ljava/time/DayOfWeek;->ordinal()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v3, v12, v13}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 297
    goto/16 :goto_f3

    .line 293
    :pswitch_83
    iget v12, v0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mId:I

    invoke-virtual {v11}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    int-to-float v13, v13

    invoke-virtual {v3, v12, v13}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 294
    goto :goto_f3

    .line 290
    :pswitch_90
    iget v12, v0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mId:I

    invoke-virtual {v11}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v3, v12, v13}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 291
    goto :goto_f3

    .line 287
    :pswitch_9b
    iget v12, v0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mId:I

    invoke-virtual {v11}, Ljava/time/LocalDateTime;->getHour()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v3, v12, v13}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 288
    goto :goto_f3

    .line 284
    :pswitch_a6
    iget v12, v0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mId:I

    invoke-virtual {v11}, Ljava/time/LocalDateTime;->getMinute()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v3, v12, v13}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 285
    goto :goto_f3

    .line 281
    :pswitch_b1
    iget v12, v0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mId:I

    invoke-virtual {v11}, Ljava/time/LocalDateTime;->getSecond()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v3, v12, v13}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 282
    goto :goto_f3

    .line 278
    :pswitch_bc
    iget v14, v0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mId:I

    const-wide v15, 0x3f50624dd2f1a9fcL    # 0.001

    long-to-double v12, v9

    mul-double/2addr v12, v15

    const-wide v15, 0x40ac200000000000L    # 3600.0

    div-double/2addr v12, v15

    double-to-float v12, v12

    invoke-virtual {v3, v14, v12}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 279
    goto :goto_f3

    .line 273
    :pswitch_d0
    const-wide v15, 0x3f50624dd2f1a9fcL    # 0.001

    iget v12, v0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mId:I

    long-to-double v13, v9

    mul-double/2addr v13, v15

    const-wide/high16 v15, 0x404e000000000000L    # 60.0

    div-double/2addr v13, v15

    double-to-float v13, v13

    invoke-virtual {v3, v12, v13}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 274
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->needsRepaint()V

    .line 275
    goto :goto_f3

    .line 268
    :pswitch_e4
    const v16, 0x3a83126f    # 0.001f

    iget v12, v0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mId:I

    long-to-float v13, v9

    mul-float v13, v13, v16

    invoke-virtual {v3, v12, v13}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 269
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->needsRepaint()V

    .line 270
    nop

    .line 306
    :goto_f3
    return-void

    :pswitch_data_f4
    .packed-switch 0x0
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_37
        :pswitch_37
        :pswitch_37
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
    .end packed-switch

    :pswitch_data_112
    .packed-switch 0x0
        :pswitch_e4
        :pswitch_d0
        :pswitch_bc
        :pswitch_e4
        :pswitch_d0
        :pswitch_bc
        :pswitch_b1
        :pswitch_a6
        :pswitch_9b
        :pswitch_90
        :pswitch_83
        :pswitch_73
        :pswitch_67
        :pswitch_53
        :pswitch_55
    .end packed-switch
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 5
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 310
    nop

    .line 311
    const-string v0, "TimeAttribute"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mId:I

    .line 312
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "id"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mTimeId:I

    .line 313
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "timeId"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    .line 314
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->getTypeString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mArgs:[I

    .line 315
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "args"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/util/List;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 316
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 113
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mArgs:[I

    const-string v1, "] = "

    const-string v2, "TimeAttribute["

    const-string v3, " "

    if-nez v0, :cond_32

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mTimeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mType:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 116
    :cond_32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mTimeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mType:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mArgs:[I

    .line 124
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    return-object v0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 5
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 108
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mId:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mTimeId:I

    iget-short v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mType:S

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIS)V

    .line 109
    return-void
.end method
