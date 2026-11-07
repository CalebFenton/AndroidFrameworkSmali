.class public final Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mColumnIndex:I

.field private blacklist mColumnSpan:I

.field private blacklist mColumnTitle:Ljava/lang/String;

.field private blacklist mHeading:Z

.field private blacklist mRowIndex:I

.field private blacklist mRowSpan:I

.field private blacklist mRowTitle:Ljava/lang/String;

.field private blacklist mSelected:Z


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 7707
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7708
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    .registers 3

    .line 7811
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo-IA;)V

    .line 7812
    .local v0, "collectionItemInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;->mHeading:Z

    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->-$$Nest$fputmHeading(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;Z)V

    .line 7813
    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;->mColumnIndex:I

    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->-$$Nest$fputmColumnIndex(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;I)V

    .line 7814
    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;->mRowIndex:I

    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->-$$Nest$fputmRowIndex(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;I)V

    .line 7815
    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;->mColumnSpan:I

    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->-$$Nest$fputmColumnSpan(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;I)V

    .line 7816
    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;->mRowSpan:I

    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->-$$Nest$fputmRowSpan(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;I)V

    .line 7817
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;->mSelected:Z

    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->-$$Nest$fputmSelected(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;Z)V

    .line 7818
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;->mRowTitle:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->-$$Nest$fputmRowTitle(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;Ljava/lang/String;)V

    .line 7819
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;->mColumnTitle:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->-$$Nest$fputmColumnTitle(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;Ljava/lang/String;)V

    .line 7821
    return-object v0
.end method

.method public whitelist setColumnIndex(I)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;
    .registers 2
    .param p1, "columnIndex"    # I

    .line 7730
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;->mColumnIndex:I

    .line 7731
    return-object p0
.end method

.method public whitelist setColumnSpan(I)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;
    .registers 2
    .param p1, "columnSpan"    # I

    .line 7754
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;->mColumnSpan:I

    .line 7755
    return-object p0
.end method

.method public whitelist setColumnTitle(Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;
    .registers 2
    .param p1, "columnTitle"    # Ljava/lang/String;

    .line 7802
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;->mColumnTitle:Ljava/lang/String;

    .line 7803
    return-object p0
.end method

.method public whitelist setHeading(Z)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;
    .registers 2
    .param p1, "heading"    # Z

    .line 7718
    iput-boolean p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;->mHeading:Z

    .line 7719
    return-object p0
.end method

.method public whitelist setRowIndex(I)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;
    .registers 2
    .param p1, "rowIndex"    # I

    .line 7742
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;->mRowIndex:I

    .line 7743
    return-object p0
.end method

.method public whitelist setRowSpan(I)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;
    .registers 2
    .param p1, "rowSpan"    # I

    .line 7766
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;->mRowSpan:I

    .line 7767
    return-object p0
.end method

.method public whitelist setRowTitle(Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;
    .registers 2
    .param p1, "rowTitle"    # Ljava/lang/String;

    .line 7790
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;->mRowTitle:Ljava/lang/String;

    .line 7791
    return-object p0
.end method

.method public whitelist setSelected(Z)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;
    .registers 2
    .param p1, "selected"    # Z

    .line 7778
    iput-boolean p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;->mSelected:Z

    .line 7779
    return-object p0
.end method
