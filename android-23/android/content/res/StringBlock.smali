.class final Landroid/content/res/StringBlock;
.super Ljava/lang/Object;
.source "StringBlock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/StringBlock$StyleIDs;,
        Landroid/content/res/StringBlock$Height;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AssetManager"

.field private static final localLOGV:Z


# instance fields
.field private final mNative:J

.field private final mOwnsNative:Z

.field private mSparseStrings:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mStrings:[Ljava/lang/CharSequence;

.field mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

.field private final mUseSparse:Z


# direct methods
.method constructor <init>(JZ)V
    .locals 1
    .param p1, "obj"    # J
    .param p3, "useSparse"    # Z

    #@0
    .prologue
    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 44
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    #@6
    .line 482
    iput-wide p1, p0, Landroid/content/res/StringBlock;->mNative:J

    #@8
    .line 483
    iput-boolean p3, p0, Landroid/content/res/StringBlock;->mUseSparse:Z

    #@a
    .line 484
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    #@d
    .line 481
    return-void
.end method

.method public constructor <init>([BIIZ)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .param p4, "useSparse"    # Z

    #@0
    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 44
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    #@6
    .line 55
    invoke-static {p1, p2, p3}, Landroid/content/res/StringBlock;->nativeCreate([BII)J

    #@9
    move-result-wide v0

    #@a
    iput-wide v0, p0, Landroid/content/res/StringBlock;->mNative:J

    #@c
    .line 56
    iput-boolean p4, p0, Landroid/content/res/StringBlock;->mUseSparse:Z

    #@e
    .line 57
    const/4 v0, 0x1

    #@f
    iput-boolean v0, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    #@11
    .line 54
    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "useSparse"    # Z

    #@0
    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 44
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    #@6
    .line 47
    array-length v0, p1

    #@7
    const/4 v1, 0x0

    #@8
    invoke-static {p1, v1, v0}, Landroid/content/res/StringBlock;->nativeCreate([BII)J

    #@b
    move-result-wide v0

    #@c
    iput-wide v0, p0, Landroid/content/res/StringBlock;->mNative:J

    #@e
    .line 48
    iput-boolean p2, p0, Landroid/content/res/StringBlock;->mUseSparse:Z

    #@10
    .line 49
    const/4 v0, 0x1

    #@11
    iput-boolean v0, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    #@13
    .line 46
    return-void
.end method

.method private static addParagraphSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 3
    .param p0, "buffer"    # Landroid/text/Spannable;
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    const/16 v2, 0xa

    #@2
    .line 361
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    #@5
    move-result v0

    #@6
    .line 363
    .local v0, "len":I
    if-eqz p2, :cond_0

    #@8
    if-eq p2, v0, :cond_0

    #@a
    add-int/lit8 v1, p2, -0x1

    #@c
    invoke-interface {p0, v1}, Landroid/text/Spannable;->charAt(I)C

    #@f
    move-result v1

    #@10
    if-eq v1, v2, :cond_0

    #@12
    .line 364
    add-int/lit8 p2, p2, -0x1

    #@14
    :goto_0
    if-lez p2, :cond_0

    #@16
    .line 365
    add-int/lit8 v1, p2, -0x1

    #@18
    invoke-interface {p0, v1}, Landroid/text/Spannable;->charAt(I)C

    #@1b
    move-result v1

    #@1c
    if-ne v1, v2, :cond_2

    #@1e
    .line 371
    :cond_0
    if-eqz p3, :cond_1

    #@20
    if-eq p3, v0, :cond_1

    #@22
    add-int/lit8 v1, p3, -0x1

    #@24
    invoke-interface {p0, v1}, Landroid/text/Spannable;->charAt(I)C

    #@27
    move-result v1

    #@28
    if-eq v1, v2, :cond_1

    #@2a
    .line 372
    add-int/lit8 p3, p3, 0x1

    #@2c
    :goto_1
    if-ge p3, v0, :cond_1

    #@2e
    .line 373
    add-int/lit8 v1, p3, -0x1

    #@30
    invoke-interface {p0, v1}, Landroid/text/Spannable;->charAt(I)C

    #@33
    move-result v1

    #@34
    if-ne v1, v2, :cond_3

    #@36
    .line 379
    :cond_1
    const/16 v1, 0x33

    #@38
    invoke-interface {p0, p1, p2, p3, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    #@3b
    .line 360
    return-void

    #@3c
    .line 364
    :cond_2
    add-int/lit8 p2, p2, -0x1

    #@3e
    goto :goto_0

    #@3f
    .line 372
    :cond_3
    add-int/lit8 p3, p3, 0x1

    #@41
    goto :goto_1
.end method

.method private applyStyles(Ljava/lang/String;[ILandroid/content/res/StringBlock$StyleIDs;)Ljava/lang/CharSequence;
    .locals 18
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "style"    # [I
    .param p3, "ids"    # Landroid/content/res/StringBlock$StyleIDs;

    #@0
    .prologue
    .line 167
    move-object/from16 v0, p2

    #@2
    array-length v14, v0

    #@3
    if-nez v14, :cond_0

    #@5
    .line 168
    return-object p1

    #@6
    .line 170
    :cond_0
    new-instance v2, Landroid/text/SpannableString;

    #@8
    move-object/from16 v0, p1

    #@a
    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    #@d
    .line 171
    .local v2, "buffer":Landroid/text/SpannableString;
    const/4 v4, 0x0

    #@e
    .line 172
    .local v4, "i":I
    :goto_0
    move-object/from16 v0, p2

    #@10
    array-length v14, v0

    #@11
    if-ge v4, v14, :cond_15

    #@13
    .line 173
    aget v12, p2, v4

    #@15
    .line 178
    .local v12, "type":I
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-get1(Landroid/content/res/StringBlock$StyleIDs;)I

    #@18
    move-result v14

    #@19
    if-ne v12, v14, :cond_2

    #@1b
    .line 179
    new-instance v14, Landroid/text/style/StyleSpan;

    #@1d
    const/4 v15, 0x1

    #@1e
    invoke-direct {v14, v15}, Landroid/text/style/StyleSpan;-><init>(I)V

    #@21
    .line 180
    add-int/lit8 v15, v4, 0x1

    #@23
    aget v15, p2, v15

    #@25
    add-int/lit8 v16, v4, 0x2

    #@27
    aget v16, p2, v16

    #@29
    add-int/lit8 v16, v16, 0x1

    #@2b
    .line 181
    const/16 v17, 0x21

    #@2d
    .line 179
    move/from16 v0, v16

    #@2f
    move/from16 v1, v17

    #@31
    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    #@34
    .line 303
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x3

    #@36
    goto :goto_0

    #@37
    .line 182
    :cond_2
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-get2(Landroid/content/res/StringBlock$StyleIDs;)I

    #@3a
    move-result v14

    #@3b
    if-ne v12, v14, :cond_3

    #@3d
    .line 183
    new-instance v14, Landroid/text/style/StyleSpan;

    #@3f
    const/4 v15, 0x2

    #@40
    invoke-direct {v14, v15}, Landroid/text/style/StyleSpan;-><init>(I)V

    #@43
    .line 184
    add-int/lit8 v15, v4, 0x1

    #@45
    aget v15, p2, v15

    #@47
    add-int/lit8 v16, v4, 0x2

    #@49
    aget v16, p2, v16

    #@4b
    add-int/lit8 v16, v16, 0x1

    #@4d
    .line 185
    const/16 v17, 0x21

    #@4f
    .line 183
    move/from16 v0, v16

    #@51
    move/from16 v1, v17

    #@53
    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    #@56
    goto :goto_1

    #@57
    .line 186
    :cond_3
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-get10(Landroid/content/res/StringBlock$StyleIDs;)I

    #@5a
    move-result v14

    #@5b
    if-ne v12, v14, :cond_4

    #@5d
    .line 187
    new-instance v14, Landroid/text/style/UnderlineSpan;

    #@5f
    invoke-direct {v14}, Landroid/text/style/UnderlineSpan;-><init>()V

    #@62
    .line 188
    add-int/lit8 v15, v4, 0x1

    #@64
    aget v15, p2, v15

    #@66
    add-int/lit8 v16, v4, 0x2

    #@68
    aget v16, p2, v16

    #@6a
    add-int/lit8 v16, v16, 0x1

    #@6c
    .line 189
    const/16 v17, 0x21

    #@6e
    .line 187
    move/from16 v0, v16

    #@70
    move/from16 v1, v17

    #@72
    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    #@75
    goto :goto_1

    #@76
    .line 190
    :cond_4
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-get9(Landroid/content/res/StringBlock$StyleIDs;)I

    #@79
    move-result v14

    #@7a
    if-ne v12, v14, :cond_5

    #@7c
    .line 191
    new-instance v14, Landroid/text/style/TypefaceSpan;

    #@7e
    const-string/jumbo v15, "monospace"

    #@81
    invoke-direct {v14, v15}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    #@84
    .line 192
    add-int/lit8 v15, v4, 0x1

    #@86
    aget v15, p2, v15

    #@88
    add-int/lit8 v16, v4, 0x2

    #@8a
    aget v16, p2, v16

    #@8c
    add-int/lit8 v16, v16, 0x1

    #@8e
    .line 193
    const/16 v17, 0x21

    #@90
    .line 191
    move/from16 v0, v16

    #@92
    move/from16 v1, v17

    #@94
    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    #@97
    goto :goto_1

    #@98
    .line 194
    :cond_5
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-get0(Landroid/content/res/StringBlock$StyleIDs;)I

    #@9b
    move-result v14

    #@9c
    if-ne v12, v14, :cond_6

    #@9e
    .line 195
    new-instance v14, Landroid/text/style/RelativeSizeSpan;

    #@a0
    const/high16 v15, 0x3fa00000    # 1.25f

    #@a2
    invoke-direct {v14, v15}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    #@a5
    .line 196
    add-int/lit8 v15, v4, 0x1

    #@a7
    aget v15, p2, v15

    #@a9
    add-int/lit8 v16, v4, 0x2

    #@ab
    aget v16, p2, v16

    #@ad
    add-int/lit8 v16, v16, 0x1

    #@af
    .line 197
    const/16 v17, 0x21

    #@b1
    .line 195
    move/from16 v0, v16

    #@b3
    move/from16 v1, v17

    #@b5
    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    #@b8
    goto/16 :goto_1

    #@ba
    .line 198
    :cond_6
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-get5(Landroid/content/res/StringBlock$StyleIDs;)I

    #@bd
    move-result v14

    #@be
    if-ne v12, v14, :cond_7

    #@c0
    .line 199
    new-instance v14, Landroid/text/style/RelativeSizeSpan;

    #@c2
    const v15, 0x3f4ccccd    # 0.8f

    #@c5
    invoke-direct {v14, v15}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    #@c8
    .line 200
    add-int/lit8 v15, v4, 0x1

    #@ca
    aget v15, p2, v15

    #@cc
    add-int/lit8 v16, v4, 0x2

    #@ce
    aget v16, p2, v16

    #@d0
    add-int/lit8 v16, v16, 0x1

    #@d2
    .line 201
    const/16 v17, 0x21

    #@d4
    .line 199
    move/from16 v0, v16

    #@d6
    move/from16 v1, v17

    #@d8
    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    #@db
    goto/16 :goto_1

    #@dd
    .line 202
    :cond_7
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-get7(Landroid/content/res/StringBlock$StyleIDs;)I

    #@e0
    move-result v14

    #@e1
    if-ne v12, v14, :cond_8

    #@e3
    .line 203
    new-instance v14, Landroid/text/style/SubscriptSpan;

    #@e5
    invoke-direct {v14}, Landroid/text/style/SubscriptSpan;-><init>()V

    #@e8
    .line 204
    add-int/lit8 v15, v4, 0x1

    #@ea
    aget v15, p2, v15

    #@ec
    add-int/lit8 v16, v4, 0x2

    #@ee
    aget v16, p2, v16

    #@f0
    add-int/lit8 v16, v16, 0x1

    #@f2
    .line 205
    const/16 v17, 0x21

    #@f4
    .line 203
    move/from16 v0, v16

    #@f6
    move/from16 v1, v17

    #@f8
    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    #@fb
    goto/16 :goto_1

    #@fd
    .line 206
    :cond_8
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-get8(Landroid/content/res/StringBlock$StyleIDs;)I

    #@100
    move-result v14

    #@101
    if-ne v12, v14, :cond_9

    #@103
    .line 207
    new-instance v14, Landroid/text/style/SuperscriptSpan;

    #@105
    invoke-direct {v14}, Landroid/text/style/SuperscriptSpan;-><init>()V

    #@108
    .line 208
    add-int/lit8 v15, v4, 0x1

    #@10a
    aget v15, p2, v15

    #@10c
    add-int/lit8 v16, v4, 0x2

    #@10e
    aget v16, p2, v16

    #@110
    add-int/lit8 v16, v16, 0x1

    #@112
    .line 209
    const/16 v17, 0x21

    #@114
    .line 207
    move/from16 v0, v16

    #@116
    move/from16 v1, v17

    #@118
    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    #@11b
    goto/16 :goto_1

    #@11d
    .line 210
    :cond_9
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-get6(Landroid/content/res/StringBlock$StyleIDs;)I

    #@120
    move-result v14

    #@121
    if-ne v12, v14, :cond_a

    #@123
    .line 211
    new-instance v14, Landroid/text/style/StrikethroughSpan;

    #@125
    invoke-direct {v14}, Landroid/text/style/StrikethroughSpan;-><init>()V

    #@128
    .line 212
    add-int/lit8 v15, v4, 0x1

    #@12a
    aget v15, p2, v15

    #@12c
    add-int/lit8 v16, v4, 0x2

    #@12e
    aget v16, p2, v16

    #@130
    add-int/lit8 v16, v16, 0x1

    #@132
    .line 213
    const/16 v17, 0x21

    #@134
    .line 211
    move/from16 v0, v16

    #@136
    move/from16 v1, v17

    #@138
    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    #@13b
    goto/16 :goto_1

    #@13d
    .line 214
    :cond_a
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-get3(Landroid/content/res/StringBlock$StyleIDs;)I

    #@140
    move-result v14

    #@141
    if-ne v12, v14, :cond_b

    #@143
    .line 215
    new-instance v14, Landroid/text/style/BulletSpan;

    #@145
    const/16 v15, 0xa

    #@147
    invoke-direct {v14, v15}, Landroid/text/style/BulletSpan;-><init>(I)V

    #@14a
    .line 216
    add-int/lit8 v15, v4, 0x1

    #@14c
    aget v15, p2, v15

    #@14e
    add-int/lit8 v16, v4, 0x2

    #@150
    aget v16, p2, v16

    #@152
    add-int/lit8 v16, v16, 0x1

    #@154
    .line 215
    move/from16 v0, v16

    #@156
    invoke-static {v2, v14, v15, v0}, Landroid/content/res/StringBlock;->addParagraphSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V

    #@159
    goto/16 :goto_1

    #@15b
    .line 217
    :cond_b
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-get4(Landroid/content/res/StringBlock$StyleIDs;)I

    #@15e
    move-result v14

    #@15f
    if-ne v12, v14, :cond_c

    #@161
    .line 218
    sget-object v14, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    #@163
    .line 219
    add-int/lit8 v15, v4, 0x1

    #@165
    aget v15, p2, v15

    #@167
    add-int/lit8 v16, v4, 0x2

    #@169
    aget v16, p2, v16

    #@16b
    add-int/lit8 v16, v16, 0x1

    #@16d
    .line 220
    const/16 v17, 0x12

    #@16f
    .line 218
    move/from16 v0, v16

    #@171
    move/from16 v1, v17

    #@173
    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    #@176
    goto/16 :goto_1

    #@178
    .line 222
    :cond_c
    move-object/from16 v0, p0

    #@17a
    iget-wide v14, v0, Landroid/content/res/StringBlock;->mNative:J

    #@17c
    invoke-static {v14, v15, v12}, Landroid/content/res/StringBlock;->nativeGetString(JI)Ljava/lang/String;

    #@17f
    move-result-object v11

    #@180
    .line 224
    .local v11, "tag":Ljava/lang/String;
    const-string/jumbo v14, "font;"

    #@183
    invoke-virtual {v11, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@186
    move-result v14

    #@187
    if-eqz v14, :cond_12

    #@189
    .line 227
    const-string/jumbo v14, ";height="

    #@18c
    invoke-static {v11, v14}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@18f
    move-result-object v9

    #@190
    .line 228
    .local v9, "sub":Ljava/lang/String;
    if-eqz v9, :cond_d

    #@192
    .line 229
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@195
    move-result v8

    #@196
    .line 230
    .local v8, "size":I
    new-instance v14, Landroid/content/res/StringBlock$Height;

    #@198
    invoke-direct {v14, v8}, Landroid/content/res/StringBlock$Height;-><init>(I)V

    #@19b
    .line 231
    add-int/lit8 v15, v4, 0x1

    #@19d
    aget v15, p2, v15

    #@19f
    add-int/lit8 v16, v4, 0x2

    #@1a1
    aget v16, p2, v16

    #@1a3
    add-int/lit8 v16, v16, 0x1

    #@1a5
    .line 230
    move/from16 v0, v16

    #@1a7
    invoke-static {v2, v14, v15, v0}, Landroid/content/res/StringBlock;->addParagraphSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V

    #@1aa
    .line 234
    .end local v8    # "size":I
    :cond_d
    const-string/jumbo v14, ";size="

    #@1ad
    invoke-static {v11, v14}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1b0
    move-result-object v9

    #@1b1
    .line 235
    if-eqz v9, :cond_e

    #@1b3
    .line 236
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1b6
    move-result v8

    #@1b7
    .line 237
    .restart local v8    # "size":I
    new-instance v14, Landroid/text/style/AbsoluteSizeSpan;

    #@1b9
    const/4 v15, 0x1

    #@1ba
    invoke-direct {v14, v8, v15}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    #@1bd
    .line 238
    add-int/lit8 v15, v4, 0x1

    #@1bf
    aget v15, p2, v15

    #@1c1
    add-int/lit8 v16, v4, 0x2

    #@1c3
    aget v16, p2, v16

    #@1c5
    add-int/lit8 v16, v16, 0x1

    #@1c7
    .line 239
    const/16 v17, 0x21

    #@1c9
    .line 237
    move/from16 v0, v16

    #@1cb
    move/from16 v1, v17

    #@1cd
    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    #@1d0
    .line 242
    .end local v8    # "size":I
    :cond_e
    const-string/jumbo v14, ";fgcolor="

    #@1d3
    invoke-static {v11, v14}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1d6
    move-result-object v9

    #@1d7
    .line 243
    if-eqz v9, :cond_f

    #@1d9
    .line 244
    const/4 v14, 0x1

    #@1da
    invoke-static {v9, v14}, Landroid/content/res/StringBlock;->getColor(Ljava/lang/String;Z)Landroid/text/style/CharacterStyle;

    #@1dd
    move-result-object v14

    #@1de
    .line 245
    add-int/lit8 v15, v4, 0x1

    #@1e0
    aget v15, p2, v15

    #@1e2
    add-int/lit8 v16, v4, 0x2

    #@1e4
    aget v16, p2, v16

    #@1e6
    add-int/lit8 v16, v16, 0x1

    #@1e8
    .line 246
    const/16 v17, 0x21

    #@1ea
    .line 244
    move/from16 v0, v16

    #@1ec
    move/from16 v1, v17

    #@1ee
    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    #@1f1
    .line 249
    :cond_f
    const-string/jumbo v14, ";color="

    #@1f4
    invoke-static {v11, v14}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1f7
    move-result-object v9

    #@1f8
    .line 250
    if-eqz v9, :cond_10

    #@1fa
    .line 251
    const/4 v14, 0x1

    #@1fb
    invoke-static {v9, v14}, Landroid/content/res/StringBlock;->getColor(Ljava/lang/String;Z)Landroid/text/style/CharacterStyle;

    #@1fe
    move-result-object v14

    #@1ff
    .line 252
    add-int/lit8 v15, v4, 0x1

    #@201
    aget v15, p2, v15

    #@203
    add-int/lit8 v16, v4, 0x2

    #@205
    aget v16, p2, v16

    #@207
    add-int/lit8 v16, v16, 0x1

    #@209
    .line 253
    const/16 v17, 0x21

    #@20b
    .line 251
    move/from16 v0, v16

    #@20d
    move/from16 v1, v17

    #@20f
    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    #@212
    .line 256
    :cond_10
    const-string/jumbo v14, ";bgcolor="

    #@215
    invoke-static {v11, v14}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@218
    move-result-object v9

    #@219
    .line 257
    if-eqz v9, :cond_11

    #@21b
    .line 258
    const/4 v14, 0x0

    #@21c
    invoke-static {v9, v14}, Landroid/content/res/StringBlock;->getColor(Ljava/lang/String;Z)Landroid/text/style/CharacterStyle;

    #@21f
    move-result-object v14

    #@220
    .line 259
    add-int/lit8 v15, v4, 0x1

    #@222
    aget v15, p2, v15

    #@224
    add-int/lit8 v16, v4, 0x2

    #@226
    aget v16, p2, v16

    #@228
    add-int/lit8 v16, v16, 0x1

    #@22a
    .line 260
    const/16 v17, 0x21

    #@22c
    .line 258
    move/from16 v0, v16

    #@22e
    move/from16 v1, v17

    #@230
    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    #@233
    .line 263
    :cond_11
    const-string/jumbo v14, ";face="

    #@236
    invoke-static {v11, v14}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@239
    move-result-object v9

    #@23a
    .line 264
    if-eqz v9, :cond_1

    #@23c
    .line 265
    new-instance v14, Landroid/text/style/TypefaceSpan;

    #@23e
    invoke-direct {v14, v9}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    #@241
    .line 266
    add-int/lit8 v15, v4, 0x1

    #@243
    aget v15, p2, v15

    #@245
    add-int/lit8 v16, v4, 0x2

    #@247
    aget v16, p2, v16

    #@249
    add-int/lit8 v16, v16, 0x1

    #@24b
    .line 267
    const/16 v17, 0x21

    #@24d
    .line 265
    move/from16 v0, v16

    #@24f
    move/from16 v1, v17

    #@251
    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    #@254
    goto/16 :goto_1

    #@256
    .line 269
    .end local v9    # "sub":Ljava/lang/String;
    :cond_12
    const-string/jumbo v14, "a;"

    #@259
    invoke-virtual {v11, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@25c
    move-result v14

    #@25d
    if-eqz v14, :cond_13

    #@25f
    .line 272
    const-string/jumbo v14, ";href="

    #@262
    invoke-static {v11, v14}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@265
    move-result-object v9

    #@266
    .line 273
    .restart local v9    # "sub":Ljava/lang/String;
    if-eqz v9, :cond_1

    #@268
    .line 274
    new-instance v14, Landroid/text/style/URLSpan;

    #@26a
    invoke-direct {v14, v9}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    #@26d
    .line 275
    add-int/lit8 v15, v4, 0x1

    #@26f
    aget v15, p2, v15

    #@271
    add-int/lit8 v16, v4, 0x2

    #@273
    aget v16, p2, v16

    #@275
    add-int/lit8 v16, v16, 0x1

    #@277
    .line 276
    const/16 v17, 0x21

    #@279
    .line 274
    move/from16 v0, v16

    #@27b
    move/from16 v1, v17

    #@27d
    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    #@280
    goto/16 :goto_1

    #@282
    .line 278
    .end local v9    # "sub":Ljava/lang/String;
    :cond_13
    const-string/jumbo v14, "annotation;"

    #@285
    invoke-virtual {v11, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@288
    move-result v14

    #@289
    if-eqz v14, :cond_1

    #@28b
    .line 279
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    #@28e
    move-result v6

    #@28f
    .line 282
    .local v6, "len":I
    const/16 v14, 0x3b

    #@291
    invoke-virtual {v11, v14}, Ljava/lang/String;->indexOf(I)I

    #@294
    move-result v10

    #@295
    .local v10, "t":I
    :goto_2
    if-ge v10, v6, :cond_1

    #@297
    .line 283
    const/16 v14, 0x3d

    #@299
    invoke-virtual {v11, v14, v10}, Ljava/lang/String;->indexOf(II)I

    #@29c
    move-result v3

    #@29d
    .line 284
    .local v3, "eq":I
    if-ltz v3, :cond_1

    #@29f
    .line 288
    const/16 v14, 0x3b

    #@2a1
    invoke-virtual {v11, v14, v3}, Ljava/lang/String;->indexOf(II)I

    #@2a4
    move-result v7

    #@2a5
    .line 289
    .local v7, "next":I
    if-gez v7, :cond_14

    #@2a7
    .line 290
    move v7, v6

    #@2a8
    .line 293
    :cond_14
    add-int/lit8 v14, v10, 0x1

    #@2aa
    invoke-virtual {v11, v14, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2ad
    move-result-object v5

    #@2ae
    .line 294
    .local v5, "key":Ljava/lang/String;
    add-int/lit8 v14, v3, 0x1

    #@2b0
    invoke-virtual {v11, v14, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2b3
    move-result-object v13

    #@2b4
    .line 296
    .local v13, "value":Ljava/lang/String;
    new-instance v14, Landroid/text/Annotation;

    #@2b6
    invoke-direct {v14, v5, v13}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@2b9
    .line 297
    add-int/lit8 v15, v4, 0x1

    #@2bb
    aget v15, p2, v15

    #@2bd
    add-int/lit8 v16, v4, 0x2

    #@2bf
    aget v16, p2, v16

    #@2c1
    add-int/lit8 v16, v16, 0x1

    #@2c3
    .line 298
    const/16 v17, 0x21

    #@2c5
    .line 296
    move/from16 v0, v16

    #@2c7
    move/from16 v1, v17

    #@2c9
    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    #@2cc
    .line 282
    move v10, v7

    #@2cd
    goto :goto_2

    #@2ce
    .line 305
    .end local v3    # "eq":I
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "len":I
    .end local v7    # "next":I
    .end local v10    # "t":I
    .end local v11    # "tag":Ljava/lang/String;
    .end local v12    # "type":I
    .end local v13    # "value":Ljava/lang/String;
    :cond_15
    new-instance v14, Landroid/text/SpannedString;

    #@2d0
    invoke-direct {v14, v2}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    #@2d3
    return-object v14
.end method

.method private static getColor(Ljava/lang/String;Z)Landroid/text/style/CharacterStyle;
    .locals 11
    .param p0, "color"    # Ljava/lang/String;
    .param p1, "foreground"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 323
    const/high16 v6, -0x1000000

    #@4
    .line 325
    .local v6, "c":I
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_1

    #@a
    .line 326
    const-string/jumbo v0, "@"

    #@d
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_2

    #@13
    .line 327
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@16
    move-result-object v10

    #@17
    .line 328
    .local v10, "res":Landroid/content/res/Resources;
    const/4 v0, 0x1

    #@18
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@1b
    move-result-object v9

    #@1c
    .line 329
    .local v9, "name":Ljava/lang/String;
    const-string/jumbo v0, "color"

    #@1f
    const-string/jumbo v3, "android"

    #@22
    invoke-virtual {v10, v9, v0, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    #@25
    move-result v7

    #@26
    .line 330
    .local v7, "colorRes":I
    if-eqz v7, :cond_1

    #@28
    .line 331
    invoke-virtual {v10, v7, v1}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    #@2b
    move-result-object v4

    #@2c
    .line 332
    .local v4, "colors":Landroid/content/res/ColorStateList;
    if-eqz p1, :cond_0

    #@2e
    .line 333
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    #@30
    move v3, v2

    #@31
    move-object v5, v1

    #@32
    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    #@35
    return-object v0

    #@36
    .line 335
    :cond_0
    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    #@39
    move-result v6

    #@3a
    .line 347
    .end local v4    # "colors":Landroid/content/res/ColorStateList;
    .end local v7    # "colorRes":I
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "res":Landroid/content/res/Resources;
    :cond_1
    :goto_0
    if-eqz p1, :cond_3

    #@3c
    .line 348
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    #@3e
    invoke-direct {v0, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    #@41
    return-object v0

    #@42
    .line 340
    :cond_2
    :try_start_0
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@45
    move-result v6

    #@46
    goto :goto_0

    #@47
    .line 341
    :catch_0
    move-exception v8

    #@48
    .line 342
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    const/high16 v6, -0x1000000

    #@4a
    goto :goto_0

    #@4b
    .line 350
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    :cond_3
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    #@4d
    invoke-direct {v0, v6}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    #@50
    return-object v0
.end method

.method private static native nativeCreate([BII)J
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeGetSize(J)I
.end method

.method private static native nativeGetString(JI)Ljava/lang/String;
.end method

.method private static native nativeGetStyle(JI)[I
.end method

.method private static subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "full"    # Ljava/lang/String;
    .param p1, "attribute"    # Ljava/lang/String;

    #@0
    .prologue
    .line 383
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@3
    move-result v1

    #@4
    .line 384
    .local v1, "start":I
    if-gez v1, :cond_0

    #@6
    .line 385
    const/4 v2, 0x0

    #@7
    return-object v2

    #@8
    .line 388
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@b
    move-result v2

    #@c
    add-int/2addr v1, v2

    #@d
    .line 389
    const/16 v2, 0x3b

    #@f
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    #@12
    move-result v0

    #@13
    .line 391
    .local v0, "end":I
    if-gez v0, :cond_1

    #@15
    .line 392
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    return-object v2

    #@1a
    .line 394
    :cond_1
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    return-object v2
.end method


# virtual methods
.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 144
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    .line 146
    iget-boolean v0, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 147
    iget-wide v0, p0, Landroid/content/res/StringBlock;->mNative:J

    #@9
    invoke-static {v0, v1}, Landroid/content/res/StringBlock;->nativeDestroy(J)V

    #@c
    .line 142
    :cond_0
    return-void

    #@d
    .line 145
    :catchall_0
    move-exception v0

    #@e
    .line 146
    iget-boolean v1, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    #@10
    if-eqz v1, :cond_1

    #@12
    .line 147
    iget-wide v2, p0, Landroid/content/res/StringBlock;->mNative:J

    #@14
    invoke-static {v2, v3}, Landroid/content/res/StringBlock;->nativeDestroy(J)V

    #@17
    .line 145
    :cond_1
    throw v0
.end method

.method public get(I)Ljava/lang/CharSequence;
    .locals 10
    .param p1, "idx"    # I

    #@0
    .prologue
    .line 63
    monitor-enter p0

    #@1
    .line 64
    :try_start_0
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    #@3
    if-eqz v7, :cond_0

    #@5
    .line 65
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    #@7
    aget-object v1, v7, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    .line 66
    .local v1, "res":Ljava/lang/CharSequence;
    if-eqz v1, :cond_2

    #@b
    monitor-exit p0

    #@c
    .line 67
    return-object v1

    #@d
    .line 69
    .end local v1    # "res":Ljava/lang/CharSequence;
    :cond_0
    :try_start_1
    iget-object v7, p0, Landroid/content/res/StringBlock;->mSparseStrings:Landroid/util/SparseArray;

    #@f
    if-eqz v7, :cond_1

    #@11
    .line 70
    iget-object v7, p0, Landroid/content/res/StringBlock;->mSparseStrings:Landroid/util/SparseArray;

    #@13
    invoke-virtual {v7, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Ljava/lang/CharSequence;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@19
    .line 71
    .restart local v1    # "res":Ljava/lang/CharSequence;
    if-eqz v1, :cond_2

    #@1b
    monitor-exit p0

    #@1c
    .line 72
    return-object v1

    #@1d
    .line 75
    .end local v1    # "res":Ljava/lang/CharSequence;
    :cond_1
    :try_start_2
    iget-wide v8, p0, Landroid/content/res/StringBlock;->mNative:J

    #@1f
    invoke-static {v8, v9}, Landroid/content/res/StringBlock;->nativeGetSize(J)I

    #@22
    move-result v0

    #@23
    .line 76
    .local v0, "num":I
    iget-boolean v7, p0, Landroid/content/res/StringBlock;->mUseSparse:Z

    #@25
    if-eqz v7, :cond_5

    #@27
    const/16 v7, 0xfa

    #@29
    if-le v0, v7, :cond_5

    #@2b
    .line 77
    new-instance v7, Landroid/util/SparseArray;

    #@2d
    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    #@30
    iput-object v7, p0, Landroid/content/res/StringBlock;->mSparseStrings:Landroid/util/SparseArray;

    #@32
    .line 82
    .end local v0    # "num":I
    :cond_2
    :goto_0
    iget-wide v8, p0, Landroid/content/res/StringBlock;->mNative:J

    #@34
    invoke-static {v8, v9, p1}, Landroid/content/res/StringBlock;->nativeGetString(JI)Ljava/lang/String;

    #@37
    move-result-object v2

    #@38
    .line 83
    .local v2, "str":Ljava/lang/String;
    move-object v1, v2

    #@39
    .line 84
    .restart local v1    # "res":Ljava/lang/CharSequence;
    iget-wide v8, p0, Landroid/content/res/StringBlock;->mNative:J

    #@3b
    invoke-static {v8, v9, p1}, Landroid/content/res/StringBlock;->nativeGetStyle(JI)[I

    #@3e
    move-result-object v3

    #@3f
    .line 87
    .local v3, "style":[I
    if-eqz v3, :cond_12

    #@41
    .line 88
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    #@43
    if-nez v7, :cond_3

    #@45
    .line 89
    new-instance v7, Landroid/content/res/StringBlock$StyleIDs;

    #@47
    invoke-direct {v7}, Landroid/content/res/StringBlock$StyleIDs;-><init>()V

    #@4a
    iput-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    #@4c
    .line 94
    :cond_3
    const/4 v5, 0x0

    #@4d
    .local v5, "styleIndex":I
    :goto_1
    array-length v7, v3

    #@4e
    if-ge v5, v7, :cond_11

    #@50
    .line 95
    aget v4, v3, v5

    #@52
    .line 97
    .local v4, "styleId":I
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    #@54
    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->-get1(Landroid/content/res/StringBlock$StyleIDs;)I

    #@57
    move-result v7

    #@58
    if-eq v4, v7, :cond_4

    #@5a
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    #@5c
    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->-get2(Landroid/content/res/StringBlock$StyleIDs;)I

    #@5f
    move-result v7

    #@60
    if-ne v4, v7, :cond_6

    #@62
    .line 94
    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x3

    #@64
    goto :goto_1

    #@65
    .line 79
    .end local v1    # "res":Ljava/lang/CharSequence;
    .end local v2    # "str":Ljava/lang/String;
    .end local v3    # "style":[I
    .end local v4    # "styleId":I
    .end local v5    # "styleIndex":I
    .restart local v0    # "num":I
    :cond_5
    new-array v7, v0, [Ljava/lang/CharSequence;

    #@67
    iput-object v7, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@69
    goto :goto_0

    #@6a
    .line 63
    .end local v0    # "num":I
    :catchall_0
    move-exception v7

    #@6b
    monitor-exit p0

    #@6c
    throw v7

    #@6d
    .line 98
    .restart local v1    # "res":Ljava/lang/CharSequence;
    .restart local v2    # "str":Ljava/lang/String;
    .restart local v3    # "style":[I
    .restart local v4    # "styleId":I
    .restart local v5    # "styleIndex":I
    :cond_6
    :try_start_3
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    #@6f
    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->-get10(Landroid/content/res/StringBlock$StyleIDs;)I

    #@72
    move-result v7

    #@73
    if-eq v4, v7, :cond_4

    #@75
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    #@77
    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->-get9(Landroid/content/res/StringBlock$StyleIDs;)I

    #@7a
    move-result v7

    #@7b
    if-eq v4, v7, :cond_4

    #@7d
    .line 99
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    #@7f
    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->-get0(Landroid/content/res/StringBlock$StyleIDs;)I

    #@82
    move-result v7

    #@83
    if-eq v4, v7, :cond_4

    #@85
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    #@87
    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->-get5(Landroid/content/res/StringBlock$StyleIDs;)I

    #@8a
    move-result v7

    #@8b
    if-eq v4, v7, :cond_4

    #@8d
    .line 100
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    #@8f
    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->-get7(Landroid/content/res/StringBlock$StyleIDs;)I

    #@92
    move-result v7

    #@93
    if-eq v4, v7, :cond_4

    #@95
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    #@97
    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->-get8(Landroid/content/res/StringBlock$StyleIDs;)I

    #@9a
    move-result v7

    #@9b
    if-eq v4, v7, :cond_4

    #@9d
    .line 101
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    #@9f
    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->-get6(Landroid/content/res/StringBlock$StyleIDs;)I

    #@a2
    move-result v7

    #@a3
    if-eq v4, v7, :cond_4

    #@a5
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    #@a7
    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->-get3(Landroid/content/res/StringBlock$StyleIDs;)I

    #@aa
    move-result v7

    #@ab
    if-eq v4, v7, :cond_4

    #@ad
    .line 102
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    #@af
    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->-get4(Landroid/content/res/StringBlock$StyleIDs;)I

    #@b2
    move-result v7

    #@b3
    if-eq v4, v7, :cond_4

    #@b5
    .line 107
    iget-wide v8, p0, Landroid/content/res/StringBlock;->mNative:J

    #@b7
    invoke-static {v8, v9, v4}, Landroid/content/res/StringBlock;->nativeGetString(JI)Ljava/lang/String;

    #@ba
    move-result-object v6

    #@bb
    .line 109
    .local v6, "styleTag":Ljava/lang/String;
    const-string/jumbo v7, "b"

    #@be
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c1
    move-result v7

    #@c2
    if-eqz v7, :cond_7

    #@c4
    .line 110
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    #@c6
    invoke-static {v7, v4}, Landroid/content/res/StringBlock$StyleIDs;->-set1(Landroid/content/res/StringBlock$StyleIDs;I)I

    #@c9
    goto :goto_2

    #@ca
    .line 111
    :cond_7
    const-string/jumbo v7, "i"

    #@cd
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d0
    move-result v7

    #@d1
    if-eqz v7, :cond_8

    #@d3
    .line 112
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    #@d5
    invoke-static {v7, v4}, Landroid/content/res/StringBlock$StyleIDs;->-set2(Landroid/content/res/StringBlock$StyleIDs;I)I

    #@d8
    goto :goto_2

    #@d9
    .line 113
    :cond_8
    const-string/jumbo v7, "u"

    #@dc
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@df
    move-result v7

    #@e0
    if-eqz v7, :cond_9

    #@e2
    .line 114
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    #@e4
    invoke-static {v7, v4}, Landroid/content/res/StringBlock$StyleIDs;->-set10(Landroid/content/res/StringBlock$StyleIDs;I)I

    #@e7
    goto/16 :goto_2

    #@e9
    .line 115
    :cond_9
    const-string/jumbo v7, "tt"

    #@ec
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ef
    move-result v7

    #@f0
    if-eqz v7, :cond_a

    #@f2
    .line 116
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    #@f4
    invoke-static {v7, v4}, Landroid/content/res/StringBlock$StyleIDs;->-set9(Landroid/content/res/StringBlock$StyleIDs;I)I

    #@f7
    goto/16 :goto_2

    #@f9
    .line 117
    :cond_a
    const-string/jumbo v7, "big"

    #@fc
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ff
    move-result v7

    #@100
    if-eqz v7, :cond_b

    #@102
    .line 118
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    #@104
    invoke-static {v7, v4}, Landroid/content/res/StringBlock$StyleIDs;->-set0(Landroid/content/res/StringBlock$StyleIDs;I)I

    #@107
    goto/16 :goto_2

    #@109
    .line 119
    :cond_b
    const-string/jumbo v7, "small"

    #@10c
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10f
    move-result v7

    #@110
    if-eqz v7, :cond_c

    #@112
    .line 120
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    #@114
    invoke-static {v7, v4}, Landroid/content/res/StringBlock$StyleIDs;->-set5(Landroid/content/res/StringBlock$StyleIDs;I)I

    #@117
    goto/16 :goto_2

    #@119
    .line 121
    :cond_c
    const-string/jumbo v7, "sup"

    #@11c
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11f
    move-result v7

    #@120
    if-eqz v7, :cond_d

    #@122
    .line 122
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    #@124
    invoke-static {v7, v4}, Landroid/content/res/StringBlock$StyleIDs;->-set8(Landroid/content/res/StringBlock$StyleIDs;I)I

    #@127
    goto/16 :goto_2

    #@129
    .line 123
    :cond_d
    const-string/jumbo v7, "sub"

    #@12c
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12f
    move-result v7

    #@130
    if-eqz v7, :cond_e

    #@132
    .line 124
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    #@134
    invoke-static {v7, v4}, Landroid/content/res/StringBlock$StyleIDs;->-set7(Landroid/content/res/StringBlock$StyleIDs;I)I

    #@137
    goto/16 :goto_2

    #@139
    .line 125
    :cond_e
    const-string/jumbo v7, "strike"

    #@13c
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13f
    move-result v7

    #@140
    if-eqz v7, :cond_f

    #@142
    .line 126
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    #@144
    invoke-static {v7, v4}, Landroid/content/res/StringBlock$StyleIDs;->-set6(Landroid/content/res/StringBlock$StyleIDs;I)I

    #@147
    goto/16 :goto_2

    #@149
    .line 127
    :cond_f
    const-string/jumbo v7, "li"

    #@14c
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14f
    move-result v7

    #@150
    if-eqz v7, :cond_10

    #@152
    .line 128
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    #@154
    invoke-static {v7, v4}, Landroid/content/res/StringBlock$StyleIDs;->-set3(Landroid/content/res/StringBlock$StyleIDs;I)I

    #@157
    goto/16 :goto_2

    #@159
    .line 129
    :cond_10
    const-string/jumbo v7, "marquee"

    #@15c
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15f
    move-result v7

    #@160
    if-eqz v7, :cond_4

    #@162
    .line 130
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    #@164
    invoke-static {v7, v4}, Landroid/content/res/StringBlock$StyleIDs;->-set4(Landroid/content/res/StringBlock$StyleIDs;I)I

    #@167
    goto/16 :goto_2

    #@169
    .line 134
    .end local v4    # "styleId":I
    .end local v6    # "styleTag":Ljava/lang/String;
    :cond_11
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    #@16b
    invoke-direct {p0, v2, v3, v7}, Landroid/content/res/StringBlock;->applyStyles(Ljava/lang/String;[ILandroid/content/res/StringBlock$StyleIDs;)Ljava/lang/CharSequence;

    #@16e
    move-result-object v1

    #@16f
    .line 136
    .end local v5    # "styleIndex":I
    :cond_12
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    #@171
    if-eqz v7, :cond_13

    #@173
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    #@175
    aput-object v1, v7, p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@177
    :goto_3
    monitor-exit p0

    #@178
    .line 138
    return-object v1

    #@179
    .line 137
    :cond_13
    :try_start_4
    iget-object v7, p0, Landroid/content/res/StringBlock;->mSparseStrings:Landroid/util/SparseArray;

    #@17b
    invoke-virtual {v7, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@17e
    goto :goto_3
.end method
