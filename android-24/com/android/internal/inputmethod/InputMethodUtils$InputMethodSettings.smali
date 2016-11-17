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


# instance fields
.field private mCopyOnWrite:Z

.field private final mCopyOnWriteDataStore:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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
.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/ContentResolver;Ljava/util/HashMap;Ljava/util/ArrayList;IZ)V
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resolver"    # Landroid/content/ContentResolver;
    .param p5, "userId"    # I
    .param p6, "copyOnWrite"    # Z
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
            ">;IZ)V"
        }
    .end annotation

    #@0
    .prologue
    .local p3, "methodMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    .local p4, "methodList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v2, 0x0

    #@1
    .line 950
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 879
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    #@6
    const/16 v1, 0x3a

    #@8
    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    #@b
    .line 878
    iput-object v0, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    #@d
    .line 882
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    #@f
    const/16 v1, 0x3b

    #@11
    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    #@14
    .line 881
    iput-object v0, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    #@16
    .line 892
    new-instance v0, Ljava/util/HashMap;

    #@18
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@1b
    iput-object v0, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWriteDataStore:Ljava/util/HashMap;

    #@1d
    .line 894
    iput-boolean v2, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWrite:Z

    #@1f
    .line 896
    const-string/jumbo v0, ""

    #@22
    iput-object v0, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mEnabledInputMethodsStrCache:Ljava/lang/String;

    #@24
    .line 899
    new-array v0, v2, [I

    #@26
    iput-object v0, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentProfileIds:[I

    #@28
    .line 954
    iput-object p1, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mRes:Landroid/content/res/Resources;

    #@2a
    .line 955
    iput-object p2, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mResolver:Landroid/content/ContentResolver;

    #@2c
    .line 956
    iput-object p3, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mMethodMap:Ljava/util/HashMap;

    #@2e
    .line 957
    iput-object p4, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mMethodList:Ljava/util/ArrayList;

    #@30
    .line 958
    invoke-virtual {p0, p5, p6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->switchCurrentUser(IZ)V

    #@33
    .line 953
    return-void
.end method

.method private addSubtypeToHistory(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "imeId"    # Ljava/lang/String;
    .param p2, "subtypeId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1214
    invoke-direct {p0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->loadInputMethodAndSubtypeHistoryLocked()Ljava/util/List;

    #@3
    move-result-object v2

    #@4
    .line 1215
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
    .line 1216
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
    .line 1222
    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@21
    .line 1229
    .end local v0    # "ime":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-direct {p0, v2, p1, p2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->saveSubtypeHistory(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    #@24
    .line 1213
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
    .line 903
    .local p1, "ime":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@2
    check-cast v2, Ljava/lang/String;

    #@4
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7
    .line 906
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
    .line 907
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
    .line 902
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
    .line 929
    new-instance v1, Ljava/util/ArrayList;

    #@2
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 930
    .local v1, "imsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@8
    move-result v4

    #@9
    if-eqz v4, :cond_0

    #@b
    .line 931
    return-object v1

    #@c
    .line 933
    :cond_0
    invoke-virtual {p1, p0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    #@f
    .line 934
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    #@12
    move-result v4

    #@13
    if-eqz v4, :cond_3

    #@15
    .line 935
    invoke-virtual {p1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    .line 936
    .local v2, "nextImsStr":Ljava/lang/String;
    invoke-virtual {p2, v2}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    #@1c
    .line 937
    invoke-virtual {p2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    #@1f
    move-result v4

    #@20
    if-eqz v4, :cond_1

    #@22
    .line 938
    new-instance v3, Ljava/util/ArrayList;

    #@24
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@27
    .line 940
    .local v3, "subtypeHashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    .line 941
    .local v0, "imeId":Ljava/lang/String;
    :goto_1
    invoke-virtual {p2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    #@2e
    move-result v4

    #@2f
    if-eqz v4, :cond_2

    #@31
    .line 942
    invoke-virtual {p2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    #@34
    move-result-object v4

    #@35
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@38
    goto :goto_1

    #@39
    .line 944
    :cond_2
    new-instance v4, Landroid/util/Pair;

    #@3b
    invoke-direct {v4, v0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@3e
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@41
    goto :goto_0

    #@42
    .line 947
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
    .line 913
    .local p0, "allImeSettingsMap":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 914
    .local v0, "b":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    #@6
    .line 915
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
    .line 916
    .local v1, "ime":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    if-eqz v3, :cond_0

    #@18
    .line 917
    const/16 v4, 0x3a

    #@1a
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1d
    .line 919
    :cond_0
    invoke-static {v0, v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->buildEnabledInputMethodsSettingString(Ljava/lang/StringBuilder;Landroid/util/Pair;)V

    #@20
    .line 920
    const/4 v3, 0x1

    #@21
    goto :goto_0

    #@22
    .line 922
    .end local v1    # "ime":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v4

    #@26
    return-object v4
.end method

.method private createEnabledInputMethodListLocked(Ljava/util/List;)Ljava/util/ArrayList;
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
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1151
    .local p1, "imsList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    new-instance v3, Ljava/util/ArrayList;

    #@2
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 1152
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
    .line 1153
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
    .line 1154
    .local v2, "info":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v2, :cond_0

    #@21
    .line 1155
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@24
    goto :goto_0

    #@25
    .line 1158
    .end local v0    # "ims":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v2    # "info":Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    return-object v3
.end method

.method private getBoolean(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 1023
    if-eqz p2, :cond_0

    #@4
    move v0, v1

    #@5
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getInt(Ljava/lang/String;I)I

    #@8
    move-result v0

    #@9
    if-ne v0, v1, :cond_1

    #@b
    :goto_1
    return v1

    #@c
    :cond_0
    move v0, v2

    #@d
    goto :goto_0

    #@e
    :cond_1
    move v1, v2

    #@f
    goto :goto_1
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
    .line 1287
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
    .line 1288
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
    .line 1289
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@1e
    check-cast v5, Ljava/util/ArrayList;

    #@20
    .line 1290
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
    .line 1291
    .local v8, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@2d
    move-result v13

    #@2e
    if-nez v13, :cond_2

    #@30
    .line 1296
    if-eqz v8, :cond_5

    #@32
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    #@35
    move-result v13

    #@36
    if-lez v13, :cond_5

    #@38
    .line 1298
    iget-object v13, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mRes:Landroid/content/res/Resources;

    #@3a
    invoke-static {v13, v8}, Lcom/android/internal/inputmethod/InputMethodUtils;->getImplicitlyApplicableSubtypesLocked(Landroid/content/res/Resources;Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    #@3d
    move-result-object v9

    #@3e
    .line 1299
    .local v9, "implicitlySelectedSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    if-eqz v9, :cond_5

    #@40
    .line 1300
    invoke-interface {v9}, Ljava/util/List;->size()I

    #@43
    move-result v1

    #@44
    .line 1301
    .local v1, "N":I
    const/4 v7, 0x0

    #@45
    .local v7, "i":I
    :goto_0
    if-ge v7, v1, :cond_5

    #@47
    .line 1302
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@4a
    move-result-object v12

    #@4b
    check-cast v12, Landroid/view/inputmethod/InputMethodSubtype;

    #@4d
    .line 1303
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
    .line 1304
    return-object p3

    #@5e
    .line 1301
    :cond_1
    add-int/lit8 v7, v7, 0x1

    #@60
    goto :goto_0

    #@61
    .line 1310
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
    .line 1311
    .local v10, "s":Ljava/lang/String;
    move-object/from16 v0, p3

    #@73
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@76
    move-result v13

    #@77
    if-eqz v13, :cond_3

    #@79
    .line 1314
    :try_start_0
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@7c
    move-result v6

    #@7d
    .line 1316
    .local v6, "hashCode":I
    invoke-static {v8, v6}, Lcom/android/internal/inputmethod/InputMethodUtils;->isValidSubtypeId(Landroid/view/inputmethod/InputMethodInfo;I)Z

    #@80
    move-result v13

    #@81
    if-eqz v13, :cond_4

    #@83
    .line 1317
    return-object v10

    #@84
    .line 1319
    :cond_4
    invoke-static {}, Lcom/android/internal/inputmethod/InputMethodUtils;->-get0()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@87
    move-result-object v13

    #@88
    return-object v13

    #@89
    .line 1321
    .end local v6    # "hashCode":I
    :catch_0
    move-exception v2

    #@8a
    .line 1322
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/android/internal/inputmethod/InputMethodUtils;->-get0()Ljava/lang/String;

    #@8d
    move-result-object v13

    #@8e
    return-object v13

    #@8f
    .line 1328
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v10    # "s":Ljava/lang/String;
    .end local v11    # "s$iterator":Ljava/util/Iterator;
    :cond_5
    invoke-static {}, Lcom/android/internal/inputmethod/InputMethodUtils;->-get0()Ljava/lang/String;

    #@92
    move-result-object v13

    #@93
    return-object v13

    #@94
    .line 1332
    .end local v3    # "enabledIme":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v5    # "explicitlyEnabledSubtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_6
    const/4 v13, 0x0

    #@95
    return-object v13
.end method

.method private getInt(Ljava/lang/String;I)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    #@0
    .prologue
    .line 1011
    iget-boolean v1, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWrite:Z

    #@2
    if-eqz v1, :cond_1

    #@4
    iget-object v1, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWriteDataStore:Ljava/util/HashMap;

    #@6
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_1

    #@c
    .line 1012
    iget-object v1, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWriteDataStore:Ljava/util/HashMap;

    #@e
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Ljava/lang/String;

    #@14
    .line 1013
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@16
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@19
    move-result v1

    #@1a
    :goto_0
    return v1

    #@1b
    :cond_0
    const/4 v1, 0x0

    #@1c
    goto :goto_0

    #@1d
    .line 1015
    .end local v0    # "result":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mResolver:Landroid/content/ContentResolver;

    #@1f
    iget v2, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentUserId:I

    #@21
    invoke-static {v1, p1, p2, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@24
    move-result v1

    #@25
    return v1
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
    .line 1261
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodsAndSubtypeListLocked()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    .line 1262
    .local v0, "enabledImes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    invoke-direct {p0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->loadInputMethodAndSubtypeHistoryLocked()Ljava/util/List;

    #@7
    move-result-object v5

    #@8
    .line 1263
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
    .line 1264
    .local v1, "imeAndSubtype":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@1a
    check-cast v3, Ljava/lang/String;

    #@1c
    .line 1266
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
    .line 1267
    :cond_1
    iget-object v6, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@2a
    check-cast v6, Ljava/lang/String;

    #@2c
    .line 1269
    .local v6, "subtypeInTheHistory":Ljava/lang/String;
    invoke-direct {p0, v0, v3, v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledSubtypeHashCodeForInputMethodAndSubtypeLocked(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2f
    move-result-object v4

    #@30
    .line 1271
    .local v4, "subtypeHashCode":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@33
    move-result v7

    #@34
    if-nez v7, :cond_0

    #@36
    .line 1275
    new-instance v7, Landroid/util/Pair;

    #@38
    invoke-direct {v7, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@3b
    return-object v7

    #@3c
    .line 1282
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
    .locals 2

    #@0
    .prologue
    .line 1398
    const-string/jumbo v0, "selected_input_method_subtype"

    #@3
    const/4 v1, -0x1

    #@4
    invoke-direct {p0, v0, v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getInt(Ljava/lang/String;I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method private getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 994
    iget-boolean v1, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWrite:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    iget-object v1, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWriteDataStore:Ljava/util/HashMap;

    #@6
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 995
    iget-object v1, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWriteDataStore:Ljava/util/HashMap;

    #@e
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Ljava/lang/String;

    #@14
    .line 999
    .local v0, "result":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_1

    #@16
    .end local v0    # "result":Ljava/lang/String;
    :goto_1
    return-object v0

    #@17
    .line 997
    :cond_0
    iget-object v1, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mResolver:Landroid/content/ContentResolver;

    #@19
    iget v2, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentUserId:I

    #@1b
    invoke-static {v1, p1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    #@20
    :cond_1
    move-object v0, p2

    #@21
    .line 999
    goto :goto_1
.end method

.method private getSubtypeHistoryStr()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 1361
    const-string/jumbo v1, "input_methods_subtype_history"

    #@3
    const-string/jumbo v2, ""

    #@6
    invoke-direct {p0, v1, v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 1365
    .local v0, "history":Ljava/lang/String;
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
    .line 1336
    new-instance v1, Ljava/util/ArrayList;

    #@2
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 1337
    .local v1, "imsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {p0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSubtypeHistoryStr()Ljava/lang/String;

    #@8
    move-result-object v3

    #@9
    .line 1338
    .local v3, "subtypeHistoryStr":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@c
    move-result v5

    #@d
    if-eqz v5, :cond_0

    #@f
    .line 1339
    return-object v1

    #@10
    .line 1341
    :cond_0
    iget-object v5, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    #@12
    invoke-virtual {v5, v3}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    #@15
    .line 1342
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
    .line 1343
    iget-object v5, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    #@1f
    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    .line 1344
    .local v2, "nextImsStr":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    #@25
    invoke-virtual {v5, v2}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    #@28
    .line 1345
    iget-object v5, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    #@2a
    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    #@2d
    move-result v5

    #@2e
    if-eqz v5, :cond_1

    #@30
    .line 1346
    invoke-static {}, Lcom/android/internal/inputmethod/InputMethodUtils;->-get0()Ljava/lang/String;

    #@33
    move-result-object v4

    #@34
    .line 1348
    .local v4, "subtypeId":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    #@36
    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    #@39
    move-result-object v0

    #@3a
    .line 1349
    .local v0, "imeId":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    #@3c
    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    #@3f
    move-result v5

    #@40
    if-eqz v5, :cond_2

    #@42
    .line 1350
    iget-object v5, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    #@44
    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    #@47
    move-result-object v4

    #@48
    .line 1353
    :cond_2
    new-instance v5, Landroid/util/Pair;

    #@4a
    invoke-direct {v5, v0, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@4d
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@50
    goto :goto_0

    #@51
    .line 1356
    .end local v0    # "imeId":Ljava/lang/String;
    .end local v2    # "nextImsStr":Ljava/lang/String;
    .end local v4    # "subtypeId":Ljava/lang/String;
    :cond_3
    return-object v1
.end method

.method private putBoolean(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    #@0
    .prologue
    .line 1019
    if-eqz p2, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->putInt(Ljava/lang/String;I)V

    #@6
    .line 1018
    return-void

    #@7
    .line 1019
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method private putEnabledInputMethodsStr(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1165
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 1168
    const-string/jumbo v0, "enabled_input_methods"

    #@a
    invoke-direct {p0, v0, v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@d
    .line 1173
    :goto_0
    if-eqz p1, :cond_1

    #@f
    .end local p1    # "str":Ljava/lang/String;
    :goto_1
    iput-object p1, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mEnabledInputMethodsStrCache:Ljava/lang/String;

    #@11
    .line 1161
    return-void

    #@12
    .line 1170
    .restart local p1    # "str":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "enabled_input_methods"

    #@15
    invoke-direct {p0, v0, p1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@18
    goto :goto_0

    #@19
    .line 1173
    :cond_1
    const-string/jumbo p1, ""

    #@1c
    goto :goto_1
.end method

.method private putInt(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    #@0
    .prologue
    .line 1003
    iget-boolean v0, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWrite:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1004
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWriteDataStore:Ljava/util/HashMap;

    #@6
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    .line 1002
    :goto_0
    return-void

    #@e
    .line 1006
    :cond_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mResolver:Landroid/content/ContentResolver;

    #@10
    iget v1, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentUserId:I

    #@12
    invoke-static {v0, p1, p2, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    #@15
    goto :goto_0
.end method

.method private putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 984
    iget-boolean v0, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWrite:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 985
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWriteDataStore:Ljava/util/HashMap;

    #@6
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 983
    :goto_0
    return-void

    #@a
    .line 987
    :cond_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mResolver:Landroid/content/ContentResolver;

    #@c
    iget v1, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentUserId:I

    #@e
    invoke-static {v0, p1, p2, v1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    #@11
    goto :goto_0
.end method

.method private putSubtypeHistoryStr(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1236
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1239
    const-string/jumbo v0, "input_methods_subtype_history"

    #@9
    const/4 v1, 0x0

    #@a
    invoke-direct {p0, v0, v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@d
    .line 1232
    :goto_0
    return-void

    #@e
    .line 1241
    :cond_0
    const-string/jumbo v0, "input_methods_subtype_history"

    #@11
    invoke-direct {p0, v0, p1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@14
    goto :goto_0
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
    .line 1188
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    .line 1189
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    #@8
    .line 1190
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
    .line 1195
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
    .line 1196
    .local v1, "ime":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@26
    check-cast v3, Ljava/lang/String;

    #@28
    .line 1197
    .local v3, "imeId":Ljava/lang/String;
    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@2a
    check-cast v5, Ljava/lang/String;

    #@2c
    .line 1198
    .local v5, "subtypeId":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@2f
    move-result v6

    #@30
    if-eqz v6, :cond_1

    #@32
    .line 1199
    invoke-static {}, Lcom/android/internal/inputmethod/InputMethodUtils;->-get0()Ljava/lang/String;

    #@35
    move-result-object v5

    #@36
    .line 1201
    :cond_1
    if-eqz v4, :cond_3

    #@38
    .line 1202
    const/16 v6, 0x3a

    #@3a
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3d
    .line 1206
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
    .line 1191
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
    .line 1193
    const/4 v4, 0x1

    #@55
    goto :goto_0

    #@56
    .line 1204
    .restart local v1    # "ime":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2    # "ime$iterator":Ljava/util/Iterator;
    .restart local v3    # "imeId":Ljava/lang/String;
    .restart local v5    # "subtypeId":Ljava/lang/String;
    :cond_3
    const/4 v4, 0x1

    #@57
    goto :goto_2

    #@58
    .line 1210
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
    .line 1187
    return-void
.end method


# virtual methods
.method public appendAndPutEnabledInputMethodLocked(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "reloadInputMethodStr"    # Z

    #@0
    .prologue
    .line 1106
    if-eqz p2, :cond_0

    #@2
    .line 1107
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodsStr()Ljava/lang/String;

    #@5
    .line 1109
    :cond_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mEnabledInputMethodsStrCache:Ljava/lang/String;

    #@7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 1111
    invoke-direct {p0, p1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->putEnabledInputMethodsStr(Ljava/lang/String;)V

    #@10
    .line 1105
    :goto_0
    return-void

    #@11
    .line 1114
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
    .line 1113
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
    .line 1124
    .local p2, "imsList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    const/4 v3, 0x0

    #@1
    .line 1125
    .local v3, "isRemoved":Z
    const/4 v4, 0x0

    #@2
    .line 1126
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
    .line 1127
    .local v1, "ims":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@14
    check-cast v0, Ljava/lang/String;

    #@16
    .line 1128
    .local v0, "curId":Ljava/lang/String;
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v5

    #@1a
    if-eqz v5, :cond_0

    #@1c
    .line 1132
    const/4 v3, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 1134
    :cond_0
    if-eqz v4, :cond_1

    #@20
    .line 1135
    const/16 v5, 0x3a

    #@22
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@25
    .line 1139
    :goto_1
    invoke-static {p1, v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->buildEnabledInputMethodsSettingString(Ljava/lang/StringBuilder;Landroid/util/Pair;)V

    #@28
    goto :goto_0

    #@29
    .line 1137
    :cond_1
    const/4 v4, 0x1

    #@2a
    goto :goto_1

    #@2b
    .line 1142
    .end local v0    # "curId":Ljava/lang/String;
    .end local v1    # "ims":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :cond_2
    if-eqz v3, :cond_3

    #@2d
    .line 1144
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v5

    #@31
    invoke-direct {p0, v5}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->putEnabledInputMethodsStr(Ljava/lang/String;)V

    #@34
    .line 1146
    :cond_3
    return v3
.end method

.method public dumpLocked(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1446
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v0

    #@9
    const-string/jumbo v1, "mCurrentUserId="

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    iget v1, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentUserId:I

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@1d
    .line 1447
    new-instance v0, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    const-string/jumbo v1, "mCurrentProfileIds="

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v0

    #@2d
    iget-object v1, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentProfileIds:[I

    #@2f
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v0

    #@3b
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@3e
    .line 1448
    new-instance v0, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v0

    #@47
    const-string/jumbo v1, "mCopyOnWrite="

    #@4a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v0

    #@4e
    iget-boolean v1, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWrite:Z

    #@50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@53
    move-result-object v0

    #@54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v0

    #@58
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@5b
    .line 1449
    new-instance v0, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v0

    #@64
    const-string/jumbo v1, "mEnabledInputMethodsStrCache="

    #@67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v0

    #@6b
    iget-object v1, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mEnabledInputMethodsStrCache:Ljava/lang/String;

    #@6d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v0

    #@71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v0

    #@75
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@78
    .line 1445
    return-void
.end method

.method public enableAllIMEsIfThereIsNoEnabledIME()V
    .locals 7

    #@0
    .prologue
    .line 1086
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
    .line 1087
    new-instance v3, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    .line 1088
    .local v3, "sb":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mMethodList:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@14
    move-result v0

    #@15
    .line 1089
    .local v0, "N":I
    const/4 v1, 0x0

    #@16
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@18
    .line 1090
    iget-object v4, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mMethodList:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1d
    move-result-object v2

    #@1e
    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    #@20
    .line 1091
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
    .line 1092
    if-lez v1, :cond_0

    #@40
    const/16 v4, 0x3a

    #@42
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@45
    .line 1093
    :cond_0
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    #@48
    move-result-object v4

    #@49
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    .line 1089
    add-int/lit8 v1, v1, 0x1

    #@4e
    goto :goto_0

    #@4f
    .line 1095
    .end local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v4

    #@53
    invoke-direct {p0, v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->putEnabledInputMethodsStr(Ljava/lang/String;)V

    #@56
    .line 1085
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
    .line 1411
    iget v0, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentUserId:I

    #@2
    return v0
.end method

.method public getEnabledInputMethodListLocked()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1044
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodsAndSubtypeListLocked()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    .line 1043
    invoke-direct {p0, v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->createEnabledInputMethodListLocked(Ljava/util/List;)Ljava/util/ArrayList;

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
    .line 1050
    invoke-virtual {p0, p2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodSubtypeListLocked(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    .line 1051
    .local v0, "enabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    if-eqz p3, :cond_0

    #@6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 1053
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@f
    move-result-object v1

    #@10
    .line 1052
    invoke-static {v1, p2}, Lcom/android/internal/inputmethod/InputMethodUtils;->getImplicitlyApplicableSubtypesLocked(Landroid/content/res/Resources;Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    #@13
    move-result-object v0

    #@14
    .line 1055
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
    .line 1061
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodsAndSubtypeListLocked()Ljava/util/List;

    #@3
    move-result-object v3

    #@4
    .line 1062
    .local v3, "imsList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    .line 1063
    .local v0, "enabledSubtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    if-eqz p1, :cond_3

    #@b
    .line 1064
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
    .line 1065
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
    .line 1066
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
    .line 1067
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    #@38
    move-result v9

    #@39
    .line 1068
    .local v9, "subtypeCount":I
    const/4 v1, 0x0

    #@3a
    .local v1, "i":I
    :goto_0
    if-ge v1, v9, :cond_3

    #@3c
    .line 1069
    invoke-virtual {v6, v1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    #@3f
    move-result-object v2

    #@40
    .line 1070
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
    .line 1071
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
    .line 1072
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@65
    goto :goto_1

    #@66
    .line 1068
    .end local v7    # "s":Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@68
    goto :goto_0

    #@69
    .line 1080
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
    .line 1100
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodsStr()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 1101
    iget-object v1, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    #@6
    .line 1102
    iget-object v2, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    #@8
    .line 1100
    invoke-static {v0, v1, v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->buildInputMethodsAndSubtypeList(Ljava/lang/String;Landroid/text/TextUtils$SimpleStringSplitter;Landroid/text/TextUtils$SimpleStringSplitter;)Ljava/util/List;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getEnabledInputMethodsStr()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1178
    const-string/jumbo v0, "enabled_input_methods"

    #@3
    const-string/jumbo v1, ""

    #@6
    invoke-direct {p0, v0, v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mEnabledInputMethodsStrCache:Ljava/lang/String;

    #@c
    .line 1183
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mEnabledInputMethodsStrCache:Ljava/lang/String;

    #@e
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
    .line 1437
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    .line 1438
    .local v0, "enabledInputMethodAndSubtypes":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

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
    .line 1440
    .local v1, "imi":Landroid/view/inputmethod/InputMethodInfo;
    const/4 v3, 0x1

    #@1a
    invoke-virtual {p0, p1, v1, v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodSubtypeListLocked(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    #@1d
    move-result-object v3

    #@1e
    .line 1439
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    goto :goto_0

    #@22
    .line 1442
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
    .line 1247
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
    .line 1251
    invoke-direct {p0, p1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getLastSubtypeForInputMethodLockedInternal(Ljava/lang/String;)Landroid/util/Pair;

    #@4
    move-result-object v0

    #@5
    .line 1252
    .local v0, "ime":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    #@7
    .line 1253
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@9
    check-cast v1, Ljava/lang/String;

    #@b
    return-object v1

    #@c
    .line 1255
    :cond_0
    return-object v1
.end method

.method public getSelectedInputMethod()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 1386
    const-string/jumbo v1, "default_input_method"

    #@3
    const/4 v2, 0x0

    #@4
    invoke-direct {p0, v1, v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 1390
    .local v0, "imi":Ljava/lang/String;
    return-object v0
.end method

.method public getSelectedInputMethodSubtypeId(Ljava/lang/String;)I
    .locals 3
    .param p1, "selectedImiId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1415
    iget-object v2, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mMethodMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    #@8
    .line 1416
    .local v0, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-nez v0, :cond_0

    #@a
    .line 1417
    const/4 v2, -0x1

    #@b
    return v2

    #@c
    .line 1419
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeHashCode()I

    #@f
    move-result v1

    #@10
    .line 1420
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
    .line 1033
    monitor-enter p0

    #@2
    .line 1034
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
    .line 1035
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
    .line 1036
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
    .line 1035
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@18
    goto :goto_0

    #@19
    .line 1038
    :cond_2
    const/4 v1, 0x0

    #@1a
    monitor-exit p0

    #@1b
    return v1

    #@1c
    .line 1033
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    #@1d
    monitor-exit p0

    #@1e
    throw v1
.end method

.method public isShowImeWithHardKeyboardEnabled()Z
    .locals 2

    #@0
    .prologue
    .line 1402
    const-string/jumbo v0, "show_ime_with_hard_keyboard"

    #@3
    const/4 v1, 0x0

    #@4
    invoke-direct {p0, v0, v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getBoolean(Ljava/lang/String;Z)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public isSubtypeSelected()Z
    .locals 2

    #@0
    .prologue
    .line 1394
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
    .locals 1
    .param p1, "imeId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1373
    const-string/jumbo v0, "default_input_method"

    #@3
    invoke-direct {p0, v0, p1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@6
    .line 1368
    return-void
.end method

.method public putSelectedSubtype(I)V
    .locals 1
    .param p1, "subtypeId"    # I

    #@0
    .prologue
    .line 1381
    const-string/jumbo v0, "selected_input_method_subtype"

    #@3
    invoke-direct {p0, v0, p1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->putInt(Ljava/lang/String;I)V

    #@6
    .line 1376
    return-void
.end method

.method public saveCurrentInputMethodAndSubtypeToHistory(Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 2
    .param p1, "curMethodId"    # Ljava/lang/String;
    .param p2, "currentSubtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    #@0
    .prologue
    .line 1425
    invoke-static {}, Lcom/android/internal/inputmethod/InputMethodUtils;->-get0()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 1426
    .local v0, "subtypeId":Ljava/lang/String;
    if-eqz p2, :cond_0

    #@6
    .line 1427
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    #@9
    move-result v1

    #@a
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    .line 1429
    :cond_0
    invoke-static {p2}, Lcom/android/internal/inputmethod/InputMethodUtils;->canAddToLastInputMethod(Landroid/view/inputmethod/InputMethodSubtype;)Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_1

    #@14
    .line 1430
    invoke-direct {p0, p1, v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->addSubtypeToHistory(Ljava/lang/String;Ljava/lang/String;)V

    #@17
    .line 1424
    :cond_1
    return-void
.end method

.method public setCurrentProfileIds([I)V
    .locals 1
    .param p1, "currentProfileIds"    # [I

    #@0
    .prologue
    .line 1027
    monitor-enter p0

    #@1
    .line 1028
    :try_start_0
    iput-object p1, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentProfileIds:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    .line 1026
    return-void

    #@5
    .line 1027
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public setShowImeWithHardKeyboard(Z)V
    .locals 1
    .param p1, "show"    # Z

    #@0
    .prologue
    .line 1406
    const-string/jumbo v0, "show_ime_with_hard_keyboard"

    #@3
    invoke-direct {p0, v0, p1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->putBoolean(Ljava/lang/String;Z)V

    #@6
    .line 1405
    return-void
.end method

.method public switchCurrentUser(IZ)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "copyOnWrite"    # Z

    #@0
    .prologue
    .line 973
    iget v0, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentUserId:I

    #@2
    if-ne v0, p1, :cond_0

    #@4
    iget-boolean v0, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWrite:Z

    #@6
    if-eq v0, p2, :cond_1

    #@8
    .line 974
    :cond_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWriteDataStore:Ljava/util/HashMap;

    #@a
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    #@d
    .line 975
    const-string/jumbo v0, ""

    #@10
    iput-object v0, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mEnabledInputMethodsStrCache:Ljava/lang/String;

    #@12
    .line 978
    :cond_1
    iput p1, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentUserId:I

    #@14
    .line 979
    iput-boolean p2, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWrite:Z

    #@16
    .line 969
    return-void
.end method
