.class Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;
.super Landroid/widget/BaseAdapter;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChooserRowAdapter"
.end annotation


# instance fields
.field private mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

.field private final mColumnCount:I

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mServiceTargetScale:[Lcom/android/internal/app/ChooserActivity$RowScale;

.field final synthetic this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method static synthetic -get0(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)Landroid/view/animation/Interpolator;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mInterpolator:Landroid/view/animation/Interpolator;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)[Lcom/android/internal/app/ChooserActivity$RowScale;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mServiceTargetScale:[Lcom/android/internal/app/ChooserActivity$RowScale;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;[Lcom/android/internal/app/ChooserActivity$RowScale;)[Lcom/android/internal/app/ChooserActivity$RowScale;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mServiceTargetScale:[Lcom/android/internal/app/ChooserActivity$RowScale;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;I)F
    .locals 1
    .param p1, "rowPosition"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getRowScale(I)F

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public constructor <init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserActivity;
    .param p2, "wrappedAdapter"    # Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    #@0
    .prologue
    .line 1124
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    #@2
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    #@5
    .line 1120
    const/4 v0, 0x4

    #@6
    iput v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mColumnCount:I

    #@8
    .line 1125
    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    #@a
    .line 1126
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    #@10
    .line 1129
    const v0, 0x10c0005

    #@13
    .line 1128
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mInterpolator:Landroid/view/animation/Interpolator;

    #@19
    .line 1131
    new-instance v0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;

    #@1b
    invoke-direct {v0, p0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;-><init>(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)V

    #@1e
    invoke-virtual {p2, v0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    #@21
    .line 1124
    return-void
.end method

.method private getRowScale(I)F
    .locals 4
    .param p1, "rowPosition"    # I

    #@0
    .prologue
    .line 1183
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getCallerTargetRowCount()I

    #@3
    move-result v1

    #@4
    .line 1184
    .local v1, "start":I
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getServiceTargetRowCount()I

    #@7
    move-result v2

    #@8
    add-int v0, v1, v2

    #@a
    .line 1185
    .local v0, "end":I
    if-lt p1, v1, :cond_0

    #@c
    if-ge p1, v0, :cond_0

    #@e
    .line 1186
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mServiceTargetScale:[Lcom/android/internal/app/ChooserActivity$RowScale;

    #@10
    sub-int v3, p1, v1

    #@12
    aget-object v2, v2, v3

    #@14
    invoke-virtual {v2}, Lcom/android/internal/app/ChooserActivity$RowScale;->get()F

    #@17
    move-result v2

    #@18
    return v2

    #@19
    .line 1188
    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    #@1b
    return v2
.end method


# virtual methods
.method bindViewHolder(ILcom/android/internal/app/ChooserActivity$RowViewHolder;)V
    .locals 11
    .param p1, "rowPosition"    # I
    .param p2, "holder"    # Lcom/android/internal/app/ChooserActivity$RowViewHolder;

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    .line 1286
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getFirstRowPosition(I)I

    #@5
    move-result v3

    #@6
    .line 1287
    .local v3, "start":I
    iget-object v6, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    #@8
    invoke-virtual {v6, v3}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getPositionTargetType(I)I

    #@b
    move-result v4

    #@c
    .line 1289
    .local v4, "startType":I
    add-int/lit8 v6, v3, 0x4

    #@e
    add-int/lit8 v0, v6, -0x1

    #@10
    .line 1290
    .local v0, "end":I
    :goto_0
    iget-object v6, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    #@12
    invoke-virtual {v6, v0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getPositionTargetType(I)I

    #@15
    move-result v6

    #@16
    if-eq v6, v4, :cond_0

    #@18
    if-lt v0, v3, :cond_0

    #@1a
    .line 1291
    add-int/lit8 v0, v0, -0x1

    #@1c
    goto :goto_0

    #@1d
    .line 1294
    :cond_0
    if-ne v4, v10, :cond_2

    #@1f
    .line 1295
    iget-object v6, p2, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    #@21
    .line 1296
    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    #@23
    const v8, 0x1060071

    #@26
    invoke-virtual {v7, v8}, Lcom/android/internal/app/ChooserActivity;->getColor(I)I

    #@29
    move-result v7

    #@2a
    .line 1295
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    #@2d
    .line 1301
    :goto_1
    iget-object v6, p2, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    #@2f
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@32
    move-result-object v6

    #@33
    iget v2, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@35
    .line 1302
    .local v2, "oldHeight":I
    iget-object v6, p2, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    #@37
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3a
    move-result-object v6

    #@3b
    .line 1303
    iget v7, p2, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->measuredRowHeight:I

    #@3d
    int-to-float v7, v7

    #@3e
    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getRowScale(I)F

    #@41
    move-result v8

    #@42
    mul-float/2addr v7, v8

    #@43
    float-to-int v7, v7

    #@44
    .line 1302
    invoke-static {v10, v7}, Ljava/lang/Math;->max(II)I

    #@47
    move-result v7

    #@48
    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@4a
    .line 1304
    iget-object v6, p2, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    #@4c
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@4f
    move-result-object v6

    #@50
    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@52
    if-eq v6, v2, :cond_1

    #@54
    .line 1305
    iget-object v6, p2, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    #@56
    invoke-virtual {v6}, Landroid/view/ViewGroup;->requestLayout()V

    #@59
    .line 1308
    :cond_1
    const/4 v1, 0x0

    #@5a
    .local v1, "i":I
    :goto_2
    const/4 v6, 0x4

    #@5b
    if-ge v1, v6, :cond_4

    #@5d
    .line 1309
    iget-object v6, p2, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->cells:[Landroid/view/View;

    #@5f
    aget-object v5, v6, v1

    #@61
    .line 1310
    .local v5, "v":Landroid/view/View;
    add-int v6, v3, v1

    #@63
    if-gt v6, v0, :cond_3

    #@65
    .line 1311
    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    #@68
    .line 1312
    iget-object v6, p2, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->itemIndices:[I

    #@6a
    add-int v7, v3, v1

    #@6c
    aput v7, v6, v1

    #@6e
    .line 1313
    iget-object v6, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    #@70
    iget-object v7, p2, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->itemIndices:[I

    #@72
    aget v7, v7, v1

    #@74
    invoke-virtual {v6, v7, v5}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->bindView(ILandroid/view/View;)V

    #@77
    .line 1308
    :goto_3
    add-int/lit8 v1, v1, 0x1

    #@79
    goto :goto_2

    #@7a
    .line 1298
    .end local v1    # "i":I
    .end local v2    # "oldHeight":I
    .end local v5    # "v":Landroid/view/View;
    :cond_2
    iget-object v6, p2, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    #@7c
    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    #@7f
    goto :goto_1

    #@80
    .line 1315
    .restart local v1    # "i":I
    .restart local v2    # "oldHeight":I
    .restart local v5    # "v":Landroid/view/View;
    :cond_3
    const/16 v6, 0x8

    #@82
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    #@85
    goto :goto_3

    #@86
    .line 1285
    .end local v5    # "v":Landroid/view/View;
    :cond_4
    return-void
.end method

.method createViewHolder(Landroid/view/ViewGroup;)Lcom/android/internal/app/ChooserActivity$RowViewHolder;
    .locals 12
    .param p1, "parent"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    const/4 v11, 0x4

    #@1
    const/4 v10, -0x1

    #@2
    const/4 v9, 0x0

    #@3
    .line 1235
    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    #@5
    const v8, 0x1090045

    #@8
    invoke-virtual {v7, v8, p1, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@b
    move-result-object v4

    #@c
    check-cast v4, Landroid/view/ViewGroup;

    #@e
    .line 1237
    .local v4, "row":Landroid/view/ViewGroup;
    new-instance v1, Lcom/android/internal/app/ChooserActivity$RowViewHolder;

    #@10
    invoke-direct {v1, v4, v11}, Lcom/android/internal/app/ChooserActivity$RowViewHolder;-><init>(Landroid/view/ViewGroup;I)V

    #@13
    .line 1238
    .local v1, "holder":Lcom/android/internal/app/ChooserActivity$RowViewHolder;
    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@16
    move-result v5

    #@17
    .line 1240
    .local v5, "spec":I
    const/4 v2, 0x0

    #@18
    .local v2, "i":I
    :goto_0
    if-ge v2, v11, :cond_1

    #@1a
    .line 1241
    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    #@1c
    invoke-virtual {v7, v4}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    #@1f
    move-result-object v6

    #@20
    .line 1242
    .local v6, "v":Landroid/view/View;
    move v0, v2

    #@21
    .line 1243
    .local v0, "column":I
    new-instance v7, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$2;

    #@23
    invoke-direct {v7, p0, v1, v0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$2;-><init>(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;Lcom/android/internal/app/ChooserActivity$RowViewHolder;I)V

    #@26
    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@29
    .line 1249
    new-instance v7, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$3;

    #@2b
    invoke-direct {v7, p0, v1, v0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$3;-><init>(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;Lcom/android/internal/app/ChooserActivity$RowViewHolder;I)V

    #@2e
    invoke-virtual {v6, v7}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    #@31
    .line 1258
    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    #@34
    .line 1259
    iget-object v7, v1, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->cells:[Landroid/view/View;

    #@36
    aput-object v6, v7, v2

    #@38
    .line 1262
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3b
    move-result-object v3

    #@3c
    .line 1263
    .local v3, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v6, v5, v5}, Landroid/view/View;->measure(II)V

    #@3f
    .line 1264
    if-nez v3, :cond_0

    #@41
    .line 1265
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    #@43
    .end local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    #@46
    move-result v7

    #@47
    invoke-direct {v3, v10, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@4a
    .line 1266
    .restart local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@4d
    .line 1240
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@4f
    goto :goto_0

    #@50
    .line 1268
    :cond_0
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    #@53
    move-result v7

    #@54
    iput v7, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@56
    goto :goto_1

    #@57
    .line 1273
    .end local v0    # "column":I
    .end local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v6    # "v":Landroid/view/View;
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->measure()V

    #@5a
    .line 1274
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@5d
    move-result-object v3

    #@5e
    .line 1275
    .restart local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_2

    #@60
    .line 1276
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    #@62
    .end local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v7, v1, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->measuredRowHeight:I

    #@64
    invoke-direct {v3, v10, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@67
    .line 1277
    .restart local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@6a
    .line 1281
    :goto_2
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    #@6d
    .line 1282
    return-object v1

    #@6e
    .line 1279
    :cond_2
    iget v7, v1, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->measuredRowHeight:I

    #@70
    iput v7, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@72
    goto :goto_2
.end method

.method public getCallerTargetRowCount()I
    .locals 2

    #@0
    .prologue
    .line 1202
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCallerTargetCount()I

    #@5
    move-result v0

    #@6
    int-to-float v0, v0

    #@7
    const/high16 v1, 0x40800000    # 4.0f

    #@9
    div-float/2addr v0, v1

    #@a
    float-to-double v0, v0

    #@b
    .line 1201
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    #@e
    move-result-wide v0

    #@f
    double-to-int v0, v0

    #@10
    return v0
.end method

.method public getCount()I
    .locals 4

    #@0
    .prologue
    .line 1194
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getCallerTargetRowCount()I

    #@3
    move-result v0

    #@4
    .line 1195
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getServiceTargetRowCount()I

    #@7
    move-result v1

    #@8
    .line 1194
    add-int/2addr v0, v1

    #@9
    int-to-double v0, v0

    #@a
    .line 1196
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    #@c
    invoke-virtual {v2}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getStandardTargetCount()I

    #@f
    move-result v2

    #@10
    int-to-float v2, v2

    #@11
    const/high16 v3, 0x40800000    # 4.0f

    #@13
    div-float/2addr v2, v3

    #@14
    float-to-double v2, v2

    #@15
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    #@18
    move-result-wide v2

    #@19
    .line 1193
    add-double/2addr v0, v2

    #@1a
    double-to-int v0, v0

    #@1b
    return v0
.end method

.method getFirstRowPosition(I)I
    .locals 7
    .param p1, "row"    # I

    #@0
    .prologue
    const/high16 v6, 0x40800000    # 4.0f

    #@2
    .line 1321
    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    #@4
    invoke-virtual {v4}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCallerTargetCount()I

    #@7
    move-result v0

    #@8
    .line 1322
    .local v0, "callerCount":I
    int-to-float v4, v0

    #@9
    div-float/2addr v4, v6

    #@a
    float-to-double v4, v4

    #@b
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    #@e
    move-result-wide v4

    #@f
    double-to-int v1, v4

    #@10
    .line 1324
    .local v1, "callerRows":I
    if-ge p1, v1, :cond_0

    #@12
    .line 1325
    mul-int/lit8 v4, p1, 0x4

    #@14
    return v4

    #@15
    .line 1328
    :cond_0
    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    #@17
    invoke-virtual {v4}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getServiceTargetCount()I

    #@1a
    move-result v2

    #@1b
    .line 1329
    .local v2, "serviceCount":I
    int-to-float v4, v2

    #@1c
    div-float/2addr v4, v6

    #@1d
    float-to-double v4, v4

    #@1e
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    #@21
    move-result-wide v4

    #@22
    double-to-int v3, v4

    #@23
    .line 1331
    .local v3, "serviceRows":I
    add-int v4, v1, v3

    #@25
    if-ge p1, v4, :cond_1

    #@27
    .line 1332
    sub-int v4, p1, v1

    #@29
    mul-int/lit8 v4, v4, 0x4

    #@2b
    add-int/2addr v4, v0

    #@2c
    return v4

    #@2d
    .line 1335
    :cond_1
    add-int v4, v0, v2

    #@2f
    .line 1336
    sub-int v5, p1, v1

    #@31
    sub-int/2addr v5, v3

    #@32
    mul-int/lit8 v5, v5, 0x4

    #@34
    .line 1335
    add-int/2addr v4, v5

    #@35
    return v4
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    #@0
    .prologue
    .line 1213
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    #@0
    .prologue
    .line 1218
    int-to-long v0, p1

    #@1
    return-wide v0
.end method

.method public getServiceTargetRowCount()I
    .locals 2

    #@0
    .prologue
    .line 1207
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getServiceTargetCount()I

    #@5
    move-result v0

    #@6
    int-to-float v0, v0

    #@7
    const/high16 v1, 0x40800000    # 4.0f

    #@9
    div-float/2addr v0, v1

    #@a
    float-to-double v0, v0

    #@b
    .line 1206
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    #@e
    move-result-wide v0

    #@f
    double-to-int v0, v0

    #@10
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 1224
    if-nez p2, :cond_0

    #@2
    .line 1225
    invoke-virtual {p0, p3}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->createViewHolder(Landroid/view/ViewGroup;)Lcom/android/internal/app/ChooserActivity$RowViewHolder;

    #@5
    move-result-object v0

    #@6
    .line 1229
    .local v0, "holder":Lcom/android/internal/app/ChooserActivity$RowViewHolder;
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->bindViewHolder(ILcom/android/internal/app/ChooserActivity$RowViewHolder;)V

    #@9
    .line 1231
    iget-object v1, v0, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    #@b
    return-object v1

    #@c
    .line 1227
    .end local v0    # "holder":Lcom/android/internal/app/ChooserActivity$RowViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/internal/app/ChooserActivity$RowViewHolder;

    #@12
    .restart local v0    # "holder":Lcom/android/internal/app/ChooserActivity$RowViewHolder;
    goto :goto_0
.end method
