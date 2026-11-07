.class public Landroid/util/StateSet;
.super Ljava/lang/Object;
.source "StateSet.java"


# static fields
.field public static final whitelist NOTHING:[I

.field public static final greylist-max-o VIEW_STATE_ACCELERATED:I = 0x40

.field public static final greylist-max-o VIEW_STATE_ACTIVATED:I = 0x20

.field public static final greylist-max-o VIEW_STATE_DRAG_CAN_ACCEPT:I = 0x100

.field public static final greylist-max-o VIEW_STATE_DRAG_HOVERED:I = 0x200

.field public static final greylist-max-o VIEW_STATE_ENABLED:I = 0x8

.field public static final greylist-max-o VIEW_STATE_FOCUSED:I = 0x4

.field public static final greylist-max-o VIEW_STATE_HOVERED:I = 0x80

.field static final greylist-max-o VIEW_STATE_IDS:[I

.field public static final greylist-max-o VIEW_STATE_PRESSED:I = 0x10

.field public static final greylist-max-o VIEW_STATE_SELECTED:I = 0x2

.field private static final greylist-max-o VIEW_STATE_SETS:[[I

.field public static final greylist-max-o VIEW_STATE_WINDOW_FOCUSED:I = 0x1

.field public static final whitelist WILD_CARD:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 9

    .line 68
    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_8c

    sput-object v0, Landroid/util/StateSet;->VIEW_STATE_IDS:[I

    .line 82
    sget-object v0, Landroid/util/StateSet;->VIEW_STATE_IDS:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    sget-object v1, Lcom/android/internal/R$styleable;->ViewDrawableStates:[I

    array-length v1, v1

    if-ne v0, v1, :cond_84

    .line 87
    sget-object v0, Landroid/util/StateSet;->VIEW_STATE_IDS:[I

    array-length v0, v0

    new-array v0, v0, [I

    .line 88
    .local v0, "orderedIds":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_19
    sget-object v2, Lcom/android/internal/R$styleable;->ViewDrawableStates:[I

    array-length v2, v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_44

    .line 89
    sget-object v2, Lcom/android/internal/R$styleable;->ViewDrawableStates:[I

    aget v2, v2, v1

    .line 90
    .local v2, "viewState":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_24
    sget-object v5, Landroid/util/StateSet;->VIEW_STATE_IDS:[I

    array-length v5, v5

    if-ge v4, v5, :cond_41

    .line 91
    sget-object v5, Landroid/util/StateSet;->VIEW_STATE_IDS:[I

    aget v5, v5, v4

    if-ne v5, v2, :cond_3e

    .line 92
    mul-int/lit8 v5, v1, 0x2

    aput v2, v0, v5

    .line 93
    mul-int/lit8 v5, v1, 0x2

    add-int/2addr v5, v3

    sget-object v6, Landroid/util/StateSet;->VIEW_STATE_IDS:[I

    add-int/lit8 v7, v4, 0x1

    aget v6, v6, v7

    aput v6, v0, v5

    .line 90
    :cond_3e
    add-int/lit8 v4, v4, 0x2

    goto :goto_24

    .line 88
    .end local v2    # "viewState":I
    .end local v4    # "j":I
    :cond_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 98
    .end local v1    # "i":I
    :cond_44
    sget-object v1, Landroid/util/StateSet;->VIEW_STATE_IDS:[I

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    .line 99
    .local v1, "NUM_BITS":I
    shl-int v2, v3, v1

    new-array v2, v2, [[I

    sput-object v2, Landroid/util/StateSet;->VIEW_STATE_SETS:[[I

    .line 100
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_50
    sget-object v3, Landroid/util/StateSet;->VIEW_STATE_SETS:[[I

    array-length v3, v3

    if-ge v2, v3, :cond_78

    .line 101
    invoke-static {v2}, Ljava/lang/Integer;->bitCount(I)I

    move-result v3

    .line 102
    .local v3, "numBits":I
    new-array v4, v3, [I

    .line 103
    .local v4, "set":[I
    const/4 v5, 0x0

    .line 104
    .local v5, "pos":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_5d
    array-length v7, v0

    if-ge v6, v7, :cond_71

    .line 105
    add-int/lit8 v7, v6, 0x1

    aget v7, v0, v7

    and-int/2addr v7, v2

    if-eqz v7, :cond_6e

    .line 106
    add-int/lit8 v7, v5, 0x1

    .end local v5    # "pos":I
    .local v7, "pos":I
    aget v8, v0, v6

    aput v8, v4, v5

    move v5, v7

    .line 104
    .end local v7    # "pos":I
    .restart local v5    # "pos":I
    :cond_6e
    add-int/lit8 v6, v6, 0x2

    goto :goto_5d

    .line 109
    .end local v6    # "j":I
    :cond_71
    sget-object v6, Landroid/util/StateSet;->VIEW_STATE_SETS:[[I

    aput-object v4, v6, v2

    .line 100
    .end local v3    # "numBits":I
    .end local v4    # "set":[I
    .end local v5    # "pos":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_50

    .line 127
    .end local v0    # "orderedIds":[I
    .end local v1    # "NUM_BITS":I
    .end local v2    # "i":I
    :cond_78
    const/4 v0, 0x0

    new-array v1, v0, [I

    sput-object v1, Landroid/util/StateSet;->WILD_CARD:[I

    .line 132
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroid/util/StateSet;->NOTHING:[I

    return-void

    .line 83
    :cond_84
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "VIEW_STATE_IDs array length does not match ViewDrawableStates style array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_8c
    .array-data 4
        0x101009d
        0x1
        0x10100a1
        0x2
        0x101009c
        0x4
        0x101009e
        0x8
        0x10100a7
        0x10
        0x10102fe
        0x20
        0x101031b
        0x40
        0x1010367
        0x80
        0x1010368
        0x100
        0x1010369
        0x200
    .end array-data
.end method

.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o containsAttribute([[II)Z
    .registers 10
    .param p0, "stateSpecs"    # [[I
    .param p1, "attr"    # I

    .line 241
    const/4 v0, 0x0

    if-eqz p0, :cond_20

    .line 242
    array-length v1, p0

    move v2, v0

    :goto_5
    if-ge v2, v1, :cond_20

    aget-object v3, p0, v2

    .line 243
    .local v3, "spec":[I
    if-nez v3, :cond_c

    .line 244
    goto :goto_20

    .line 246
    :cond_c
    array-length v4, v3

    move v5, v0

    :goto_e
    if-ge v5, v4, :cond_1d

    aget v6, v3, v5

    .line 247
    .local v6, "specAttr":I
    if-eq v6, p1, :cond_1b

    neg-int v7, v6

    if-ne v7, p1, :cond_18

    goto :goto_1b

    .line 246
    .end local v6    # "specAttr":I
    :cond_18
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    .line 248
    .restart local v6    # "specAttr":I
    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    return v0

    .line 242
    .end local v3    # "spec":[I
    .end local v6    # "specAttr":I
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 253
    :cond_20
    :goto_20
    return v0
.end method

.method public static whitelist dump([I)Ljava/lang/String;
    .registers 5
    .param p0, "states"    # [I

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    .local v0, "sb":Ljava/lang/StringBuilder;
    array-length v1, p0

    .line 270
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v1, :cond_42

    .line 272
    aget v3, p0, v2

    sparse-switch v3, :sswitch_data_48

    goto :goto_3f

    .line 295
    :sswitch_f
    const-string v3, "H "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3f

    .line 292
    :sswitch_15
    const-string v3, "A "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    goto :goto_3f

    .line 277
    :sswitch_1b
    const-string v3, "P "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    goto :goto_3f

    .line 280
    :sswitch_21
    const-string v3, "S "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    goto :goto_3f

    .line 289
    :sswitch_27
    const-string v3, "C "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    goto :goto_3f

    .line 286
    :sswitch_2d
    const-string v3, "E "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    goto :goto_3f

    .line 274
    :sswitch_33
    const-string v3, "W "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    goto :goto_3f

    .line 283
    :sswitch_39
    const-string v3, "F "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    nop

    .line 270
    :goto_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 300
    .end local v2    # "i":I
    :cond_42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    nop

    :sswitch_data_48
    .sparse-switch
        0x101009c -> :sswitch_39
        0x101009d -> :sswitch_33
        0x101009e -> :sswitch_2d
        0x10100a0 -> :sswitch_27
        0x10100a1 -> :sswitch_21
        0x10100a7 -> :sswitch_1b
        0x10102fe -> :sswitch_15
        0x1010367 -> :sswitch_f
    .end sparse-switch
.end method

.method public static greylist-max-o get(I)[I
    .registers 3
    .param p0, "mask"    # I

    .line 115
    sget-object v0, Landroid/util/StateSet;->VIEW_STATE_SETS:[[I

    array-length v0, v0

    if-ge p0, v0, :cond_a

    .line 118
    sget-object v0, Landroid/util/StateSet;->VIEW_STATE_SETS:[[I

    aget-object v0, v0, p0

    return-object v0

    .line 116
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid state set mask"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist isWildCard([I)Z
    .registers 3
    .param p0, "stateSetOrSpec"    # [I

    .line 140
    array-length v0, p0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    aget v1, p0, v0

    if-nez v1, :cond_9

    :cond_8
    const/4 v0, 0x1

    :cond_9
    return v0
.end method

.method public static whitelist stateSetMatches([II)Z
    .registers 7
    .param p0, "stateSpec"    # [I
    .param p1, "state"    # I

    .line 211
    array-length v0, p0

    .line 212
    .local v0, "stateSpecSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    const/4 v2, 0x1

    if-ge v1, v0, :cond_17

    .line 213
    aget v3, p0, v1

    .line 214
    .local v3, "stateSpecState":I
    if-nez v3, :cond_a

    .line 216
    return v2

    .line 218
    :cond_a
    const/4 v2, 0x0

    if-lez v3, :cond_10

    .line 219
    if-eq p1, v3, :cond_14

    .line 220
    return v2

    .line 224
    :cond_10
    neg-int v4, v3

    if-ne p1, v4, :cond_14

    .line 226
    return v2

    .line 212
    .end local v3    # "stateSpecState":I
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 230
    .end local v1    # "i":I
    :cond_17
    return v2
.end method

.method public static whitelist stateSetMatches([I[I)Z
    .registers 12
    .param p0, "stateSpec"    # [I
    .param p1, "stateSet"    # [I

    .line 151
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_e

    .line 152
    if-eqz p0, :cond_c

    invoke-static {p0}, Landroid/util/StateSet;->isWildCard([I)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_c
    move v0, v1

    :cond_d
    return v0

    .line 154
    :cond_e
    array-length v2, p0

    .line 155
    .local v2, "stateSpecSize":I
    array-length v3, p1

    .line 156
    .local v3, "stateSetSize":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_11
    if-ge v4, v2, :cond_3b

    .line 157
    aget v5, p0, v4

    .line 158
    .local v5, "stateSpecState":I
    if-nez v5, :cond_18

    .line 160
    return v1

    .line 163
    :cond_18
    if-lez v5, :cond_1c

    .line 164
    const/4 v6, 0x1

    .local v6, "mustMatch":Z
    goto :goto_1e

    .line 167
    .end local v6    # "mustMatch":Z
    :cond_1c
    const/4 v6, 0x0

    .line 168
    .restart local v6    # "mustMatch":Z
    neg-int v5, v5

    .line 170
    :goto_1e
    const/4 v7, 0x0

    .line 171
    .local v7, "found":Z
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_20
    if-ge v8, v3, :cond_33

    .line 172
    aget v9, p1, v8

    .line 173
    .local v9, "state":I
    if-nez v9, :cond_29

    .line 175
    if-eqz v6, :cond_33

    .line 177
    return v0

    .line 183
    :cond_29
    if-ne v9, v5, :cond_30

    .line 184
    if-eqz v6, :cond_2f

    .line 185
    const/4 v7, 0x1

    .line 187
    goto :goto_33

    .line 190
    :cond_2f
    return v0

    .line 171
    .end local v9    # "state":I
    :cond_30
    add-int/lit8 v8, v8, 0x1

    goto :goto_20

    .line 194
    .end local v8    # "j":I
    :cond_33
    :goto_33
    if-eqz v6, :cond_38

    if-nez v7, :cond_38

    .line 197
    return v0

    .line 156
    .end local v5    # "stateSpecState":I
    .end local v6    # "mustMatch":Z
    .end local v7    # "found":Z
    :cond_38
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 200
    .end local v4    # "i":I
    :cond_3b
    return v1
.end method

.method public static whitelist trimStateSet([II)[I
    .registers 4
    .param p0, "states"    # [I
    .param p1, "newSize"    # I

    .line 257
    array-length v0, p0

    if-ne v0, p1, :cond_4

    .line 258
    return-object p0

    .line 261
    :cond_4
    new-array v0, p1, [I

    .line 262
    .local v0, "trimmedStates":[I
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 263
    return-object v0
.end method
