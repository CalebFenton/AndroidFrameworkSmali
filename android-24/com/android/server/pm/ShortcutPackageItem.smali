.class abstract Lcom/android/server/pm/ShortcutPackageItem;
.super Ljava/lang/Object;
.source "ShortcutPackageItem.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ShortcutService"


# instance fields
.field private final mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

.field private final mPackageName:Ljava/lang/String;

.field private final mPackageUserId:I

.field protected final mShortcutUser:Lcom/android/server/pm/ShortcutUser;


# direct methods
.method protected constructor <init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;Lcom/android/server/pm/ShortcutPackageInfo;)V
    .locals 1
    .param p1, "shortcutUser"    # Lcom/android/server/pm/ShortcutUser;
    .param p2, "packageUserId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "packageInfo"    # Lcom/android/server/pm/ShortcutPackageInfo;

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 42
    iput-object p1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    #@5
    .line 43
    iput p2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    #@7
    .line 44
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Ljava/lang/String;

    #@d
    iput-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    #@f
    .line 45
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lcom/android/server/pm/ShortcutPackageInfo;

    #@15
    iput-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    #@17
    .line 41
    return-void
.end method


# virtual methods
.method public attemptToRestoreIfNeededAndSave(Lcom/android/server/pm/ShortcutService;)V
    .locals 3
    .param p1, "s"    # Lcom/android/server/pm/ShortcutService;

    #@0
    .prologue
    .line 81
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    #@2
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutPackageInfo;->isShadow()Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    .line 82
    return-void

    #@9
    .line 84
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    #@b
    iget v2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    #@d
    invoke-virtual {p1, v1, v2}, Lcom/android/server/pm/ShortcutService;->isPackageInstalled(Ljava/lang/String;I)Z

    #@10
    move-result v1

    #@11
    if-nez v1, :cond_1

    #@13
    .line 89
    return-void

    #@14
    .line 91
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    #@16
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutPackageInfo;->hasSignatures()Z

    #@19
    move-result v1

    #@1a
    if-nez v1, :cond_2

    #@1c
    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v2, "Attempted to restore package "

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    const-string/jumbo v2, ", user="

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    iget v2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    #@37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    .line 93
    const-string/jumbo v2, " but signatures not found in the restore data."

    #@3e
    .line 92
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v1

    #@46
    invoke-virtual {p1, v1}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    #@49
    .line 94
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutPackageItem;->onRestoreBlocked(Lcom/android/server/pm/ShortcutService;)V

    #@4c
    .line 95
    return-void

    #@4d
    .line 98
    :cond_2
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    #@4f
    iget v2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    #@51
    invoke-virtual {p1, v1, v2}, Lcom/android/server/pm/ShortcutService;->getPackageInfoWithSignatures(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@54
    move-result-object v0

    #@55
    .line 99
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    #@57
    invoke-virtual {v1, p1, v0}, Lcom/android/server/pm/ShortcutPackageInfo;->canRestoreTo(Lcom/android/server/pm/ShortcutService;Landroid/content/pm/PackageInfo;)Z

    #@5a
    move-result v1

    #@5b
    if-nez v1, :cond_3

    #@5d
    .line 101
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutPackageItem;->onRestoreBlocked(Lcom/android/server/pm/ShortcutService;)V

    #@60
    .line 102
    return-void

    #@61
    .line 109
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutPackageItem;->onRestored(Lcom/android/server/pm/ShortcutService;)V

    #@64
    .line 112
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    #@66
    const/4 v2, 0x0

    #@67
    invoke-virtual {v1, v2}, Lcom/android/server/pm/ShortcutPackageInfo;->setShadow(Z)V

    #@6a
    .line 114
    iget v1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    #@6c
    invoke-virtual {p1, v1}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    #@6f
    .line 80
    return-void
.end method

.method public abstract getOwnerUserId()I
.end method

.method public getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;
    .locals 1

    #@0
    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    #@2
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPackageUserId()I
    .locals 1

    #@0
    .prologue
    .line 55
    iget v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    #@2
    return v0
.end method

.method protected abstract onRestoreBlocked(Lcom/android/server/pm/ShortcutService;)V
.end method

.method protected abstract onRestored(Lcom/android/server/pm/ShortcutService;)V
.end method

.method public refreshPackageInfoAndSave(Lcom/android/server/pm/ShortcutService;)V
    .locals 1
    .param p1, "s"    # Lcom/android/server/pm/ShortcutService;

    #@0
    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    #@2
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackageInfo;->isShadow()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 74
    return-void

    #@9
    .line 76
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    #@b
    invoke-virtual {v0, p1, p0}, Lcom/android/server/pm/ShortcutPackageInfo;->refresh(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutPackageItem;)V

    #@e
    .line 77
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getOwnerUserId()I

    #@11
    move-result v0

    #@12
    invoke-virtual {p1, v0}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    #@15
    .line 72
    return-void
.end method

.method public abstract saveToXml(Lorg/xmlpull/v1/XmlSerializer;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method
