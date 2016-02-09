.class public Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;
.super Ljava/lang/Object;
.source "InputMethodUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/inputmethod/InputMethodUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputMethodSettings"
.end annotation


# static fields
.field private static final INPUT_METHOD_SEPARATER:C = ':'

.field private static final INPUT_METHOD_SUBTYPE_SEPARATER:C = ';'


# instance fields
.field private mCurrentProfileIds:[I

.field private mCurrentUserId:I

.field private mEnabledInputMethodsStrCache:Ljava/lang/String;

.field private final mInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

.field private final mMethodList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mMethodMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mRes:Landroid/content/res/Resources;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/ContentResolver;Ljava/util/HashMap;Ljava/util/ArrayList;I)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resolver"    # Landroid/content/ContentResolver;
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Landroid/content/ContentResolver;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 843
    .local p3, "methodMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    .local p4, "methodList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 779
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    #@5
    const/16 v1, 0x3a

    #@7
    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    #@a
    .line 778
    iput-object v0, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    #@c
    .line 782
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    #@e
    const/16 v1, 0x3b

    #@10
    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    #@13
    .line 781
    iput-object v0, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    #@15
    .line 791
    const/4 v0, 0x0

    #@16
    new-array v0, v0, [I

    #@18
    iput-object v0, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentProfileIds:[I

    #@1a
    .line 847
    invoke-virtual {p0, p5}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->setCurrentUserId(I)V

    #@1d
    .line 848
    iput-object p1, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mRes:Landroid/content/res/Resources;

    #@1f
    .line 849
    iput-object p2, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mResolver:Landroid/content/ContentResolver;

    #@21
    .line 850
    iput-object p3, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mMethodMap:Ljava/util/HashMap;

    #@23
    .line 851
    iput-object p4, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mMethodList:Ljava/util/ArrayList;

    #@25
    .line 846
    return-void
.end method

.method private addSubtypeToHistory(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "imeId"    # Ljava/lang/String;
    .param p2, "subtypeId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1065
    invoke-direct {p0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->loadInputMethodAndSubtypeHistoryLocked()Ljava/util/List;

    #@3
    move-result-object v2

    #@4
    .line 1066
    .local v2, "subtypeHistory":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v1

    #@8
    .local v1, "ime$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v3

    #@c
    if-eqz v3, :cond_1

    #@e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroid/util/Pair;

    #@14
    .line 1067
    .local v0, "ime":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@16
    check-cast v3, Ljava/lang/String;

    #@18
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_0

    #@1e
    .line 1073
    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@21
    .line 1080
    .end local v0    # "ime":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-direct {p0, v2, p1, p2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->saveSubtypeHistory(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    #@24
    .line 1064
    return-void
.end method

.method private static buildEnabledInputMethodsSettingString(Ljava/lang/StringBuilder;Landroid/util/Pair;)V
    .locals 3
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 795
    .local p1, "ime":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@2
    check-cast v2, Ljava/lang/String;

    #@4
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7
    .line 798
    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@9
    check-cast v2, Ljava/util/ArrayList;

    #@b
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v1

    #@f
    .local v1, "subtypeId$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_0

    #@15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Ljava/lang/String;

    #@1b
    .line 799
    .local v0, "subtypeId":Ljava/lang/String;
    const/16 v2, 0x3b

    #@1d
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    goto :goto_0

    #@25
    .line 794
    .end local v0    # "subtypeId":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static buildInputMethodsAndSubtypeList(Ljava/lang/String;Landroid/text/TextUtils$SimpleStringSplitter;Landroid/text/TextUtils$SimpleStringSplitter;)Ljava/util/List;
    .locals 5
    .param p0, "enabledInputMethodsStr"    # Ljava/lang/String;
    .param p1, "inputMethodSplitter"    # Landroid/text/TextUtils$SimpleStringSplitter;
    .param p2, "subtypeSplitter"    # Landroid/text/TextUtils$SimpleStringSplitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/text/TextUtils$SimpleStringSplitter;",
            "Landroid/text/TextUtils$SimpleStringSplitter;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 822
    new-instance v1, Ljava/util/ArrayList;

    #@2
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 823
    .local v1, "imsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@8
    move-result v4

    #@9
    if-eqz v4, :cond_0

    #@b
    .line 824
    return-object v1

    #@c
    .line 826
    :cond_0
    invoke-virtual {p1, p0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    #@f
    .line 827
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    #@12
    move-result v4

    #@13
    if-eqz v4, :cond_3

    #@15
    .line 828
    invoke-virtual {p1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    .line 829
    .local v2, "nextImsStr":Ljava/lang/String;
    invoke-virtual {p2, v2}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    #@1c
    .line 830
    invoke-virtual {p2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    #@1f
    move-result v4

    #@20
    if-eqz v4, :cond_1

    #@22
    .line 831
    new-instance v3, Ljava/util/ArrayList;

    #@24
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@27
    .line 833
    .local v3, "subtypeHashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    .line 834
    .local v0, "imeId":Ljava/lang/String;
    :goto_1
    invoke-virtual {p2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    #@2e
    move-result v4

    #@2f
    if-eqz v4, :cond_2

    #@31
    .line 835
    invoke-virtual {p2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    #@34
    move-result-object v4

    #@35
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@38
    goto :goto_1

    #@39
    .line 837
    :cond_2
    new-instance v4, Landroid/util/Pair;

    #@3b
    invoke-direct {v4, v0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@3e
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@41
    goto :goto_0

    #@42
    .line 840
    .end local v0    # "imeId":Ljava/lang/String;
    .end local v2    # "nextImsStr":Ljava/lang/String;
    .end local v3    # "subtypeHashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    return-object v1
.end method

.method public static buildInputMethodsSettingString(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .line 805
    .local p0, "allImeSettingsMap":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 806
    .local v0, "b":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    #@6
    .line 807
    .local v3, "needsSeparator":Z
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v2

    #@a
    .local v2, "ime$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v4

    #@e
    if-eqz v4, :cond_1

    #@10
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Landroid/util/Pair;

    #@16
    .line 808
    .local v1, "ime":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    if-eqz v3, :cond_0

    #@18
    .line 809
    const/16 v4, 0x3a

    #@1a
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1d
    .line 811
    :cond_0
    invoke-static {v0, v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->buildEnabledInputMethodsSettingString(Ljava/lang/StringBuilder;Landroid/util/Pair;)V

    #@20
    .line 812
    const/4 v3, 0x1

    #@21
    goto :goto_0

    #@22
    .line 814
    .end local v1    # "ime":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v4

    #@26
    return-object v4
.end method

.method private createEnabledInputMethodAndSubtypeHashCodeListLocked(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;>;)",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1008
    .local p1, "imsList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    new-instance v3, Ljava/util/ArrayList;

    #@2
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 1009
    .local v3, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/view/inputmethod/InputMethodInfo;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v1

    #@9
    .local v1, "ims$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v4

    #@d
    if-eqz v4, :cond_1

    #@f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/util/Pair;

    #@15
    .line 1010
    .local v0, "ims":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    iget-object v4, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mMethodMap:Ljava/util/HashMap;

    #@17
    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@19
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    move-result-object v2

    #@1d
    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    #@1f
    .line 1011
    .local v2, "info":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v2, :cond_0

    #@21
    .line 1012
    new-instance v5, Landroid/util/Pair;

    #@23
    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@25
    check-cast v4, Ljava/util/ArrayList;

    #@27
    invoke-direct {v5, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@2a
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2d
    goto :goto_0

    #@2e
    .line 1015
    .end local v0    # "ims":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v2    # "info":Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    return-object v3
.end method

.method private createEnabledInputMethodListLocked(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;>;)",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 994
    .local p1, "imsList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    new-instance v3, Ljava/util/ArrayList;

    #@2
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 995
    .local v3, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v1

    #@9
    .local v1, "ims$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v4

    #@d
    if-eqz v4, :cond_1

    #@f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/util/Pair;

    #@15
    .line 996
    .local v0, "ims":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    iget-object v4, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mMethodMap:Ljava/util/HashMap;

    #@17
    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@19
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    move-result-object v2

    #@1d
    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    #@1f
    .line 997
    .local v2, "info":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v2, :cond_0

    #@21
    .line 998
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@24
    goto :goto_0

    #@25
    .line 1001
    .end local v0    # "ims":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v2    # "info":Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    return-object v3
.end method

.method private getEnabledSubtypeHashCodeForInputMethodAndSubtypeLocked(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p2, "imeId"    # Ljava/lang/String;
    .param p3, "subtypeHashCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .line 1133
    .local p1, "enabledImes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v4

    #@4
    .local v4, "enabledIme$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v13

    #@8
    if-eqz v13, :cond_6

    #@a
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d
    move-result-object v3

    #@e
    check-cast v3, Landroid/util/Pair;

    #@10
    .line 1134
    .local v3, "enabledIme":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    iget-object v13, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@12
    check-cast v13, Ljava/lang/String;

    #@14
    move-object/from16 v0, p2

    #@16
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v13

    #@1a
    if-eqz v13, :cond_0

    #@1c
    .line 1135
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@1e
    check-cast v5, Ljava/util/ArrayList;

    #@20
    .line 1136
    .local v5, "explicitlyEnabledSubtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v13, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mMethodMap:Ljava/util/HashMap;

    #@22
    move-object/from16 v0, p2

    #@24
    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@27
    move-result-object v8

    #@28
    check-cast v8, Landroid/view/inputmethod/InputMethodInfo;

    #@2a
    .line 1137
    .local v8, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@2d
    move-result v13

    #@2e
    if-nez v13, :cond_2

    #@30
    .line 1142
    if-eqz v8, :cond_5

    #@32
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    #@35
    move-result v13

    #@36
    if-lez v13, :cond_5

    #@38
    .line 1144
    iget-object v13, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mRes:Landroid/content/res/Resources;

    #@3a
    invoke-static {v13, v8}, Lcom/android/internal/inputmethod/InputMethodUtils;->getImplicitlyApplicableSubtypesLocked(Landroid/content/res/Resources;Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    #@3d
    move-result-object v9

    #@3e
    .line 1145
    .local v9, "implicitlySelectedSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    if-eqz v9, :cond_5

    #@40
    .line 1146
    invoke-interface {v9}, Ljava/util/List;->size()I

    #@43
    move-result v1

    #@44
    .line 1147
    .local v1, "N":I
    const/4 v7, 0x0

    #@45
    .local v7, "i":I
    :goto_0
    if-ge v7, v1, :cond_5

    #@47
    .line 1148
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@4a
    move-result-object v12

    #@4b
    check-cast v12, Landroid/view/inputmethod/InputMethodSubtype;

    #@4d
    .line 1149
    .local v12, "st":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    #@50
    move-result v13

    #@51
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@54
    move-result-object v13

    #@55
    move-object/from16 v0, p3

    #@57
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5a
    move-result v13

    #@5b
    if-eqz v13, :cond_1

    #@5d
    .line 1150
    return-object p3

    #@5e
    .line 1147
    :cond_1
    add-int/lit8 v7, v7, 0x1

    #@60
    goto :goto_0

    #@61
    .line 1156
    .end local v1    # "N":I
    .end local v7    # "i":I
    .end local v9    # "implicitlySelectedSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v12    # "st":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_2
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@64
    move-result-object v11

    #@65
    .local v11, "s$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    #@68
    move-result v13

    #@69
    if-eqz v13, :cond_5

    #@6b
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@6e
    move-result-object v10

    #@6f
    check-cast v10, Ljava/lang/String;

    #@71
    .line 1157
    .local v10, "s":Ljava/lang/String;
    move-object/from16 v0, p3

    #@73
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@76
    move-result v13

    #@77
    if-eqz v13, :cond_3

    #@79
    .line 1160
    :try_start_0
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    #@7c
    move-result-object v13

    #@7d
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    #@80
    move-result v6

    #@81
    .line 1162
    .local v6, "hashCode":I
    invoke-static {v8, v6}, Lcom/android/internal/inputmethod/InputMethodUtils;->isValidSubtypeId(Landroid/view/inputmethod/InputMethodInfo;I)Z

    #@84
    move-result v13

    #@85
    if-eqz v13, :cond_4

    #@87
    .line 1163
    return-object v10

    #@88
    .line 1165
    :cond_4
    invoke-static {}, Lcom/android/internal/inputmethod/InputMethodUtils;->-get0()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@8b
    move-result-object v13

    #@8c
    return-object v13

    #@8d
    .line 1167
    .end local v6    # "hashCode":I
    :catch_0
    move-exception v2

    #@8e
    .line 1168
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/android/internal/inputmethod/InputMethodUtils;->-get0()Ljava/lang/String;

    #@91
    move-result-object v13

    #@92
    return-object v13

    #@93
    .line 1174
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v10    # "s":Ljava/lang/String;
    .end local v11    # "s$iterator":Ljava/util/Iterator;
    :cond_5
    invoke-static {}, Lcom/android/internal/inputmethod/InputMethodUtils;->-get0()Ljava/lang/String;

    #@96
    move-result-object v13

    #@97
    return-object v13

    #@98
    .line 1178
    .end local v3    # "enabledIme":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v5    # "explicitlyEnabledSubtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_6
    const/4 v13, 0x0

    #@99
    return-object v13
.end method

.method private getLastSubtypeForInputMethodLockedInternal(Ljava/lang/String;)Landroid/util/Pair;
    .locals 8
    .param p1, "imeId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1107
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodsAndSubtypeListLocked()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    .line 1108
    .local v0, "enabledImes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    invoke-direct {p0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->loadInputMethodAndSubtypeHistoryLocked()Ljava/util/List;

    #@7
    move-result-object v5

    #@8
    .line 1109
    .local v5, "subtypeHistory":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v2

    #@c
    .local v2, "imeAndSubtype$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v7

    #@10
    if-eqz v7, :cond_2

    #@12
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, Landroid/util/Pair;

    #@18
    .line 1110
    .local v1, "imeAndSubtype":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@1a
    check-cast v3, Ljava/lang/String;

    #@1c
    .line 1112
    .local v3, "imeInTheHistory":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@1f
    move-result v7

    #@20
    if-nez v7, :cond_1

    #@22
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v7

    #@26
    if-eqz v7, :cond_0

    #@28
    .line 1113
    :cond_1
    iget-object v6, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@2a
    check-cast v6, Ljava/lang/String;

    #@2c
    .line 1115
    .local v6, "subtypeInTheHistory":Ljava/lang/String;
    invoke-direct {p0, v0, v3, v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledSubtypeHashCodeForInputMethodAndSubtypeLocked(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2f
    move-result-object v4

    #@30
    .line 1117
    .local v4, "subtypeHashCode":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@33
    move-result v7

    #@34
    if-nez v7, :cond_0

    #@36
    .line 1121
    new-instance v7, Landroid/util/Pair;

    #@38
    invoke-direct {v7, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@3b
    return-object v7

    #@3c
    .line 1128
    .end local v1    # "imeAndSubtype":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "imeInTheHistory":Ljava/lang/String;
    .end local v4    # "subtypeHashCode":Ljava/lang/String;
    .end local v6    # "subtypeInTheHistory":Ljava/lang/String;
    :cond_2
    const/4 v7, 0x0

    #@3d
    return-object v7
.end method

.method private getSelectedInputMethodSubtypeHashCode()I
    .locals 4

    #@0
    .prologue
    .line 1254
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mResolver:Landroid/content/ContentResolver;

    #@2
    const-string/jumbo v2, "selected_input_method_subtype"

    #@5
    iget v3, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentUserId:I

    #@7
    .line 1253
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result v1

    #@b
    return v1

    #@c
    .line 1255
    :catch_0
    move-exception v0

    #@d
    .line 1256
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    const/4 v1, -0x1

    #@e
    return v1
.end method

.method private getSubtypeHistoryStr()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 1211
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mResolver:Landroid/content/ContentResolver;

    #@2
    const-string/jumbo v1, "input_methods_subtype_history"

    #@5
    iget v2, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentUserId:I

    #@7
    .line 1210
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method private loadInputMethodAndSubtypeHistoryLocked()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1182
    new-instance v1, Ljava/util/ArrayList;

    #@2
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 1183
    .local v1, "imsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {p0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSubtypeHistoryStr()Ljava/lang/String;

    #@8
    move-result-object v3

    #@9
    .line 1184
    .local v3, "subtypeHistoryStr":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@c
    move-result v5

    #@d
    if-eqz v5, :cond_0

    #@f
    .line 1185
    return-object v1

    #@10
    .line 1187
    :cond_0
    iget-object v5, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    #@12
    invoke-virtual {v5, v3}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    #@15
    .line 1188
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    #@17
    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    #@1a
    move-result v5

    #@1b
    if-eqz v5, :cond_3

    #@1d
    .line 1189
    iget-object v5, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    #@1f
    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    .line 1190
    .local v2, "nextImsStr":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    #@25
    invoke-virtual {v5, v2}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    #@28
    .line 1191
    iget-object v5, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    #@2a
    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    #@2d
    move-result v5

    #@2e
    if-eqz v5, :cond_1

    #@30
    .line 1192
    invoke-static {}, Lcom/android/internal/inputmethod/InputMethodUtils;->-get0()Ljava/lang/String;

    #@33
    move-result-object v4

    #@34
    .line 1194
    .local v4, "subtypeId":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    #@36
    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    #@39
    move-result-object v0

    #@3a
    .line 1195
    .local v0, "imeId":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    #@3c
    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    #@3f
    move-result v5

    #@40
    if-eqz v5, :cond_2

    #@42
    .line 1196
    iget-object v5, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    #@44
    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    #@47
    move-result-object v4

    #@48
    .line 1199
    :cond_2
    new-instance v5, Landroid/util/Pair;

    #@4a
    invoke-direct {v5, v0, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@4d
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@50
    goto :goto_0

    #@51
    .line 1202
    .end local v0    # "imeId":Ljava/lang/String;
    .end local v2    # "nextImsStr":Ljava/lang/String;
    .end local v4    # "subtypeId":Ljava/lang/String;
    :cond_3
    return-object v1
.end method

.method private putEnabledInputMethodsStr(Ljava/lang/String;)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1020
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mResolver:Landroid/content/ContentResolver;

    #@2
    const-string/jumbo v1, "enabled_input_methods"

    #@5
    iget v2, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentUserId:I

    #@7
    .line 1019
    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    #@a
    .line 1021
    iput-object p1, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mEnabledInputMethodsStrCache:Ljava/lang/String;

    #@c
    .line 1018
    return-void
.end method

.method private putSubtypeHistoryStr(Ljava/lang/String;)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1088
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mResolver:Landroid/content/ContentResolver;

    #@2
    const-string/jumbo v1, "input_methods_subtype_history"

    #@5
    iget v2, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentUserId:I

    #@7
    .line 1087
    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    #@a
    .line 1083
    return-void
.end method

.method private saveSubtypeHistory(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p2, "newImeId"    # Ljava/lang/String;
    .param p3, "newSubtypeId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "savedImes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/16 v7, 0x3b

    #@2
    .line 1039
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    .line 1040
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    #@8
    .line 1041
    .local v4, "isImeAdded":Z
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@b
    move-result v6

    #@c
    if-nez v6, :cond_0

    #@e
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@11
    move-result v6

    #@12
    if-eqz v6, :cond_2

    #@14
    .line 1046
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@17
    move-result-object v2

    #@18
    .local v2, "ime$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@1b
    move-result v6

    #@1c
    if-eqz v6, :cond_4

    #@1e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@21
    move-result-object v1

    #@22
    check-cast v1, Landroid/util/Pair;

    #@24
    .line 1047
    .local v1, "ime":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@26
    check-cast v3, Ljava/lang/String;

    #@28
    .line 1048
    .local v3, "imeId":Ljava/lang/String;
    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@2a
    check-cast v5, Ljava/lang/String;

    #@2c
    .line 1049
    .local v5, "subtypeId":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@2f
    move-result v6

    #@30
    if-eqz v6, :cond_1

    #@32
    .line 1050
    invoke-static {}, Lcom/android/internal/inputmethod/InputMethodUtils;->-get0()Ljava/lang/String;

    #@35
    move-result-object v5

    #@36
    .line 1052
    :cond_1
    if-eqz v4, :cond_3

    #@38
    .line 1053
    const/16 v6, 0x3a

    #@3a
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3d
    .line 1057
    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v6

    #@41
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@44
    move-result-object v6

    #@45
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    goto :goto_1

    #@49
    .line 1042
    .end local v1    # "ime":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "ime$iterator":Ljava/util/Iterator;
    .end local v3    # "imeId":Ljava/lang/String;
    .end local v5    # "subtypeId":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v6

    #@4d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@50
    move-result-object v6

    #@51
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    .line 1044
    const/4 v4, 0x1

    #@55
    goto :goto_0

    #@56
    .line 1055
    .restart local v1    # "ime":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2    # "ime$iterator":Ljava/util/Iterator;
    .restart local v3    # "imeId":Ljava/lang/String;
    .restart local v5    # "subtypeId":Ljava/lang/String;
    :cond_3
    const/4 v4, 0x1

    #@57
    goto :goto_2

    #@58
    .line 1061
    .end local v1    # "ime":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "imeId":Ljava/lang/String;
    .end local v5    # "subtypeId":Ljava/lang/String;
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v6

    #@5c
    invoke-direct {p0, v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->putSubtypeHistoryStr(Ljava/lang/String;)V

    #@5f
    .line 1038
    return-void
.end method


# virtual methods
.method public appendAndPutEnabledInputMethodLocked(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "reloadInputMethodStr"    # Z

    #@0
    .prologue
    .line 949
    if-eqz p2, :cond_0

    #@2
    .line 950
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodsStr()Ljava/lang/String;

    #@5
    .line 952
    :cond_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mEnabledInputMethodsStrCache:Ljava/lang/String;

    #@7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 954
    invoke-direct {p0, p1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->putEnabledInputMethodsStr(Ljava/lang/String;)V

    #@10
    .line 948
    :goto_0
    return-void

    #@11
    .line 957
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    iget-object v1, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mEnabledInputMethodsStrCache:Ljava/lang/String;

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    const/16 v1, 0x3a

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    .line 956
    invoke-direct {p0, v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->putEnabledInputMethodsStr(Ljava/lang/String;)V

    #@2d
    goto :goto_0
.end method

.method public buildAndPutEnabledInputMethodsStrRemovingIdLocked(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;)Z
    .locals 6
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p3, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    #@0
    .prologue
    .line 967
    .local p2, "imsList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    const/4 v3, 0x0

    #@1
    .line 968
    .local v3, "isRemoved":Z
    const/4 v4, 0x0

    #@2
    .line 969
    .local v4, "needsAppendSeparator":Z
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v2

    #@6
    .local v2, "ims$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v5

    #@a
    if-eqz v5, :cond_2

    #@c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Landroid/util/Pair;

    #@12
    .line 970
    .local v1, "ims":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@14
    check-cast v0, Ljava/lang/String;

    #@16
    .line 971
    .local v0, "curId":Ljava/lang/String;
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v5

    #@1a
    if-eqz v5, :cond_0

    #@1c
    .line 975
    const/4 v3, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 977
    :cond_0
    if-eqz v4, :cond_1

    #@20
    .line 978
    const/16 v5, 0x3a

    #@22
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@25
    .line 982
    :goto_1
    invoke-static {p1, v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->buildEnabledInputMethodsSettingString(Ljava/lang/StringBuilder;Landroid/util/Pair;)V

    #@28
    goto :goto_0

    #@29
    .line 980
    :cond_1
    const/4 v4, 0x1

    #@2a
    goto :goto_1

    #@2b
    .line 985
    .end local v0    # "curId":Ljava/lang/String;
    .end local v1    # "ims":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :cond_2
    if-eqz v3, :cond_3

    #@2d
    .line 987
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v5

    #@31
    invoke-direct {p0, v5}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->putEnabledInputMethodsStr(Ljava/lang/String;)V

    #@34
    .line 989
    :cond_3
    return v3
.end method

.method public enableAllIMEsIfThereIsNoEnabledIME()V
    .locals 7

    #@0
    .prologue
    .line 929
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodsStr()Ljava/lang/String;

    #@3
    move-result-object v4

    #@4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@7
    move-result v4

    #@8
    if-eqz v4, :cond_2

    #@a
    .line 930
    new-instance v3, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    .line 931
    .local v3, "sb":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mMethodList:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@14
    move-result v0

    #@15
    .line 932
    .local v0, "N":I
    const/4 v1, 0x0

    #@16
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@18
    .line 933
    iget-object v4, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mMethodList:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1d
    move-result-object v2

    #@1e
    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    #@20
    .line 934
    .local v2, "imi":Landroid/view/inputmethod/InputMethodInfo;
    const-string/jumbo v4, "InputMethodUtils"

    #@23
    new-instance v5, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v6, "Adding: "

    #@2b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v5

    #@2f
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    #@32
    move-result-object v6

    #@33
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v5

    #@37
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v5

    #@3b
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@3e
    .line 935
    if-lez v1, :cond_0

    #@40
    const/16 v4, 0x3a

    #@42
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@45
    .line 936
    :cond_0
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    #@48
    move-result-object v4

    #@49
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    .line 932
    add-int/lit8 v1, v1, 0x1

    #@4e
    goto :goto_0

    #@4f
    .line 938
    .end local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v4

    #@53
    invoke-direct {p0, v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->putEnabledInputMethodsStr(Ljava/lang/String;)V

    #@56
    .line 928
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    return-void
.end method

.method public getCurrentUserId()I
    .locals 1

    #@0
    .prologue
    .line 1271
    iget v0, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentUserId:I

    #@2
    return v0
.end method

.method public getDisabledSystemInputMethods()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 1234
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mResolver:Landroid/content/ContentResolver;

    #@2
    const-string/jumbo v1, "disabled_system_input_methods"

    #@5
    iget v2, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentUserId:I

    #@7
    .line 1233
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public getEnabledInputMethodAndSubtypeHashCodeListLocked()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 886
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodsAndSubtypeListLocked()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    .line 885
    invoke-direct {p0, v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->createEnabledInputMethodAndSubtypeHashCodeListLocked(Ljava/util/List;)Ljava/util/List;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getEnabledInputMethodListLocked()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 880
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodsAndSubtypeListLocked()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    .line 879
    invoke-direct {p0, v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->createEnabledInputMethodListLocked(Ljava/util/List;)Ljava/util/List;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getEnabledInputMethodSubtypeListLocked(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p3, "allowsImplicitlySelectedSubtypes"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 892
    invoke-virtual {p0, p2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodSubtypeListLocked(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    .line 893
    .local v0, "enabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    if-eqz p3, :cond_0

    #@6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 895
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@f
    move-result-object v1

    #@10
    .line 894
    invoke-static {v1, p2}, Lcom/android/internal/inputmethod/InputMethodUtils;->getImplicitlyApplicableSubtypesLocked(Landroid/content/res/Resources;Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    #@13
    move-result-object v0

    #@14
    .line 897
    :cond_0
    const/4 v1, 0x0

    #@15
    invoke-static {p1, v1, p2, v0}, Landroid/view/inputmethod/InputMethodSubtype;->sort(Landroid/content/Context;ILandroid/view/inputmethod/InputMethodInfo;Ljava/util/List;)Ljava/util/List;

    #@18
    move-result-object v1

    #@19
    return-object v1
.end method

.method public getEnabledInputMethodSubtypeListLocked(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/List;
    .locals 12
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 903
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodsAndSubtypeListLocked()Ljava/util/List;

    #@3
    move-result-object v3

    #@4
    .line 905
    .local v3, "imsList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    .line 906
    .local v0, "enabledSubtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    if-eqz p1, :cond_3

    #@b
    .line 907
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v5

    #@f
    .local v5, "imsPair$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v10

    #@13
    if-eqz v10, :cond_3

    #@15
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v4

    #@19
    check-cast v4, Landroid/util/Pair;

    #@1b
    .line 908
    .local v4, "imsPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    iget-object v10, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mMethodMap:Ljava/util/HashMap;

    #@1d
    iget-object v11, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@1f
    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    move-result-object v6

    #@23
    check-cast v6, Landroid/view/inputmethod/InputMethodInfo;

    #@25
    .line 909
    .local v6, "info":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v6, :cond_0

    #@27
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    #@2a
    move-result-object v10

    #@2b
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    #@2e
    move-result-object v11

    #@2f
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@32
    move-result v10

    #@33
    if-eqz v10, :cond_0

    #@35
    .line 910
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    #@38
    move-result v9

    #@39
    .line 911
    .local v9, "subtypeCount":I
    const/4 v1, 0x0

    #@3a
    .local v1, "i":I
    :goto_0
    if-ge v1, v9, :cond_3

    #@3c
    .line 912
    invoke-virtual {v6, v1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    #@3f
    move-result-object v2

    #@40
    .line 913
    .local v2, "ims":Landroid/view/inputmethod/InputMethodSubtype;
    iget-object v10, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@42
    check-cast v10, Ljava/util/ArrayList;

    #@44
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@47
    move-result-object v8

    #@48
    .local v8, "s$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@4b
    move-result v10

    #@4c
    if-eqz v10, :cond_2

    #@4e
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@51
    move-result-object v7

    #@52
    check-cast v7, Ljava/lang/String;

    #@54
    .line 914
    .local v7, "s":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    #@57
    move-result v10

    #@58
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@5b
    move-result-object v10

    #@5c
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5f
    move-result v10

    #@60
    if-eqz v10, :cond_1

    #@62
    .line 915
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@65
    goto :goto_1

    #@66
    .line 911
    .end local v7    # "s":Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@68
    goto :goto_0

    #@69
    .line 923
    .end local v1    # "i":I
    .end local v2    # "ims":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v4    # "imsPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v5    # "imsPair$iterator":Ljava/util/Iterator;
    .end local v6    # "info":Landroid/view/inputmethod/InputMethodInfo;
    .end local v8    # "s$iterator":Ljava/util/Iterator;
    .end local v9    # "subtypeCount":I
    :cond_3
    return-object v0
.end method

.method public getEnabledInputMethodsAndSubtypeListLocked()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 943
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodsStr()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 944
    iget-object v1, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    #@6
    .line 945
    iget-object v2, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    #@8
    .line 943
    invoke-static {v0, v1, v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->buildInputMethodsAndSubtypeList(Ljava/lang/String;Landroid/text/TextUtils$SimpleStringSplitter;Landroid/text/TextUtils$SimpleStringSplitter;)Ljava/util/List;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getEnabledInputMethodsStr()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 1029
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mResolver:Landroid/content/ContentResolver;

    #@2
    const-string/jumbo v1, "enabled_input_methods"

    #@5
    iget v2, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentUserId:I

    #@7
    .line 1028
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mEnabledInputMethodsStrCache:Ljava/lang/String;

    #@d
    .line 1034
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mEnabledInputMethodsStrCache:Ljava/lang/String;

    #@f
    return-object v0
.end method

.method public getExplicitlyOrImplicitlyEnabledInputMethodsAndSubtypeListLocked(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1297
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    .line 1298
    .local v0, "enabledInputMethodAndSubtypes":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/List;

    #@8
    move-result-object v3

    #@9
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v2

    #@d
    .local v2, "imi$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_0

    #@13
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    #@19
    .line 1300
    .local v1, "imi":Landroid/view/inputmethod/InputMethodInfo;
    const/4 v3, 0x1

    #@1a
    invoke-virtual {p0, p1, v1, v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodSubtypeListLocked(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    #@1d
    move-result-object v3

    #@1e
    .line 1299
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    goto :goto_0

    #@22
    .line 1302
    .end local v1    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_0
    return-object v0
.end method

.method public getLastInputMethodAndSubtypeLocked()Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1093
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getLastSubtypeForInputMethodLockedInternal(Ljava/lang/String;)Landroid/util/Pair;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public getLastSubtypeForInputMethodLocked(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "imeId"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1097
    invoke-direct {p0, p1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getLastSubtypeForInputMethodLockedInternal(Ljava/lang/String;)Landroid/util/Pair;

    #@4
    move-result-object v0

    #@5
    .line 1098
    .local v0, "ime":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    #@7
    .line 1099
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@9
    check-cast v1, Ljava/lang/String;

    #@b
    return-object v1

    #@c
    .line 1101
    :cond_0
    return-object v1
.end method

.method public getSelectedInputMethod()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 1244
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mResolver:Landroid/content/ContentResolver;

    #@2
    const-string/jumbo v1, "default_input_method"

    #@5
    iget v2, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentUserId:I

    #@7
    .line 1243
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public getSelectedInputMethodSubtypeId(Ljava/lang/String;)I
    .locals 3
    .param p1, "selectedImiId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1275
    iget-object v2, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mMethodMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    #@8
    .line 1276
    .local v0, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-nez v0, :cond_0

    #@a
    .line 1277
    const/4 v2, -0x1

    #@b
    return v2

    #@c
    .line 1279
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeHashCode()I

    #@f
    move-result v1

    #@10
    .line 1280
    .local v1, "subtypeHashCode":I
    invoke-static {v0, v1}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    #@13
    move-result v2

    #@14
    return v2
.end method

.method public isCurrentProfile(I)Z
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 869
    monitor-enter p0

    #@2
    .line 870
    :try_start_0
    iget v1, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentUserId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    if-ne p1, v1, :cond_0

    #@6
    monitor-exit p0

    #@7
    return v2

    #@8
    .line 871
    :cond_0
    const/4 v0, 0x0

    #@9
    .local v0, "i":I
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentProfileIds:[I

    #@b
    array-length v1, v1

    #@c
    if-ge v0, v1, :cond_2

    #@e
    .line 872
    iget-object v1, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentProfileIds:[I

    #@10
    aget v1, v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@12
    if-ne p1, v1, :cond_1

    #@14
    monitor-exit p0

    #@15
    return v2

    #@16
    .line 871
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@18
    goto :goto_0

    #@19
    .line 874
    :cond_2
    const/4 v1, 0x0

    #@1a
    monitor-exit p0

    #@1b
    return v1

    #@1c
    .line 869
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    #@1d
    monitor-exit p0

    #@1e
    throw v1
.end method

.method public isShowImeWithHardKeyboardEnabled()Z
    .locals 5

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1261
    iget-object v2, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mResolver:Landroid/content/ContentResolver;

    #@4
    .line 1262
    const-string/jumbo v3, "show_ime_with_hard_keyboard"

    #@7
    iget v4, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentUserId:I

    #@9
    .line 1261
    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@c
    move-result v2

    #@d
    if-ne v2, v0, :cond_0

    #@f
    :goto_0
    return v0

    #@10
    :cond_0
    move v0, v1

    #@11
    goto :goto_0
.end method

.method public isSubtypeSelected()Z
    .locals 2

    #@0
    .prologue
    .line 1248
    invoke-direct {p0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeHashCode()I

    #@3
    move-result v0

    #@4
    const/4 v1, -0x1

    #@5
    if-eq v0, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public putSelectedInputMethod(Ljava/lang/String;)V
    .locals 3
    .param p1, "imeId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1220
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mResolver:Landroid/content/ContentResolver;

    #@2
    const-string/jumbo v1, "default_input_method"

    #@5
    iget v2, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentUserId:I

    #@7
    .line 1219
    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    #@a
    .line 1214
    return-void
.end method

.method public putSelectedSubtype(I)V
    .locals 3
    .param p1, "subtypeId"    # I

    #@0
    .prologue
    .line 1228
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mResolver:Landroid/content/ContentResolver;

    #@2
    const-string/jumbo v1, "selected_input_method_subtype"

    #@5
    .line 1229
    iget v2, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentUserId:I

    #@7
    .line 1228
    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    #@a
    .line 1223
    return-void
.end method

.method public saveCurrentInputMethodAndSubtypeToHistory(Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 2
    .param p1, "curMethodId"    # Ljava/lang/String;
    .param p2, "currentSubtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    #@0
    .prologue
    .line 1285
    invoke-static {}, Lcom/android/internal/inputmethod/InputMethodUtils;->-get0()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 1286
    .local v0, "subtypeId":Ljava/lang/String;
    if-eqz p2, :cond_0

    #@6
    .line 1287
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    #@9
    move-result v1

    #@a
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    .line 1289
    :cond_0
    invoke-static {p2}, Lcom/android/internal/inputmethod/InputMethodUtils;->canAddToLastInputMethod(Landroid/view/inputmethod/InputMethodSubtype;)Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_1

    #@14
    .line 1290
    invoke-direct {p0, p1, v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->addSubtypeToHistory(Ljava/lang/String;Ljava/lang/String;)V

    #@17
    .line 1284
    :cond_1
    return-void
.end method

.method public setCurrentProfileIds([I)V
    .locals 1
    .param p1, "currentProfileIds"    # [I

    #@0
    .prologue
    .line 863
    monitor-enter p0

    #@1
    .line 864
    :try_start_0
    iput-object p1, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentProfileIds:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    .line 862
    return-void

    #@5
    .line 863
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public setCurrentUserId(I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 859
    iput p1, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentUserId:I

    #@2
    .line 854
    return-void
.end method

.method public setShowImeWithHardKeyboard(Z)V
    .locals 4
    .param p1, "show"    # Z

    #@0
    .prologue
    .line 1266
    iget-object v1, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mResolver:Landroid/content/ContentResolver;

    #@2
    const-string/jumbo v2, "show_ime_with_hard_keyboard"

    #@5
    .line 1267
    if-eqz p1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    iget v3, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentUserId:I

    #@a
    .line 1266
    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    #@d
    .line 1265
    return-void

    #@e
    .line 1267
    :cond_0
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method
