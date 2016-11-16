.class public Landroid/content/pm/ShortcutInfo$Builder;
.super Ljava/lang/Object;
.source "ShortcutInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/ShortcutInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mActivity:Landroid/content/ComponentName;

.field private mCategories:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDisabledMessage:Ljava/lang/CharSequence;

.field private mDisabledMessageResId:I

.field private mExtras:Landroid/os/PersistableBundle;

.field private mIcon:Landroid/graphics/drawable/Icon;

.field private mId:Ljava/lang/String;

.field private mIntents:[Landroid/content/Intent;

.field private mRank:I

.field private mText:Ljava/lang/CharSequence;

.field private mTextResId:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleResId:I


# direct methods
.method static synthetic -get0(Landroid/content/pm/ShortcutInfo$Builder;)Landroid/content/ComponentName;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mActivity:Landroid/content/ComponentName;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/content/pm/ShortcutInfo$Builder;)Ljava/util/Set;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mCategories:Ljava/util/Set;

    #@2
    return-object v0
.end method

.method static synthetic -get10(Landroid/content/pm/ShortcutInfo$Builder;)Ljava/lang/CharSequence;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mText:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method static synthetic -get11(Landroid/content/pm/ShortcutInfo$Builder;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mTextResId:I

    #@2
    return v0
.end method

.method static synthetic -get12(Landroid/content/pm/ShortcutInfo$Builder;)Ljava/lang/CharSequence;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mTitle:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method static synthetic -get13(Landroid/content/pm/ShortcutInfo$Builder;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mTitleResId:I

    #@2
    return v0
.end method

.method static synthetic -get2(Landroid/content/pm/ShortcutInfo$Builder;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/content/pm/ShortcutInfo$Builder;)Ljava/lang/CharSequence;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mDisabledMessage:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Landroid/content/pm/ShortcutInfo$Builder;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mDisabledMessageResId:I

    #@2
    return v0
.end method

.method static synthetic -get5(Landroid/content/pm/ShortcutInfo$Builder;)Landroid/os/PersistableBundle;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mExtras:Landroid/os/PersistableBundle;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Landroid/content/pm/ShortcutInfo$Builder;)Landroid/graphics/drawable/Icon;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Landroid/content/pm/ShortcutInfo$Builder;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Landroid/content/pm/ShortcutInfo$Builder;)[Landroid/content/Intent;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mIntents:[Landroid/content/Intent;

    #@2
    return-object v0
.end method

.method static synthetic -get9(Landroid/content/pm/ShortcutInfo$Builder;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mRank:I

    #@2
    return v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 743
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 734
    const v0, 0x7fffffff

    #@6
    iput v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mRank:I

    #@8
    .line 744
    iput-object p1, p0, Landroid/content/pm/ShortcutInfo$Builder;->mContext:Landroid/content/Context;

    #@a
    .line 743
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # Ljava/lang/String;

    #@0
    .prologue
    .line 764
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 734
    const v0, 0x7fffffff

    #@6
    iput v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mRank:I

    #@8
    .line 765
    iput-object p1, p0, Landroid/content/pm/ShortcutInfo$Builder;->mContext:Landroid/content/Context;

    #@a
    .line 766
    const-string/jumbo v0, "id cannot be empty"

    #@d
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Ljava/lang/String;

    #@13
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mId:Ljava/lang/String;

    #@15
    .line 764
    return-void
.end method


# virtual methods
.method public build()Landroid/content/pm/ShortcutInfo;
    .locals 2

    #@0
    .prologue
    .line 1025
    new-instance v0, Landroid/content/pm/ShortcutInfo;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Landroid/content/pm/ShortcutInfo;-><init>(Landroid/content/pm/ShortcutInfo$Builder;Landroid/content/pm/ShortcutInfo;)V

    #@6
    return-object v0
.end method

.method public setActivity(Landroid/content/ComponentName;)Landroid/content/pm/ShortcutInfo$Builder;
    .locals 1
    .param p1, "activity"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 796
    const-string/jumbo v0, "activity cannot be null"

    #@3
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/content/ComponentName;

    #@9
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mActivity:Landroid/content/ComponentName;

    #@b
    .line 797
    return-object p0
.end method

.method public setCategories(Ljava/util/Set;)Landroid/content/pm/ShortcutInfo$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/pm/ShortcutInfo$Builder;"
        }
    .end annotation

    #@0
    .prologue
    .line 944
    .local p1, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Landroid/content/pm/ShortcutInfo$Builder;->mCategories:Ljava/util/Set;

    #@2
    .line 945
    return-object p0
.end method

.method public setDisabledMessage(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;
    .locals 2
    .param p1, "disabledMessage"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 928
    iget v1, p0, Landroid/content/pm/ShortcutInfo$Builder;->mDisabledMessageResId:I

    #@3
    if-nez v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    const-string/jumbo v1, "disabledMessageResId already set"

    #@9
    .line 927
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    #@c
    .line 931
    const-string/jumbo v0, "disabledMessage cannot be empty"

    #@f
    .line 930
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    #@12
    move-result-object v0

    #@13
    .line 929
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mDisabledMessage:Ljava/lang/CharSequence;

    #@15
    .line 932
    return-object p0
.end method

.method public setDisabledMessageResId(I)Landroid/content/pm/ShortcutInfo$Builder;
    .locals 2
    .param p1, "disabledMessageResId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 914
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mDisabledMessage:Ljava/lang/CharSequence;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    const-string/jumbo v1, "disabledMessage already set"

    #@8
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    #@b
    .line 915
    iput p1, p0, Landroid/content/pm/ShortcutInfo$Builder;->mDisabledMessageResId:I

    #@d
    .line 916
    return-object p0

    #@e
    .line 914
    :cond_0
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method public setExtras(Landroid/os/PersistableBundle;)Landroid/content/pm/ShortcutInfo$Builder;
    .locals 0
    .param p1, "extras"    # Landroid/os/PersistableBundle;

    #@0
    .prologue
    .line 1016
    iput-object p1, p0, Landroid/content/pm/ShortcutInfo$Builder;->mExtras:Landroid/os/PersistableBundle;

    #@2
    .line 1017
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    #@0
    .prologue
    .line 821
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo;->validateIcon(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    #@6
    .line 822
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo$Builder;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 754
    const-string/jumbo v0, "id cannot be empty"

    #@3
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Ljava/lang/String;

    #@9
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mId:Ljava/lang/String;

    #@b
    .line 755
    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 968
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Landroid/content/Intent;

    #@3
    const/4 v1, 0x0

    #@4
    aput-object p1, v0, v1

    #@6
    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo$Builder;->setIntents([Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public setIntents([Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;
    .locals 5
    .param p1, "intents"    # [Landroid/content/Intent;

    #@0
    .prologue
    .line 983
    const-string/jumbo v1, "intents cannot be null"

    #@3
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 984
    array-length v1, p1

    #@7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a
    move-result-object v1

    #@b
    const-string/jumbo v2, "intents cannot be empty"

    #@e
    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    .line 985
    const/4 v1, 0x0

    #@12
    array-length v2, p1

    #@13
    :goto_0
    if-ge v1, v2, :cond_0

    #@15
    aget-object v0, p1, v1

    #@17
    .line 986
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "intents cannot contain null"

    #@1a
    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    .line 987
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    const-string/jumbo v4, "intent\'s action must be set"

    #@24
    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@27
    .line 985
    add-int/lit8 v1, v1, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 990
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo;->-wrap0([Landroid/content/Intent;)[Landroid/content/Intent;

    #@2d
    move-result-object v1

    #@2e
    iput-object v1, p0, Landroid/content/pm/ShortcutInfo$Builder;->mIntents:[Landroid/content/Intent;

    #@30
    .line 991
    return-object p0
.end method

.method public setLongLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;
    .locals 2
    .param p1, "longLabel"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 879
    iget v1, p0, Landroid/content/pm/ShortcutInfo$Builder;->mTextResId:I

    #@3
    if-nez v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    const-string/jumbo v1, "longLabelResId already set"

    #@9
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    #@c
    .line 880
    const-string/jumbo v0, "longLabel cannot be empty"

    #@f
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mText:Ljava/lang/CharSequence;

    #@15
    .line 881
    return-object p0
.end method

.method public setLongLabelResId(I)Landroid/content/pm/ShortcutInfo$Builder;
    .locals 2
    .param p1, "longLabelResId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 862
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mText:Ljava/lang/CharSequence;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    const-string/jumbo v1, "longLabel already set"

    #@8
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    #@b
    .line 863
    iput p1, p0, Landroid/content/pm/ShortcutInfo$Builder;->mTextResId:I

    #@d
    .line 864
    return-object p0

    #@e
    .line 862
    :cond_0
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method public setRank(I)Landroid/content/pm/ShortcutInfo$Builder;
    .locals 2
    .param p1, "rank"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1002
    if-ltz p1, :cond_0

    #@3
    const/4 v0, 0x1

    #@4
    .line 1003
    :cond_0
    const-string/jumbo v1, "Rank cannot be negative or bigger than MAX_RANK"

    #@7
    .line 1002
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    #@a
    .line 1004
    iput p1, p0, Landroid/content/pm/ShortcutInfo$Builder;->mRank:I

    #@c
    .line 1005
    return-object p0
.end method

.method public setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;
    .locals 2
    .param p1, "shortLabel"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 851
    iget v1, p0, Landroid/content/pm/ShortcutInfo$Builder;->mTitleResId:I

    #@3
    if-nez v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    const-string/jumbo v1, "shortLabelResId already set"

    #@9
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    #@c
    .line 852
    const-string/jumbo v0, "shortLabel cannot be empty"

    #@f
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mTitle:Ljava/lang/CharSequence;

    #@15
    .line 853
    return-object p0
.end method

.method public setShortLabelResId(I)Landroid/content/pm/ShortcutInfo$Builder;
    .locals 2
    .param p1, "shortLabelResId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 831
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mTitle:Ljava/lang/CharSequence;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    const-string/jumbo v1, "shortLabel already set"

    #@8
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    #@b
    .line 832
    iput p1, p0, Landroid/content/pm/ShortcutInfo$Builder;->mTitleResId:I

    #@d
    .line 833
    return-object p0

    #@e
    .line 831
    :cond_0
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method public setText(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 899
    invoke-virtual {p0, p1}, Landroid/content/pm/ShortcutInfo$Builder;->setLongLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public setTextResId(I)Landroid/content/pm/ShortcutInfo$Builder;
    .locals 1
    .param p1, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 905
    invoke-virtual {p0, p1}, Landroid/content/pm/ShortcutInfo$Builder;->setLongLabelResId(I)Landroid/content/pm/ShortcutInfo$Builder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 887
    invoke-virtual {p0, p1}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public setTitleResId(I)Landroid/content/pm/ShortcutInfo$Builder;
    .locals 1
    .param p1, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 893
    invoke-virtual {p0, p1}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabelResId(I)Landroid/content/pm/ShortcutInfo$Builder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
