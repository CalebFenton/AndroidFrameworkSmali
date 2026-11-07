.class public final Landroid/widget/RelativeLayout$LayoutParams$InspectionCompanion;
.super Ljava/lang/Object;
.source "RelativeLayout.java"

# interfaces
.implements Landroid/view/inspector/InspectionCompanion;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RelativeLayout$LayoutParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InspectionCompanion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/inspector/InspectionCompanion<",
        "Landroid/widget/RelativeLayout$LayoutParams;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mAboveId:I

.field private blacklist mAlignBaselineId:I

.field private blacklist mAlignBottomId:I

.field private blacklist mAlignEndId:I

.field private blacklist mAlignLeftId:I

.field private blacklist mAlignParentBottomId:I

.field private blacklist mAlignParentEndId:I

.field private blacklist mAlignParentLeftId:I

.field private blacklist mAlignParentRightId:I

.field private blacklist mAlignParentStartId:I

.field private blacklist mAlignParentTopId:I

.field private blacklist mAlignRightId:I

.field private blacklist mAlignStartId:I

.field private blacklist mAlignTopId:I

.field private blacklist mAlignWithParentIfMissingId:I

.field private blacklist mBelowId:I

.field private blacklist mCenterHorizontalId:I

.field private blacklist mCenterInParentId:I

.field private blacklist mCenterVerticalId:I

.field private blacklist mPropertiesMapped:Z

.field private blacklist mToEndOfId:I

.field private blacklist mToLeftOfId:I

.field private blacklist mToRightOfId:I

