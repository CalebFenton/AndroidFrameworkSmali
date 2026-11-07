.class final Ljava/lang/invoke/MethodTypeForm;
.super Ljava/lang/Object;
.source "MethodTypeForm.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field public static final greylist-max-o ERASE:I = 0x1

.field public static final greylist-max-o INTS:I = 0x4

.field public static final greylist-max-o LONGS:I = 0x5

.field public static final greylist-max-o NO_CHANGE:I = 0x0

.field public static final greylist-max-o RAW_RETURN:I = 0x6

.field public static final greylist-max-o UNWRAP:I = 0x3

.field public static final greylist-max-o WRAP:I = 0x2


# instance fields
.field final greylist-max-o argCounts:J

.field final greylist-max-o argToSlotTable:[I

.field final greylist-max-o basicType:Ljava/lang/invoke/MethodType;

.field final greylist-max-o erasedType:Ljava/lang/invoke/MethodType;

.field final greylist-max-o primCounts:J

.field final greylist-max-o slotToArgTable:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 45
    return-void
.end method

.method protected constructor greylist-max-o <init>(Ljava/lang/invoke/MethodType;)V
    .registers 23
    .param p1, "erasedType"    # Ljava/lang/invoke/MethodType;

    .line 163
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-object v1, v0, Ljava/lang/invoke/MethodTypeForm;->erasedType:Ljava/lang/invoke/MethodType;

    .line 166
    invoke-virtual {v1}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v2

    .line 167
    .local v2, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v3, v2

    .line 168
    .local v3, "ptypeCount":I
    move v4, v3

    .line 169
    .local v4, "pslotCount":I
    const/4 v5, 0x1

    .line 170
    .local v5, "rtypeCount":I
    const/4 v6, 0x1

    .line 172
    .local v6, "rslotCount":I
    const/4 v7, 0x0

    .local v7, "argToSlotTab":[I
    const/4 v8, 0x0

    .line 175
    .local v8, "slotToArgTab":[I
    const/4 v9, 0x0

    .local v9, "pac":I
    const/4 v10, 0x0

    .local v10, "lac":I
    const/4 v11, 0x0

    .local v11, "prc":I
    const/4 v12, 0x0

    .line 176
    .local v12, "lrc":I
    move-object v13, v2

    .line 177
    .local v13, "epts":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object v14, v13

    .line 178
    .local v14, "bpts":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1a
    move-object/from16 v16, v2

    .end local v2    # "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local v16, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v2, v13

    if-ge v15, v2, :cond_58

    .line 179
    aget-object v2, v13, v15

    .line 180
    .local v2, "pt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move/from16 v17, v4

    .end local v4    # "pslotCount":I
    .local v17, "pslotCount":I
    const-class v4, Ljava/lang/Object;

    if-eq v2, v4, :cond_51

    .line 181
    add-int/lit8 v9, v9, 0x1

    .line 182
    invoke-static {v2}, Lsun/invoke/util/Wrapper;->forPrimitiveType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v4

    .line 183
    .local v4, "w":Lsun/invoke/util/Wrapper;
    invoke-virtual {v4}, Lsun/invoke/util/Wrapper;->isDoubleWord()Z

    move-result v18

    if-eqz v18, :cond_35

    add-int/lit8 v10, v10, 0x1

    .line 184
    :cond_35
    invoke-virtual {v4}, Lsun/invoke/util/Wrapper;->isSubwordOrInt()Z

    move-result v18

    if-eqz v18, :cond_4f

    move-object/from16 v18, v4

    .end local v4    # "w":Lsun/invoke/util/Wrapper;
    .local v18, "w":Lsun/invoke/util/Wrapper;
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v2, v4, :cond_51

    .line 185
    if-ne v14, v13, :cond_4a

    .line 186
    invoke-virtual {v14}, [Ljava/lang/Class;->clone()Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, [Ljava/lang/Class;

    .line 187
    :cond_4a
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v14, v15

    goto :goto_51

    .line 184
    .end local v18    # "w":Lsun/invoke/util/Wrapper;
    .restart local v4    # "w":Lsun/invoke/util/Wrapper;
    :cond_4f
    move-object/from16 v18, v4

    .line 178
    .end local v2    # "pt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "w":Lsun/invoke/util/Wrapper;
    :cond_51
    :goto_51
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, v16

    move/from16 v4, v17

    goto :goto_1a

    .end local v17    # "pslotCount":I
    .local v4, "pslotCount":I
    :cond_58
    move/from16 v17, v4

    .line 191
    .end local v4    # "pslotCount":I
    .end local v15    # "i":I
    .restart local v17    # "pslotCount":I
    add-int v4, v17, v10

    .line 192
    .end local v17    # "pslotCount":I
    .restart local v4    # "pslotCount":I
    invoke-virtual {v1}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v2

    .line 193
    .local v2, "rt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v15, v2

    .line 194
    .local v15, "bt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move/from16 v17, v5

    .end local v5    # "rtypeCount":I
    .local v17, "rtypeCount":I
    const-class v5, Ljava/lang/Object;

    const/16 v18, 0x0

    if-eq v2, v5, :cond_96

    .line 195
    add-int/lit8 v11, v11, 0x1

    .line 196
    invoke-static {v2}, Lsun/invoke/util/Wrapper;->forPrimitiveType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v5

    .line 197
    .local v5, "w":Lsun/invoke/util/Wrapper;
    invoke-virtual {v5}, Lsun/invoke/util/Wrapper;->isDoubleWord()Z

    move-result v19

    if-eqz v19, :cond_77

    add-int/lit8 v12, v12, 0x1

    .line 198
    :cond_77
    invoke-virtual {v5}, Lsun/invoke/util/Wrapper;->isSubwordOrInt()Z

    move-result v19

    if-eqz v19, :cond_87

    move-object/from16 v19, v5

    .end local v5    # "w":Lsun/invoke/util/Wrapper;
    .local v19, "w":Lsun/invoke/util/Wrapper;
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v2, v5, :cond_89

    .line 199
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object v15, v5

    .end local v15    # "bt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v5, "bt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_89

    .line 198
    .end local v19    # "w":Lsun/invoke/util/Wrapper;
    .local v5, "w":Lsun/invoke/util/Wrapper;
    .restart local v15    # "bt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_87
    move-object/from16 v19, v5

    .line 201
    .end local v5    # "w":Lsun/invoke/util/Wrapper;
    .restart local v19    # "w":Lsun/invoke/util/Wrapper;
    :cond_89
    :goto_89
    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v2, v5, :cond_92

    .line 202
    move/from16 v6, v18

    move/from16 v5, v18

    .end local v17    # "rtypeCount":I
    .local v5, "rtypeCount":I
    goto :goto_98

    .line 204
    .end local v5    # "rtypeCount":I
    .restart local v17    # "rtypeCount":I
    :cond_92
    add-int/2addr v6, v12

    move/from16 v5, v17

    goto :goto_98

    .line 194
    .end local v19    # "w":Lsun/invoke/util/Wrapper;
    :cond_96
    move/from16 v5, v17

    .line 206
    .end local v17    # "rtypeCount":I
    .restart local v5    # "rtypeCount":I
    :goto_98
    if-ne v13, v14, :cond_123

    if-ne v15, v2, :cond_123

    .line 207
    iput-object v1, v0, Ljava/lang/invoke/MethodTypeForm;->basicType:Ljava/lang/invoke/MethodType;

    .line 222
    if-eqz v10, :cond_d3

    .line 223
    add-int v17, v3, v10

    .line 224
    .local v17, "slot":I
    add-int/lit8 v1, v17, 0x1

    new-array v1, v1, [I

    .line 225
    .end local v8    # "slotToArgTab":[I
    .local v1, "slotToArgTab":[I
    add-int/lit8 v8, v3, 0x1

    new-array v7, v8, [I

    .line 226
    aput v17, v7, v18

    .line 227
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_ad
    move-object/from16 v19, v1

    .end local v1    # "slotToArgTab":[I
    .local v19, "slotToArgTab":[I
    array-length v1, v13

    if-ge v8, v1, :cond_cf

    .line 228
    aget-object v1, v13, v8

    .line 229
    .local v1, "pt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v1}, Lsun/invoke/util/Wrapper;->forBasicType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v18

    .line 230
    .restart local v18    # "w":Lsun/invoke/util/Wrapper;
    invoke-virtual/range {v18 .. v18}, Lsun/invoke/util/Wrapper;->isDoubleWord()Z

    move-result v20

    if-eqz v20, :cond_c0

    add-int/lit8 v17, v17, -0x1

    .line 231
    :cond_c0
    add-int/lit8 v17, v17, -0x1

    .line 232
    add-int/lit8 v20, v8, 0x1

    aput v20, v19, v17

    .line 233
    add-int/lit8 v20, v8, 0x1

    aput v17, v7, v20

    .line 227
    .end local v1    # "pt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v18    # "w":Lsun/invoke/util/Wrapper;
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, v19

    goto :goto_ad

    .line 235
    .end local v8    # "i":I
    :cond_cf
    nop

    .line 236
    .end local v17    # "slot":I
    move-object/from16 v1, v19

    goto :goto_102

    .end local v19    # "slotToArgTab":[I
    .local v8, "slotToArgTab":[I
    :cond_d3
    if-eqz v9, :cond_e5

    .line 238
    nop

    .line 239
    invoke-static {v3}, Ljava/lang/invoke/MethodType;->genericMethodType(I)Ljava/lang/invoke/MethodType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/invoke/MethodType;->form()Ljava/lang/invoke/MethodTypeForm;

    move-result-object v1

    .line 240
    .local v1, "that":Ljava/lang/invoke/MethodTypeForm;
    nop

    .line 241
    iget-object v8, v1, Ljava/lang/invoke/MethodTypeForm;->slotToArgTable:[I

    .line 242
    iget-object v7, v1, Ljava/lang/invoke/MethodTypeForm;->argToSlotTable:[I

    .line 243
    .end local v1    # "that":Ljava/lang/invoke/MethodTypeForm;
    move-object v1, v8

    goto :goto_102

    .line 244
    :cond_e5
    move v1, v3

    .line 245
    .local v1, "slot":I
    move/from16 v17, v1

    .end local v1    # "slot":I
    .restart local v17    # "slot":I
    add-int/lit8 v1, v17, 0x1

    new-array v1, v1, [I

    .line 246
    .end local v8    # "slotToArgTab":[I
    .local v1, "slotToArgTab":[I
    add-int/lit8 v8, v3, 0x1

    new-array v7, v8, [I

    .line 247
    aput v17, v7, v18

    .line 248
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_f3
    if-ge v8, v3, :cond_102

    .line 249
    add-int/lit8 v17, v17, -0x1

    .line 250
    add-int/lit8 v18, v8, 0x1

    aput v18, v1, v17

    .line 251
    add-int/lit8 v18, v8, 0x1

    aput v17, v7, v18

    .line 248
    add-int/lit8 v8, v8, 0x1

    goto :goto_f3

    .line 254
    .end local v8    # "i":I
    .end local v17    # "slot":I
    :cond_102
    :goto_102
    move-object/from16 v17, v13

    move-object/from16 v18, v14

    .end local v13    # "epts":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v14    # "bpts":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local v17, "epts":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local v18, "bpts":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {v12, v11, v10, v9}, Ljava/lang/invoke/MethodTypeForm;->pack(IIII)J

    move-result-wide v13

    iput-wide v13, v0, Ljava/lang/invoke/MethodTypeForm;->primCounts:J

    .line 255
    invoke-static {v6, v5, v4, v3}, Ljava/lang/invoke/MethodTypeForm;->pack(IIII)J

    move-result-wide v13

    iput-wide v13, v0, Ljava/lang/invoke/MethodTypeForm;->argCounts:J

    .line 256
    iput-object v7, v0, Ljava/lang/invoke/MethodTypeForm;->argToSlotTable:[I

    .line 257
    iput-object v1, v0, Ljava/lang/invoke/MethodTypeForm;->slotToArgTable:[I

    .line 259
    const/16 v8, 0x100

    if-ge v4, v8, :cond_11c

    .line 262
    nop

    .line 266
    return-void

    .line 259
    :cond_11c
    const-string v8, "too many arguments"

    invoke-static {v8}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v8

    throw v8

    .line 206
    .end local v1    # "slotToArgTab":[I
    .end local v17    # "epts":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v18    # "bpts":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local v8, "slotToArgTab":[I
    .restart local v13    # "epts":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v14    # "bpts":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_123
    move-object/from16 v17, v13

    move-object/from16 v18, v14

    .line 209
    .end local v13    # "epts":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v14    # "bpts":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v17    # "epts":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v18    # "bpts":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x1

    move-object/from16 v14, v18

    .end local v18    # "bpts":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v14    # "bpts":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {v15, v14, v1}, Ljava/lang/invoke/MethodType;->makeImpl(Ljava/lang/Class;[Ljava/lang/Class;Z)Ljava/lang/invoke/MethodType;

    move-result-object v1

    iput-object v1, v0, Ljava/lang/invoke/MethodTypeForm;->basicType:Ljava/lang/invoke/MethodType;

    .line 211
    iget-object v1, v0, Ljava/lang/invoke/MethodTypeForm;->basicType:Ljava/lang/invoke/MethodType;

    invoke-virtual {v1}, Ljava/lang/invoke/MethodType;->form()Ljava/lang/invoke/MethodTypeForm;

    move-result-object v1

    .line 212
    .local v1, "that":Ljava/lang/invoke/MethodTypeForm;
    nop

    .line 213
    move-object/from16 v18, v2

    move v13, v3

    .end local v2    # "rt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "ptypeCount":I
    .local v13, "ptypeCount":I
    .local v18, "rt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-wide v2, v1, Ljava/lang/invoke/MethodTypeForm;->primCounts:J

    iput-wide v2, v0, Ljava/lang/invoke/MethodTypeForm;->primCounts:J

    .line 214
    iget-wide v2, v1, Ljava/lang/invoke/MethodTypeForm;->argCounts:J

    iput-wide v2, v0, Ljava/lang/invoke/MethodTypeForm;->argCounts:J

    .line 215
    iget-object v2, v1, Ljava/lang/invoke/MethodTypeForm;->argToSlotTable:[I

    iput-object v2, v0, Ljava/lang/invoke/MethodTypeForm;->argToSlotTable:[I

    .line 216
    iget-object v2, v1, Ljava/lang/invoke/MethodTypeForm;->slotToArgTable:[I

    iput-object v2, v0, Ljava/lang/invoke/MethodTypeForm;->slotToArgTable:[I

    .line 220
    return-void
.end method

.method private greylist-max-o assertIsBasicType()Z
    .registers 2

    .line 110
    nop

    .line 112
    const/4 v0, 0x1

    return v0
.end method

.method static greylist-max-o canonicalize(Ljava/lang/Class;I)Ljava/lang/Class;
    .registers 4
    .param p1, "how"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 370
    .local p0, "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/lang/Object;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_6

    goto :goto_63

    .line 372
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 373
    sparse-switch p1, :sswitch_data_64

    goto :goto_1a

    .line 375
    :sswitch_10
    invoke-static {p0}, Lsun/invoke/util/Wrapper;->asPrimitiveType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 376
    .local v0, "ct":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eq v0, p0, :cond_1a

    return-object v0

    .line 380
    .end local v0    # "ct":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :sswitch_17
    const-class v0, Ljava/lang/Object;

    return-object v0

    :cond_1a
    :goto_1a
    goto :goto_63

    .line 382
    :cond_1b
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_29

    .line 384
    sparse-switch p1, :sswitch_data_72

    .line 388
    goto :goto_63

    .line 386
    :sswitch_23
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 388
    :sswitch_26
    const-class v0, Ljava/lang/Void;

    return-object v0

    .line 392
    :cond_29
    packed-switch p1, :pswitch_data_7c

    :pswitch_2c
    goto :goto_63

    .line 406
    :pswitch_2d
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_41

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_41

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_41

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3e

    goto :goto_41

    .line 410
    :cond_3e
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 408
    :cond_41
    :goto_41
    return-object v1

    .line 402
    :pswitch_42
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_47

    .line 403
    return-object v1

    .line 404
    :cond_47
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 396
    :pswitch_4a
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_5d

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_53

    goto :goto_5d

    .line 398
    :cond_53
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_5a

    .line 399
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 400
    :cond_5a
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 397
    :cond_5d
    :goto_5d
    return-object v1

    .line 394
    :pswitch_5e
    invoke-static {p0}, Lsun/invoke/util/Wrapper;->asWrapperType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 414
    :goto_63
    return-object v1

    :sswitch_data_64
    .sparse-switch
        0x1 -> :sswitch_17
        0x3 -> :sswitch_10
        0x6 -> :sswitch_17
    .end sparse-switch

    :sswitch_data_72
    .sparse-switch
        0x2 -> :sswitch_26
        0x6 -> :sswitch_23
    .end sparse-switch

    :pswitch_data_7c
    .packed-switch 0x2
        :pswitch_5e
        :pswitch_2c
        :pswitch_4a
        :pswitch_42
        :pswitch_2d
    .end packed-switch
.end method

.method public static greylist-max-o canonicalize(Ljava/lang/invoke/MethodType;II)Ljava/lang/invoke/MethodType;
    .registers 8
    .param p0, "mt"    # Ljava/lang/invoke/MethodType;
    .param p1, "howRet"    # I
    .param p2, "howArgs"    # I

    .line 351
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v0

    .line 352
    .local v0, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {v0, p2}, Ljava/lang/invoke/MethodTypeForm;->canonicalizeAll([Ljava/lang/Class;I)[Ljava/lang/Class;

    move-result-object v1

    .line 353
    .local v1, "ptc":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v2

    .line 354
    .local v2, "rtype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v2, p1}, Ljava/lang/invoke/MethodTypeForm;->canonicalize(Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v3

    .line 355
    .local v3, "rtc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v1, :cond_16

    if-nez v3, :cond_16

    .line 357
    const/4 v4, 0x0

    return-object v4

    .line 360
    :cond_16
    if-nez v3, :cond_19

    move-object v3, v2

    .line 361
    :cond_19
    if-nez v1, :cond_1c

    move-object v1, v0

    .line 362
    :cond_1c
    const/4 v4, 0x1

    invoke-static {v3, v1, v4}, Ljava/lang/invoke/MethodType;->makeImpl(Ljava/lang/Class;[Ljava/lang/Class;Z)Ljava/lang/invoke/MethodType;

    move-result-object v4

    return-object v4
.end method

.method static greylist-max-o canonicalizeAll([Ljava/lang/Class;I)[Ljava/lang/Class;
    .registers 7
    .param p1, "how"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;I)[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 421
    .local p0, "ts":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 422
    .local v0, "cs":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v1, p0

    .local v1, "imax":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-ge v2, v1, :cond_20

    .line 423
    aget-object v3, p0, v2

    invoke-static {v3, p1}, Ljava/lang/invoke/MethodTypeForm;->canonicalize(Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v3

    .line 424
    .local v3, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_10

    .line 425
    const/4 v3, 0x0

    .line 426
    :cond_10
    if-eqz v3, :cond_1d

    .line 427
    if-nez v0, :cond_1b

    .line 428
    invoke-virtual {p0}, [Ljava/lang/Class;->clone()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, [Ljava/lang/Class;

    .line 429
    :cond_1b
    aput-object v3, v0, v2

    .line 422
    .end local v3    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 432
    .end local v1    # "imax":I
    .end local v2    # "i":I
    :cond_20
    return-object v0
.end method

.method static greylist-max-o findForm(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodTypeForm;
    .registers 3
    .param p0, "mt"    # Ljava/lang/invoke/MethodType;

    .line 324
    const/4 v0, 0x1

    invoke-static {p0, v0, v0}, Ljava/lang/invoke/MethodTypeForm;->canonicalize(Ljava/lang/invoke/MethodType;II)Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 325
    .local v0, "erased":Ljava/lang/invoke/MethodType;
    if-nez v0, :cond_d

    .line 327
    new-instance v1, Ljava/lang/invoke/MethodTypeForm;

    invoke-direct {v1, p0}, Ljava/lang/invoke/MethodTypeForm;-><init>(Ljava/lang/invoke/MethodType;)V

    return-object v1

    .line 330
    :cond_d
    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->form()Ljava/lang/invoke/MethodTypeForm;

    move-result-object v1

    return-object v1
.end method

.method private static greylist-max-o pack(IIII)J
    .registers 10
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "c"    # I
    .param p3, "d"    # I

    .line 269
    nop

    .line 270
    shl-int/lit8 v0, p0, 0x10

    or-int/2addr v0, p1

    int-to-long v0, v0

    .local v0, "hw":J
    shl-int/lit8 v2, p2, 0x10

    or-int/2addr v2, p3

    int-to-long v2, v2

    .line 271
    .local v2, "lw":J
    const/16 v4, 0x20

    shl-long v4, v0, v4

    or-long/2addr v4, v2

    return-wide v4
.end method

.method private static greylist-max-o unpack(JI)C
    .registers 5
    .param p0, "packed"    # J
    .param p2, "word"    # I

    .line 274
    nop

    .line 275
    rsub-int/lit8 v0, p2, 0x3

    mul-int/lit8 v0, v0, 0x10

    shr-long v0, p0, v0

    long-to-int v0, v0

    int-to-char v0, v0

    return v0
.end method


# virtual methods
.method public greylist-max-o argSlotToParameter(I)I
    .registers 3
    .param p1, "argSlot"    # I

    .line 320
    iget-object v0, p0, Ljava/lang/invoke/MethodTypeForm;->slotToArgTable:[I

    aget v0, v0, p1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public greylist-max-o basicType()Ljava/lang/invoke/MethodType;
    .registers 2

    .line 105
    iget-object v0, p0, Ljava/lang/invoke/MethodTypeForm;->basicType:Ljava/lang/invoke/MethodType;

    return-object v0
.end method

.method public greylist-max-o erasedType()Ljava/lang/invoke/MethodType;
    .registers 2

    .line 96
    iget-object v0, p0, Ljava/lang/invoke/MethodTypeForm;->erasedType:Ljava/lang/invoke/MethodType;

    return-object v0
.end method

.method public greylist-max-o hasLongPrimitives()Z
    .registers 3

    .line 311
    invoke-virtual {p0}, Ljava/lang/invoke/MethodTypeForm;->longPrimitiveParameterCount()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/invoke/MethodTypeForm;->longPrimitiveReturnCount()I

    move-result v1

    or-int/2addr v0, v1

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public greylist-max-o hasNonVoidPrimitives()Z
    .registers 5

    .line 306
    iget-wide v0, p0, Ljava/lang/invoke/MethodTypeForm;->primCounts:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 307
    :cond_a
    invoke-virtual {p0}, Ljava/lang/invoke/MethodTypeForm;->primitiveParameterCount()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_12

    return v2

    .line 308
    :cond_12
    invoke-virtual {p0}, Ljava/lang/invoke/MethodTypeForm;->primitiveReturnCount()I

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Ljava/lang/invoke/MethodTypeForm;->returnCount()I

    move-result v0

    if-eqz v0, :cond_1f

    move v1, v2

    :cond_1f
    return v1
.end method

.method public greylist-max-o hasPrimitives()Z
    .registers 5

    .line 303
    iget-wide v0, p0, Ljava/lang/invoke/MethodTypeForm;->primCounts:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public greylist-max-o longPrimitiveParameterCount()I
    .registers 4

    .line 294
    iget-wide v0, p0, Ljava/lang/invoke/MethodTypeForm;->primCounts:J

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Ljava/lang/invoke/MethodTypeForm;->unpack(JI)C

    move-result v0

    return v0
.end method

.method public greylist-max-o longPrimitiveReturnCount()I
    .registers 4

    .line 300
    iget-wide v0, p0, Ljava/lang/invoke/MethodTypeForm;->primCounts:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ljava/lang/invoke/MethodTypeForm;->unpack(JI)C

    move-result v0

    return v0
.end method

.method public greylist-max-o parameterCount()I
    .registers 4

    .line 279
    iget-wide v0, p0, Ljava/lang/invoke/MethodTypeForm;->argCounts:J

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Ljava/lang/invoke/MethodTypeForm;->unpack(JI)C

    move-result v0

    return v0
.end method

.method public greylist-max-o parameterSlotCount()I
    .registers 4

    .line 282
    iget-wide v0, p0, Ljava/lang/invoke/MethodTypeForm;->argCounts:J

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Ljava/lang/invoke/MethodTypeForm;->unpack(JI)C

    move-result v0

    return v0
.end method

.method public greylist-max-o parameterToArgSlot(I)I
    .registers 4
    .param p1, "i"    # I

    .line 314
    iget-object v0, p0, Ljava/lang/invoke/MethodTypeForm;->argToSlotTable:[I

    add-int/lit8 v1, p1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public greylist-max-o primitiveParameterCount()I
    .registers 4

    .line 291
    iget-wide v0, p0, Ljava/lang/invoke/MethodTypeForm;->primCounts:J

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Ljava/lang/invoke/MethodTypeForm;->unpack(JI)C

    move-result v0

    return v0
.end method

.method public greylist-max-o primitiveReturnCount()I
    .registers 4

    .line 297
    iget-wide v0, p0, Ljava/lang/invoke/MethodTypeForm;->primCounts:J

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Ljava/lang/invoke/MethodTypeForm;->unpack(JI)C

    move-result v0

    return v0
.end method

.method public greylist-max-o returnCount()I
    .registers 4

    .line 285
    iget-wide v0, p0, Ljava/lang/invoke/MethodTypeForm;->argCounts:J

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Ljava/lang/invoke/MethodTypeForm;->unpack(JI)C

    move-result v0

    return v0
.end method

.method public greylist-max-o returnSlotCount()I
    .registers 4

    .line 288
    iget-wide v0, p0, Ljava/lang/invoke/MethodTypeForm;->argCounts:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ljava/lang/invoke/MethodTypeForm;->unpack(JI)C

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Form"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/lang/invoke/MethodTypeForm;->erasedType:Ljava/lang/invoke/MethodType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
