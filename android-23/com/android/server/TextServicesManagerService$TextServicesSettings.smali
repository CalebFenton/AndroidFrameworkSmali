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
.field private mCurrentProfileIds:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mCurrentUserId:I

.field private mLock:Ljava/lang/Object;

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;I)V
    .locals 1
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 1031
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1028
    const/4 v0, 0x0

    #@4
    new-array v0, v0, [I

    #@6
    iput-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentProfileIds:[I

    #@8
    .line 1029
    new-instance v0, Ljava/lang/Object;

    #@a
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@d
    iput-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mLock:Ljava/lang/Object;

    #@f
    .line 1032
    iput-object p1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mResolver:Landroid/content/ContentResolver;

    #@11
    .line 1033
    iput p2, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

    #@13
    .line 1031
    return-void
.end method


# virtual methods
.method public getCurrentUserId()I
    .locals 1

    #@0
    .prologue
    .line 1062
    iget v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

    #@2
    return v0
.end method

.method public getSelectedSpellChecker()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 1082
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mResolver:Landroid/content/ContentResolver;

    #@2
    .line 1083
    const-string/jumbo v1, "selected_spell_checker"

    #@5
    iget v2, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

    #@7
    .line 1082
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public getSelectedSpellCheckerSubtype()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 1087
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mResolver:Landroid/content/ContentResolver;

    #@2
    .line 1088
    const-string/jumbo v1, "selected_spell_checker_subtype"

    #@5
    iget v2, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

    #@7
    .line 1087
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public isCurrentProfile(I)Z
    .locals 4
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 1052
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v2

    #@4
    .line 1053
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
    .line 1054
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
    .line 1055
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
    .line 1054
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 1057
    :cond_2
    const/4 v1, 0x0

    #@1c
    monitor-exit v2

    #@1d
    return v1

    #@1e
    .line 1052
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    #@1f
    monitor-exit v2

    #@20
    throw v1
.end method

.method public isSpellCheckerEnabled()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 1092
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mResolver:Landroid/content/ContentResolver;

    #@3
    .line 1093
    const-string/jumbo v2, "spell_checker_enabled"

    #@6
    iget v3, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

    #@8
    .line 1092
    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@b
    move-result v1

    #@c
    if-ne v1, v0, :cond_0

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    const/4 v0, 0x0

    #@10
    goto :goto_0
.end method

.method public putSelectedSpellChecker(Ljava/lang/String;)V
    .locals 3
    .param p1, "sciId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1066
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mResolver:Landroid/content/ContentResolver;

    #@2
    .line 1067
    const-string/jumbo v1, "selected_spell_checker"

    #@5
    iget v2, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

    #@7
    .line 1066
    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    #@a
    .line 1065
    return-void
.end method

.method public putSelectedSpellCheckerSubtype(I)V
    .locals 4
    .param p1, "hashCode"    # I

    #@0
    .prologue
    .line 1071
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mResolver:Landroid/content/ContentResolver;

    #@2
    .line 1072
    const-string/jumbo v1, "selected_spell_checker_subtype"

    #@5
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    .line 1073
    iget v3, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

    #@b
    .line 1071
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    #@e
    .line 1070
    return-void
.end method

.method public setCurrentProfileIds([I)V
    .locals 2
    .param p1, "currentProfileIds"    # [I

    #@0
    .prologue
    .line 1046
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 1047
    :try_start_0
    iput-object p1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentProfileIds:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    .line 1045
    return-void

    #@7
    .line 1046
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public setCurrentUserId(I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1042
    iput p1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

    #@2
    .line 1036
    return-void
.end method

.method public setSpellCheckerEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 1077
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mResolver:Landroid/content/ContentResolver;

    #@2
    .line 1078
    const-string/jumbo v2, "spell_checker_enabled"

    #@5
    if-eqz p1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    iget v3, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

    #@a
    .line 1077
    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    #@d
    .line 1076
    return-void

    #@e
    .line 1078
    :cond_0
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method
