.class abstract Lcom/android/server/pm/ShortcutPackageItem;
.super Ljava/lang/Object;
.source "ShortcutPackageItem.java"


# static fields
.field private static final KEY_NAME:Ljava/lang/String; = "name"

.field private static final TAG:Ljava/lang/String; = "ShortcutService"


# instance fields
.field private final mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

.field private final mPackageName:Ljava/lang/String;

.field private final mPackageUserId:I

.field protected mShortcutUser:Lcom/android/server/pm/ShortcutUser;


# direct methods
.method protected constructor <init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;Lcom/android/server/pm/ShortcutPackageInfo;)V
    .locals 1
    .param p1, "shortcutUser"    # Lcom/android/server/pm/ShortcutUser;
    .param p2, "packageUserId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "packageInfo"    # Lcom/android/server/pm/ShortcutPackageInfo;

    #@0
    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 48
    iput-object p1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    #@5
    .line 49
    iput p2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    #@7
    .line 50
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Ljava/lang/String;

    #@d
    iput-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    #@f
    .line 51
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lcom/android/server/pm/ShortcutPackageInfo;

    #@15
    iput-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    #@17
    .line 47
    return-void
.end method


# virtual methods
.method public attemptToRestoreIfNeededAndSave()V
    .locals 4

    #@0
    .prologue
    .line 98
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    #@2
    invoke-virtual {v2}, Lcom/android/server/pm/ShortcutPackageInfo;->isShadow()Z

    #@5
    move-result v2

    #@6
    if-nez v2, :cond_0

    #@8
    .line 99
    return-void

    #@9
    .line 101
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    #@b
    iget-object v1, v2, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    #@d
    .line 102
    .local v1, "s":Lcom/android/server/pm/ShortcutService;
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    #@f
    iget v3, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    #@11
    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/ShortcutService;->isPackageInstalled(Ljava/lang/String;I)Z

    #@14
    move-result v2

    #@15
    if-nez v2, :cond_1

    #@17
    .line 107
    return-void

    #@18
    .line 109
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    #@1a
    invoke-virtual {v2}, Lcom/android/server/pm/ShortcutPackageInfo;->hasSignatures()Z

    #@1d
    move-result v2

    #@1e
    if-nez v2, :cond_2

    #@20
    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v3, "Attempted to restore package "

    #@28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    #@2e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    const-string/jumbo v3, ", user="

    #@35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v2

    #@39
    iget v3, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    #@3b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v2

    #@3f
    .line 111
    const-string/jumbo v3, " but signatures not found in the restore data."

    #@42
    .line 110
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v2

    #@46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v2

    #@4a
    invoke-virtual {v1, v2}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    #@4d
    .line 112
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->onRestoreBlocked()V

    #@50
    .line 113
    return-void

    #@51
    .line 116
    :cond_2
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    #@53
    iget v3, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    #@55
    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/ShortcutService;->getPackageInfoWithSignatures(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@58
    move-result-object v0

    #@59
    .line 117
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    #@5b
    invoke-virtual {v2, v1, v0}, Lcom/android/server/pm/ShortcutPackageInfo;->canRestoreTo(Lcom/android/server/pm/ShortcutService;Landroid/content/pm/PackageInfo;)Z

    #@5e
    move-result v2

    #@5f
    if-nez v2, :cond_3

    #@61
    .line 119
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->onRestoreBlocked()V

    #@64
    .line 120
    return-void

    #@65
    .line 127
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->onRestored()V

    #@68
    .line 130
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    #@6a
    const/4 v3, 0x0

    #@6b
    invoke-virtual {v2, v3}, Lcom/android/server/pm/ShortcutPackageInfo;->setShadow(Z)V

    #@6e
    .line 132
    iget v2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    #@70
    invoke-virtual {v1, v2}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    #@73
    .line 97
    return-void
.end method

.method public dumpCheckin(Z)Lorg/json/JSONObject;
    .locals 3
    .param p1, "clear"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    .line 150
    new-instance v0, Lorg/json/JSONObject;

    #@2
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    #@5
    .line 151
    .local v0, "result":Lorg/json/JSONObject;
    const-string/jumbo v1, "name"

    #@8
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    #@a
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@d
    .line 152
    return-object v0
.end method

.method public abstract getOwnerUserId()I
.end method

.method public getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;
    .locals 1

    #@0
    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    #@2
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPackageUserId()I
    .locals 1

    #@0
    .prologue
    .line 71
    iget v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    #@2
    return v0
.end method

.method public getUser()Lcom/android/server/pm/ShortcutUser;
    .locals 1

    #@0
    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    #@2
    return-object v0
.end method

.method protected abstract onRestoreBlocked()V
.end method

.method protected abstract onRestored()V
.end method

.method public refreshPackageSignatureAndSave()V
    .locals 2

    #@0
    .prologue
    .line 89
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    #@2
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutPackageInfo;->isShadow()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 90
    return-void

    #@9
    .line 92
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    #@b
    iget-object v0, v1, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    #@d
    .line 93
    .local v0, "s":Lcom/android/server/pm/ShortcutService;
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    #@f
    invoke-virtual {v1, v0, p0}, Lcom/android/server/pm/ShortcutPackageInfo;->refreshSignature(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutPackageItem;)V

    #@12
    .line 94
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getOwnerUserId()I

    #@15
    move-result v1

    #@16
    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    #@19
    .line 88
    return-void
.end method

.method public replaceUser(Lcom/android/server/pm/ShortcutUser;)V
    .locals 0
    .param p1, "user"    # Lcom/android/server/pm/ShortcutUser;

    #@0
    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    #@2
    .line 57
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

.method public verifyStates()V
    .locals 0

    #@0
    .prologue
    .line 158
    return-void
.end method
