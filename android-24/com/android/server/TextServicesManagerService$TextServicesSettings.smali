.class Lcom/android/server/TextServicesManagerService$TextServicesSettings;
.super Ljava/lang/Object;
.source "TextServicesManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TextServicesManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextServicesSettings"
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
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mCurrentUserId:I

.field private mLock:Ljava/lang/Object;

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;IZ)V
    .locals 2
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "userId"    # I
    .param p3, "copyOnWrite"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1054
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 1045
    new-array v0, v1, [I

    #@6
    iput-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentProfileIds:[I

    #@8
    .line 1046
    new-instance v0, Ljava/lang/Object;

    #@a
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@d
    iput-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mLock:Ljava/lang/Object;

    #@f
    .line 1051
    new-instance v0, Ljava/util/HashMap;

    #@11
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@14
    iput-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCopyOnWriteDataStore:Ljava/util/HashMap;

    #@16
    .line 1052
    iput-boolean v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCopyOnWrite:Z

    #@18
    .line 1056
    iput-object p1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mResolver:Landroid/content/ContentResolver;

    #@1a
    .line 1057
    invoke-virtual {p0, p2, p3}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->switchCurrentUser(IZ)V

    #@1d
    .line 1055
    return-void
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
    .line 1123
    if-eqz p2, :cond_0

    #@4
    move v0, v1

    #@5
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->getInt(Ljava/lang/String;I)I

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

.method private getInt(Ljava/lang/String;I)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    #@0
    .prologue
    .line 1111
    iget-boolean v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCopyOnWrite:Z

    #@2
    if-eqz v1, :cond_1

    #@4
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCopyOnWriteDataStore:Ljava/util/HashMap;

    #@6
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_1

    #@c
    .line 1112
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCopyOnWriteDataStore:Ljava/util/HashMap;

    #@e
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Ljava/lang/String;

    #@14
    .line 1113
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
    .line 1115
    .end local v0    # "result":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mResolver:Landroid/content/ContentResolver;

    #@1f
    iget v2, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

    #@21
    invoke-static {v1, p1, p2, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@24
    move-result v1

    #@25
    return v1
.end method

.method private getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1094
    iget-boolean v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCopyOnWrite:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCopyOnWriteDataStore:Ljava/util/HashMap;

    #@6
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 1095
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCopyOnWriteDataStore:Ljava/util/HashMap;

    #@e
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Ljava/lang/String;

    #@14
    .line 1099
    .local v0, "result":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_1

    #@16
    .end local v0    # "result":Ljava/lang/String;
    :goto_1
    return-object v0

    #@17
    .line 1097
    :cond_0
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mResolver:Landroid/content/ContentResolver;

    #@19
    iget v2, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

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
    .line 1099
    goto :goto_1
.end method

.method private putBoolean(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    #@0
    .prologue
    .line 1119
    if-eqz p2, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->putInt(Ljava/lang/String;I)V

    #@6
    .line 1118
    return-void

    #@7
    .line 1119
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method private putInt(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    #@0
    .prologue
    .line 1103
    iget-boolean v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCopyOnWrite:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1104
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCopyOnWriteDataStore:Ljava/util/HashMap;

    #@6
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    .line 1102
    :goto_0
    return-void

    #@e
    .line 1106
    :cond_0
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mResolver:Landroid/content/ContentResolver;

    #@10
    iget v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

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
    .line 1084
    iget-boolean v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCopyOnWrite:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1085
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCopyOnWriteDataStore:Ljava/util/HashMap;

    #@6
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 1083
    :goto_0
    return-void

    #@a
    .line 1087
    :cond_0
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mResolver:Landroid/content/ContentResolver;

    #@c
    iget v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

    #@e
    invoke-static {v0, p1, p2, v1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    #@11
    goto :goto_0
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1179
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
    iget v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1d
    .line 1180
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
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentProfileIds:[I

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
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3e
    .line 1181
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
    iget-boolean v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCopyOnWrite:Z

    #@50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@53
    move-result-object v0

    #@54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v0

    #@58
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5b
    .line 1178
    return-void
.end method

.method public getCurrentUserId()I
    .locals 1

    #@0
    .prologue
    .line 1144
    iget v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

    #@2
    return v0
.end method

.method public getSelectedSpellChecker()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1167
    const-string/jumbo v0, "selected_spell_checker"

    #@3
    const-string/jumbo v1, ""

    #@6
    invoke-direct {p0, v0, v1}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getSelectedSpellCheckerSubtype(I)I
    .locals 1
    .param p1, "defaultValue"    # I

    #@0
    .prologue
    .line 1171
    const-string/jumbo v0, "selected_spell_checker_subtype"

    #@3
    invoke-direct {p0, v0, p1}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->getInt(Ljava/lang/String;I)I

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public isCurrentProfile(I)Z
    .locals 4
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 1133
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v2

    #@4
    .line 1134
    :try_start_0
    iget v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    if-ne p1, v1, :cond_0

    #@8
    monitor-exit v2

    #@9
    return v3

    #@a
    .line 1135
    :cond_0
    const/4 v0, 0x0

    #@b
    .local v0, "i":I
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentProfileIds:[I

    #@d
    array-length v1, v1

    #@e
    if-ge v0, v1, :cond_2

    #@10
    .line 1136
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentProfileIds:[I

    #@12
    aget v1, v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    if-ne p1, v1, :cond_1

    #@16
    monitor-exit v2

    #@17
    return v3

    #@18
    .line 1135
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 1138
    :cond_2
    const/4 v1, 0x0

    #@1c
    monitor-exit v2

    #@1d
    return v1

    #@1e
    .line 1133
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    #@1f
    monitor-exit v2

    #@20
    throw v1
.end method

.method public isSpellCheckerEnabled()Z
    .locals 2

    #@0
    .prologue
    .line 1175
    const-string/jumbo v0, "spell_checker_enabled"

    #@3
    const/4 v1, 0x1

    #@4
    invoke-direct {p0, v0, v1}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->getBoolean(Ljava/lang/String;Z)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public putSelectedSpellChecker(Ljava/lang/String;)V
    .locals 2
    .param p1, "sciId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1148
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1151
    const-string/jumbo v0, "selected_spell_checker"

    #@9
    const/4 v1, 0x0

    #@a
    invoke-direct {p0, v0, v1}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@d
    .line 1147
    :goto_0
    return-void

    #@e
    .line 1153
    :cond_0
    const-string/jumbo v0, "selected_spell_checker"

    #@11
    invoke-direct {p0, v0, p1}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@14
    goto :goto_0
.end method

.method public putSelectedSpellCheckerSubtype(I)V
    .locals 1
    .param p1, "hashCode"    # I

    #@0
    .prologue
    .line 1158
    const-string/jumbo v0, "selected_spell_checker_subtype"

    #@3
    invoke-direct {p0, v0, p1}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->putInt(Ljava/lang/String;I)V

    #@6
    .line 1157
    return-void
.end method

.method public setCurrentProfileIds([I)V
    .locals 2
    .param p1, "currentProfileIds"    # [I

    #@0
    .prologue
    .line 1127
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 1128
    :try_start_0
    iput-object p1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentProfileIds:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    .line 1126
    return-void

    #@7
    .line 1127
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public setSpellCheckerEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 1162
    const-string/jumbo v0, "spell_checker_enabled"

    #@3
    invoke-direct {p0, v0, p1}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->putBoolean(Ljava/lang/String;Z)V

    #@6
    .line 1161
    return-void
.end method

.method public switchCurrentUser(IZ)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "copyOnWrite"    # Z

    #@0
    .prologue
    .line 1073
    iget v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

    #@2
    if-ne v0, p1, :cond_0

    #@4
    iget-boolean v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCopyOnWrite:Z

    #@6
    if-eq v0, p2, :cond_1

    #@8
    .line 1074
    :cond_0
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCopyOnWriteDataStore:Ljava/util/HashMap;

    #@a
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    #@d
    .line 1078
    :cond_1
    iput p1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

    #@f
    .line 1079
    iput-boolean p2, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCopyOnWrite:Z

    #@11
    .line 1068
    return-void
.end method
