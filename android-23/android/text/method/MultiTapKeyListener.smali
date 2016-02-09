.class public Landroid/text/method/MultiTapKeyListener;
.super Landroid/text/method/BaseKeyListener;
.source "MultiTapKeyListener.java"

# interfaces
.implements Landroid/text/SpanWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/MultiTapKeyListener$Timeout;
    }
.end annotation


# static fields
.field private static sInstance:[Landroid/text/method/MultiTapKeyListener;

.field private static final sRecs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAutoText:Z

.field private mCapitalize:Landroid/text/method/TextKeyListener$Capitalize;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 39
    invoke-static {}, Landroid/text/method/TextKeyListener$Capitalize;->values()[Landroid/text/method/TextKeyListener$Capitalize;

    #@3
    move-result-object v0

    #@4
    array-length v0, v0

    #@5
    mul-int/lit8 v0, v0, 0x2

    #@7
    new-array v0, v0, [Landroid/text/method/MultiTapKeyListener;

    #@9
    .line 38
    sput-object v0, Landroid/text/method/MultiTapKeyListener;->sInstance:[Landroid/text/method/MultiTapKeyListener;

    #@b
    .line 41
    new-instance v0, Landroid/util/SparseArray;

    #@d
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@10
    sput-object v0, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    #@12
    .line 47
    sget-object v0, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    #@14
    const-string/jumbo v1, ".,1!@#$%^&*:/?\'=()"

    #@17
    const/16 v2, 0x8

    #@19
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@1c
    .line 48
    sget-object v0, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    #@1e
    const-string/jumbo v1, "abc2ABC"

    #@21
    const/16 v2, 0x9

    #@23
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@26
    .line 49
    sget-object v0, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    #@28
    const-string/jumbo v1, "def3DEF"

    #@2b
    const/16 v2, 0xa

    #@2d
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@30
    .line 50
    sget-object v0, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    #@32
    const-string/jumbo v1, "ghi4GHI"

    #@35
    const/16 v2, 0xb

    #@37
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@3a
    .line 51
    sget-object v0, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    #@3c
    const-string/jumbo v1, "jkl5JKL"

    #@3f
    const/16 v2, 0xc

    #@41
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@44
    .line 52
    sget-object v0, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    #@46
    const-string/jumbo v1, "mno6MNO"

    #@49
    const/16 v2, 0xd

    #@4b
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@4e
    .line 53
    sget-object v0, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    #@50
    const-string/jumbo v1, "pqrs7PQRS"

    #@53
    const/16 v2, 0xe

    #@55
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@58
    .line 54
    sget-object v0, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    #@5a
    const-string/jumbo v1, "tuv8TUV"

    #@5d
    const/16 v2, 0xf

    #@5f
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@62
    .line 55
    sget-object v0, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    #@64
    const-string/jumbo v1, "wxyz9WXYZ"

    #@67
    const/16 v2, 0x10

    #@69
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@6c
    .line 56
    sget-object v0, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    #@6e
    const-string/jumbo v1, "0+"

    #@71
    const/4 v2, 0x7

    #@72
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@75
    .line 57
    sget-object v0, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    #@77
    const-string/jumbo v1, " "

    #@7a
    const/16 v2, 0x12

    #@7c
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@7f
    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/text/method/TextKeyListener$Capitalize;Z)V
    .locals 0
    .param p1, "cap"    # Landroid/text/method/TextKeyListener$Capitalize;
    .param p2, "autotext"    # Z

    #@0
    .prologue
    .line 60
    invoke-direct {p0}, Landroid/text/method/BaseKeyListener;-><init>()V

    #@3
    .line 62
    iput-object p1, p0, Landroid/text/method/MultiTapKeyListener;->mCapitalize:Landroid/text/method/TextKeyListener$Capitalize;

    #@5
    .line 63
    iput-boolean p2, p0, Landroid/text/method/MultiTapKeyListener;->mAutoText:Z

    #@7
    .line 61
    return-void
.end method

.method public static getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/MultiTapKeyListener;
    .locals 3
    .param p0, "autotext"    # Z
    .param p1, "cap"    # Landroid/text/method/TextKeyListener$Capitalize;

    #@0
    .prologue
    .line 72
    invoke-virtual {p1}, Landroid/text/method/TextKeyListener$Capitalize;->ordinal()I

    #@3
    move-result v1

    #@4
    mul-int/lit8 v2, v1, 0x2

    #@6
    if-eqz p0, :cond_1

    #@8
    const/4 v1, 0x1

    #@9
    :goto_0
    add-int v0, v2, v1

    #@b
    .line 74
    .local v0, "off":I
    sget-object v1, Landroid/text/method/MultiTapKeyListener;->sInstance:[Landroid/text/method/MultiTapKeyListener;

    #@d
    aget-object v1, v1, v0

    #@f
    if-nez v1, :cond_0

    #@11
    .line 75
    sget-object v1, Landroid/text/method/MultiTapKeyListener;->sInstance:[Landroid/text/method/MultiTapKeyListener;

    #@13
    new-instance v2, Landroid/text/method/MultiTapKeyListener;

    #@15
    invoke-direct {v2, p1, p0}, Landroid/text/method/MultiTapKeyListener;-><init>(Landroid/text/method/TextKeyListener$Capitalize;Z)V

    #@18
    aput-object v2, v1, v0

    #@1a
    .line 78
    :cond_0
    sget-object v1, Landroid/text/method/MultiTapKeyListener;->sInstance:[Landroid/text/method/MultiTapKeyListener;

    #@1c
    aget-object v1, v1, v0

    #@1e
    return-object v1

    #@1f
    .line 72
    .end local v0    # "off":I
    :cond_1
    const/4 v1, 0x0

    #@20
    goto :goto_0
.end method

.method private static removeTimeouts(Landroid/text/Spannable;)V
    .locals 6
    .param p0, "buf"    # Landroid/text/Spannable;

    #@0
    .prologue
    .line 243
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    #@3
    move-result v3

    #@4
    const-class v4, Landroid/text/method/MultiTapKeyListener$Timeout;

    #@6
    const/4 v5, 0x0

    #@7
    invoke-interface {p0, v5, v3, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@a
    move-result-object v2

    #@b
    check-cast v2, [Landroid/text/method/MultiTapKeyListener$Timeout;

    #@d
    .line 245
    .local v2, "timeout":[Landroid/text/method/MultiTapKeyListener$Timeout;
    const/4 v0, 0x0

    #@e
    .local v0, "i":I
    :goto_0
    array-length v3, v2

    #@f
    if-ge v0, v3, :cond_0

    #@11
    .line 246
    aget-object v1, v2, v0

    #@13
    .line 248
    .local v1, "t":Landroid/text/method/MultiTapKeyListener$Timeout;
    invoke-virtual {v1, v1}, Landroid/text/method/MultiTapKeyListener$Timeout;->removeCallbacks(Ljava/lang/Runnable;)V

    #@16
    .line 249
    const/4 v3, 0x0

    #@17
    invoke-static {v1, v3}, Landroid/text/method/MultiTapKeyListener$Timeout;->-set0(Landroid/text/method/MultiTapKeyListener$Timeout;Landroid/text/Editable;)Landroid/text/Editable;

    #@1a
    .line 250
    invoke-interface {p0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    #@1d
    .line 245
    add-int/lit8 v0, v0, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 242
    .end local v1    # "t":Landroid/text/method/MultiTapKeyListener$Timeout;
    :cond_0
    return-void
.end method


# virtual methods
.method public getInputType()I
    .locals 2

    #@0
    .prologue
    .line 82
    iget-object v0, p0, Landroid/text/method/MultiTapKeyListener;->mCapitalize:Landroid/text/method/TextKeyListener$Capitalize;

    #@2
    iget-boolean v1, p0, Landroid/text/method/MultiTapKeyListener;->mAutoText:Z

    #@4
    invoke-static {v0, v1}, Landroid/text/method/MultiTapKeyListener;->makeTextContentType(Landroid/text/method/TextKeyListener$Capitalize;Z)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 25
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 88
    const/16 v23, 0x0

    #@2
    .line 90
    .local v23, "pref":I
    if-eqz p1, :cond_0

    #@4
    .line 91
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    #@7
    move-result-object v2

    #@8
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@b
    move-result-object v7

    #@c
    invoke-virtual {v2, v7}, Landroid/text/method/TextKeyListener;->getPrefs(Landroid/content/Context;)I

    #@f
    move-result v23

    #@10
    .line 95
    :cond_0
    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    #@13
    move-result v13

    #@14
    .line 96
    .local v13, "a":I
    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    #@17
    move-result v16

    #@18
    .line 98
    .local v16, "b":I
    move/from16 v0, v16

    #@1a
    invoke-static {v13, v0}, Ljava/lang/Math;->min(II)I

    #@1d
    move-result v3

    #@1e
    .line 99
    .local v3, "selStart":I
    move/from16 v0, v16

    #@20
    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    #@23
    move-result v4

    #@24
    .line 102
    .local v4, "selEnd":I
    sget-object v2, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    #@26
    move-object/from16 v0, p2

    #@28
    invoke-interface {v0, v2}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    #@2b
    move-result v15

    #@2c
    .line 103
    .local v15, "activeStart":I
    sget-object v2, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    #@2e
    move-object/from16 v0, p2

    #@30
    invoke-interface {v0, v2}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    #@33
    move-result v14

    #@34
    .line 110
    .local v14, "activeEnd":I
    sget-object v2, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    #@36
    move-object/from16 v0, p2

    #@38
    invoke-interface {v0, v2}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    #@3b
    move-result v2

    #@3c
    .line 111
    const/high16 v7, -0x1000000

    #@3e
    .line 110
    and-int/2addr v2, v7

    #@3f
    ushr-int/lit8 v24, v2, 0x18

    #@41
    .line 113
    .local v24, "rec":I
    if-ne v15, v3, :cond_8

    #@43
    if-ne v14, v4, :cond_8

    #@45
    .line 114
    sub-int v2, v4, v3

    #@47
    const/4 v7, 0x1

    #@48
    if-ne v2, v7, :cond_8

    #@4a
    .line 115
    if-ltz v24, :cond_8

    #@4c
    sget-object v2, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    #@4e
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    #@51
    move-result v2

    #@52
    move/from16 v0, v24

    #@54
    if-ge v0, v2, :cond_8

    #@56
    .line 116
    const/16 v2, 0x11

    #@58
    move/from16 v0, p3

    #@5a
    if-ne v0, v2, :cond_2

    #@5c
    .line 117
    move-object/from16 v0, p2

    #@5e
    invoke-interface {v0, v3}, Landroid/text/Editable;->charAt(I)C

    #@61
    move-result v18

    #@62
    .line 119
    .local v18, "current":C
    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->isLowerCase(C)Z

    #@65
    move-result v2

    #@66
    if-eqz v2, :cond_1

    #@68
    .line 121
    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@6b
    move-result-object v2

    #@6c
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@6f
    move-result-object v2

    #@70
    .line 120
    move-object/from16 v0, p2

    #@72
    invoke-interface {v0, v3, v4, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    #@75
    .line 122
    invoke-static/range {p2 .. p2}, Landroid/text/method/MultiTapKeyListener;->removeTimeouts(Landroid/text/Spannable;)V

    #@78
    .line 123
    new-instance v2, Landroid/text/method/MultiTapKeyListener$Timeout;

    #@7a
    move-object/from16 v0, p0

    #@7c
    move-object/from16 v1, p2

    #@7e
    invoke-direct {v2, v0, v1}, Landroid/text/method/MultiTapKeyListener$Timeout;-><init>(Landroid/text/method/MultiTapKeyListener;Landroid/text/Editable;)V

    #@81
    .line 125
    const/4 v2, 0x1

    #@82
    return v2

    #@83
    .line 127
    :cond_1
    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->isUpperCase(C)Z

    #@86
    move-result v2

    #@87
    if-eqz v2, :cond_2

    #@89
    .line 129
    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@8c
    move-result-object v2

    #@8d
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@90
    move-result-object v2

    #@91
    .line 128
    move-object/from16 v0, p2

    #@93
    invoke-interface {v0, v3, v4, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    #@96
    .line 130
    invoke-static/range {p2 .. p2}, Landroid/text/method/MultiTapKeyListener;->removeTimeouts(Landroid/text/Spannable;)V

    #@99
    .line 131
    new-instance v2, Landroid/text/method/MultiTapKeyListener$Timeout;

    #@9b
    move-object/from16 v0, p0

    #@9d
    move-object/from16 v1, p2

    #@9f
    invoke-direct {v2, v0, v1}, Landroid/text/method/MultiTapKeyListener$Timeout;-><init>(Landroid/text/method/MultiTapKeyListener;Landroid/text/Editable;)V

    #@a2
    .line 133
    const/4 v2, 0x1

    #@a3
    return v2

    #@a4
    .line 137
    .end local v18    # "current":C
    :cond_2
    sget-object v2, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    #@a6
    move/from16 v0, p3

    #@a8
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    #@ab
    move-result v2

    #@ac
    move/from16 v0, v24

    #@ae
    if-ne v2, v0, :cond_3

    #@b0
    .line 138
    sget-object v2, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    #@b2
    move/from16 v0, v24

    #@b4
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@b7
    move-result-object v5

    #@b8
    check-cast v5, Ljava/lang/String;

    #@ba
    .line 139
    .local v5, "val":Ljava/lang/String;
    move-object/from16 v0, p2

    #@bc
    invoke-interface {v0, v3}, Landroid/text/Editable;->charAt(I)C

    #@bf
    move-result v17

    #@c0
    .line 140
    .local v17, "ch":C
    move/from16 v0, v17

    #@c2
    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(I)I

    #@c5
    move-result v6

    #@c6
    .line 142
    .local v6, "ix":I
    if-ltz v6, :cond_3

    #@c8
    .line 143
    add-int/lit8 v2, v6, 0x1

    #@ca
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@cd
    move-result v7

    #@ce
    rem-int v6, v2, v7

    #@d0
    .line 145
    add-int/lit8 v7, v6, 0x1

    #@d2
    move-object/from16 v2, p2

    #@d4
    invoke-interface/range {v2 .. v7}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    #@d7
    .line 146
    invoke-static/range {p2 .. p2}, Landroid/text/method/MultiTapKeyListener;->removeTimeouts(Landroid/text/Spannable;)V

    #@da
    .line 147
    new-instance v2, Landroid/text/method/MultiTapKeyListener$Timeout;

    #@dc
    move-object/from16 v0, p0

    #@de
    move-object/from16 v1, p2

    #@e0
    invoke-direct {v2, v0, v1}, Landroid/text/method/MultiTapKeyListener$Timeout;-><init>(Landroid/text/method/MultiTapKeyListener;Landroid/text/Editable;)V

    #@e3
    .line 149
    const/4 v2, 0x1

    #@e4
    return v2

    #@e5
    .line 158
    .end local v5    # "val":Ljava/lang/String;
    .end local v6    # "ix":I
    .end local v17    # "ch":C
    :cond_3
    sget-object v2, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    #@e7
    move/from16 v0, p3

    #@e9
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    #@ec
    move-result v24

    #@ed
    .line 160
    if-ltz v24, :cond_4

    #@ef
    .line 161
    move-object/from16 v0, p2

    #@f1
    invoke-static {v0, v4, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    #@f4
    .line 162
    move v3, v4

    #@f5
    .line 168
    :cond_4
    :goto_0
    if-ltz v24, :cond_c

    #@f7
    .line 173
    sget-object v2, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    #@f9
    move/from16 v0, v24

    #@fb
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@fe
    move-result-object v5

    #@ff
    check-cast v5, Ljava/lang/String;

    #@101
    .line 175
    .restart local v5    # "val":Ljava/lang/String;
    const/4 v11, 0x0

    #@102
    .line 176
    .local v11, "off":I
    and-int/lit8 v2, v23, 0x1

    #@104
    if-eqz v2, :cond_5

    #@106
    .line 177
    move-object/from16 v0, p0

    #@108
    iget-object v2, v0, Landroid/text/method/MultiTapKeyListener;->mCapitalize:Landroid/text/method/TextKeyListener$Capitalize;

    #@10a
    move-object/from16 v0, p2

    #@10c
    invoke-static {v2, v0, v3}, Landroid/text/method/TextKeyListener;->shouldCap(Landroid/text/method/TextKeyListener$Capitalize;Ljava/lang/CharSequence;I)Z

    #@10f
    move-result v2

    #@110
    .line 176
    if-eqz v2, :cond_5

    #@112
    .line 178
    const/16 v19, 0x0

    #@114
    .local v19, "i":I
    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@117
    move-result v2

    #@118
    move/from16 v0, v19

    #@11a
    if-ge v0, v2, :cond_5

    #@11c
    .line 179
    move/from16 v0, v19

    #@11e
    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    #@121
    move-result v2

    #@122
    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    #@125
    move-result v2

    #@126
    if-eqz v2, :cond_9

    #@128
    .line 180
    move/from16 v11, v19

    #@12a
    .line 186
    .end local v19    # "i":I
    :cond_5
    if-eq v3, v4, :cond_6

    #@12c
    .line 187
    move-object/from16 v0, p2

    #@12e
    invoke-static {v0, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    #@131
    .line 190
    :cond_6
    sget-object v2, Landroid/text/method/MultiTapKeyListener;->OLD_SEL_START:Ljava/lang/Object;

    #@133
    .line 191
    const/16 v7, 0x11

    #@135
    .line 190
    move-object/from16 v0, p2

    #@137
    invoke-interface {v0, v2, v3, v3, v7}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    #@13a
    .line 193
    add-int/lit8 v12, v11, 0x1

    #@13c
    move-object/from16 v7, p2

    #@13e
    move v8, v3

    #@13f
    move v9, v4

    #@140
    move-object v10, v5

    #@141
    invoke-interface/range {v7 .. v12}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    #@144
    .line 195
    sget-object v2, Landroid/text/method/MultiTapKeyListener;->OLD_SEL_START:Ljava/lang/Object;

    #@146
    move-object/from16 v0, p2

    #@148
    invoke-interface {v0, v2}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    #@14b
    move-result v22

    #@14c
    .line 196
    .local v22, "oldStart":I
    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    #@14f
    move-result v4

    #@150
    .line 198
    move/from16 v0, v22

    #@152
    if-eq v4, v0, :cond_7

    #@154
    .line 199
    move-object/from16 v0, p2

    #@156
    move/from16 v1, v22

    #@158
    invoke-static {v0, v1, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    #@15b
    .line 201
    sget-object v2, Landroid/text/method/TextKeyListener;->LAST_TYPED:Ljava/lang/Object;

    #@15d
    .line 203
    const/16 v7, 0x21

    #@15f
    .line 201
    move-object/from16 v0, p2

    #@161
    move/from16 v1, v22

    #@163
    invoke-interface {v0, v2, v1, v4, v7}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    #@166
    .line 205
    sget-object v2, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    #@168
    .line 208
    shl-int/lit8 v7, v24, 0x18

    #@16a
    .line 207
    or-int/lit8 v7, v7, 0x21

    #@16c
    .line 205
    move-object/from16 v0, p2

    #@16e
    move/from16 v1, v22

    #@170
    invoke-interface {v0, v2, v1, v4, v7}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    #@173
    .line 212
    :cond_7
    invoke-static/range {p2 .. p2}, Landroid/text/method/MultiTapKeyListener;->removeTimeouts(Landroid/text/Spannable;)V

    #@176
    .line 213
    new-instance v2, Landroid/text/method/MultiTapKeyListener$Timeout;

    #@178
    move-object/from16 v0, p0

    #@17a
    move-object/from16 v1, p2

    #@17c
    invoke-direct {v2, v0, v1}, Landroid/text/method/MultiTapKeyListener$Timeout;-><init>(Landroid/text/method/MultiTapKeyListener;Landroid/text/Editable;)V

    #@17f
    .line 218
    move-object/from16 v0, p2

    #@181
    move-object/from16 v1, p0

    #@183
    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    #@186
    move-result v2

    #@187
    if-gez v2, :cond_b

    #@189
    .line 219
    invoke-interface/range {p2 .. p2}, Landroid/text/Editable;->length()I

    #@18c
    move-result v2

    #@18d
    .line 220
    const-class v7, Landroid/text/method/KeyListener;

    #@18f
    .line 219
    const/4 v8, 0x0

    #@190
    move-object/from16 v0, p2

    #@192
    invoke-interface {v0, v8, v2, v7}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@195
    move-result-object v21

    #@196
    check-cast v21, [Landroid/text/method/KeyListener;

    #@198
    .line 221
    .local v21, "methods":[Landroid/text/method/KeyListener;
    const/4 v2, 0x0

    #@199
    move-object/from16 v0, v21

    #@19b
    array-length v7, v0

    #@19c
    :goto_2
    if-ge v2, v7, :cond_a

    #@19e
    aget-object v20, v21, v2

    #@1a0
    .line 222
    .local v20, "method":Ljava/lang/Object;
    move-object/from16 v0, p2

    #@1a2
    move-object/from16 v1, v20

    #@1a4
    invoke-interface {v0, v1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    #@1a7
    .line 221
    add-int/lit8 v2, v2, 0x1

    #@1a9
    goto :goto_2

    #@1aa
    .line 165
    .end local v5    # "val":Ljava/lang/String;
    .end local v11    # "off":I
    .end local v20    # "method":Ljava/lang/Object;
    .end local v21    # "methods":[Landroid/text/method/KeyListener;
    .end local v22    # "oldStart":I
    :cond_8
    sget-object v2, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    #@1ac
    move/from16 v0, p3

    #@1ae
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    #@1b1
    move-result v24

    #@1b2
    goto/16 :goto_0

    #@1b4
    .line 178
    .restart local v5    # "val":Ljava/lang/String;
    .restart local v11    # "off":I
    .restart local v19    # "i":I
    :cond_9
    add-int/lit8 v19, v19, 0x1

    #@1b6
    goto/16 :goto_1

    #@1b8
    .line 224
    .end local v19    # "i":I
    .restart local v21    # "methods":[Landroid/text/method/KeyListener;
    .restart local v22    # "oldStart":I
    :cond_a
    invoke-interface/range {p2 .. p2}, Landroid/text/Editable;->length()I

    #@1bb
    move-result v2

    #@1bc
    const/4 v7, 0x0

    #@1bd
    .line 225
    const/16 v8, 0x12

    #@1bf
    .line 224
    move-object/from16 v0, p2

    #@1c1
    move-object/from16 v1, p0

    #@1c3
    invoke-interface {v0, v1, v7, v2, v8}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    #@1c6
    .line 228
    .end local v21    # "methods":[Landroid/text/method/KeyListener;
    :cond_b
    const/4 v2, 0x1

    #@1c7
    return v2

    #@1c8
    .line 231
    .end local v5    # "val":Ljava/lang/String;
    .end local v11    # "off":I
    .end local v22    # "oldStart":I
    :cond_c
    invoke-super/range {p0 .. p4}, Landroid/text/method/BaseKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    #@1cb
    move-result v2

    #@1cc
    return v2
.end method

.method public onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 0
    .param p1, "s"    # Landroid/text/Spannable;
    .param p2, "what"    # Ljava/lang/Object;
    .param p3, "start"    # I
    .param p4, "end"    # I

    #@0
    .prologue
    .line 287
    return-void
.end method

.method public onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V
    .locals 1
    .param p1, "buf"    # Landroid/text/Spannable;
    .param p2, "what"    # Ljava/lang/Object;
    .param p3, "s"    # I
    .param p4, "e"    # I
    .param p5, "start"    # I
    .param p6, "stop"    # I

    #@0
    .prologue
    .line 236
    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    #@2
    if-ne p2, v0, :cond_0

    #@4
    .line 237
    sget-object v0, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    #@6
    invoke-interface {p1, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    #@9
    .line 238
    invoke-static {p1}, Landroid/text/method/MultiTapKeyListener;->removeTimeouts(Landroid/text/Spannable;)V

    #@c
    .line 235
    :cond_0
    return-void
.end method

.method public onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 0
    .param p1, "s"    # Landroid/text/Spannable;
    .param p2, "what"    # Ljava/lang/Object;
    .param p3, "start"    # I
    .param p4, "end"    # I

    #@0
    .prologue
    .line 288
    return-void
.end method
