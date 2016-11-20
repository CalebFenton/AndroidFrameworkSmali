.class public Landroid/text/DynamicLayout;
.super Landroid/text/Layout;
.source "DynamicLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/DynamicLayout$ChangeWatcher;
    }
.end annotation


# static fields
.field private static final BLOCK_MINIMUM_CHARACTER_LENGTH:I = 0x190

.field private static final COLUMNS_ELLIPSIZE:I = 0x6

.field private static final COLUMNS_NORMAL:I = 0x4

.field private static final DESCENT:I = 0x2

.field private static final DIR:I = 0x0

.field private static final DIR_SHIFT:I = 0x1e

.field private static final ELLIPSIS_COUNT:I = 0x5

.field private static final ELLIPSIS_START:I = 0x4

.field private static final ELLIPSIS_UNDEFINED:I = -0x80000000

.field private static final HYPHEN:I = 0x3

.field public static final INVALID_BLOCK_INDEX:I = -0x1

.field private static final PRIORITY:I = 0x80

.field private static final START:I = 0x0

.field private static final START_MASK:I = 0x1fffffff

.field private static final TAB:I = 0x0

.field private static final TAB_MASK:I = 0x20000000

.field private static final TOP:I = 0x1

.field private static sBuilder:Landroid/text/StaticLayout$Builder;

