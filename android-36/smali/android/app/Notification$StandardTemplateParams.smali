.class Landroid/app/Notification$StandardTemplateParams;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StandardTemplateParams"
.end annotation


# static fields
.field public static final blacklist DECORATION_MINIMAL:I = 0x1

.field public static final blacklist DECORATION_PARTIAL:I = 0x2

.field public static blacklist VIEW_TYPE_EXPANDED:I

.field public static blacklist VIEW_TYPE_GROUP_HEADER:I

.field public static blacklist VIEW_TYPE_HEADS_UP:I

.field public static blacklist VIEW_TYPE_MINIMIZED:I

.field public static blacklist VIEW_TYPE_NORMAL:I

.field public static blacklist VIEW_TYPE_PUBLIC:I

.field public static blacklist VIEW_TYPE_UNSPECIFIED:I


# instance fields
.field blacklist allowColorization:Z

.field blacklist mAllowTextWithProgress:Z

.field blacklist mCallStyleActions:Z

.field blacklist mHeaderTextSecondary:Ljava/lang/CharSequence;

.field blacklist mHeaderless:Z

.field blacklist mHideActions:Z

.field blacklist mHideAppName:Z

.field blacklist mHideLeftIcon:Z

.field blacklist mHideProgress:Z

.field blacklist mHideRightIcon:Z

.field blacklist mHideSnoozeButton:Z

.field blacklist mHideSubText:Z

.field blacklist mHideTime:Z

.field blacklist mHideTitle:Z

.field blacklist mHighlightExpander:Z

.field blacklist mPromotedPicture:Landroid/graphics/drawable/Icon;

.field blacklist mSubText:Ljava/lang/CharSequence;

.field blacklist mText:Ljava/lang/CharSequence;

.field blacklist mTextViewId:I

.field blacklist mTitle:Ljava/lang/CharSequence;

.field blacklist mTitleViewId:I

.field blacklist mViewType:I

.field greylist-max-o maxRemoteInputHistory:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 14872
    const/4 v0, 0x0

    sput v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_UNSPECIFIED:I

    .line 14873
    const/4 v0, 0x1

    sput v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_NORMAL:I

    .line 14874
    const/4 v0, 0x2

    sput v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_EXPANDED:I

    .line 14875
    const/4 v0, 0x3

    sput v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_HEADS_UP:I

    .line 14876
    const/4 v0, 0x4

    sput v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_MINIMIZED:I

    .line 14877
    const/4 v0, 0x5

    sput v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_PUBLIC:I

    .line 14878
    const/4 v0, 0x6

    sput v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_GROUP_HEADER:I

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 2

    .line 14855
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14880
    sget v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_UNSPECIFIED:I

    iput v0, p0, Landroid/app/Notification$StandardTemplateParams;->mViewType:I

    .line 14900
    const/4 v0, 0x3

    iput v0, p0, Landroid/app/Notification$StandardTemplateParams;->maxRemoteInputHistory:I

    .line 14901
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->allowColorization:Z

    .line 14902
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mHighlightExpander:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/Notification-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/app/Notification$StandardTemplateParams;-><init>()V

    return-void
.end method


# virtual methods
.method final blacklist allowTextWithProgress(Z)Landroid/app/Notification$StandardTemplateParams;
    .registers 2
    .param p1, "allowTextWithProgress"    # Z

    .line 14981
    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->mAllowTextWithProgress:Z

    .line 14982
    return-object p0
.end method

.method final blacklist callStyleActions(Z)Landroid/app/Notification$StandardTemplateParams;
    .registers 2
    .param p1, "callStyleActions"    # Z

    .line 14976
    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->mCallStyleActions:Z

    .line 14977
    return-object p0
.end method

.method public blacklist decorationType(I)Landroid/app/Notification$StandardTemplateParams;
    .registers 4
    .param p1, "decorationType"    # I

    .line 15065
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Notification$StandardTemplateParams;->hideTitle(Z)Landroid/app/Notification$StandardTemplateParams;

    .line 15068
    const/4 v1, 0x0

    if-gt p1, v0, :cond_8

    goto :goto_9

    :cond_8
    move v0, v1

    .line 15069
    .local v0, "hideOtherFields":Z
    :goto_9
    invoke-virtual {p0, v1}, Landroid/app/Notification$StandardTemplateParams;->hideLeftIcon(Z)Landroid/app/Notification$StandardTemplateParams;

    .line 15070
    invoke-virtual {p0, v0}, Landroid/app/Notification$StandardTemplateParams;->hideRightIcon(Z)Landroid/app/Notification$StandardTemplateParams;

    .line 15071
    invoke-virtual {p0, v0}, Landroid/app/Notification$StandardTemplateParams;->hideProgress(Z)Landroid/app/Notification$StandardTemplateParams;

    .line 15072
    invoke-virtual {p0, v0}, Landroid/app/Notification$StandardTemplateParams;->hideActions(Z)Landroid/app/Notification$StandardTemplateParams;

    .line 15073
    return-object p0
