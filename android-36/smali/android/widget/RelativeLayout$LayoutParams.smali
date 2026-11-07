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

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RelativeLayout$LayoutParams$InspectionCompanion;
    }
.end annotation


# instance fields
.field public whitelist alignWithParent:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private greylist mBottom:I

.field private greylist-max-o mInitialRules:[I

.field private greylist-max-o mIsRtlCompatibilityMode:Z

.field private greylist mLeft:I

.field private greylist-max-o mNeedsLayoutResolution:Z

.field private greylist mRight:I

.field private greylist-max-o mRules:[I
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

.field private greylist-max-o mRulesChanged:Z

.field private greylist mTop:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBottom(Landroid/widget/RelativeLayout$LayoutParams;)I
    .registers 1

    iget p0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I
    .registers 1

    iget p0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I
    .registers 1

    iget p0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRight:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRules(Landroid/widget/RelativeLayout$LayoutParams;)[I
    .registers 1

    iget-object p0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I
    .registers 1

    iget p0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mTop:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBottom(Landroid/widget/RelativeLayout$LayoutParams;I)V
    .registers 2

    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLeft(Landroid/widget/RelativeLayout$LayoutParams;I)V
    .registers 2

    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRight(Landroid/widget/RelativeLayout$LayoutParams;I)V
    .registers 2

    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRight:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTop(Landroid/widget/RelativeLayout$LayoutParams;I)V
    .registers 2

    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mTop:I

    return-void
.end method

.method public constructor whitelist <init>(II)V
    .registers 5
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 1391
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1239
    const/16 v0, 0x16

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 1268
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    .line 1285
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1286
    iput-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 1392
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 16
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 1296
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1239
    const/16 v0, 0x16

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 1268
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    .line 1285
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1286
    iput-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 1298
    sget-object v2, Lcom/android/internal/R$styleable;->RelativeLayout_Layout:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 1301
    .local v2, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1302
    .local v3, "targetSdkVersion":I
    const/4 v4, 0x1

    const/16 v5, 0x11

    if-lt v3, v5, :cond_30

    .line 1303
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result v6

    if-nez v6, :cond_2e

    goto :goto_30

    :cond_2e
    move v6, v1

    goto :goto_31

    :cond_30
    :goto_30
    move v6, v4

    :goto_31
    iput-boolean v6, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 1305
    iget-object v6, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 1307
    .local v6, "rules":[I
    iget-object v7, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    .line 1309
    .local v7, "initialRules":[I
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v8

    .line 1310
    .local v8, "N":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_3c
    if-ge v9, v8, :cond_13d

    .line 1311
    invoke-virtual {v2, v9}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v10

    .line 1312
    .local v10, "attr":I
    const/4 v11, -0x1

    packed-switch v10, :pswitch_data_146

    goto/16 :goto_139

    .line 1380
    :pswitch_48
    invoke-virtual {v2, v10, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    if-eqz v12, :cond_4f

    goto :goto_50

    :cond_4f
    move v11, v1

    :goto_50
    const/16 v12, 0x15

    aput v11, v6, v12

    goto/16 :goto_139

    .line 1377
    :pswitch_56
    invoke-virtual {v2, v10, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    if-eqz v12, :cond_5d

    goto :goto_5e

    :cond_5d
    move v11, v1

    :goto_5e
    const/16 v12, 0x14

    aput v11, v6, v12

    .line 1378
    goto/16 :goto_139

    .line 1374
    :pswitch_64
    const/16 v11, 0x13

    invoke-virtual {v2, v10, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    aput v12, v6, v11

    .line 1375
    goto/16 :goto_139

    .line 1371
    :pswitch_6e
    const/16 v11, 0x12

    invoke-virtual {v2, v10, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    aput v12, v6, v11

    .line 1372
    goto/16 :goto_139

    .line 1368
    :pswitch_78
    invoke-virtual {v2, v10, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    aput v11, v6, v5

    .line 1369
    goto/16 :goto_139

    .line 1365
    :pswitch_80
    const/16 v11, 0x10

    invoke-virtual {v2, v10, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    aput v12, v6, v11

    .line 1366
    goto/16 :goto_139

    .line 1314
    :pswitch_8a
    invoke-virtual {v2, v10, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    iput-boolean v11, p0, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    .line 1315
    goto/16 :goto_139

    .line 1362
    :pswitch_92
    invoke-virtual {v2, v10, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    if-eqz v12, :cond_99

    goto :goto_9a

    :cond_99
    move v11, v1

    :goto_9a
    const/16 v12, 0xf

    aput v11, v6, v12

    .line 1363
    goto/16 :goto_139

    .line 1359
    :pswitch_a0
    invoke-virtual {v2, v10, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    if-eqz v12, :cond_a7

    goto :goto_a8

    :cond_a7
    move v11, v1

    :goto_a8
    const/16 v12, 0xe

    aput v11, v6, v12

    .line 1360
    goto/16 :goto_139

    .line 1356
    :pswitch_ae
    invoke-virtual {v2, v10, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    if-eqz v12, :cond_b5

    goto :goto_b6

    :cond_b5
    move v11, v1

    :goto_b6
    const/16 v12, 0xd

    aput v11, v6, v12

    .line 1357
    goto/16 :goto_139

    .line 1353
    :pswitch_bc
    invoke-virtual {v2, v10, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    if-eqz v12, :cond_c3

    goto :goto_c4

    :cond_c3
    move v11, v1

    :goto_c4
    const/16 v12, 0xc

    aput v11, v6, v12

    .line 1354
    goto/16 :goto_139

    .line 1350
    :pswitch_ca
    invoke-virtual {v2, v10, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    if-eqz v12, :cond_d1

    goto :goto_d2

    :cond_d1
    move v11, v1

    :goto_d2
    const/16 v12, 0xb

    aput v11, v6, v12

    .line 1351
    goto/16 :goto_139

    .line 1347
    :pswitch_d8
    invoke-virtual {v2, v10, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    if-eqz v12, :cond_df

    goto :goto_e0

    :cond_df
    move v11, v1

    :goto_e0
    const/16 v12, 0xa

    aput v11, v6, v12

    .line 1348
    goto :goto_139

    .line 1344
    :pswitch_e5
    invoke-virtual {v2, v10, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    if-eqz v12, :cond_ec

    goto :goto_ed

    :cond_ec
    move v11, v1

    :goto_ed
    const/16 v12, 0x9

    aput v11, v6, v12

    .line 1345
    goto :goto_139

    .line 1341
    :pswitch_f2
    const/16 v11, 0x8

    invoke-virtual {v2, v10, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    aput v12, v6, v11

    .line 1342
    goto :goto_139

    .line 1338
    :pswitch_fb
    const/4 v11, 0x7

    invoke-virtual {v2, v10, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    aput v12, v6, v11

    .line 1339
    goto :goto_139

    .line 1335
    :pswitch_103
    const/4 v11, 0x6

    invoke-virtual {v2, v10, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    aput v12, v6, v11

    .line 1336
    goto :goto_139

    .line 1332
    :pswitch_10b
    const/4 v11, 0x5

    invoke-virtual {v2, v10, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    aput v12, v6, v11

    .line 1333
    goto :goto_139

    .line 1329
    :pswitch_113
    const/4 v11, 0x4

    invoke-virtual {v2, v10, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    aput v12, v6, v11

    .line 1330
    goto :goto_139

    .line 1326
    :pswitch_11b
    const/4 v11, 0x3

    invoke-virtual {v2, v10, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    aput v12, v6, v11

    .line 1327
    goto :goto_139

    .line 1323
    :pswitch_123
    const/4 v11, 0x2

    invoke-virtual {v2, v10, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    aput v12, v6, v11

    .line 1324
    goto :goto_139

    .line 1320
    :pswitch_12b
    invoke-virtual {v2, v10, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    aput v11, v6, v4

    .line 1321
    goto :goto_139

    .line 1317
    :pswitch_132
    invoke-virtual {v2, v10, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    aput v11, v6, v1

    .line 1318
    nop

    .line 1310
    .end local v10    # "attr":I
    :goto_139
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3c

    .line 1384
    .end local v9    # "i":I
    :cond_13d
    iput-boolean v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1385
    invoke-static {v6, v1, v7, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1387
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 1388
    return-void

    :pswitch_data_146
    .packed-switch 0x0
        :pswitch_132
        :pswitch_12b
        :pswitch_123
        :pswitch_11b
        :pswitch_113
        :pswitch_10b
        :pswitch_103
        :pswitch_fb
        :pswitch_f2
        :pswitch_e5
        :pswitch_d8
        :pswitch_ca
        :pswitch_bc
        :pswitch_ae
        :pswitch_a0
        :pswitch_92
        :pswitch_8a
        :pswitch_80
        :pswitch_78
        :pswitch_6e
        :pswitch_64
        :pswitch_56
        :pswitch_48
    .end packed-switch
.end method

.method public constructor whitelist <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1398
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1239
    const/16 v0, 0x16

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 1268
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    .line 1285
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1286
    iput-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 1399
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .registers 4
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1405
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1239
    const/16 v0, 0x16

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 1268
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    .line 1285
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1286
    iput-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 1406
    return-void
.end method

.method public constructor whitelist <init>(Landroid/widget/RelativeLayout$LayoutParams;)V
    .registers 6
    .param p1, "source"    # Landroid/widget/RelativeLayout$LayoutParams;

    .line 1415
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1239
    const/16 v0, 0x16

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 1268
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    .line 1285
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1286
    iput-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 1417
    iget-boolean v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    iput-boolean v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 1418
    iget-boolean v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    iput-boolean v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1419
    iget-boolean v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    iput-boolean v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    .line 1421
    iget-object v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    invoke-static {v2, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1422
    iget-object v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    invoke-static {v2, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1424
    return-void
.end method

.method private greylist-max-o hasRelativeRules()Z
    .registers 3

    .line 1525
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/16 v1, 0x10

    aget v0, v0, v1

    if-nez v0, :cond_33

    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/16 v1, 0x11

    aget v0, v0, v1

    if-nez v0, :cond_33

    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/16 v1, 0x12

    aget v0, v0, v1

    if-nez v0, :cond_33

    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/16 v1, 0x13

    aget v0, v0, v1

    if-nez v0, :cond_33

    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/16 v1, 0x14

    aget v0, v0, v1

    if-nez v0, :cond_33

    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/16 v1, 0x15

    aget v0, v0, v1

    if-eqz v0, :cond_31

    goto :goto_33

    :cond_31
    const/4 v0, 0x0

    goto :goto_34

    :cond_33
    :goto_33
    const/4 v0, 0x1

    :goto_34
    return v0
.end method

.method private greylist-max-o isRelativeRule(I)Z
    .registers 3
    .param p1, "rule"    # I

    .line 1531
    const/16 v0, 0x10

    if-eq p1, v0, :cond_1b

    const/16 v0, 0x11

    if-eq p1, v0, :cond_1b

    const/16 v0, 0x12

    if-eq p1, v0, :cond_1b

    const/16 v0, 0x13

    if-eq p1, v0, :cond_1b

    const/16 v0, 0x14

    if-eq p1, v0, :cond_1b

    const/16 v0, 0x15

    if-ne p1, v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    :goto_1c
    return v0
.end method

.method private greylist-max-o resolveRules(I)V
    .registers 20
    .param p1, "layoutDirection"    # I

    .line 1550
    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move/from16 v3, p1

    if-ne v3, v2, :cond_a

    move v4, v2

    goto :goto_b

    :cond_a
    move v4, v1

    .line 1553
    .local v4, "isLayoutRtl":Z
    :goto_b
    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    iget-object v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v7, 0x16

    invoke-static {v5, v1, v6, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1556
    iget-boolean v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    const/16 v6, 0xb

    const/16 v7, 0x9

    const/4 v8, 0x7

    const/4 v9, 0x5

    const/16 v10, 0x15

    const/16 v11, 0x14

    const/16 v12, 0x11

    const/16 v13, 0x10

    const/16 v14, 0x13

    const/16 v15, 0x12

    if-eqz v5, :cond_c4

    .line 1557
    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v5, v5, v15

    if-eqz v5, :cond_48

    .line 1558
    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v5, v5, v9

    if-nez v5, :cond_41

    .line 1561
    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    move/from16 v16, v2

    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v2, v2, v15

    aput v2, v5, v9

    goto :goto_43

    .line 1558
    :cond_41
    move/from16 v16, v2

    .line 1563
    :goto_43
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v1, v2, v15

    goto :goto_4a

    .line 1557
    :cond_48
    move/from16 v16, v2

    .line 1566
    :goto_4a
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v2, v2, v14

    if-eqz v2, :cond_62

    .line 1567
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v2, v2, v8

    if-nez v2, :cond_5e

    .line 1570
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v5, v5, v14

    aput v5, v2, v8

    .line 1572
    :cond_5e
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v1, v2, v14

    .line 1575
    :cond_62
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v2, v2, v13

    if-eqz v2, :cond_7a

    .line 1576
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v2, v2, v1

    if-nez v2, :cond_76

    .line 1579
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v5, v5, v13

    aput v5, v2, v1

    .line 1581
    :cond_76
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v1, v2, v13

    .line 1584
    :cond_7a
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v2, v2, v12

    if-eqz v2, :cond_92

    .line 1585
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v2, v2, v16

    if-nez v2, :cond_8e

    .line 1588
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v5, v5, v12

    aput v5, v2, v16

    .line 1590
    :cond_8e
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v1, v2, v12

    .line 1593
    :cond_92
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v2, v2, v11

    if-eqz v2, :cond_aa

    .line 1594
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v2, v2, v7

    if-nez v2, :cond_a6

    .line 1597
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v5, v5, v11

    aput v5, v2, v7

    .line 1599
    :cond_a6
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v1, v2, v11

    .line 1602
    :cond_aa
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v2, v2, v10

    if-eqz v2, :cond_1b5

    .line 1603
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v2, v2, v6

    if-nez v2, :cond_be

    .line 1606
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v5, v5, v10

    aput v5, v2, v6

    .line 1608
    :cond_be
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v1, v2, v10

    goto/16 :goto_1b5

    .line 1612
    :cond_c4
    move/from16 v16, v2

    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v2, v2, v15

    if-nez v2, :cond_d2

    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v2, v2, v14

    if-eqz v2, :cond_e6

    :cond_d2
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v2, v2, v9

    if-nez v2, :cond_de

    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v2, v2, v8

    if-eqz v2, :cond_e6

    .line 1615
    :cond_de
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v1, v2, v9

    .line 1616
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v1, v2, v8

    .line 1618
    :cond_e6
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v2, v2, v15

    if-eqz v2, :cond_100

    .line 1620
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    if-eqz v4, :cond_f2

    move v5, v8

    goto :goto_f3

    :cond_f2
    move v5, v9

    :goto_f3
    move/from16 v17, v6

    iget-object v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v6, v6, v15

    aput v6, v2, v5

    .line 1621
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v1, v2, v15

    goto :goto_102

    .line 1618
    :cond_100
    move/from16 v17, v6

    .line 1623
    :goto_102
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v2, v2, v14

    if-eqz v2, :cond_117

    .line 1625
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    if-eqz v4, :cond_10d

    move v8, v9

    :cond_10d
    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v5, v5, v14

    aput v5, v2, v8

    .line 1626
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v1, v2, v14

    .line 1629
    :cond_117
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v2, v2, v13

    if-nez v2, :cond_123

    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v2, v2, v12

    if-eqz v2, :cond_137

    :cond_123
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v2, v2, v1

    if-nez v2, :cond_12f

    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v2, v2, v16

    if-eqz v2, :cond_137

    .line 1632
    :cond_12f
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v1, v2, v1

    .line 1633
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v1, v2, v16

    .line 1635
    :cond_137
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v2, v2, v13

    if-eqz v2, :cond_14f

    .line 1637
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    if-eqz v4, :cond_144

    move/from16 v5, v16

    goto :goto_145

    :cond_144
    move v5, v1

    :goto_145
    iget-object v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v6, v6, v13

    aput v6, v2, v5

    .line 1638
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v1, v2, v13

    .line 1640
    :cond_14f
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v2, v2, v12

    if-eqz v2, :cond_165

    .line 1642
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    if-eqz v4, :cond_15b

    move/from16 v16, v1

    :cond_15b
    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v5, v5, v12

    aput v5, v2, v16

    .line 1643
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v1, v2, v12

    .line 1646
    :cond_165
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v2, v2, v11

    if-nez v2, :cond_171

    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v2, v2, v10

    if-eqz v2, :cond_185

    :cond_171
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v2, v2, v7

    if-nez v2, :cond_17d

    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v2, v2, v17

    if-eqz v2, :cond_185

    .line 1649
    :cond_17d
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v1, v2, v7

    .line 1650
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v1, v2, v17

    .line 1652
    :cond_185
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v2, v2, v11

    if-eqz v2, :cond_19d

    .line 1654
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    if-eqz v4, :cond_192

    move/from16 v5, v17

    goto :goto_193

    :cond_192
    move v5, v7

    :goto_193
    iget-object v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v6, v6, v11

    aput v6, v2, v5

    .line 1655
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v1, v2, v11

    .line 1657
    :cond_19d
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v2, v2, v10

    if-eqz v2, :cond_1b5

    .line 1659
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    if-eqz v4, :cond_1a9

    move v6, v7

    goto :goto_1ab

    :cond_1a9
    move/from16 v6, v17

    :goto_1ab
    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v5, v5, v10

    aput v5, v2, v6

    .line 1660
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v1, v2, v10

    .line 1664
    :cond_1b5
    :goto_1b5
    iput-boolean v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1665
    iput-boolean v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mNeedsLayoutResolution:Z

    .line 1666
    return-void
.end method

.method private greylist-max-o shouldResolveLayoutDirection(I)Z
    .registers 3
    .param p1, "layoutDirection"    # I

    .line 1719
    iget-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mNeedsLayoutResolution:Z

    if-nez v0, :cond_a

    invoke-direct {p0}, Landroid/widget/RelativeLayout$LayoutParams;->hasRelativeRules()Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_a
    iget-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    if-nez v0, :cond_17

    .line 1720
    invoke-virtual {p0}, Landroid/widget/RelativeLayout$LayoutParams;->getLayoutDirection()I

    move-result v0

    if-eq p1, v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    .line 1719
    :goto_18
    return v0
.end method


# virtual methods
.method public whitelist addRule(I)V
    .registers 3
    .param p1, "verb"    # I

    .line 1452
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1453
    return-void
.end method

.method public whitelist addRule(II)V
    .registers 5
    .param p1, "verb"    # I
    .param p2, "subject"    # I

    .line 1478
    iget-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mNeedsLayoutResolution:Z

    const/4 v1, 0x1

    if-nez v0, :cond_15

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->isRelativeRule(I)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    aget v0, v0, p1

    if-eqz v0, :cond_15

    if-nez p2, :cond_15

    .line 1480
    iput-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mNeedsLayoutResolution:Z

    .line 1483
    :cond_15
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput p2, v0, p1

    .line 1484
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    aput p2, v0, p1

    .line 1485
    iput-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1486
    return-void
.end method

.method public whitelist debug(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "output"    # Ljava/lang/String;

    .line 1428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ViewGroup.LayoutParams={ width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->sizeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1429
    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->sizeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1428
    return-object v0
.end method

.method protected greylist-max-o encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .registers 4
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .line 1726
    invoke-super {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 1727
    const-string v0, "layout:alignWithParent"

    iget-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 1728
    return-void
.end method

.method public whitelist getRule(I)I
    .registers 3
    .param p1, "verb"    # I

    .line 1521
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v0, v0, p1

    return v0
.end method

.method public whitelist getRules()[I
    .registers 2

    .line 1696
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    return-object v0
.end method

.method public greylist-max-o getRules(I)[I
    .registers 3
    .param p1, "layoutDirection"    # I

    .line 1683
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->resolveLayoutDirection(I)V

    .line 1684
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    return-object v0
.end method

.method public whitelist removeRule(I)V
    .registers 3
    .param p1, "verb"    # I

    .line 1505
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1506
    return-void
.end method

.method public whitelist resolveLayoutDirection(I)V
    .registers 3
    .param p1, "layoutDirection"    # I

    .line 1710
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->shouldResolveLayoutDirection(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1711
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->resolveRules(I)V

    .line 1715
    :cond_9
    invoke-super {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->resolveLayoutDirection(I)V

    .line 1716
    return-void
.end method