.field private static final sLock:[Ljava/lang/Object;

.field private static sStaticLayout:Landroid/text/StaticLayout;


# instance fields
.field private mBase:Ljava/lang/CharSequence;

.field private mBlockEndLines:[I

.field private mBlockIndices:[I

.field private mBottomPadding:I

.field private mBreakStrategy:I

.field private mDisplay:Ljava/lang/CharSequence;

.field private mEllipsize:Z

.field private mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

.field private mEllipsizedWidth:I

.field private mHyphenationFrequency:I

.field private mIncludePad:Z

.field private mIndexFirstChangedBlock:I

.field private mInts:Landroid/text/PackedIntVector;

.field private mNumberOfBlocks:I

.field private mObjects:Landroid/text/PackedObjectVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/PackedObjectVector",
            "<",
            "Landroid/text/Layout$Directions;",
            ">;"
        }
    .end annotation
.end field

.field private mTopPadding:I

.field private mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;


# direct methods
.method static synthetic -wrap0(Landroid/text/DynamicLayout;Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "where"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/text/DynamicLayout;->reflow(Ljava/lang/CharSequence;III)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 748
    sput-object v0, Landroid/text/DynamicLayout;->sStaticLayout:Landroid/text/StaticLayout;

    #@3
    .line 749
    sput-object v0, Landroid/text/DynamicLayout;->sBuilder:Landroid/text/StaticLayout$Builder;

    #@5
    .line 751
    const/4 v0, 0x0

    #@6
    new-array v0, v0, [Ljava/lang/Object;

    #@8
    sput-object v0, Landroid/text/DynamicLayout;->sLock:[Ljava/lang/Object;

    #@a
    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 9
    .param p1, "base"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingmult"    # F
    .param p6, "spacingadd"    # F
    .param p7, "includepad"    # Z

    #@0
    .prologue
    move-object v0, p0

    #@1
    move-object v1, p1

    #@2
    move-object v2, p1

    #@3
    move-object v3, p2

    #@4
    move v4, p3

    #@5
    move-object v5, p4

    #@6
    move v6, p5

    #@7
    move v7, p6

    #@8
    move/from16 v8, p7

    #@a
    .line 50
    invoke-direct/range {v0 .. v8}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    #@d
    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 11
    .param p1, "base"    # Ljava/lang/CharSequence;
    .param p2, "display"    # Ljava/lang/CharSequence;
    .param p3, "paint"    # Landroid/text/TextPaint;
    .param p4, "width"    # I
    .param p5, "align"    # Landroid/text/Layout$Alignment;
    .param p6, "spacingmult"    # F
    .param p7, "spacingadd"    # F
    .param p8, "includepad"    # Z

    #@0
    .prologue
    .line 65
    const/4 v9, 0x0

    #@1
    const/4 v10, 0x0

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move-object v2, p2

    #@5
    move-object v3, p3

    #@6
    move v4, p4

    #@7
    move-object/from16 v5, p5

    #@9
    move/from16 v6, p6

    #@b
    move/from16 v7, p7

    #@d
    move/from16 v8, p8

    #@f
    .line 64
    invoke-direct/range {v0 .. v10}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    #@12
    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 14
    .param p1, "base"    # Ljava/lang/CharSequence;
    .param p2, "display"    # Ljava/lang/CharSequence;
    .param p3, "paint"    # Landroid/text/TextPaint;
    .param p4, "width"    # I
    .param p5, "align"    # Landroid/text/Layout$Alignment;
    .param p6, "spacingmult"    # F
    .param p7, "spacingadd"    # F
    .param p8, "includepad"    # Z
    .param p9, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p10, "ellipsizedWidth"    # I

    #@0
    .prologue
    .line 81
    sget-object v6, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    #@2
    .line 83
    const/4 v10, 0x0

    #@3
    const/4 v11, 0x0

    #@4
    move-object v0, p0

    #@5
    move-object v1, p1

    #@6
    move-object/from16 v2, p2

    #@8
    move-object/from16 v3, p3

    #@a
    move/from16 v4, p4

    #@c
    move-object/from16 v5, p5

    #@e
    move/from16 v7, p6

    #@10
    move/from16 v8, p7

    #@12
    move/from16 v9, p8

    #@14
    move-object/from16 v12, p9

    #@16
    move/from16 v13, p10

    #@18
    .line 81
    invoke-direct/range {v0 .. v13}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZIILandroid/text/TextUtils$TruncateAt;I)V

    #@1b
    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZIILandroid/text/TextUtils$TruncateAt;I)V
    .locals 19
    .param p1, "base"    # Ljava/lang/CharSequence;
    .param p2, "display"    # Ljava/lang/CharSequence;
    .param p3, "paint"    # Landroid/text/TextPaint;
    .param p4, "width"    # I
    .param p5, "align"    # Landroid/text/Layout$Alignment;
    .param p6, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p7, "spacingmult"    # F
    .param p8, "spacingadd"    # F
    .param p9, "includepad"    # Z
    .param p10, "breakStrategy"    # I
    .param p11, "hyphenationFrequency"    # I
    .param p12, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p13, "ellipsizedWidth"    # I

    #@0
    .prologue
    .line 102
    if-nez p12, :cond_2

    #@2
    move-object/from16 v3, p2

    #@4
    :goto_0
    move-object/from16 v2, p0

    #@6
    move-object/from16 v4, p3

    #@8
    move/from16 v5, p4

    #@a
    move-object/from16 v6, p5

    #@c
    move-object/from16 v7, p6

    #@e
    move/from16 v8, p7

    #@10
    move/from16 v9, p8

    #@12
    invoke-direct/range {v2 .. v9}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    #@15
    .line 109
    move-object/from16 v0, p1

    #@17
    move-object/from16 v1, p0

    #@19
    iput-object v0, v1, Landroid/text/DynamicLayout;->mBase:Ljava/lang/CharSequence;

    #@1b
    .line 110
    move-object/from16 v0, p2

    #@1d
    move-object/from16 v1, p0

    #@1f
    iput-object v0, v1, Landroid/text/DynamicLayout;->mDisplay:Ljava/lang/CharSequence;

    #@21
    .line 112
    if-eqz p12, :cond_4

    #@23
    .line 113
    new-instance v2, Landroid/text/PackedIntVector;

    #@25
    const/4 v3, 0x6

    #@26
    invoke-direct {v2, v3}, Landroid/text/PackedIntVector;-><init>(I)V

    #@29
    move-object/from16 v0, p0

    #@2b
    iput-object v2, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    #@2d
    .line 114
    move/from16 v0, p13

    #@2f
    move-object/from16 v1, p0

    #@31
    iput v0, v1, Landroid/text/DynamicLayout;->mEllipsizedWidth:I

    #@33
    .line 115
    move-object/from16 v0, p12

    #@35
    move-object/from16 v1, p0

    #@37
    iput-object v0, v1, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    #@39
    .line 122
    :goto_1
    new-instance v2, Landroid/text/PackedObjectVector;

    #@3b
    const/4 v3, 0x1

    #@3c
    invoke-direct {v2, v3}, Landroid/text/PackedObjectVector;-><init>(I)V

    #@3f
    move-object/from16 v0, p0

    #@41
    iput-object v2, v0, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    #@43
    .line 124
    move/from16 v0, p9

    #@45
    move-object/from16 v1, p0

    #@47
    iput-boolean v0, v1, Landroid/text/DynamicLayout;->mIncludePad:Z

    #@49
    .line 125
    move/from16 v0, p10

    #@4b
    move-object/from16 v1, p0

    #@4d
    iput v0, v1, Landroid/text/DynamicLayout;->mBreakStrategy:I

    #@4f
    .line 126
    move/from16 v0, p11

    #@51
    move-object/from16 v1, p0

    #@53
    iput v0, v1, Landroid/text/DynamicLayout;->mHyphenationFrequency:I

    #@55
    .line 136
    if-eqz p12, :cond_0

    #@57
    .line 137
    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getText()Ljava/lang/CharSequence;

    #@5a
    move-result-object v13

    #@5b
    check-cast v13, Landroid/text/Layout$Ellipsizer;

    #@5d
    .line 139
    .local v13, "e":Landroid/text/Layout$Ellipsizer;
    move-object/from16 v0, p0

    #@5f
    iput-object v0, v13, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    #@61
    .line 140
    move/from16 v0, p13

    #@63
    iput v0, v13, Landroid/text/Layout$Ellipsizer;->mWidth:I

    #@65
    .line 141
    move-object/from16 v0, p12

    #@67
    iput-object v0, v13, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    #@69
    .line 142
    const/4 v2, 0x1

    #@6a
    move-object/from16 v0, p0

    #@6c
    iput-boolean v2, v0, Landroid/text/DynamicLayout;->mEllipsize:Z

    #@6e
    .line 151
    .end local v13    # "e":Landroid/text/Layout$Ellipsizer;
    :cond_0
    if-eqz p12, :cond_5

    #@70
    .line 152
    const/4 v2, 0x6

    #@71
    new-array v0, v2, [I

    #@73
    move-object/from16 v18, v0

    #@75
    .line 153
    .local v18, "start":[I
    const/high16 v2, -0x80000000

    #@77
    const/4 v3, 0x4

    #@78
    aput v2, v18, v3

    #@7a
    .line 158
    :goto_2
    const/4 v2, 0x1

    #@7b
    new-array v12, v2, [Landroid/text/Layout$Directions;

    #@7d
    sget-object v2, Landroid/text/DynamicLayout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    #@7f
    const/4 v3, 0x0

    #@80
    aput-object v2, v12, v3

    #@82
    .line 160
    .local v12, "dirs":[Landroid/text/Layout$Directions;
    invoke-virtual/range {p3 .. p3}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    #@85
    move-result-object v14

    #@86
    .line 161
    .local v14, "fm":Landroid/graphics/Paint$FontMetricsInt;
    iget v10, v14, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    #@88
    .line 162
    .local v10, "asc":I
    iget v11, v14, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    #@8a
    .line 164
    .local v11, "desc":I
    const/high16 v2, 0x40000000    # 2.0f

    #@8c
    const/4 v3, 0x0

    #@8d
    aput v2, v18, v3

    #@8f
    .line 165
    const/4 v2, 0x0

    #@90
    const/4 v3, 0x1

    #@91
    aput v2, v18, v3

    #@93
    .line 166
    const/4 v2, 0x2

    #@94
    aput v11, v18, v2

    #@96
    .line 167
    move-object/from16 v0, p0

    #@98
    iget-object v2, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    #@9a
    const/4 v3, 0x0

    #@9b
    move-object/from16 v0, v18

    #@9d
    invoke-virtual {v2, v3, v0}, Landroid/text/PackedIntVector;->insertAt(I[I)V

    #@a0
    .line 169
    sub-int v2, v11, v10

    #@a2
    const/4 v3, 0x1

    #@a3
    aput v2, v18, v3

    #@a5
    .line 170
    move-object/from16 v0, p0

    #@a7
    iget-object v2, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    #@a9
    const/4 v3, 0x1

    #@aa
    move-object/from16 v0, v18

    #@ac
    invoke-virtual {v2, v3, v0}, Landroid/text/PackedIntVector;->insertAt(I[I)V

    #@af
    .line 172
    move-object/from16 v0, p0

    #@b1
    iget-object v2, v0, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    #@b3
    const/4 v3, 0x0

    #@b4
    invoke-virtual {v2, v3, v12}, Landroid/text/PackedObjectVector;->insertAt(I[Ljava/lang/Object;)V

    #@b7
    .line 175
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    #@ba
    move-result v2

    #@bb
    const/4 v3, 0x0

    #@bc
    const/4 v4, 0x0

    #@bd
    move-object/from16 v0, p0

    #@bf
    move-object/from16 v1, p1

    #@c1
    invoke-direct {v0, v1, v3, v4, v2}, Landroid/text/DynamicLayout;->reflow(Ljava/lang/CharSequence;III)V

    #@c4
    .line 177
    move-object/from16 v0, p1

    #@c6
    instance-of v2, v0, Landroid/text/Spannable;

    #@c8
    if-eqz v2, :cond_7

    #@ca
    .line 178
    move-object/from16 v0, p0

    #@cc
    iget-object v2, v0, Landroid/text/DynamicLayout;->mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;

    #@ce
    if-nez v2, :cond_1

    #@d0
    .line 179
    new-instance v2, Landroid/text/DynamicLayout$ChangeWatcher;

    #@d2
    move-object/from16 v0, p0

    #@d4
    invoke-direct {v2, v0}, Landroid/text/DynamicLayout$ChangeWatcher;-><init>(Landroid/text/DynamicLayout;)V

    #@d7
    move-object/from16 v0, p0

    #@d9
    iput-object v2, v0, Landroid/text/DynamicLayout;->mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;

    #@db
    :cond_1
    move-object/from16 v16, p1

    #@dd
    .line 182
    check-cast v16, Landroid/text/Spannable;

    #@df
    .line 183
    .local v16, "sp":Landroid/text/Spannable;
    invoke-interface/range {v16 .. v16}, Landroid/text/Spannable;->length()I

    #@e2
    move-result v2

    #@e3
    const-class v3, Landroid/text/DynamicLayout$ChangeWatcher;

    #@e5
    const/4 v4, 0x0

    #@e6
    move-object/from16 v0, v16

    #@e8
    invoke-interface {v0, v4, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@eb
    move-result-object v17

    #@ec
    check-cast v17, [Landroid/text/DynamicLayout$ChangeWatcher;

    #@ee
    .line 184
    .local v17, "spans":[Landroid/text/DynamicLayout$ChangeWatcher;
    const/4 v15, 0x0

    #@ef
    .local v15, "i":I
    :goto_3
    move-object/from16 v0, v17

    #@f1
    array-length v2, v0

    #@f2
    if-ge v15, v2, :cond_6

    #@f4
    .line 185
    aget-object v2, v17, v15

    #@f6
    move-object/from16 v0, v16

    #@f8
    invoke-interface {v0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    #@fb
    .line 184
    add-int/lit8 v15, v15, 0x1

    #@fd
    goto :goto_3

    #@fe
    .line 104
    .end local v10    # "asc":I
    .end local v11    # "desc":I
    .end local v12    # "dirs":[Landroid/text/Layout$Directions;
    .end local v14    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .end local v15    # "i":I
    .end local v16    # "sp":Landroid/text/Spannable;
    .end local v17    # "spans":[Landroid/text/DynamicLayout$ChangeWatcher;
    .end local v18    # "start":[I
    :cond_2
    move-object/from16 v0, p2

    #@100
    instance-of v2, v0, Landroid/text/Spanned;

    #@102
    if-eqz v2, :cond_3

    #@104
    .line 105
    new-instance v3, Landroid/text/Layout$SpannedEllipsizer;

    #@106
    move-object/from16 v0, p2

    #@108
    invoke-direct {v3, v0}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    #@10b
    goto/16 :goto_0

    #@10d
    .line 106
    :cond_3
    new-instance v3, Landroid/text/Layout$Ellipsizer;

    #@10f
    move-object/from16 v0, p2

    #@111
    invoke-direct {v3, v0}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    #@114
    goto/16 :goto_0

    #@116
    .line 117
    :cond_4
    new-instance v2, Landroid/text/PackedIntVector;

    #@118
    const/4 v3, 0x4

    #@119
    invoke-direct {v2, v3}, Landroid/text/PackedIntVector;-><init>(I)V

    #@11c
    move-object/from16 v0, p0

    #@11e
    iput-object v2, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    #@120
    .line 118
    move/from16 v0, p4

    #@122
    move-object/from16 v1, p0

    #@124
    iput v0, v1, Landroid/text/DynamicLayout;->mEllipsizedWidth:I

    #@126
    .line 119
    const/4 v2, 0x0

    #@127
    move-object/from16 v0, p0

    #@129
    iput-object v2, v0, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    #@12b
    goto/16 :goto_1

    #@12d
    .line 155
    :cond_5
    const/4 v2, 0x4

    #@12e
    new-array v0, v2, [I

    #@130
    move-object/from16 v18, v0

    #@132
    .restart local v18    # "start":[I
    goto/16 :goto_2

    #@134
    .line 187
    .restart local v10    # "asc":I
    .restart local v11    # "desc":I
    .restart local v12    # "dirs":[Landroid/text/Layout$Directions;
    .restart local v14    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .restart local v15    # "i":I
    .restart local v16    # "sp":Landroid/text/Spannable;
    .restart local v17    # "spans":[Landroid/text/DynamicLayout$ChangeWatcher;
    :cond_6
    move-object/from16 v0, p0

    #@136
    iget-object v2, v0, Landroid/text/DynamicLayout;->mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;

    #@138
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    #@13b
    move-result v3

    #@13c
    const/4 v4, 0x0

    #@13d
    .line 188
    const v5, 0x800012

    #@140
    .line 187
    move-object/from16 v0, v16

    #@142
    invoke-interface {v0, v2, v4, v3, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    #@145
    .line 101
    .end local v15    # "i":I
    .end local v16    # "sp":Landroid/text/Spannable;
    .end local v17    # "spans":[Landroid/text/DynamicLayout$ChangeWatcher;
    :cond_7
    return-void
.end method

.method private addBlockAtOffset(I)V
    .locals 4
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 416
    invoke-virtual {p0, p1}, Landroid/text/DynamicLayout;->getLineForOffset(I)I

    #@3
    move-result v0

    #@4
    .line 418
    .local v0, "line":I
    iget-object v2, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    #@6
    if-nez v2, :cond_0

    #@8
    .line 420
    const/4 v2, 0x1

    #@9
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    #@c
    move-result-object v2

    #@d
    iput-object v2, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    #@f
    .line 421
    iget-object v2, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    #@11
    iget v3, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    #@13
    aput v0, v2, v3

    #@15
    .line 422
    iget v2, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    #@17
    add-int/lit8 v2, v2, 0x1

    #@19
    iput v2, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    #@1b
    .line 423
    return-void

    #@1c
    .line 426
    :cond_0
    iget-object v2, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    #@1e
    iget v3, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    #@20
    add-int/lit8 v3, v3, -0x1

    #@22
    aget v1, v2, v3

    #@24
    .line 427
    .local v1, "previousBlockEndLine":I
    if-le v0, v1, :cond_1

    #@26
    .line 428
    iget-object v2, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    #@28
    iget v3, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    #@2a
    invoke-static {v2, v3, v0}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    #@2d
    move-result-object v2

    #@2e
    iput-object v2, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    #@30
    .line 429
    iget v2, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    #@32
    add-int/lit8 v2, v2, 0x1

    #@34
    iput v2, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    #@36
    .line 415
    :cond_1
    return-void
.end method

.method private createBlocks()V
    .locals 5

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 388
    const/16 v1, 0x190

    #@3
    .line 389
    .local v1, "offset":I
    iput v3, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    #@5
    .line 390
    iget-object v2, p0, Landroid/text/DynamicLayout;->mDisplay:Ljava/lang/CharSequence;

    #@7
    .line 393
    .local v2, "text":Ljava/lang/CharSequence;
    :goto_0
    const/16 v3, 0xa

    #@9
    invoke-static {v2, v3, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    #@c
    move-result v1

    #@d
    .line 394
    if-gez v1, :cond_0

    #@f
    .line 395
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    #@12
    move-result v3

    #@13
    invoke-direct {p0, v3}, Landroid/text/DynamicLayout;->addBlockAtOffset(I)V

    #@16
    .line 404
    iget-object v3, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    #@18
    array-length v3, v3

    #@19
    new-array v3, v3, [I

    #@1b
    iput-object v3, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    #@1d
    .line 405
    const/4 v0, 0x0

    #@1e
    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    #@20
    array-length v3, v3

    #@21
    if-ge v0, v3, :cond_1

    #@23
    .line 406
    iget-object v3, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    #@25
    const/4 v4, -0x1

    #@26
    aput v4, v3, v0

    #@28
    .line 405
    add-int/lit8 v0, v0, 0x1

    #@2a
    goto :goto_1

    #@2b
    .line 398
    .end local v0    # "i":I
    :cond_0
    invoke-direct {p0, v1}, Landroid/text/DynamicLayout;->addBlockAtOffset(I)V

    #@2e
    .line 399
    add-int/lit16 v1, v1, 0x190

    #@30
    goto :goto_0

    #@31
    .line 387
    .restart local v0    # "i":I
    :cond_1
    return-void
.end method

.method private reflow(Ljava/lang/CharSequence;III)V
    .locals 35
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "where"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    #@0
    .prologue
    .line 194
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Landroid/text/DynamicLayout;->mBase:Ljava/lang/CharSequence;

    #@4
    move-object/from16 v32, v0

    #@6
    move-object/from16 v0, p1

    #@8
    move-object/from16 v1, v32

    #@a
    if-eq v0, v1, :cond_0

    #@c
    .line 195
    return-void

    #@d
    .line 197
    :cond_0
    move-object/from16 v0, p0

    #@f
    iget-object v0, v0, Landroid/text/DynamicLayout;->mDisplay:Ljava/lang/CharSequence;

    #@11
    move-object/from16 v29, v0

    #@13
    .line 198
    .local v29, "text":Ljava/lang/CharSequence;
    invoke-interface/range {v29 .. v29}, Ljava/lang/CharSequence;->length()I

    #@16
    move-result v20

    #@17
    .line 202
    .local v20, "len":I
    add-int/lit8 v32, p2, -0x1

    #@19
    const/16 v33, 0xa

    #@1b
    move-object/from16 v0, v29

    #@1d
    move/from16 v1, v33

    #@1f
    move/from16 v2, v32

    #@21
    invoke-static {v0, v1, v2}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    #@24
    move-result v14

    #@25
    .line 203
    .local v14, "find":I
    if-gez v14, :cond_4

    #@27
    .line 204
    const/4 v14, 0x0

    #@28
    .line 209
    :goto_0
    sub-int v10, p2, v14

    #@2a
    .line 210
    .local v10, "diff":I
    add-int p3, p3, v10

    #@2c
    .line 211
    add-int p4, p4, v10

    #@2e
    .line 212
    sub-int p2, p2, v10

    #@30
    .line 217
    add-int v32, p2, p4

    #@32
    const/16 v33, 0xa

    #@34
    move-object/from16 v0, v29

    #@36
    move/from16 v1, v33

    #@38
    move/from16 v2, v32

    #@3a
    invoke-static {v0, v1, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    #@3d
    move-result v21

    #@3e
    .line 218
    .local v21, "look":I
    if-gez v21, :cond_5

    #@40
    .line 219
    move/from16 v21, v20

    #@42
    .line 223
    :goto_1
    add-int v32, p2, p4

    #@44
    sub-int v8, v21, v32

    #@46
    .line 224
    .local v8, "change":I
    add-int p3, p3, v8

    #@48
    .line 225
    add-int p4, p4, v8

    #@4a
    .line 229
    move-object/from16 v0, v29

    #@4c
    instance-of v0, v0, Landroid/text/Spanned;

    #@4e
    move/from16 v32, v0

    #@50
    if-eqz v32, :cond_7

    #@52
    move-object/from16 v25, v29

    #@54
    .line 230
    check-cast v25, Landroid/text/Spanned;

    #@56
    .line 234
    .local v25, "sp":Landroid/text/Spanned;
    :cond_1
    const/4 v5, 0x0

    #@57
    .line 236
    .local v5, "again":Z
    add-int v32, p2, p4

    #@59
    .line 237
    const-class v33, Landroid/text/style/WrapTogetherSpan;

    #@5b
    .line 236
    move-object/from16 v0, v25

    #@5d
    move/from16 v1, p2

    #@5f
    move/from16 v2, v32

    #@61
    move-object/from16 v3, v33

    #@63
    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@66
    move-result-object v15

    #@67
    .line 239
    .local v15, "force":[Ljava/lang/Object;
    const/16 v17, 0x0

    #@69
    .local v17, "i":I
    :goto_2
    array-length v0, v15

    #@6a
    move/from16 v32, v0

    #@6c
    move/from16 v0, v17

    #@6e
    move/from16 v1, v32

    #@70
    if-ge v0, v1, :cond_6

    #@72
    .line 240
    aget-object v32, v15, v17

    #@74
    move-object/from16 v0, v25

    #@76
    move-object/from16 v1, v32

    #@78
    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    #@7b
    move-result v26

    #@7c
    .line 241
    .local v26, "st":I
    aget-object v32, v15, v17

    #@7e
    move-object/from16 v0, v25

    #@80
    move-object/from16 v1, v32

    #@82
    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    #@85
    move-result v11

    #@86
    .line 243
    .local v11, "en":I
    move/from16 v0, v26

    #@88
    move/from16 v1, p2

    #@8a
    if-ge v0, v1, :cond_2

    #@8c
    .line 244
    const/4 v5, 0x1

    #@8d
    .line 246
    sub-int v10, p2, v26

    #@8f
    .line 247
    add-int p3, p3, v10

    #@91
    .line 248
    add-int p4, p4, v10

    #@93
    .line 249
    sub-int p2, p2, v10

    #@95
    .line 252
    :cond_2
    add-int v32, p2, p4

    #@97
    move/from16 v0, v32

    #@99
    if-le v11, v0, :cond_3

    #@9b
    .line 253
    const/4 v5, 0x1

    #@9c
    .line 255
    add-int v32, p2, p4

    #@9e
    sub-int v10, v11, v32

    #@a0
    .line 256
    add-int p3, p3, v10

    #@a2
    .line 257
    add-int p4, p4, v10

    #@a4
    .line 239
    :cond_3
    add-int/lit8 v17, v17, 0x1

    #@a6
    goto :goto_2

    #@a7
    .line 206
    .end local v5    # "again":Z
    .end local v8    # "change":I
    .end local v10    # "diff":I
    .end local v11    # "en":I
    .end local v15    # "force":[Ljava/lang/Object;
    .end local v17    # "i":I
    .end local v21    # "look":I
    .end local v25    # "sp":Landroid/text/Spanned;
    .end local v26    # "st":I
    :cond_4
    add-int/lit8 v14, v14, 0x1

    #@a9
    goto/16 :goto_0

    #@ab
    .line 221
    .restart local v10    # "diff":I
    .restart local v21    # "look":I
    :cond_5
    add-int/lit8 v21, v21, 0x1

    #@ad
    goto :goto_1

    #@ae
    .line 260
    .restart local v5    # "again":Z
    .restart local v8    # "change":I
    .restart local v15    # "force":[Ljava/lang/Object;
    .restart local v17    # "i":I
    .restart local v25    # "sp":Landroid/text/Spanned;
    :cond_6
    if-nez v5, :cond_1

    #@b0
    .line 265
    .end local v5    # "again":Z
    .end local v15    # "force":[Ljava/lang/Object;
    .end local v17    # "i":I
    .end local v25    # "sp":Landroid/text/Spanned;
    :cond_7
    move-object/from16 v0, p0

    #@b2
    move/from16 v1, p2

    #@b4
    invoke-virtual {v0, v1}, Landroid/text/DynamicLayout;->getLineForOffset(I)I

    #@b7
    move-result v27

    #@b8
    .line 266
    .local v27, "startline":I
    move-object/from16 v0, p0

    #@ba
    move/from16 v1, v27

    #@bc
    invoke-virtual {v0, v1}, Landroid/text/DynamicLayout;->getLineTop(I)I

    #@bf
    move-result v28

    #@c0
    .line 268
    .local v28, "startv":I
    add-int v32, p2, p3

    #@c2
    move-object/from16 v0, p0

    #@c4
    move/from16 v1, v32

    #@c6
    invoke-virtual {v0, v1}, Landroid/text/DynamicLayout;->getLineForOffset(I)I

    #@c9
    move-result v12

    #@ca
    .line 269
    .local v12, "endline":I
    add-int v32, p2, p4

    #@cc
    move/from16 v0, v32

    #@ce
    move/from16 v1, v20

    #@d0
    if-ne v0, v1, :cond_8

    #@d2
    .line 270
    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getLineCount()I

    #@d5
    move-result v12

    #@d6
    .line 271
    :cond_8
    move-object/from16 v0, p0

    #@d8
    invoke-virtual {v0, v12}, Landroid/text/DynamicLayout;->getLineTop(I)I

    #@db
    move-result v13

    #@dc
    .line 272
    .local v13, "endv":I
    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getLineCount()I

    #@df
    move-result v32

    #@e0
    move/from16 v0, v32

    #@e2
    if-ne v12, v0, :cond_10

    #@e4
    const/16 v19, 0x1

    #@e6
    .line 279
    .local v19, "islast":Z
    :goto_3
    sget-object v33, Landroid/text/DynamicLayout;->sLock:[Ljava/lang/Object;

    #@e8
    monitor-enter v33

    #@e9
    .line 280
    :try_start_0
    sget-object v24, Landroid/text/DynamicLayout;->sStaticLayout:Landroid/text/StaticLayout;

    #@eb
    .line 281
    .local v24, "reflowed":Landroid/text/StaticLayout;
    sget-object v6, Landroid/text/DynamicLayout;->sBuilder:Landroid/text/StaticLayout$Builder;

    #@ed
    .line 282
    .local v6, "b":Landroid/text/StaticLayout$Builder;
    const/16 v32, 0x0

    #@ef
    sput-object v32, Landroid/text/DynamicLayout;->sStaticLayout:Landroid/text/StaticLayout;

    #@f1
    .line 283
    const/16 v32, 0x0

    #@f3
    sput-object v32, Landroid/text/DynamicLayout;->sBuilder:Landroid/text/StaticLayout$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f5
    monitor-exit v33

    #@f6
    .line 286
    if-nez v24, :cond_9

    #@f8
    .line 287
    new-instance v24, Landroid/text/StaticLayout;

    #@fa
    .end local v24    # "reflowed":Landroid/text/StaticLayout;
    const/16 v32, 0x0

    #@fc
    move-object/from16 v0, v24

    #@fe
    move-object/from16 v1, v32

    #@100
    invoke-direct {v0, v1}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;)V

    #@103
    .line 288
    .restart local v24    # "reflowed":Landroid/text/StaticLayout;
    add-int v32, p2, p4

    #@105
    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getPaint()Landroid/text/TextPaint;

    #@108
    move-result-object v33

    #@109
    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getWidth()I

    #@10c
    move-result v34

    #@10d
    move-object/from16 v0, v29

    #@10f
    move/from16 v1, p2

    #@111
    move/from16 v2, v32

    #@113
    move-object/from16 v3, v33

    #@115
    move/from16 v4, v34

    #@117
    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    #@11a
    move-result-object v6

    #@11b
    .line 291
    :cond_9
    add-int v32, p2, p4

    #@11d
    move-object/from16 v0, v29

    #@11f
    move/from16 v1, p2

    #@121
    move/from16 v2, v32

    #@123
    invoke-virtual {v6, v0, v1, v2}, Landroid/text/StaticLayout$Builder;->setText(Ljava/lang/CharSequence;II)Landroid/text/StaticLayout$Builder;

    #@126
    move-result-object v32

    #@127
    .line 292
    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getPaint()Landroid/text/TextPaint;

    #@12a
    move-result-object v33

    #@12b
    .line 291
    invoke-virtual/range {v32 .. v33}, Landroid/text/StaticLayout$Builder;->setPaint(Landroid/text/TextPaint;)Landroid/text/StaticLayout$Builder;

    #@12e
    move-result-object v32

    #@12f
    .line 293
    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getWidth()I

    #@132
    move-result v33

    #@133
    .line 291
    invoke-virtual/range {v32 .. v33}, Landroid/text/StaticLayout$Builder;->setWidth(I)Landroid/text/StaticLayout$Builder;

    #@136
    move-result-object v32

    #@137
    .line 294
    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    #@13a
    move-result-object v33

    #@13b
    .line 291
    invoke-virtual/range {v32 .. v33}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    #@13e
    move-result-object v32

    #@13f
    .line 295
    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getSpacingAdd()F

    #@142
    move-result v33

    #@143
    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getSpacingMultiplier()F

    #@146
    move-result v34

    #@147
    .line 291
    invoke-virtual/range {v32 .. v34}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    #@14a
    move-result-object v32

    #@14b
    .line 296
    move-object/from16 v0, p0

    #@14d
    iget v0, v0, Landroid/text/DynamicLayout;->mEllipsizedWidth:I

    #@14f
    move/from16 v33, v0

    #@151
    .line 291
    invoke-virtual/range {v32 .. v33}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    #@154
    move-result-object v32

    #@155
    .line 297
    move-object/from16 v0, p0

    #@157
    iget-object v0, v0, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    #@159
    move-object/from16 v33, v0

    #@15b
    .line 291
    invoke-virtual/range {v32 .. v33}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    #@15e
    move-result-object v32

    #@15f
    .line 298
    move-object/from16 v0, p0

    #@161
    iget v0, v0, Landroid/text/DynamicLayout;->mBreakStrategy:I

    #@163
    move/from16 v33, v0

    #@165
    .line 291
    invoke-virtual/range {v32 .. v33}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    #@168
    move-result-object v32

    #@169
    .line 299
    move-object/from16 v0, p0

    #@16b
    iget v0, v0, Landroid/text/DynamicLayout;->mHyphenationFrequency:I

    #@16d
    move/from16 v33, v0

    #@16f
    .line 291
    invoke-virtual/range {v32 .. v33}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    #@172
    .line 300
    const/16 v32, 0x0

    #@174
    const/16 v33, 0x1

    #@176
    move-object/from16 v0, v24

    #@178
    move/from16 v1, v32

    #@17a
    move/from16 v2, v33

    #@17c
    invoke-virtual {v0, v6, v1, v2}, Landroid/text/StaticLayout;->generate(Landroid/text/StaticLayout$Builder;ZZ)V

    #@17f
    .line 301
    invoke-virtual/range {v24 .. v24}, Landroid/text/StaticLayout;->getLineCount()I

    #@182
    move-result v22

    #@183
    .line 307
    .local v22, "n":I
    add-int v32, p2, p4

    #@185
    move/from16 v0, v32

    #@187
    move/from16 v1, v20

    #@189
    if-eq v0, v1, :cond_a

    #@18b
    add-int/lit8 v32, v22, -0x1

    #@18d
    move-object/from16 v0, v24

    #@18f
    move/from16 v1, v32

    #@191
    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineStart(I)I

    #@194
    move-result v32

    #@195
    add-int v33, p2, p4

    #@197
    move/from16 v0, v32

    #@199
    move/from16 v1, v33

    #@19b
    if-ne v0, v1, :cond_a

    #@19d
    .line 308
    add-int/lit8 v22, v22, -0x1

    #@19f
    .line 311
    :cond_a
    move-object/from16 v0, p0

    #@1a1
    iget-object v0, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    #@1a3
    move-object/from16 v32, v0

    #@1a5
    sub-int v33, v12, v27

    #@1a7
    move-object/from16 v0, v32

    #@1a9
    move/from16 v1, v27

    #@1ab
    move/from16 v2, v33

    #@1ad
    invoke-virtual {v0, v1, v2}, Landroid/text/PackedIntVector;->deleteAt(II)V

    #@1b0
    .line 312
    move-object/from16 v0, p0

    #@1b2
    iget-object v0, v0, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    #@1b4
    move-object/from16 v32, v0

    #@1b6
    sub-int v33, v12, v27

    #@1b8
    move-object/from16 v0, v32

    #@1ba
    move/from16 v1, v27

    #@1bc
    move/from16 v2, v33

    #@1be
    invoke-virtual {v0, v1, v2}, Landroid/text/PackedObjectVector;->deleteAt(II)V

    #@1c1
    .line 316
    move-object/from16 v0, v24

    #@1c3
    move/from16 v1, v22

    #@1c5
    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineTop(I)I

    #@1c8
    move-result v16

    #@1c9
    .line 317
    .local v16, "ht":I
    const/16 v31, 0x0

    #@1cb
    .local v31, "toppad":I
    const/4 v7, 0x0

    #@1cc
    .line 319
    .local v7, "botpad":I
    move-object/from16 v0, p0

    #@1ce
    iget-boolean v0, v0, Landroid/text/DynamicLayout;->mIncludePad:Z

    #@1d0
    move/from16 v32, v0

    #@1d2
    if-eqz v32, :cond_b

    #@1d4
    if-nez v27, :cond_b

    #@1d6
    .line 320
    invoke-virtual/range {v24 .. v24}, Landroid/text/StaticLayout;->getTopPadding()I

    #@1d9
    move-result v31

    #@1da
    .line 321
    move/from16 v0, v31

    #@1dc
    move-object/from16 v1, p0

    #@1de
    iput v0, v1, Landroid/text/DynamicLayout;->mTopPadding:I

    #@1e0
    .line 322
    sub-int v16, v16, v31

    #@1e2
    .line 324
    :cond_b
    move-object/from16 v0, p0

    #@1e4
    iget-boolean v0, v0, Landroid/text/DynamicLayout;->mIncludePad:Z

    #@1e6
    move/from16 v32, v0

    #@1e8
    if-eqz v32, :cond_c

    #@1ea
    if-eqz v19, :cond_c

    #@1ec
    .line 325
    invoke-virtual/range {v24 .. v24}, Landroid/text/StaticLayout;->getBottomPadding()I

    #@1ef
    move-result v7

    #@1f0
    .line 326
    move-object/from16 v0, p0

    #@1f2
    iput v7, v0, Landroid/text/DynamicLayout;->mBottomPadding:I

    #@1f4
    .line 327
    add-int v16, v16, v7

    #@1f6
    .line 330
    :cond_c
    move-object/from16 v0, p0

    #@1f8
    iget-object v0, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    #@1fa
    move-object/from16 v32, v0

    #@1fc
    sub-int v33, p4, p3

    #@1fe
    const/16 v34, 0x0

    #@200
    move-object/from16 v0, v32

    #@202
    move/from16 v1, v27

    #@204
    move/from16 v2, v34

    #@206
    move/from16 v3, v33

    #@208
    invoke-virtual {v0, v1, v2, v3}, Landroid/text/PackedIntVector;->adjustValuesBelow(III)V

    #@20b
    .line 331
    move-object/from16 v0, p0

    #@20d
    iget-object v0, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    #@20f
    move-object/from16 v32, v0

    #@211
    sub-int v33, v28, v13

    #@213
    add-int v33, v33, v16

    #@215
    const/16 v34, 0x1

    #@217
    move-object/from16 v0, v32

    #@219
    move/from16 v1, v27

    #@21b
    move/from16 v2, v34

    #@21d
    move/from16 v3, v33

    #@21f
    invoke-virtual {v0, v1, v2, v3}, Landroid/text/PackedIntVector;->adjustValuesBelow(III)V

    #@222
    .line 337
    move-object/from16 v0, p0

    #@224
    iget-boolean v0, v0, Landroid/text/DynamicLayout;->mEllipsize:Z

    #@226
    move/from16 v32, v0

    #@228
    if-eqz v32, :cond_11

    #@22a
    .line 338
    const/16 v32, 0x6

    #@22c
    move/from16 v0, v32

    #@22e
    new-array v0, v0, [I

    #@230
    move-object/from16 v18, v0

    #@232
    .line 339
    .local v18, "ints":[I
    const/high16 v32, -0x80000000

    #@234
    const/16 v33, 0x4

    #@236
    aput v32, v18, v33

    #@238
    .line 344
    :goto_4
    const/16 v32, 0x1

    #@23a
    move/from16 v0, v32

    #@23c
    new-array v0, v0, [Landroid/text/Layout$Directions;

    #@23e
    move-object/from16 v23, v0

    #@240
    .line 346
    .local v23, "objects":[Landroid/text/Layout$Directions;
    const/16 v17, 0x0

    #@242
    .restart local v17    # "i":I
    :goto_5
    move/from16 v0, v17

    #@244
    move/from16 v1, v22

    #@246
    if-ge v0, v1, :cond_13

    #@248
    .line 347
    move-object/from16 v0, v24

    #@24a
    move/from16 v1, v17

    #@24c
    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineStart(I)I

    #@24f
    move-result v32

    #@250
    .line 348
    move-object/from16 v0, v24

    #@252
    move/from16 v1, v17

    #@254
    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getParagraphDirection(I)I

    #@257
    move-result v33

    #@258
    shl-int/lit8 v33, v33, 0x1e

    #@25a
    .line 347
    or-int v33, v33, v32

    #@25c
    .line 349
    move-object/from16 v0, v24

    #@25e
    move/from16 v1, v17

    #@260
    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineContainsTab(I)Z

    #@263
    move-result v32

    #@264
    if-eqz v32, :cond_12

    #@266
    const/high16 v32, 0x20000000

    #@268
    .line 347
    :goto_6
    or-int v32, v32, v33

    #@26a
    const/16 v33, 0x0

    #@26c
    aput v32, v18, v33

    #@26e
    .line 351
    move-object/from16 v0, v24

    #@270
    move/from16 v1, v17

    #@272
    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineTop(I)I

    #@275
    move-result v32

    #@276
    add-int v30, v32, v28

    #@278
    .line 352
    .local v30, "top":I
    if-lez v17, :cond_d

    #@27a
    .line 353
    sub-int v30, v30, v31

    #@27c
    .line 354
    :cond_d
    const/16 v32, 0x1

    #@27e
    aput v30, v18, v32

    #@280
    .line 356
    move-object/from16 v0, v24

    #@282
    move/from16 v1, v17

    #@284
    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineDescent(I)I

    #@287
    move-result v9

    #@288
    .line 357
    .local v9, "desc":I
    add-int/lit8 v32, v22, -0x1

    #@28a
    move/from16 v0, v17

    #@28c
    move/from16 v1, v32

    #@28e
    if-ne v0, v1, :cond_e

    #@290
    .line 358
    add-int/2addr v9, v7

    #@291
    .line 360
    :cond_e
    const/16 v32, 0x2

    #@293
    aput v9, v18, v32

    #@295
    .line 361
    move-object/from16 v0, v24

    #@297
    move/from16 v1, v17

    #@299
    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineDirections(I)Landroid/text/Layout$Directions;

    #@29c
    move-result-object v32

    #@29d
    const/16 v33, 0x0

    #@29f
    aput-object v32, v23, v33

    #@2a1
    .line 363
    move-object/from16 v0, v24

    #@2a3
    move/from16 v1, v17

    #@2a5
    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getHyphen(I)I

    #@2a8
    move-result v32

    #@2a9
    const/16 v33, 0x3

    #@2ab
    aput v32, v18, v33

    #@2ad
    .line 365
    move-object/from16 v0, p0

    #@2af
    iget-boolean v0, v0, Landroid/text/DynamicLayout;->mEllipsize:Z

    #@2b1
    move/from16 v32, v0

    #@2b3
    if-eqz v32, :cond_f

    #@2b5
    .line 366
    move-object/from16 v0, v24

    #@2b7
    move/from16 v1, v17

    #@2b9
    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getEllipsisStart(I)I

    #@2bc
    move-result v32

    #@2bd
    const/16 v33, 0x4

    #@2bf
    aput v32, v18, v33

    #@2c1
    .line 367
    move-object/from16 v0, v24

    #@2c3
    move/from16 v1, v17

    #@2c5
    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getEllipsisCount(I)I

    #@2c8
    move-result v32

    #@2c9
    const/16 v33, 0x5

    #@2cb
    aput v32, v18, v33

    #@2cd
    .line 370
    :cond_f
    move-object/from16 v0, p0

    #@2cf
    iget-object v0, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    #@2d1
    move-object/from16 v32, v0

    #@2d3
    add-int v33, v27, v17

    #@2d5
    move-object/from16 v0, v32

    #@2d7
    move/from16 v1, v33

    #@2d9
    move-object/from16 v2, v18

    #@2db
    invoke-virtual {v0, v1, v2}, Landroid/text/PackedIntVector;->insertAt(I[I)V

    #@2de
    .line 371
    move-object/from16 v0, p0

    #@2e0
    iget-object v0, v0, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    #@2e2
    move-object/from16 v32, v0

    #@2e4
    add-int v33, v27, v17

    #@2e6
    move-object/from16 v0, v32

    #@2e8
    move/from16 v1, v33

    #@2ea
    move-object/from16 v2, v23

    #@2ec
    invoke-virtual {v0, v1, v2}, Landroid/text/PackedObjectVector;->insertAt(I[Ljava/lang/Object;)V

    #@2ef
    .line 346
    add-int/lit8 v17, v17, 0x1

    #@2f1
    goto/16 :goto_5

    #@2f3
    .line 272
    .end local v6    # "b":Landroid/text/StaticLayout$Builder;
    .end local v7    # "botpad":I
    .end local v9    # "desc":I
    .end local v16    # "ht":I
    .end local v17    # "i":I
    .end local v18    # "ints":[I
    .end local v19    # "islast":Z
    .end local v22    # "n":I
    .end local v23    # "objects":[Landroid/text/Layout$Directions;
    .end local v24    # "reflowed":Landroid/text/StaticLayout;
    .end local v30    # "top":I
    .end local v31    # "toppad":I
    :cond_10
    const/16 v19, 0x0

    #@2f5
    .restart local v19    # "islast":Z
    goto/16 :goto_3

    #@2f7
    .line 279
    :catchall_0
    move-exception v32

    #@2f8
    monitor-exit v33

    #@2f9
    throw v32

    #@2fa
    .line 341
    .restart local v6    # "b":Landroid/text/StaticLayout$Builder;
    .restart local v7    # "botpad":I
    .restart local v16    # "ht":I
    .restart local v22    # "n":I
    .restart local v24    # "reflowed":Landroid/text/StaticLayout;
    .restart local v31    # "toppad":I
    :cond_11
    const/16 v32, 0x4

    #@2fc
    move/from16 v0, v32

    #@2fe
    new-array v0, v0, [I

    #@300
    move-object/from16 v18, v0

    #@302
    .restart local v18    # "ints":[I
    goto/16 :goto_4

    #@304
    .line 349
    .restart local v17    # "i":I
    .restart local v23    # "objects":[Landroid/text/Layout$Directions;
    :cond_12
    const/16 v32, 0x0

    #@306
    goto/16 :goto_6

    #@308
    .line 374
    :cond_13
    add-int/lit8 v32, v12, -0x1

    #@30a
    move-object/from16 v0, p0

    #@30c
    move/from16 v1, v27

    #@30e
    move/from16 v2, v32

    #@310
    move/from16 v3, v22

    #@312
    invoke-virtual {v0, v1, v2, v3}, Landroid/text/DynamicLayout;->updateBlocks(III)V

    #@315
    .line 376
    invoke-virtual {v6}, Landroid/text/StaticLayout$Builder;->finish()V

    #@318
    .line 377
    sget-object v33, Landroid/text/DynamicLayout;->sLock:[Ljava/lang/Object;

    #@31a
    monitor-enter v33

    #@31b
    .line 378
    :try_start_1
    sput-object v24, Landroid/text/DynamicLayout;->sStaticLayout:Landroid/text/StaticLayout;

    #@31d
    .line 379
    sput-object v6, Landroid/text/DynamicLayout;->sBuilder:Landroid/text/StaticLayout$Builder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@31f
    monitor-exit v33

    #@320
    .line 193
    return-void

    #@321
    .line 377
    :catchall_1
    move-exception v32

    #@322
    monitor-exit v33

    #@323
    throw v32
.end method


# virtual methods
.method public getBlockEndLines()[I
    .locals 1

    #@0
    .prologue
    .line 564
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    #@2
    return-object v0
.end method

.method public getBlockIndices()[I
    .locals 1

    #@0
    .prologue
    .line 571
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    #@2
    return-object v0
.end method

.method public getBottomPadding()I
    .locals 1

    #@0
    .prologue
    .line 637
    iget v0, p0, Landroid/text/DynamicLayout;->mBottomPadding:I

    #@2
    return v0
.end method

.method public getEllipsisCount(I)I
    .locals 2
    .param p1, "line"    # I

    #@0
    .prologue
    .line 710
    iget-object v0, p0, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 711
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 714
    :cond_0
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    #@8
    const/4 v1, 0x5

    #@9
    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    #@c
    move-result v0

    #@d
    return v0
.end method

.method public getEllipsisStart(I)I
    .locals 2
    .param p1, "line"    # I

    #@0
    .prologue
    .line 701
    iget-object v0, p0, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 702
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 705
    :cond_0
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    #@8
    const/4 v1, 0x4

    #@9
    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    #@c
    move-result v0

    #@d
    return v0
.end method

.method public getEllipsizedWidth()I
    .locals 1

    #@0
    .prologue
    .line 650
    iget v0, p0, Landroid/text/DynamicLayout;->mEllipsizedWidth:I

    #@2
    return v0
.end method

.method public getHyphen(I)I
    .locals 2
    .param p1, "line"    # I

    #@0
    .prologue
    .line 645
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    #@2
    const/4 v1, 0x3

    #@3
    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public getIndexFirstChangedBlock()I
    .locals 1

    #@0
    .prologue
    .line 585
    iget v0, p0, Landroid/text/DynamicLayout;->mIndexFirstChangedBlock:I

    #@2
    return v0
.end method

.method public getLineContainsTab(I)Z
    .locals 3
    .param p1, "line"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 617
    iget-object v1, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    #@3
    invoke-virtual {v1, p1, v0}, Landroid/text/PackedIntVector;->getValue(II)I

    #@6
    move-result v1

    #@7
    const/high16 v2, 0x20000000

    #@9
    and-int/2addr v1, v2

    #@a
    if-eqz v1, :cond_0

    #@c
    const/4 v0, 0x1

    #@d
    :cond_0
    return v0
.end method

.method public getLineCount()I
    .locals 1

    #@0
    .prologue
    .line 597
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    #@2
    invoke-virtual {v0}, Landroid/text/PackedIntVector;->size()I

    #@5
    move-result v0

    #@6
    add-int/lit8 v0, v0, -0x1

    #@8
    return v0
.end method

.method public getLineDescent(I)I
    .locals 2
    .param p1, "line"    # I

    #@0
    .prologue
    .line 607
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    #@2
    const/4 v1, 0x2

    #@3
    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .locals 2
    .param p1, "line"    # I

    #@0
    .prologue
    .line 627
    iget-object v0, p0, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, p1, v1}, Landroid/text/PackedObjectVector;->getValue(II)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/text/Layout$Directions;

    #@9
    return-object v0
.end method

.method public getLineStart(I)I
    .locals 2
    .param p1, "line"    # I

    #@0
    .prologue
    .line 612
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    #@6
    move-result v0

    #@7
    const v1, 0x1fffffff

    #@a
    and-int/2addr v0, v1

    #@b
    return v0
.end method

.method public getLineTop(I)I
    .locals 2
    .param p1, "line"    # I

    #@0
    .prologue
    .line 602
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public getNumberOfBlocks()I
    .locals 1

    #@0
    .prologue
    .line 578
    iget v0, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    #@2
    return v0
.end method

.method public getParagraphDirection(I)I
    .locals 2
    .param p1, "line"    # I

    #@0
    .prologue
    .line 622
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    #@6
    move-result v0

    #@7
    shr-int/lit8 v0, v0, 0x1e

    #@9
    return v0
.end method

.method public getTopPadding()I
    .locals 1

    #@0
    .prologue
    .line 632
    iget v0, p0, Landroid/text/DynamicLayout;->mTopPadding:I

    #@2
    return v0
.end method

.method setBlocksDataForTest([I[II)V
    .locals 3
    .param p1, "blockEndLines"    # [I
    .param p2, "blockIndices"    # [I
    .param p3, "numberOfBlocks"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 553
    array-length v0, p1

    #@2
    new-array v0, v0, [I

    #@4
    iput-object v0, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    #@6
    .line 554
    array-length v0, p2

    #@7
    new-array v0, v0, [I

    #@9
    iput-object v0, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    #@b
    .line 555
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    #@d
    array-length v1, p1

    #@e
    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([II[III)V

    #@11
    .line 556
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    #@13
    array-length v1, p2

    #@14
    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([II[III)V

    #@17
    .line 557
    iput p3, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    #@19
    .line 552
    return-void
.end method

.method public setIndexFirstChangedBlock(I)V
    .locals 0
    .param p1, "i"    # I

    #@0
    .prologue
    .line 592
    iput p1, p0, Landroid/text/DynamicLayout;->mIndexFirstChangedBlock:I

    #@2
    .line 591
    return-void
.end method

.method updateBlocks(III)V
    .locals 24
    .param p1, "startLine"    # I
    .param p2, "endLine"    # I
    .param p3, "newLineCount"    # I

    #@0
    .prologue
    .line 453
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    #@4
    move-object/from16 v19, v0

    #@6
    if-nez v19, :cond_0

    #@8
    .line 454
    invoke-direct/range {p0 .. p0}, Landroid/text/DynamicLayout;->createBlocks()V

    #@b
    .line 455
    return-void

    #@c
    .line 458
    :cond_0
    const/4 v11, -0x1

    #@d
    .line 459
    .local v11, "firstBlock":I
    const/4 v13, -0x1

    #@e
    .line 460
    .local v13, "lastBlock":I
    const/4 v12, 0x0

    #@f
    .local v12, "i":I
    :goto_0
    move-object/from16 v0, p0

    #@11
    iget v0, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    #@13
    move/from16 v19, v0

    #@15
    move/from16 v0, v19

    #@17
    if-ge v12, v0, :cond_1

    #@19
    .line 461
    move-object/from16 v0, p0

    #@1b
    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    #@1d
    move-object/from16 v19, v0

    #@1f
    aget v19, v19, v12

    #@21
    move/from16 v0, v19

    #@23
    move/from16 v1, p1

    #@25
    if-lt v0, v1, :cond_6

    #@27
    .line 462
    move v11, v12

    #@28
    .line 466
    :cond_1
    move v12, v11

    #@29
    :goto_1
    move-object/from16 v0, p0

    #@2b
    iget v0, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    #@2d
    move/from16 v19, v0

    #@2f
    move/from16 v0, v19

    #@31
    if-ge v12, v0, :cond_2

    #@33
    .line 467
    move-object/from16 v0, p0

    #@35
    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    #@37
    move-object/from16 v19, v0

    #@39
    aget v19, v19, v12

    #@3b
    move/from16 v0, v19

    #@3d
    move/from16 v1, p2

    #@3f
    if-lt v0, v1, :cond_7

    #@41
    .line 468
    move v13, v12

    #@42
    .line 472
    :cond_2
    move-object/from16 v0, p0

    #@44
    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    #@46
    move-object/from16 v19, v0

    #@48
    aget v14, v19, v13

    #@4a
    .line 474
    .local v14, "lastBlockEndLine":I
    if-nez v11, :cond_8

    #@4c
    const/16 v19, 0x0

    #@4e
    :goto_2
    move/from16 v0, p1

    #@50
    move/from16 v1, v19

    #@52
    if-le v0, v1, :cond_9

    #@54
    const/4 v9, 0x1

    #@55
    .line 476
    .local v9, "createBlockBefore":Z
    :goto_3
    if-lez p3, :cond_a

    #@57
    const/4 v7, 0x1

    #@58
    .line 477
    .local v7, "createBlock":Z
    :goto_4
    move-object/from16 v0, p0

    #@5a
    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    #@5c
    move-object/from16 v19, v0

    #@5e
    aget v19, v19, v13

    #@60
    move/from16 v0, p2

    #@62
    move/from16 v1, v19

    #@64
    if-ge v0, v1, :cond_b

    #@66
    const/4 v8, 0x1

    #@67
    .line 479
    .local v8, "createBlockAfter":Z
    :goto_5
    const/16 v17, 0x0

    #@69
    .line 480
    .local v17, "numAddedBlocks":I
    if-eqz v9, :cond_3

    #@6b
    const/16 v17, 0x1

    #@6d
    .line 481
    :cond_3
    if-eqz v7, :cond_4

    #@6f
    add-int/lit8 v17, v17, 0x1

    #@71
    .line 482
    :cond_4
    if-eqz v8, :cond_5

    #@73
    add-int/lit8 v17, v17, 0x1

    #@75
    .line 484
    :cond_5
    sub-int v19, v13, v11

    #@77
    add-int/lit8 v18, v19, 0x1

    #@79
    .line 485
    .local v18, "numRemovedBlocks":I
    move-object/from16 v0, p0

    #@7b
    iget v0, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    #@7d
    move/from16 v19, v0

    #@7f
    add-int v19, v19, v17

    #@81
    sub-int v16, v19, v18

    #@83
    .line 487
    .local v16, "newNumberOfBlocks":I
    if-nez v16, :cond_c

    #@85
    .line 489
    move-object/from16 v0, p0

    #@87
    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    #@89
    move-object/from16 v19, v0

    #@8b
    const/16 v20, 0x0

    #@8d
    const/16 v21, 0x0

    #@8f
    aput v20, v19, v21

    #@91
    .line 490
    move-object/from16 v0, p0

    #@93
    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    #@95
    move-object/from16 v19, v0

    #@97
    const/16 v20, -0x1

    #@99
    const/16 v21, 0x0

    #@9b
    aput v20, v19, v21

    #@9d
    .line 491
    const/16 v19, 0x1

    #@9f
    move/from16 v0, v19

    #@a1
    move-object/from16 v1, p0

    #@a3
    iput v0, v1, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    #@a5
    .line 492
    return-void

    #@a6
    .line 460
    .end local v7    # "createBlock":Z
    .end local v8    # "createBlockAfter":Z
    .end local v9    # "createBlockBefore":Z
    .end local v14    # "lastBlockEndLine":I
    .end local v16    # "newNumberOfBlocks":I
    .end local v17    # "numAddedBlocks":I
    .end local v18    # "numRemovedBlocks":I
    :cond_6
    add-int/lit8 v12, v12, 0x1

    #@a8
    goto/16 :goto_0

    #@aa
    .line 466
    :cond_7
    add-int/lit8 v12, v12, 0x1

    #@ac
    goto/16 :goto_1

    #@ae
    .line 475
    .restart local v14    # "lastBlockEndLine":I
    :cond_8
    move-object/from16 v0, p0

    #@b0
    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    #@b2
    move-object/from16 v19, v0

    #@b4
    add-int/lit8 v20, v11, -0x1

    #@b6
    aget v19, v19, v20

    #@b8
    add-int/lit8 v19, v19, 0x1

    #@ba
    goto :goto_2

    #@bb
    .line 474
    :cond_9
    const/4 v9, 0x0

    #@bc
    .restart local v9    # "createBlockBefore":Z
    goto :goto_3

    #@bd
    .line 476
    :cond_a
    const/4 v7, 0x0

    #@be
    .restart local v7    # "createBlock":Z
    goto :goto_4

    #@bf
    .line 477
    :cond_b
    const/4 v8, 0x0

    #@c0
    .restart local v8    # "createBlockAfter":Z
    goto :goto_5

    #@c1
    .line 495
    .restart local v16    # "newNumberOfBlocks":I
    .restart local v17    # "numAddedBlocks":I
    .restart local v18    # "numRemovedBlocks":I
    :cond_c
    move-object/from16 v0, p0

    #@c3
    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    #@c5
    move-object/from16 v19, v0

    #@c7
    move-object/from16 v0, v19

    #@c9
    array-length v0, v0

    #@ca
    move/from16 v19, v0

    #@cc
    move/from16 v0, v16

    #@ce
    move/from16 v1, v19

    #@d0
    if-le v0, v1, :cond_d

    #@d2
    .line 497
    move-object/from16 v0, p0

    #@d4
    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    #@d6
    move-object/from16 v19, v0

    #@d8
    move-object/from16 v0, v19

    #@da
    array-length v0, v0

    #@db
    move/from16 v19, v0

    #@dd
    mul-int/lit8 v19, v19, 0x2

    #@df
    move/from16 v0, v19

    #@e1
    move/from16 v1, v16

    #@e3
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@e6
    move-result v19

    #@e7
    .line 496
    invoke-static/range {v19 .. v19}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    #@ea
    move-result-object v4

    #@eb
    .line 498
    .local v4, "blockEndLines":[I
    array-length v0, v4

    #@ec
    move/from16 v19, v0

    #@ee
    move/from16 v0, v19

    #@f0
    new-array v6, v0, [I

    #@f2
    .line 499
    .local v6, "blockIndices":[I
    move-object/from16 v0, p0

    #@f4
    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    #@f6
    move-object/from16 v19, v0

    #@f8
    const/16 v20, 0x0

    #@fa
    const/16 v21, 0x0

    #@fc
    move-object/from16 v0, v19

    #@fe
    move/from16 v1, v20

    #@100
    move/from16 v2, v21

    #@102
    invoke-static {v0, v1, v4, v2, v11}, Ljava/lang/System;->arraycopy([II[III)V

    #@105
    .line 500
    move-object/from16 v0, p0

    #@107
    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    #@109
    move-object/from16 v19, v0

    #@10b
    const/16 v20, 0x0

    #@10d
    const/16 v21, 0x0

    #@10f
    move-object/from16 v0, v19

    #@111
    move/from16 v1, v20

    #@113
    move/from16 v2, v21

    #@115
    invoke-static {v0, v1, v6, v2, v11}, Ljava/lang/System;->arraycopy([II[III)V

    #@118
    .line 501
    move-object/from16 v0, p0

    #@11a
    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    #@11c
    move-object/from16 v19, v0

    #@11e
    add-int/lit8 v20, v13, 0x1

    #@120
    .line 502
    add-int v21, v11, v17

    #@122
    move-object/from16 v0, p0

    #@124
    iget v0, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    #@126
    move/from16 v22, v0

    #@128
    sub-int v22, v22, v13

    #@12a
    add-int/lit8 v22, v22, -0x1

    #@12c
    .line 501
    move-object/from16 v0, v19

    #@12e
    move/from16 v1, v20

    #@130
    move/from16 v2, v21

    #@132
    move/from16 v3, v22

    #@134
    invoke-static {v0, v1, v4, v2, v3}, Ljava/lang/System;->arraycopy([II[III)V

    #@137
    .line 503
    move-object/from16 v0, p0

    #@139
    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    #@13b
    move-object/from16 v19, v0

    #@13d
    add-int/lit8 v20, v13, 0x1

    #@13f
    .line 504
    add-int v21, v11, v17

    #@141
    move-object/from16 v0, p0

    #@143
    iget v0, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    #@145
    move/from16 v22, v0

    #@147
    sub-int v22, v22, v13

    #@149
    add-int/lit8 v22, v22, -0x1

    #@14b
    .line 503
    move-object/from16 v0, v19

    #@14d
    move/from16 v1, v20

    #@14f
    move/from16 v2, v21

    #@151
    move/from16 v3, v22

    #@153
    invoke-static {v0, v1, v6, v2, v3}, Ljava/lang/System;->arraycopy([II[III)V

    #@156
    .line 505
    move-object/from16 v0, p0

    #@158
    iput-object v4, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    #@15a
    .line 506
    move-object/from16 v0, p0

    #@15c
    iput-object v6, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    #@15e
    .line 514
    .end local v4    # "blockEndLines":[I
    .end local v6    # "blockIndices":[I
    :goto_6
    move/from16 v0, v16

    #@160
    move-object/from16 v1, p0

    #@162
    iput v0, v1, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    #@164
    .line 516
    sub-int v19, p2, p1

    #@166
    add-int/lit8 v19, v19, 0x1

    #@168
    sub-int v10, p3, v19

    #@16a
    .line 517
    .local v10, "deltaLines":I
    if-eqz v10, :cond_e

    #@16c
    .line 520
    add-int v15, v11, v17

    #@16e
    .line 521
    .local v15, "newFirstChangedBlock":I
    move v12, v15

    #@16f
    :goto_7
    move-object/from16 v0, p0

    #@171
    iget v0, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    #@173
    move/from16 v19, v0

    #@175
    move/from16 v0, v19

    #@177
    if-ge v12, v0, :cond_f

    #@179
    .line 522
    move-object/from16 v0, p0

    #@17b
    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    #@17d
    move-object/from16 v19, v0

    #@17f
    aget v20, v19, v12

    #@181
    add-int v20, v20, v10

    #@183
    aput v20, v19, v12

    #@185
    .line 521
    add-int/lit8 v12, v12, 0x1

    #@187
    goto :goto_7

    #@188
    .line 508
    .end local v10    # "deltaLines":I
    .end local v15    # "newFirstChangedBlock":I
    :cond_d
    move-object/from16 v0, p0

    #@18a
    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    #@18c
    move-object/from16 v19, v0

    #@18e
    add-int/lit8 v20, v13, 0x1

    #@190
    .line 509
    move-object/from16 v0, p0

    #@192
    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    #@194
    move-object/from16 v21, v0

    #@196
    add-int v22, v11, v17

    #@198
    move-object/from16 v0, p0

    #@19a
    iget v0, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    #@19c
    move/from16 v23, v0

    #@19e
    sub-int v23, v23, v13

    #@1a0
    add-int/lit8 v23, v23, -0x1

    #@1a2
    .line 508
    invoke-static/range {v19 .. v23}, Ljava/lang/System;->arraycopy([II[III)V

    #@1a5
    .line 510
    move-object/from16 v0, p0

    #@1a7
    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    #@1a9
    move-object/from16 v19, v0

    #@1ab
    add-int/lit8 v20, v13, 0x1

    #@1ad
    .line 511
    move-object/from16 v0, p0

    #@1af
    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    #@1b1
    move-object/from16 v21, v0

    #@1b3
    add-int v22, v11, v17

    #@1b5
    move-object/from16 v0, p0

    #@1b7
    iget v0, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    #@1b9
    move/from16 v23, v0

    #@1bb
    sub-int v23, v23, v13

    #@1bd
    add-int/lit8 v23, v23, -0x1

    #@1bf
    .line 510
    invoke-static/range {v19 .. v23}, Ljava/lang/System;->arraycopy([II[III)V

    #@1c2
    goto :goto_6

    #@1c3
    .line 525
    .restart local v10    # "deltaLines":I
    :cond_e
    move-object/from16 v0, p0

    #@1c5
    iget v15, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    #@1c7
    .line 527
    .restart local v15    # "newFirstChangedBlock":I
    :cond_f
    move-object/from16 v0, p0

    #@1c9
    iget v0, v0, Landroid/text/DynamicLayout;->mIndexFirstChangedBlock:I

    #@1cb
    move/from16 v19, v0

    #@1cd
    move/from16 v0, v19

    #@1cf
    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    #@1d2
    move-result v19

    #@1d3
    move/from16 v0, v19

    #@1d5
    move-object/from16 v1, p0

    #@1d7
    iput v0, v1, Landroid/text/DynamicLayout;->mIndexFirstChangedBlock:I

    #@1d9
    .line 529
    move v5, v11

    #@1da
    .line 530
    .local v5, "blockIndex":I
    if-eqz v9, :cond_10

    #@1dc
    .line 531
    move-object/from16 v0, p0

    #@1de
    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    #@1e0
    move-object/from16 v19, v0

    #@1e2
    add-int/lit8 v20, p1, -0x1

    #@1e4
    aput v20, v19, v5

    #@1e6
    .line 532
    move-object/from16 v0, p0

    #@1e8
    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    #@1ea
    move-object/from16 v19, v0

    #@1ec
    const/16 v20, -0x1

    #@1ee
    aput v20, v19, v5

    #@1f0
    .line 533
    add-int/lit8 v5, v5, 0x1

    #@1f2
    .line 536
    :cond_10
    if-eqz v7, :cond_11

    #@1f4
    .line 537
    move-object/from16 v0, p0

    #@1f6
    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    #@1f8
    move-object/from16 v19, v0

    #@1fa
    add-int v20, p1, p3

    #@1fc
    add-int/lit8 v20, v20, -0x1

    #@1fe
    aput v20, v19, v5

    #@200
    .line 538
    move-object/from16 v0, p0

    #@202
    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    #@204
    move-object/from16 v19, v0

    #@206
    const/16 v20, -0x1

    #@208
    aput v20, v19, v5

    #@20a
    .line 539
    add-int/lit8 v5, v5, 0x1

    #@20c
    .line 542
    :cond_11
    if-eqz v8, :cond_12

    #@20e
    .line 543
    move-object/from16 v0, p0

    #@210
    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    #@212
    move-object/from16 v19, v0

    #@214
    add-int v20, v14, v10

    #@216
    aput v20, v19, v5

    #@218
    .line 544
    move-object/from16 v0, p0

    #@21a
    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    #@21c
    move-object/from16 v19, v0

    #@21e
    const/16 v20, -0x1

    #@220
    aput v20, v19, v5

    #@222
    .line 452
    :cond_12
    return-void
.end method