.end method

.method final blacklist disallowColorization()Landroid/app/Notification$StandardTemplateParams;
    .registers 2

    .line 15037
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->allowColorization:Z

    .line 15038
    return-object p0
.end method

.method final greylist-max-o fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;
    .registers 4
    .param p1, "b"    # Landroid/app/Notification$Builder;

    .line 15047
    invoke-static {p1}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 15048
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "android.title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/app/Notification$Builder;->-$$Nest$mprocessLegacyText(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification$StandardTemplateParams;->mTitle:Ljava/lang/CharSequence;

    .line 15049
    const-string v1, "android.text"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/app/Notification$Builder;->-$$Nest$mprocessLegacyText(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification$StandardTemplateParams;->mText:Ljava/lang/CharSequence;

    .line 15050
    const-string v1, "android.subText"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification$StandardTemplateParams;->mSubText:Ljava/lang/CharSequence;

    .line 15051
    return-object p0
.end method

.method final blacklist hasTitle()Z
    .registers 2

    .line 14932
    iget-object v0, p0, Landroid/app/Notification$StandardTemplateParams;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mHideTitle:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method final greylist-max-o headerTextSecondary(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;
    .registers 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 15021
    iput-object p1, p0, Landroid/app/Notification$StandardTemplateParams;->mHeaderTextSecondary:Ljava/lang/CharSequence;

    .line 15022
    return-object p0
.end method

.method public blacklist headerless(Z)Landroid/app/Notification$StandardTemplateParams;
    .registers 2
    .param p1, "headerless"    # Z

    .line 14941
    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->mHeaderless:Z

    .line 14942
    return-object p0
.end method

.method final blacklist hideActions(Z)Landroid/app/Notification$StandardTemplateParams;
    .registers 2
    .param p1, "hideActions"    # Z

    .line 14961
    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->mHideActions:Z

    .line 14962
    return-object p0
.end method

.method public blacklist hideAppName(Z)Landroid/app/Notification$StandardTemplateParams;
    .registers 2
    .param p1, "hideAppName"    # Z

    .line 14946
    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->mHideAppName:Z

    .line 14947
    return-object p0
.end method

.method final blacklist hideLeftIcon(Z)Landroid/app/Notification$StandardTemplateParams;
    .registers 2
    .param p1, "hideLeftIcon"    # Z

    .line 15027
    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->mHideLeftIcon:Z

    .line 15028
    return-object p0
.end method

.method final blacklist hideProgress(Z)Landroid/app/Notification$StandardTemplateParams;
    .registers 2
    .param p1, "hideProgress"    # Z

    .line 14966
    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->mHideProgress:Z

    .line 14967
    return-object p0
.end method

.method final blacklist hideRightIcon(Z)Landroid/app/Notification$StandardTemplateParams;
    .registers 2
    .param p1, "hideRightIcon"    # Z

    .line 15032
    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->mHideRightIcon:Z

    .line 15033
    return-object p0
.end method

.method final blacklist hideSnoozeButton(Z)Landroid/app/Notification$StandardTemplateParams;
    .registers 2
    .param p1, "hideSnoozeButton"    # Z

    .line 14986
    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->mHideSnoozeButton:Z

    .line 14987
    return-object p0
.end method

.method public blacklist hideSubText(Z)Landroid/app/Notification$StandardTemplateParams;
    .registers 2
    .param p1, "hideSubText"    # Z

    .line 14951
    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->mHideSubText:Z

    .line 14952
    return-object p0
.end method

.method public blacklist hideTime(Z)Landroid/app/Notification$StandardTemplateParams;
    .registers 2
    .param p1, "hideTime"    # Z

    .line 14956
    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->mHideTime:Z

    .line 14957
    return-object p0
.end method

.method final blacklist hideTitle(Z)Landroid/app/Notification$StandardTemplateParams;
    .registers 2
    .param p1, "hideTitle"    # Z

    .line 14971
    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->mHideTitle:Z

    .line 14972
    return-object p0
.end method

.method final blacklist highlightExpander(Z)Landroid/app/Notification$StandardTemplateParams;
    .registers 2
    .param p1, "highlight"    # Z

    .line 15042
    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->mHighlightExpander:Z

    .line 15043
    return-object p0
.end method

.method final blacklist promotedPicture(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$StandardTemplateParams;
    .registers 2
    .param p1, "promotedPicture"    # Landroid/graphics/drawable/Icon;

    .line 14991
    iput-object p1, p0, Landroid/app/Notification$StandardTemplateParams;->mPromotedPicture:Landroid/graphics/drawable/Icon;

    .line 14992
    return-object p0
.end method

.method final greylist-max-o reset()Landroid/app/Notification$StandardTemplateParams;
    .registers 4

    .line 14905
    sget v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_UNSPECIFIED:I

    iput v0, p0, Landroid/app/Notification$StandardTemplateParams;->mViewType:I

    .line 14906
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mHeaderless:Z

    .line 14907
    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mHideAppName:Z

    .line 14908
    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mHideTitle:Z

    .line 14909
    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mHideSubText:Z

    .line 14910
    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mHideTime:Z

    .line 14911
    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mHideActions:Z

    .line 14912
    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mHideProgress:Z

    .line 14913
    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mHideSnoozeButton:Z

    .line 14914
    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mHideLeftIcon:Z

    .line 14915
    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mHideRightIcon:Z

    .line 14916
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/Notification$StandardTemplateParams;->mPromotedPicture:Landroid/graphics/drawable/Icon;

    .line 14917
    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mCallStyleActions:Z

    .line 14918
    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mAllowTextWithProgress:Z

    .line 14919
    const v2, 0x1020016

    iput v2, p0, Landroid/app/Notification$StandardTemplateParams;->mTitleViewId:I

    .line 14920
    const v2, 0x1020574

    iput v2, p0, Landroid/app/Notification$StandardTemplateParams;->mTextViewId:I

    .line 14921
    iput-object v1, p0, Landroid/app/Notification$StandardTemplateParams;->mTitle:Ljava/lang/CharSequence;

    .line 14922
    iput-object v1, p0, Landroid/app/Notification$StandardTemplateParams;->mText:Ljava/lang/CharSequence;

    .line 14923
    iput-object v1, p0, Landroid/app/Notification$StandardTemplateParams;->mSubText:Ljava/lang/CharSequence;

    .line 14924
    iput-object v1, p0, Landroid/app/Notification$StandardTemplateParams;->mHeaderTextSecondary:Ljava/lang/CharSequence;

    .line 14925
    const/4 v1, 0x3

    iput v1, p0, Landroid/app/Notification$StandardTemplateParams;->maxRemoteInputHistory:I

    .line 14926
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/Notification$StandardTemplateParams;->allowColorization:Z

    .line 14927
    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mHighlightExpander:Z

    .line 14928
    return-object p0
.end method

.method public greylist-max-o setMaxRemoteInputHistory(I)Landroid/app/Notification$StandardTemplateParams;
    .registers 2
    .param p1, "maxRemoteInputHistory"    # I

    .line 15060
    iput p1, p0, Landroid/app/Notification$StandardTemplateParams;->maxRemoteInputHistory:I

    .line 15061
    return-object p0
.end method

.method final blacklist summaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;
    .registers 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 15016
    iput-object p1, p0, Landroid/app/Notification$StandardTemplateParams;->mSubText:Ljava/lang/CharSequence;

    .line 15017
    return-object p0
.end method

.method final greylist-max-o text(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;
    .registers 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 15011
    iput-object p1, p0, Landroid/app/Notification$StandardTemplateParams;->mText:Ljava/lang/CharSequence;

    .line 15012
    return-object p0
.end method

.method public blacklist textViewId(I)Landroid/app/Notification$StandardTemplateParams;
    .registers 2
    .param p1, "textViewId"    # I

    .line 15001
    iput p1, p0, Landroid/app/Notification$StandardTemplateParams;->mTextViewId:I

    .line 15002
    return-object p0
.end method

.method final greylist-max-o title(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;
    .registers 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 15006
    iput-object p1, p0, Landroid/app/Notification$StandardTemplateParams;->mTitle:Ljava/lang/CharSequence;

    .line 15007
    return-object p0
.end method

.method public blacklist titleViewId(I)Landroid/app/Notification$StandardTemplateParams;
    .registers 2
    .param p1, "titleViewId"    # I

    .line 14996
    iput p1, p0, Landroid/app/Notification$StandardTemplateParams;->mTitleViewId:I

    .line 14997
    return-object p0
.end method

.method final blacklist viewType(I)Landroid/app/Notification$StandardTemplateParams;
    .registers 2
    .param p1, "viewType"    # I

    .line 14936
    iput p1, p0, Landroid/app/Notification$StandardTemplateParams;->mViewType:I

    .line 14937
    return-object p0
.end method
