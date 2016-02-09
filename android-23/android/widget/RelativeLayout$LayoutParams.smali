.class public Landroid/widget/RelativeLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "RelativeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public alignWithParent:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mBottom:I

.field private mInitialRules:[I

.field private mIsRtlCompatibilityMode:Z

.field private mLeft:I

.field private mRight:I

.field private mRules:[I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
        indexMapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "above"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x4
                to = "alignBaseline"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x8
                to = "alignBottom"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x5
                to = "alignLeft"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xc
                to = "alignParentBottom"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x9
                to = "alignParentLeft"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xb
                to = "alignParentRight"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xa
                to = "alignParentTop"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7
                to = "alignRight"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x6
                to = "alignTop"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "below"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xe
                to = "centerHorizontal"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xd
                to = "center"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xf
                to = "centerVertical"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "leftOf"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "rightOf"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x12
                to = "alignStart"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x13
                to = "alignEnd"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x14
                to = "alignParentStart"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x15
                to = "alignParentEnd"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x10
                to = "startOf"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x11
                to = "endOf"
            .end subannotation
        }
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = -0x1
                to = "true"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "false/NO_ID"
            .end subannotation
        }
        resolveId = true
    .end annotation
.end field

.field private mRulesChanged:Z

.field private mTop:I


# direct methods
.method static synthetic -get0(Landroid/widget/RelativeLayout$LayoutParams;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I

    #@2
    return v0
.end method

.method static synthetic -get1(Landroid/widget/RelativeLayout$LayoutParams;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I

    #@2
    return v0
.end method

.method static synthetic -get2(Landroid/widget/RelativeLayout$LayoutParams;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRight:I

    #@2
    return v0
.end method

.method static synthetic -get3(Landroid/widget/RelativeLayout$LayoutParams;)[I
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@2
    return-object v0
.end method

.method static synthetic -get4(Landroid/widget/RelativeLayout$LayoutParams;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mTop:I

    #@2
    return v0
.end method

.method static synthetic -set0(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I

    #@2
    return p1
.end method

.method static synthetic -set1(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I

    #@2
    return p1
.end method

.method static synthetic -set2(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRight:I

    #@2
    return p1
.end method

.method static synthetic -set3(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mTop:I

    #@2
    return p1
.end method

.method public constructor <init>(II)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I

    #@0
    .prologue
    const/16 v2, 0x16

    #@2
    const/4 v1, 0x0

    #@3
    .line 1335
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    #@6
    .line 1224
    new-array v0, v2, [I

    #@8
    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@a
    .line 1225
    new-array v0, v2, [I

    #@c
    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    #@e
    .line 1229
    iput-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    #@10
    .line 1230
    iput-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    #@12
    .line 1334
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 1240
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    .line 1224
    const/16 v7, 0x16

    #@5
    new-array v7, v7, [I

    #@7
    iput-object v7, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@9
    .line 1225
    const/16 v7, 0x16

    #@b
    new-array v7, v7, [I

    #@d
    iput-object v7, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    #@f
    .line 1229
    const/4 v7, 0x0

    #@10
    iput-boolean v7, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    #@12
    .line 1230
    const/4 v7, 0x0

    #@13
    iput-boolean v7, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    #@15
    .line 1243
    sget-object v7, Lcom/android/internal/R$styleable;->RelativeLayout_Layout:[I

    #@17
    .line 1242
    invoke-virtual {p1, p2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@1a
    move-result-object v1

    #@1b
    .line 1245
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@1e
    move-result-object v7

    #@1f
    iget v6, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@21
    .line 1246
    .local v6, "targetSdkVersion":I
    const/16 v7, 0x11

    #@23
    if-lt v6, v7, :cond_0

    #@25
    .line 1247
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@28
    move-result-object v7

    #@29
    invoke-virtual {v7}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    #@2c
    move-result v7

    #@2d
    if-eqz v7, :cond_1

    #@2f
    const/4 v7, 0x0

    #@30
    .line 1246
    :goto_0
    iput-boolean v7, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    #@32
    .line 1249
    iget-object v5, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@34
    .line 1251
    .local v5, "rules":[I
    iget-object v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    #@36
    .line 1253
    .local v4, "initialRules":[I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    #@39
    move-result v0

    #@3a
    .line 1254
    .local v0, "N":I
    const/4 v3, 0x0

    #@3b
    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_b

    #@3d
    .line 1255
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    #@40
    move-result v2

    #@41
    .line 1256
    .local v2, "attr":I
    packed-switch v2, :pswitch_data_0

    #@44
    .line 1254
    :goto_2
    add-int/lit8 v3, v3, 0x1

    #@46
    goto :goto_1

    #@47
    .line 1246
    .end local v0    # "N":I
    .end local v2    # "attr":I
    .end local v3    # "i":I
    .end local v4    # "initialRules":[I
    .end local v5    # "rules":[I
    :cond_0
    const/4 v7, 0x1

    #@48
    goto :goto_0

    #@49
    .line 1247
    :cond_1
    const/4 v7, 0x1

    #@4a
    goto :goto_0

    #@4b
    .line 1258
    .restart local v0    # "N":I
    .restart local v2    # "attr":I
    .restart local v3    # "i":I
    .restart local v4    # "initialRules":[I
    .restart local v5    # "rules":[I
    :pswitch_0
    const/4 v7, 0x0

    #@4c
    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@4f
    move-result v7

    #@50
    iput-boolean v7, p0, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    #@52
    goto :goto_2

    #@53
    .line 1261
    :pswitch_1
    const/4 v7, 0x0

    #@54
    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@57
    move-result v7

    #@58
    const/4 v8, 0x0

    #@59
    aput v7, v5, v8

    #@5b
    goto :goto_2

    #@5c
    .line 1264
    :pswitch_2
    const/4 v7, 0x0

    #@5d
    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@60
    move-result v7

    #@61
    const/4 v8, 0x1

    #@62
    aput v7, v5, v8

    #@64
    goto :goto_2

    #@65
    .line 1267
    :pswitch_3
    const/4 v7, 0x0

    #@66
    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@69
    move-result v7

    #@6a
    const/4 v8, 0x2

    #@6b
    aput v7, v5, v8

    #@6d
    goto :goto_2

    #@6e
    .line 1270
    :pswitch_4
    const/4 v7, 0x0

    #@6f
    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@72
    move-result v7

    #@73
    const/4 v8, 0x3

    #@74
    aput v7, v5, v8

    #@76
    goto :goto_2

    #@77
    .line 1273
    :pswitch_5
    const/4 v7, 0x0

    #@78
    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@7b
    move-result v7

    #@7c
    const/4 v8, 0x4

    #@7d
    aput v7, v5, v8

    #@7f
    goto :goto_2

    #@80
    .line 1276
    :pswitch_6
    const/4 v7, 0x0

    #@81
    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@84
    move-result v7

    #@85
    const/4 v8, 0x5

    #@86
    aput v7, v5, v8

    #@88
    goto :goto_2

    #@89
    .line 1279
    :pswitch_7
    const/4 v7, 0x0

    #@8a
    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@8d
    move-result v7

    #@8e
    const/4 v8, 0x6

    #@8f
    aput v7, v5, v8

    #@91
    goto :goto_2

    #@92
    .line 1282
    :pswitch_8
    const/4 v7, 0x0

    #@93
    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@96
    move-result v7

    #@97
    const/4 v8, 0x7

    #@98
    aput v7, v5, v8

    #@9a
    goto :goto_2

    #@9b
    .line 1285
    :pswitch_9
    const/4 v7, 0x0

    #@9c
    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@9f
    move-result v7

    #@a0
    const/16 v8, 0x8

    #@a2
    aput v7, v5, v8

    #@a4
    goto :goto_2

    #@a5
    .line 1288
    :pswitch_a
    const/4 v7, 0x0

    #@a6
    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@a9
    move-result v7

    #@aa
    if-eqz v7, :cond_2

    #@ac
    const/4 v7, -0x1

    #@ad
    :goto_3
    const/16 v8, 0x9

    #@af
    aput v7, v5, v8

    #@b1
    goto :goto_2

    #@b2
    :cond_2
    const/4 v7, 0x0

    #@b3
    goto :goto_3

    #@b4
    .line 1291
    :pswitch_b
    const/4 v7, 0x0

    #@b5
    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@b8
    move-result v7

    #@b9
    if-eqz v7, :cond_3

    #@bb
    const/4 v7, -0x1

    #@bc
    :goto_4
    const/16 v8, 0xa

    #@be
    aput v7, v5, v8

    #@c0
    goto :goto_2

    #@c1
    :cond_3
    const/4 v7, 0x0

    #@c2
    goto :goto_4

    #@c3
    .line 1294
    :pswitch_c
    const/4 v7, 0x0

    #@c4
    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@c7
    move-result v7

    #@c8
    if-eqz v7, :cond_4

    #@ca
    const/4 v7, -0x1

    #@cb
    :goto_5
    const/16 v8, 0xb

    #@cd
    aput v7, v5, v8

    #@cf
    goto/16 :goto_2

    #@d1
    :cond_4
    const/4 v7, 0x0

    #@d2
    goto :goto_5

    #@d3
    .line 1297
    :pswitch_d
    const/4 v7, 0x0

    #@d4
    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@d7
    move-result v7

    #@d8
    if-eqz v7, :cond_5

    #@da
    const/4 v7, -0x1

    #@db
    :goto_6
    const/16 v8, 0xc

    #@dd
    aput v7, v5, v8

    #@df
    goto/16 :goto_2

    #@e1
    :cond_5
    const/4 v7, 0x0

    #@e2
    goto :goto_6

    #@e3
    .line 1300
    :pswitch_e
    const/4 v7, 0x0

    #@e4
    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@e7
    move-result v7

    #@e8
    if-eqz v7, :cond_6

    #@ea
    const/4 v7, -0x1

    #@eb
    :goto_7
    const/16 v8, 0xd

    #@ed
    aput v7, v5, v8

    #@ef
    goto/16 :goto_2

    #@f1
    :cond_6
    const/4 v7, 0x0

    #@f2
    goto :goto_7

    #@f3
    .line 1303
    :pswitch_f
    const/4 v7, 0x0

    #@f4
    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@f7
    move-result v7

    #@f8
    if-eqz v7, :cond_7

    #@fa
    const/4 v7, -0x1

    #@fb
    :goto_8
    const/16 v8, 0xe

    #@fd
    aput v7, v5, v8

    #@ff
    goto/16 :goto_2

    #@101
    :cond_7
    const/4 v7, 0x0

    #@102
    goto :goto_8

    #@103
    .line 1306
    :pswitch_10
    const/4 v7, 0x0

    #@104
    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@107
    move-result v7

    #@108
    if-eqz v7, :cond_8

    #@10a
    const/4 v7, -0x1

    #@10b
    :goto_9
    const/16 v8, 0xf

    #@10d
    aput v7, v5, v8

    #@10f
    goto/16 :goto_2

    #@111
    :cond_8
    const/4 v7, 0x0

    #@112
    goto :goto_9

    #@113
    .line 1309
    :pswitch_11
    const/4 v7, 0x0

    #@114
    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@117
    move-result v7

    #@118
    const/16 v8, 0x10

    #@11a
    aput v7, v5, v8

    #@11c
    goto/16 :goto_2

    #@11e
    .line 1312
    :pswitch_12
    const/4 v7, 0x0

    #@11f
    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@122
    move-result v7

    #@123
    const/16 v8, 0x11

    #@125
    aput v7, v5, v8

    #@127
    goto/16 :goto_2

    #@129
    .line 1315
    :pswitch_13
    const/4 v7, 0x0

    #@12a
    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@12d
    move-result v7

    #@12e
    const/16 v8, 0x12

    #@130
    aput v7, v5, v8

    #@132
    goto/16 :goto_2

    #@134
    .line 1318
    :pswitch_14
    const/4 v7, 0x0

    #@135
    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@138
    move-result v7

    #@139
    const/16 v8, 0x13

    #@13b
    aput v7, v5, v8

    #@13d
    goto/16 :goto_2

    #@13f
    .line 1321
    :pswitch_15
    const/4 v7, 0x0

    #@140
    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@143
    move-result v7

    #@144
    if-eqz v7, :cond_9

    #@146
    const/4 v7, -0x1

    #@147
    :goto_a
    const/16 v8, 0x14

    #@149
    aput v7, v5, v8

    #@14b
    goto/16 :goto_2

    #@14d
    :cond_9
    const/4 v7, 0x0

    #@14e
    goto :goto_a

    #@14f
    .line 1324
    :pswitch_16
    const/4 v7, 0x0

    #@150
    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@153
    move-result v7

    #@154
    if-eqz v7, :cond_a

    #@156
    const/4 v7, -0x1

    #@157
    :goto_b
    const/16 v8, 0x15

    #@159
    aput v7, v5, v8

    #@15b
    goto/16 :goto_2

    #@15d
    :cond_a
    const/4 v7, 0x0

    #@15e
    goto :goto_b

    #@15f
    .line 1328
    .end local v2    # "attr":I
    :cond_b
    const/4 v7, 0x1

    #@160
    iput-boolean v7, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    #@162
    .line 1329
    const/4 v7, 0x0

    #@163
    const/4 v8, 0x0

    #@164
    const/16 v9, 0x16

    #@166
    invoke-static {v5, v7, v4, v8, v9}, Ljava/lang/System;->arraycopy([II[III)V

    #@169
    .line 1331
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    #@16c
    .line 1239
    return-void

    #@16d
    .line 1256
    nop

    #@16e
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    const/16 v2, 0x16

    #@2
    const/4 v1, 0x0

    #@3
    .line 1342
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    #@6
    .line 1224
    new-array v0, v2, [I

    #@8
    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@a
    .line 1225
    new-array v0, v2, [I

    #@c
    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    #@e
    .line 1229
    iput-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    #@10
    .line 1230
    iput-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    #@12
    .line 1341
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 3
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    #@0
    .prologue
    const/16 v2, 0x16

    #@2
    const/4 v1, 0x0

    #@3
    .line 1349
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    #@6
    .line 1224
    new-array v0, v2, [I

    #@8
    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@a
    .line 1225
    new-array v0, v2, [I

    #@c
    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    #@e
    .line 1229
    iput-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    #@10
    .line 1230
    iput-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    #@12
    .line 1348
    return-void
.end method

.method public constructor <init>(Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 4
    .param p1, "source"    # Landroid/widget/RelativeLayout$LayoutParams;

    #@0
    .prologue
    const/16 v3, 0x16

    #@2
    const/4 v2, 0x0

    #@3
    .line 1359
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    #@6
    .line 1224
    new-array v0, v3, [I

    #@8
    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@a
    .line 1225
    new-array v0, v3, [I

    #@c
    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    #@e
    .line 1229
    iput-boolean v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    #@10
    .line 1230
    iput-boolean v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    #@12
    .line 1361
    iget-boolean v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    #@14
    iput-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    #@16
    .line 1362
    iget-boolean v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    #@18
    iput-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    #@1a
    .line 1363
    iget-boolean v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    #@1c
    iput-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    #@1e
    .line 1365
    iget-object v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@20
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@22
    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy([II[III)V

    #@25
    .line 1367
    iget-object v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    #@27
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    #@29
    .line 1366
    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy([II[III)V

    #@2c
    .line 1358
    return-void
.end method

.method private hasRelativeRules()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1449
    iget-object v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    #@4
    const/16 v3, 0x10

    #@6
    aget v2, v2, v3

    #@8
    if-nez v2, :cond_0

    #@a
    iget-object v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    #@c
    const/16 v3, 0x11

    #@e
    aget v2, v2, v3

    #@10
    if-eqz v2, :cond_1

    #@12
    :cond_0
    :goto_0
    return v0

    #@13
    .line 1450
    :cond_1
    iget-object v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    #@15
    const/16 v3, 0x12

    #@17
    aget v2, v2, v3

    #@19
    if-nez v2, :cond_0

    #@1b
    iget-object v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    #@1d
    const/16 v3, 0x13

    #@1f
    aget v2, v2, v3

    #@21
    if-nez v2, :cond_0

    #@23
    .line 1451
    iget-object v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    #@25
    const/16 v3, 0x14

    #@27
    aget v2, v2, v3

    #@29
    if-nez v2, :cond_0

    #@2b
    iget-object v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    #@2d
    const/16 v3, 0x15

    #@2f
    aget v2, v2, v3

    #@31
    if-nez v2, :cond_0

    #@33
    move v0, v1

    #@34
    goto :goto_0
.end method

.method private resolveRules(I)V
    .locals 9
    .param p1, "layoutDirection"    # I

    #@0
    .prologue
    const/16 v6, 0x12

    #@2
    const/16 v8, 0x11

    #@4
    const/16 v7, 0x10

    #@6
    const/4 v2, 0x1

    #@7
    const/4 v3, 0x0

    #@8
    .line 1468
    if-ne p1, v2, :cond_c

    #@a
    const/4 v0, 0x1

    #@b
    .line 1471
    .local v0, "isLayoutRtl":Z
    :goto_0
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    #@d
    iget-object v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@f
    const/16 v5, 0x16

    #@11
    invoke-static {v1, v3, v4, v3, v5}, Ljava/lang/System;->arraycopy([II[III)V

    #@14
    .line 1474
    iget-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    #@16
    if-eqz v1, :cond_d

    #@18
    .line 1475
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@1a
    aget v1, v1, v6

    #@1c
    if-eqz v1, :cond_1

    #@1e
    .line 1476
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@20
    const/4 v4, 0x5

    #@21
    aget v1, v1, v4

    #@23
    if-nez v1, :cond_0

    #@25
    .line 1479
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@27
    iget-object v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@29
    aget v4, v4, v6

    #@2b
    const/4 v5, 0x5

    #@2c
    aput v4, v1, v5

    #@2e
    .line 1481
    :cond_0
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@30
    aput v3, v1, v6

    #@32
    .line 1484
    :cond_1
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@34
    const/16 v4, 0x13

    #@36
    aget v1, v1, v4

    #@38
    if-eqz v1, :cond_3

    #@3a
    .line 1485
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@3c
    const/4 v4, 0x7

    #@3d
    aget v1, v1, v4

    #@3f
    if-nez v1, :cond_2

    #@41
    .line 1488
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@43
    iget-object v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@45
    const/16 v5, 0x13

    #@47
    aget v4, v4, v5

    #@49
    const/4 v5, 0x7

    #@4a
    aput v4, v1, v5

    #@4c
    .line 1490
    :cond_2
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@4e
    const/16 v4, 0x13

    #@50
    aput v3, v1, v4

    #@52
    .line 1493
    :cond_3
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@54
    aget v1, v1, v7

    #@56
    if-eqz v1, :cond_5

    #@58
    .line 1494
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@5a
    aget v1, v1, v3

    #@5c
    if-nez v1, :cond_4

    #@5e
    .line 1497
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@60
    iget-object v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@62
    aget v4, v4, v7

    #@64
    aput v4, v1, v3

    #@66
    .line 1499
    :cond_4
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@68
    aput v3, v1, v7

    #@6a
    .line 1502
    :cond_5
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@6c
    aget v1, v1, v8

    #@6e
    if-eqz v1, :cond_7

    #@70
    .line 1503
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@72
    aget v1, v1, v2

    #@74
    if-nez v1, :cond_6

    #@76
    .line 1506
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@78
    iget-object v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@7a
    aget v4, v4, v8

    #@7c
    aput v4, v1, v2

    #@7e
    .line 1508
    :cond_6
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@80
    aput v3, v1, v8

    #@82
    .line 1511
    :cond_7
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@84
    const/16 v2, 0x14

    #@86
    aget v1, v1, v2

    #@88
    if-eqz v1, :cond_9

    #@8a
    .line 1512
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@8c
    const/16 v2, 0x9

    #@8e
    aget v1, v1, v2

    #@90
    if-nez v1, :cond_8

    #@92
    .line 1515
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@94
    iget-object v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@96
    const/16 v4, 0x14

    #@98
    aget v2, v2, v4

    #@9a
    const/16 v4, 0x9

    #@9c
    aput v2, v1, v4

    #@9e
    .line 1517
    :cond_8
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@a0
    const/16 v2, 0x14

    #@a2
    aput v3, v1, v2

    #@a4
    .line 1520
    :cond_9
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@a6
    const/16 v2, 0x15

    #@a8
    aget v1, v1, v2

    #@aa
    if-eqz v1, :cond_b

    #@ac
    .line 1521
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@ae
    const/16 v2, 0xb

    #@b0
    aget v1, v1, v2

    #@b2
    if-nez v1, :cond_a

    #@b4
    .line 1524
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@b6
    iget-object v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@b8
    const/16 v4, 0x15

    #@ba
    aget v2, v2, v4

    #@bc
    const/16 v4, 0xb

    #@be
    aput v2, v1, v4

    #@c0
    .line 1526
    :cond_a
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@c2
    const/16 v2, 0x15

    #@c4
    aput v3, v1, v2

    #@c6
    .line 1581
    :cond_b
    :goto_1
    iput-boolean v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    #@c8
    .line 1467
    return-void

    #@c9
    .line 1468
    .end local v0    # "isLayoutRtl":Z
    :cond_c
    const/4 v0, 0x0

    #@ca
    .restart local v0    # "isLayoutRtl":Z
    goto/16 :goto_0

    #@cc
    .line 1530
    :cond_d
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@ce
    aget v1, v1, v6

    #@d0
    if-nez v1, :cond_e

    #@d2
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@d4
    const/16 v4, 0x13

    #@d6
    aget v1, v1, v4

    #@d8
    if-eqz v1, :cond_10

    #@da
    .line 1531
    :cond_e
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@dc
    const/4 v4, 0x5

    #@dd
    aget v1, v1, v4

    #@df
    if-nez v1, :cond_f

    #@e1
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@e3
    const/4 v4, 0x7

    #@e4
    aget v1, v1, v4

    #@e6
    if-eqz v1, :cond_10

    #@e8
    .line 1533
    :cond_f
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@ea
    const/4 v4, 0x5

    #@eb
    aput v3, v1, v4

    #@ed
    .line 1534
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@ef
    const/4 v4, 0x7

    #@f0
    aput v3, v1, v4

    #@f2
    .line 1536
    :cond_10
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@f4
    aget v1, v1, v6

    #@f6
    if-eqz v1, :cond_11

    #@f8
    .line 1538
    iget-object v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@fa
    if-eqz v0, :cond_1d

    #@fc
    const/4 v1, 0x7

    #@fd
    :goto_2
    iget-object v5, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@ff
    aget v5, v5, v6

    #@101
    aput v5, v4, v1

    #@103
    .line 1539
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@105
    aput v3, v1, v6

    #@107
    .line 1541
    :cond_11
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@109
    const/16 v4, 0x13

    #@10b
    aget v1, v1, v4

    #@10d
    if-eqz v1, :cond_12

    #@10f
    .line 1543
    iget-object v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@111
    if-eqz v0, :cond_1e

    #@113
    const/4 v1, 0x5

    #@114
    :goto_3
    iget-object v5, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@116
    const/16 v6, 0x13

    #@118
    aget v5, v5, v6

    #@11a
    aput v5, v4, v1

    #@11c
    .line 1544
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@11e
    const/16 v4, 0x13

    #@120
    aput v3, v1, v4

    #@122
    .line 1547
    :cond_12
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@124
    aget v1, v1, v7

    #@126
    if-nez v1, :cond_13

    #@128
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@12a
    aget v1, v1, v8

    #@12c
    if-eqz v1, :cond_15

    #@12e
    .line 1548
    :cond_13
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@130
    aget v1, v1, v3

    #@132
    if-nez v1, :cond_14

    #@134
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@136
    aget v1, v1, v2

    #@138
    if-eqz v1, :cond_15

    #@13a
    .line 1550
    :cond_14
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@13c
    aput v3, v1, v3

    #@13e
    .line 1551
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@140
    aput v3, v1, v2

    #@142
    .line 1553
    :cond_15
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@144
    aget v1, v1, v7

    #@146
    if-eqz v1, :cond_16

    #@148
    .line 1555
    iget-object v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@14a
    if-eqz v0, :cond_1f

    #@14c
    move v1, v2

    #@14d
    :goto_4
    iget-object v5, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@14f
    aget v5, v5, v7

    #@151
    aput v5, v4, v1

    #@153
    .line 1556
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@155
    aput v3, v1, v7

    #@157
    .line 1558
    :cond_16
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@159
    aget v1, v1, v8

    #@15b
    if-eqz v1, :cond_18

    #@15d
    .line 1560
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@15f
    if-eqz v0, :cond_17

    #@161
    move v2, v3

    #@162
    :cond_17
    iget-object v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@164
    aget v4, v4, v8

    #@166
    aput v4, v1, v2

    #@168
    .line 1561
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@16a
    aput v3, v1, v8

    #@16c
    .line 1564
    :cond_18
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@16e
    const/16 v2, 0x14

    #@170
    aget v1, v1, v2

    #@172
    if-nez v1, :cond_19

    #@174
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@176
    const/16 v2, 0x15

    #@178
    aget v1, v1, v2

    #@17a
    if-eqz v1, :cond_1b

    #@17c
    .line 1565
    :cond_19
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@17e
    const/16 v2, 0x9

    #@180
    aget v1, v1, v2

    #@182
    if-nez v1, :cond_1a

    #@184
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@186
    const/16 v2, 0xb

    #@188
    aget v1, v1, v2

    #@18a
    if-eqz v1, :cond_1b

    #@18c
    .line 1567
    :cond_1a
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@18e
    const/16 v2, 0x9

    #@190
    aput v3, v1, v2

    #@192
    .line 1568
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@194
    const/16 v2, 0xb

    #@196
    aput v3, v1, v2

    #@198
    .line 1570
    :cond_1b
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@19a
    const/16 v2, 0x14

    #@19c
    aget v1, v1, v2

    #@19e
    if-eqz v1, :cond_1c

    #@1a0
    .line 1572
    iget-object v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@1a2
    if-eqz v0, :cond_20

    #@1a4
    const/16 v1, 0xb

    #@1a6
    :goto_5
    iget-object v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@1a8
    const/16 v5, 0x14

    #@1aa
    aget v4, v4, v5

    #@1ac
    aput v4, v2, v1

    #@1ae
    .line 1573
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@1b0
    const/16 v2, 0x14

    #@1b2
    aput v3, v1, v2

    #@1b4
    .line 1575
    :cond_1c
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@1b6
    const/16 v2, 0x15

    #@1b8
    aget v1, v1, v2

    #@1ba
    if-eqz v1, :cond_b

    #@1bc
    .line 1577
    iget-object v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@1be
    if-eqz v0, :cond_21

    #@1c0
    const/16 v1, 0x9

    #@1c2
    :goto_6
    iget-object v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@1c4
    const/16 v5, 0x15

    #@1c6
    aget v4, v4, v5

    #@1c8
    aput v4, v2, v1

    #@1ca
    .line 1578
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@1cc
    const/16 v2, 0x15

    #@1ce
    aput v3, v1, v2

    #@1d0
    goto/16 :goto_1

    #@1d2
    .line 1538
    :cond_1d
    const/4 v1, 0x5

    #@1d3
    goto/16 :goto_2

    #@1d5
    .line 1543
    :cond_1e
    const/4 v1, 0x7

    #@1d6
    goto/16 :goto_3

    #@1d8
    :cond_1f
    move v1, v3

    #@1d9
    .line 1555
    goto/16 :goto_4

    #@1db
    .line 1572
    :cond_20
    const/16 v1, 0x9

    #@1dd
    goto :goto_5

    #@1de
    .line 1577
    :cond_21
    const/16 v1, 0xb

    #@1e0
    goto :goto_6
.end method


# virtual methods
.method public addRule(I)V
    .locals 2
    .param p1, "verb"    # I

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 1390
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@3
    aput v1, v0, p1

    #@5
    .line 1391
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    #@7
    aput v1, v0, p1

    #@9
    .line 1392
    const/4 v0, 0x1

    #@a
    iput-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    #@c
    .line 1389
    return-void
.end method

.method public addRule(II)V
    .locals 1
    .param p1, "verb"    # I
    .param p2, "anchor"    # I

    #@0
    .prologue
    .line 1411
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@2
    aput p2, v0, p1

    #@4
    .line 1412
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    #@6
    aput p2, v0, p1

    #@8
    .line 1413
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    #@b
    .line 1410
    return-void
.end method

.method public debug(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "output"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1372
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v0

    #@9
    const-string/jumbo v1, "ViewGroup.LayoutParams={ width="

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    iget v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    #@12
    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->sizeToString(I)Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    .line 1373
    const-string/jumbo v1, ", height="

    #@1d
    .line 1372
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    .line 1373
    iget v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    #@23
    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->sizeToString(I)Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    .line 1372
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    .line 1373
    const-string/jumbo v1, " }"

    #@2e
    .line 1372
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    return-object v0
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    #@0
    .prologue
    .line 1634
    invoke-super {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    #@3
    .line 1635
    const-string/jumbo v0, "layout:alignWithParent"

    #@6
    iget-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    #@8
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    #@b
    .line 1633
    return-void
.end method

.method public getRule(I)I
    .locals 1
    .param p1, "verb"    # I

    #@0
    .prologue
    .line 1445
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@2
    aget v0, v0, p1

    #@4
    return v0
.end method

.method public getRules()[I
    .locals 1

    #@0
    .prologue
    .line 1618
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@2
    return-object v0
.end method

.method public getRules(I)[I
    .locals 1
    .param p1, "layoutDirection"    # I

    #@0
    .prologue
    .line 1599
    invoke-direct {p0}, Landroid/widget/RelativeLayout$LayoutParams;->hasRelativeRules()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_1

    #@6
    .line 1600
    iget-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    #@8
    if-nez v0, :cond_0

    #@a
    invoke-virtual {p0}, Landroid/widget/RelativeLayout$LayoutParams;->getLayoutDirection()I

    #@d
    move-result v0

    #@e
    if-eq p1, v0, :cond_1

    #@10
    .line 1601
    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->resolveRules(I)V

    #@13
    .line 1602
    invoke-virtual {p0}, Landroid/widget/RelativeLayout$LayoutParams;->getLayoutDirection()I

    #@16
    move-result v0

    #@17
    if-eq p1, v0, :cond_1

    #@19
    .line 1603
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->setLayoutDirection(I)V

    #@1c
    .line 1606
    :cond_1
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@1e
    return-object v0
.end method

.method public removeRule(I)V
    .locals 2
    .param p1, "verb"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1427
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    #@3
    aput v1, v0, p1

    #@5
    .line 1428
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    #@7
    aput v1, v0, p1

    #@9
    .line 1429
    const/4 v0, 0x1

    #@a
    iput-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    #@c
    .line 1426
    return-void
.end method

.method public resolveLayoutDirection(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    #@0
    .prologue
    .line 1623
    invoke-virtual {p0}, Landroid/widget/RelativeLayout$LayoutParams;->isLayoutRtl()Z

    #@3
    move-result v0

    #@4
    .line 1624
    .local v0, "isLayoutRtl":Z
    invoke-direct {p0}, Landroid/widget/RelativeLayout$LayoutParams;->hasRelativeRules()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    invoke-virtual {p0}, Landroid/widget/RelativeLayout$LayoutParams;->getLayoutDirection()I

    #@d
    move-result v1

    #@e
    if-eq p1, v1, :cond_0

    #@10
    .line 1625
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->resolveRules(I)V

    #@13
    .line 1628
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->resolveLayoutDirection(I)V

    #@16
    .line 1622
    return-void
.end method
