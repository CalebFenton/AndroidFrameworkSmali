.class public Lcom/android/server/backup/PreferredActivityBackupHelper;
.super Landroid/app/backup/BlobBackupHelper;
.source "PreferredActivityBackupHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/PreferredActivityBackupHelper$Key;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist KEYS:[Ljava/lang/String;

.field private static final blacklist KEY_DEFAULT_APPS:Ljava/lang/String; = "default-apps"

.field private static final blacklist KEY_DOMAIN_VERIFICATION:Ljava/lang/String; = "domain-verification"

.field private static final blacklist KEY_INTENT_VERIFICATION:Ljava/lang/String; = "intent-verification"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final blacklist KEY_PREFERRED:Ljava/lang/String; = "preferred-activity"

.field private static final blacklist STATE_VERSION:I = 0x4

.field private static final blacklist TAG:Ljava/lang/String; = "PreferredBackup"


# instance fields
.field private final blacklist mUserId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 53
    const-string v0, "intent-verification"

    const-string v1, "domain-verification"

    const-string/jumbo v2, "preferred-activity"

    const-string v3, "default-apps"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/backup/PreferredActivityBackupHelper;->KEYS:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 73
    const/4 v0, 0x4

    sget-object v1, Lcom/android/server/backup/PreferredActivityBackupHelper;->KEYS:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Landroid/app/backup/BlobBackupHelper;-><init>(I[Ljava/lang/String;)V

    .line 74
    iput p1, p0, Lcom/android/server/backup/PreferredActivityBackupHelper;->mUserId:I

    .line 75
    return-void
.end method


# virtual methods
.method protected blacklist applyRestoredPayload(Ljava/lang/String;[B)V
    .registers 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "payload"    # [B

    .line 105
    const-string v0, "PreferredBackup"

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 110
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    :try_start_6
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_7e

    :cond_d
    goto :goto_37

    :sswitch_e
    const-string/jumbo v2, "preferred-activity"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v2, 0x0

    goto :goto_38

    :sswitch_19
    const-string v2, "intent-verification"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v2, 0x2

    goto :goto_38

    :sswitch_23
    const-string v2, "domain-verification"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v2, 0x3

    goto :goto_38

    :sswitch_2d
    const-string v2, "default-apps"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v2, 0x1

    goto :goto_38

    :goto_37
    const/4 v2, -0x1

    :goto_38
    packed-switch v2, :pswitch_data_90

    .line 124
    goto :goto_4f

    .line 121
    :pswitch_3c
    iget v2, p0, Lcom/android/server/backup/PreferredActivityBackupHelper;->mUserId:I

    invoke-interface {v1, p2, v2}, Landroid/content/pm/IPackageManager;->restoreDomainVerification([BI)V

    .line 122
    goto :goto_65

    .line 119
    :pswitch_42
    goto :goto_65

    .line 115
    :pswitch_43
    iget v2, p0, Lcom/android/server/backup/PreferredActivityBackupHelper;->mUserId:I

    invoke-interface {v1, p2, v2}, Landroid/content/pm/IPackageManager;->restoreDefaultApps([BI)V

    .line 116
    goto :goto_65

    .line 112
    :pswitch_49
    iget v2, p0, Lcom/android/server/backup/PreferredActivityBackupHelper;->mUserId:I

    invoke-interface {v1, p2, v2}, Landroid/content/pm/IPackageManager;->restorePreferredActivities([BI)V

    .line 113
    goto :goto_65

    .line 124
    :goto_4f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected restore key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_65} :catch_66

    .line 128
    :goto_65
    goto :goto_7d

    .line 126
    :catch_66
    move-exception v2

    .line 127
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to restore key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_7d
    return-void

    :sswitch_data_7e
    .sparse-switch
        -0x298b2982 -> :sswitch_2d
        -0x20befb7c -> :sswitch_23
        -0x19949e54 -> :sswitch_19
        0x4fa3eadb -> :sswitch_e
    .end sparse-switch

    :pswitch_data_90
    .packed-switch 0x0
        :pswitch_49
        :pswitch_43
        :pswitch_42
        :pswitch_3c
    .end packed-switch
.end method

.method protected blacklist getBackupPayload(Ljava/lang/String;)[B
    .registers 8
    .param p1, "key"    # Ljava/lang/String;

    .line 79
    const-string v0, "PreferredBackup"

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 84
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    const/4 v2, 0x0

    :try_start_7
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_82

    :cond_e
    goto :goto_38

    :sswitch_f
    const-string/jumbo v3, "preferred-activity"

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v3, 0x0

    goto :goto_39

    :sswitch_1a
    const-string v3, "intent-verification"

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v3, 0x2

    goto :goto_39

    :sswitch_24
    const-string v3, "domain-verification"

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v3, 0x3

    goto :goto_39

    :sswitch_2e
    const-string v3, "default-apps"

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v3, 0x1

    goto :goto_39

    :goto_38
    const/4 v3, -0x1

    :goto_39
    packed-switch v3, :pswitch_data_94

    .line 95
    goto :goto_53

    .line 93
    :pswitch_3d
    iget v3, p0, Lcom/android/server/backup/PreferredActivityBackupHelper;->mUserId:I

    invoke-interface {v1, v3}, Landroid/content/pm/IPackageManager;->getDomainVerificationBackup(I)[B

    move-result-object v0

    return-object v0

    .line 91
    :pswitch_44
    return-object v2

    .line 88
    :pswitch_45
    iget v3, p0, Lcom/android/server/backup/PreferredActivityBackupHelper;->mUserId:I

    invoke-interface {v1, v3}, Landroid/content/pm/IPackageManager;->getDefaultAppsBackup(I)[B

    move-result-object v0

    return-object v0

    .line 86
    :pswitch_4c
    iget v3, p0, Lcom/android/server/backup/PreferredActivityBackupHelper;->mUserId:I

    invoke-interface {v1, v3}, Landroid/content/pm/IPackageManager;->getPreferredActivityBackup(I)[B

    move-result-object v0

    return-object v0

    .line 95
    :goto_53
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected backup key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_69} :catch_6a

    .line 99
    goto :goto_81

    .line 97
    :catch_6a
    move-exception v3

    .line 98
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to store payload "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_81
    return-object v2

    :sswitch_data_82
    .sparse-switch
        -0x298b2982 -> :sswitch_2e
        -0x20befb7c -> :sswitch_24
        -0x19949e54 -> :sswitch_1a
        0x4fa3eadb -> :sswitch_f
    .end sparse-switch

    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_4c
        :pswitch_45
        :pswitch_44
        :pswitch_3d
    .end packed-switch
.end method