.field private blacklist mToStartOfId:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 1731
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .registers 4
    .param p1, "propertyMapper"    # Landroid/view/inspector/PropertyMapper;

    .line 1761
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams$InspectionCompanion;->mPropertiesMapped:Z

    .line 1763
    const-string v0, "layout_above"

    const v1, 0x1010184

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapResourceId(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams$InspectionCompanion;->mAboveId:I

    .line 1765
    const-string v0, "layout_alignBaseline"

    const v1, 0x1010186

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapResourceId(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams$InspectionCompanion;->mAlignBaselineId:I

    .line 1768
    const-string v0, "layout_alignBottom"

    const v1, 0x101018a

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapResourceId(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams$InspectionCompanion;->mAlignBottomId:I

    .line 1771
    const-string v0, "layout_alignEnd"

    const v1, 0x10103ba

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapResourceId(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams$InspectionCompanion;->mAlignEndId:I

    .line 1774
    const-string v0, "layout_alignLeft"

    const v1, 0x1010187

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapResourceId(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams$InspectionCompanion;->mAlignLeftId:I

    .line 1777
    const-string v0, "layout_alignParentBottom"

    const v1, 0x101018e

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams$InspectionCompanion;->mAlignParentBottomId:I

    .line 1780
    const-string v0, "layout_alignParentEnd"

    const v1, 0x10103bc

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams$InspectionCompanion;->mAlignParentEndId:I

    .line 1783
    const-string v0, "layout_alignParentLeft"

    const v1, 0x101018b

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams$InspectionCompanion;->mAlignParentLeftId:I

    .line 1786
    const-string v0, "layout_alignParentRight"

    const v1, 0x101018d

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams$InspectionCompanion;->mAlignParentRightId:I

    .line 1789
    const-string v0, "layout_alignParentStart"

    const v1, 0x10103bb

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams$InspectionCompanion;->mAlignParentStartId:I

    .line 1792
    const-string v0, "layout_alignParentTop"

    const v1, 0x101018c

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams$InspectionCompanion;->mAlignParentTopId:I

    .line 1795
    const-string v0, "layout_alignRight"

    const v1, 0x1010189

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapResourceId(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams$InspectionCompanion;->mAlignRightId:I

    .line 1798
    const-string v0, "layout_alignStart"

    const v1, 0x10103b9

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapResourceId(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams$InspectionCompanion;->mAlignStartId:I

    .line 1801
    const-string v0, "layout_alignTop"

    const v1, 0x1010188

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapResourceId(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams$InspectionCompanion;->mAlignTopId:I

    .line 1804
    const-string v0, "layout_alignWithParentIfMissing"

    const v1, 0x1010192

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams$InspectionCompanion;->mAlignWithParentIfMissingId:I

    .line 1808
    const-string v0, "layout_below"

    const v1, 0x1010185

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapResourceId(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams$InspectionCompanion;->mBelowId:I

    .line 1810
    const-string v0, "layout_centerHorizontal"

    const v1, 0x1010190

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams$InspectionCompanion;->mCenterHorizontalId:I

    .line 1813
    const-string v0, "layout_centerInParent"

    const v1, 0x101018f

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams$InspectionCompanion;->mCenterInParentId:I

    .line 1816
    const-string v0, "layout_centerVertical"

    const v1, 0x1010191

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams$InspectionCompanion;->mCenterVerticalId:I

    .line 1819
    const-string v0, "layout_toEndOf"

    const v1, 0x10103b8

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapResourceId(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams$InspectionCompanion;->mToEndOfId:I

    .line 1822
    const-string v0, "layout_toLeftOf"

    const v1, 0x1010182

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapResourceId(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams$InspectionCompanion;->mToLeftOfId:I

    .line 1825
    const-string v0, "layout_toRightOf"

    const v1, 0x1010183

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapResourceId(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams$InspectionCompanion;->mToRightOfId:I

    .line 1828
    const-string v0, "layout_toStartOf"

    const v1, 0x10103b7

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapResourceId(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams$InspectionCompanion;->mToStartOfId:I

    .line 1830
    return-void
.end method

.method public blacklist readProperties(Landroid/widget/RelativeLayout$LayoutParams;Landroid/view/inspector/PropertyReader;)V
    .registers 9
    .param p1, "node"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p2, "propertyReader"    # Landroid/view/inspector/PropertyReader;

    .line 1837
    iget-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams$InspectionCompanion;->mPropertiesMapped:Z

    if-eqz v0, :cond_fc

    .line 1841
    invoke-virtual {p1}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v0

    .line 1843
    .local v0, "rules":[I
    iget v1, p0, Landroid/widget/RelativeLayout$LayoutParams$InspectionCompanion;->mAboveId:I

    const/4 v2, 0x2

    aget v2, v0, v2

    invoke-interface {p2, v1, v2}, Landroid/view/inspector/PropertyReader;->readResourceId(II)V

    .line 1844
    iget v1, p0, Landroid/widget/RelativeLayout$LayoutParams$InspectionCompanion;->mAlignBaselineId:I

    const/4 v2, 0x4

    aget v2, v0, v2

    invoke-interface {p2, v1, v2}, Landroid/view/inspector/PropertyReader;->readResourceId(II)V

    .line 1845
    iget v1, p0, Landroid/widget/RelativeLayout$LayoutParams$InspectionCompanion;->mAlignBottomId:I

    const/16 v2, 0x8

    aget v2, v0, v2

    invoke-interface {p2, v1, v2}, Landroid/view/inspector/PropertyReader;->readResourceId(II)V

    .line 1846
    iget v1, p0, Landroid/widget/RelativeLayout$LayoutParams$InspectionCompanion;->mAlignEndId:I

    const/16 v2, 0x13

    aget v2, v0, v2

    invoke-interface {p2, v1, v2}, Landroid/view/inspector/PropertyReader;->readResourceId(II)V

    .line 1847
    iget v1, p0, Landroid/widget/RelativeLayout$LayoutParams$InspectionCompanion;->mAlignLeftId:I

    const/4 v2, 0x5

    aget v2, v0, v2

    invoke-interface {p2, v1, v2}, Landroid/view/inspector/PropertyReader;->readResourceId(II)V

    .line 1848
    iget v1, p0, Landroid/widget/RelativeLayout$LayoutParams$InspectionCompanion;->mAlignParentBottomId:I

    const/16 v2, 0xc

    aget v2, v0, v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_3f

    move v2, v4

    goto :goto_40

    :cond_3f
    move v2, v5

    :goto_40
    invoke-interface {p2, v1, v2}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 1850
    iget v1, p0, Landroid/widget/RelativeLayout$LayoutParams$InspectionCompanion;->mAlignParentEndId:I

    const/16 v2, 0x15

    aget v2, v0, v2

    if-ne v2, v3, :cond_4d

    move v2, v4

    goto :goto_4e

    :cond_4d
    move v2, v5

    :goto_4e
    invoke-interface {p2, v1, v2}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 1851
    iget v1, p0, Landroid/widget/RelativeLayout$LayoutParams$InspectionCompanion;->mAlignParentLeftId:I

    const/16 v2, 0x9

    aget v2, v0, v2

    if-ne v2, v3, :cond_5b

    move v2, v4

    goto :goto_5c

    :cond_5b
    move v2, v5

    :goto_5c
    invoke-interface {p2, v1, v2}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 1852
    iget v1, p0, Landroid/widget/RelativeLayout$LayoutParams$InspectionCompanion;->mAlignParentRightId:I

    const/16 v2, 0xb

    aget v2, v0, v2

    if-ne v2, v3, :cond_69

    move v2, v4

    goto :goto_6a

    :cond_69
    move v2, v5

    :goto_6a
    invoke-interface {p2, v1, v2}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 1853
    iget v1, p0, Landroid/widget/RelativeLayout$LayoutParams$InspectionCompanion;->mAlignParentStartId:I

    const/16 v2, 0x14

    aget v2, v0, v2

    if-ne v2, v3, :cond_77

    move v2, v4

    goto :goto_78

    :cond_77
    move v2, v5

    :goto_78
    invoke-interface {p2, v1, v2}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 1854
    iget v1, p0, Landroid/widget/RelativeLayout$LayoutParams$InspectionCompanion;->mAlignParentTopId:I

    const/16 v2, 0xa

    aget v2, v0, v2

    if-ne v2, v3, :cond_85

    move v2, v4

    goto :goto_86

    :cond_85
    move v2, v5

    :goto_86
    invoke-interface {p2, v1, v2}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 1855
    iget v1, p0, Landroid/widget/RelativeLayout$LayoutParams$InspectionCompanion;->mAlignRightId:I

    const/4 v2, 0x7

    aget v2, v0, v2

    invoke-interface {p2, v1, v2}, Landroid/view/inspector/PropertyReader;->readResourceId(II)V

    .line 1856
    iget v1, p0, Landroid/widget/RelativeLayout$LayoutParams$InspectionCompanion;->mAlignStartId:I

    const/16 v2, 0x12

    aget v2, v0, v2

    invoke-interface {p2, v1, v2}, Landroid/view/inspector/PropertyReader;->readResourceId(II)V

    .line 1857
    iget v1, p0, Landroid/widget/RelativeLayout$LayoutParams$InspectionCompanion;->mAlignTopId:I

    const/4 v2, 0x6

    aget v2, v0, v2

    invoke-interface {p2, v1, v2}, Landroid/view/inspector/PropertyReader;->readResourceId(II)V

    .line 1858
    iget v1, p0, Landroid/widget/RelativeLayout$LayoutParams$InspectionCompanion;->mAlignWithParentIfMissingId:I

    iget-boolean v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    invoke-interface {p2, v1, v2}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 1859
    iget v1, p0, Landroid/widget/RelativeLayout$LayoutParams$InspectionCompanion;->mBelowId:I

    const/4 v2, 0x3

    aget v2, v0, v2

    invoke-interface {p2, v1, v2}, Landroid/view/inspector/PropertyReader;->readResourceId(II)V

    .line 1860
    iget v1, p0, Landroid/widget/RelativeLayout$LayoutParams$InspectionCompanion;->mCenterHorizontalId:I

    const/16 v2, 0xe

    aget v2, v0, v2

    if-ne v2, v3, :cond_bb

    move v2, v4

    goto :goto_bc

    :cond_bb
    move v2, v5

    :goto_bc
    invoke-interface {p2, v1, v2}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 1861
    iget v1, p0, Landroid/widget/RelativeLayout$LayoutParams$InspectionCompanion;->mCenterInParentId:I

    const/16 v2, 0xd

    aget v2, v0, v2

    if-ne v2, v3, :cond_c9

    move v2, v4

    goto :goto_ca

    :cond_c9
    move v2, v5

    :goto_ca
    invoke-interface {p2, v1, v2}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 1862
    iget v1, p0, Landroid/widget/RelativeLayout$LayoutParams$InspectionCompanion;->mCenterVerticalId:I

    const/16 v2, 0xf

    aget v2, v0, v2

    if-ne v2, v3, :cond_d7

    move v2, v4

    goto :goto_d8

    :cond_d7
    move v2, v5

    :goto_d8
    invoke-interface {p2, v1, v2}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 1863
    iget v1, p0, Landroid/widget/RelativeLayout$LayoutParams$InspectionCompanion;->mToEndOfId:I

    const/16 v2, 0x11

    aget v2, v0, v2

    invoke-interface {p2, v1, v2}, Landroid/view/inspector/PropertyReader;->readResourceId(II)V

    .line 1864
    iget v1, p0, Landroid/widget/RelativeLayout$LayoutParams$InspectionCompanion;->mToLeftOfId:I

    aget v2, v0, v5

    invoke-interface {p2, v1, v2}, Landroid/view/inspector/PropertyReader;->readResourceId(II)V

    .line 1865
    iget v1, p0, Landroid/widget/RelativeLayout$LayoutParams$InspectionCompanion;->mToRightOfId:I

    aget v2, v0, v4

    invoke-interface {p2, v1, v2}, Landroid/view/inspector/PropertyReader;->readResourceId(II)V

    .line 1866
    iget v1, p0, Landroid/widget/RelativeLayout$LayoutParams$InspectionCompanion;->mToStartOfId:I

    const/16 v2, 0x10

    aget v2, v0, v2

    invoke-interface {p2, v1, v2}, Landroid/view/inspector/PropertyReader;->readResourceId(II)V

    .line 1867
    return-void

    .line 1838
    .end local v0    # "rules":[I
    :cond_fc
    new-instance v0, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;

    invoke-direct {v0}, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist readProperties(Ljava/lang/Object;Landroid/view/inspector/PropertyReader;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1731
    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, p1, p2}, Landroid/widget/RelativeLayout$LayoutParams$InspectionCompanion;->readProperties(Landroid/widget/RelativeLayout$LayoutParams;Landroid/view/inspector/PropertyReader;)V

    return-void
.end method
