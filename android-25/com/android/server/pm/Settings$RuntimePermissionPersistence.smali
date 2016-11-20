.class final Lcom/android/server/pm/Settings$RuntimePermissionPersistence;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RuntimePermissionPersistence"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;
    }
.end annotation


# static fields
.field private static final MAX_WRITE_PERMISSIONS_DELAY_MILLIS:J = 0x7d0L

.field private static final WRITE_PERMISSIONS_DELAY_MILLIS:J = 0xc8L


# instance fields
.field private final mDefaultPermissionsGranted:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mFingerprints:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mLastNotWrittenMutationTimesMillis:Landroid/util/SparseLongArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mWriteScheduled:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/pm/Settings;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->onUserRemovedLPw(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsSync(I)V

    #@3
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/Settings;Ljava/lang/Object;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/pm/Settings;
    .param p2, "lock"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 4934
    iput-object p1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 4915
    new-instance v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;

    #@7
    invoke-direct {v0, p0}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;-><init>(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;)V

    #@a
    iput-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    #@c
    .line 4920
    new-instance v0, Landroid/util/SparseBooleanArray;

    #@e
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    #@11
    iput-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mWriteScheduled:Landroid/util/SparseBooleanArray;

    #@13
    .line 4924
    new-instance v0, Landroid/util/SparseLongArray;

    #@15
    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    #@18
    iput-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLastNotWrittenMutationTimesMillis:Landroid/util/SparseLongArray;

    #@1a
    .line 4928
    new-instance v0, Landroid/util/SparseArray;

    #@1c
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@1f
    iput-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    #@21
    .line 4932
    new-instance v0, Landroid/util/SparseBooleanArray;

    #@23
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    #@26
    iput-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mDefaultPermissionsGranted:Landroid/util/SparseBooleanArray;

    #@28
    .line 4935
    iput-object p2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLock:Ljava/lang/Object;

    #@2a
    .line 4934
    return-void
.end method

.method private onUserRemovedLPw(I)V
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 5121
    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    #@2
    invoke-virtual {v2, p1}, Landroid/os/Handler;->removeMessages(I)V

    #@5
    .line 5123
    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    #@7
    iget-object v2, v2, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@9
    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@c
    move-result-object v2

    #@d
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v1

    #@11
    .local v1, "sb$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_0

    #@17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Lcom/android/server/pm/PackageSetting;

    #@1d
    .line 5124
    .local v0, "sb":Lcom/android/server/pm/SettingBase;
    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->revokeRuntimePermissionsAndClearFlags(Lcom/android/server/pm/SettingBase;I)V

    #@20
    goto :goto_0

    #@21
    .line 5127
    .end local v0    # "sb":Lcom/android/server/pm/SettingBase;
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    #@23
    iget-object v2, v2, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    #@25
    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@28
    move-result-object v2

    #@29
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2c
    move-result-object v1

    #@2d
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@30
    move-result v2

    #@31
    if-eqz v2, :cond_1

    #@33
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@36
    move-result-object v0

    #@37
    check-cast v0, Lcom/android/server/pm/SharedUserSetting;

    #@39
    .line 5128
    .restart local v0    # "sb":Lcom/android/server/pm/SettingBase;
    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->revokeRuntimePermissionsAndClearFlags(Lcom/android/server/pm/SettingBase;I)V

    #@3c
    goto :goto_1

    #@3d
    .line 5131
    .end local v0    # "sb":Lcom/android/server/pm/SettingBase;
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mDefaultPermissionsGranted:Landroid/util/SparseBooleanArray;

    #@3f
    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    #@42
    .line 5132
    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    #@44
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    #@47
    .line 5119
    return-void
.end method

.method private parsePermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PermissionsState;I)V
    .locals 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "permissionsState"    # Lcom/android/server/pm/PermissionsState;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 5289
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@3
    move-result v6

    #@4
    .line 5291
    .local v6, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@7
    move-result v7

    #@8
    .local v7, "type":I
    const/4 v8, 0x1

    #@9
    if-eq v7, v8, :cond_6

    #@b
    .line 5292
    const/4 v8, 0x3

    #@c
    if-ne v7, v8, :cond_1

    #@e
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@11
    move-result v8

    #@12
    if-le v8, v6, :cond_6

    #@14
    .line 5293
    :cond_1
    const/4 v8, 0x3

    #@15
    if-eq v7, v8, :cond_0

    #@17
    const/4 v8, 0x4

    #@18
    if-eq v7, v8, :cond_0

    #@1a
    .line 5297
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1d
    move-result-object v8

    #@1e
    const-string/jumbo v9, "item"

    #@21
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v8

    #@25
    if-eqz v8, :cond_0

    #@27
    .line 5299
    const-string/jumbo v8, "name"

    #@2a
    const/4 v9, 0x0

    #@2b
    invoke-interface {p1, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2e
    move-result-object v5

    #@2f
    .line 5300
    .local v5, "name":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    #@31
    iget-object v8, v8, Lcom/android/server/pm/Settings;->mPermissions:Landroid/util/ArrayMap;

    #@33
    invoke-virtual {v8, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@36
    move-result-object v0

    #@37
    check-cast v0, Lcom/android/server/pm/BasePermission;

    #@39
    .line 5301
    .local v0, "bp":Lcom/android/server/pm/BasePermission;
    if-nez v0, :cond_2

    #@3b
    .line 5302
    const-string/jumbo v8, "PackageManager"

    #@3e
    new-instance v9, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string/jumbo v10, "Unknown permission:"

    #@46
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v9

    #@4a
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v9

    #@4e
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v9

    #@52
    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@55
    .line 5303
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@58
    goto :goto_0

    #@59
    .line 5307
    :cond_2
    const-string/jumbo v8, "granted"

    #@5c
    const/4 v9, 0x0

    #@5d
    invoke-interface {p1, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@60
    move-result-object v4

    #@61
    .line 5308
    .local v4, "grantedStr":Ljava/lang/String;
    if-eqz v4, :cond_3

    #@63
    .line 5309
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@66
    move-result v3

    #@67
    .line 5311
    :goto_1
    const-string/jumbo v8, "flags"

    #@6a
    const/4 v9, 0x0

    #@6b
    invoke-interface {p1, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@6e
    move-result-object v2

    #@6f
    .line 5312
    .local v2, "flagsStr":Ljava/lang/String;
    if-eqz v2, :cond_4

    #@71
    .line 5313
    const/16 v8, 0x10

    #@73
    invoke-static {v2, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@76
    move-result v1

    #@77
    .line 5315
    .local v1, "flags":I
    :goto_2
    if-eqz v3, :cond_5

    #@79
    .line 5316
    invoke-virtual {p2, v0, p3}, Lcom/android/server/pm/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/BasePermission;I)I

    #@7c
    .line 5318
    const/16 v8, 0xff

    #@7e
    .line 5317
    invoke-virtual {p2, v0, p3, v8, v1}, Lcom/android/server/pm/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/BasePermission;III)Z

    #@81
    goto :goto_0

    #@82
    .line 5308
    .end local v1    # "flags":I
    .end local v2    # "flagsStr":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x1

    #@83
    .local v3, "granted":Z
    goto :goto_1

    #@84
    .line 5313
    .end local v3    # "granted":Z
    .restart local v2    # "flagsStr":Ljava/lang/String;
    :cond_4
    const/4 v1, 0x0

    #@85
    .restart local v1    # "flags":I
    goto :goto_2

    #@86
    .line 5321
    :cond_5
    const/16 v8, 0xff

    #@88
    .line 5320
    invoke-virtual {p2, v0, p3, v8, v1}, Lcom/android/server/pm/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/BasePermission;III)Z

    #@8b
    goto/16 :goto_0

    #@8d
    .line 5288
    .end local v0    # "bp":Lcom/android/server/pm/BasePermission;
    .end local v1    # "flags":I
    .end local v2    # "flagsStr":Ljava/lang/String;
    .end local v4    # "grantedStr":Ljava/lang/String;
    .end local v5    # "name":Ljava/lang/String;
    :cond_6
    return-void
.end method

.method private parseRestoredRuntimePermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)V
    .locals 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x3

    #@1
    const/4 v8, 0x0

    #@2
    .line 5254
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@5
    move-result v6

    #@6
    .line 5256
    .local v6, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@9
    move-result v7

    #@a
    .local v7, "type":I
    const/4 v0, 0x1

    #@b
    if-eq v7, v0, :cond_6

    #@d
    .line 5257
    if-ne v7, v9, :cond_1

    #@f
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@12
    move-result v0

    #@13
    if-le v0, v6, :cond_6

    #@15
    .line 5258
    :cond_1
    if-eq v7, v9, :cond_0

    #@17
    const/4 v0, 0x4

    #@18
    if-eq v7, v0, :cond_0

    #@1a
    .line 5262
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    const-string/jumbo v1, "perm"

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v0

    #@25
    if-eqz v0, :cond_0

    #@27
    .line 5264
    const-string/jumbo v0, "name"

    #@2a
    invoke-interface {p1, v8, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    .line 5265
    .local v2, "permName":Ljava/lang/String;
    const-string/jumbo v0, "true"

    #@31
    .line 5266
    const-string/jumbo v1, "granted"

    #@34
    invoke-interface {p1, v8, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@37
    move-result-object v1

    #@38
    .line 5265
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3b
    move-result v3

    #@3c
    .line 5268
    .local v3, "isGranted":Z
    const/4 v4, 0x0

    #@3d
    .line 5269
    .local v4, "permBits":I
    const-string/jumbo v0, "true"

    #@40
    const-string/jumbo v1, "set"

    #@43
    invoke-interface {p1, v8, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@46
    move-result-object v1

    #@47
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4a
    move-result v0

    #@4b
    if-eqz v0, :cond_2

    #@4d
    .line 5270
    const/4 v4, 0x1

    #@4e
    .line 5272
    :cond_2
    const-string/jumbo v0, "true"

    #@51
    const-string/jumbo v1, "fixed"

    #@54
    invoke-interface {p1, v8, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@57
    move-result-object v1

    #@58
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5b
    move-result v0

    #@5c
    if-eqz v0, :cond_3

    #@5e
    .line 5273
    or-int/lit8 v4, v4, 0x2

    #@60
    .line 5275
    :cond_3
    const-string/jumbo v0, "true"

    #@63
    const-string/jumbo v1, "rou"

    #@66
    invoke-interface {p1, v8, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@69
    move-result-object v1

    #@6a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6d
    move-result v0

    #@6e
    if-eqz v0, :cond_4

    #@70
    .line 5276
    or-int/lit8 v4, v4, 0x8

    #@72
    .line 5279
    :cond_4
    if-nez v3, :cond_5

    #@74
    if-eqz v4, :cond_0

    #@76
    :cond_5
    move-object v0, p0

    #@77
    move-object v1, p2

    #@78
    move v5, p3

    #@79
    .line 5280
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->rememberRestoredUserGrantLPr(Ljava/lang/String;Ljava/lang/String;ZII)V

    #@7c
    goto :goto_0

    #@7d
    .line 5253
    .end local v2    # "permName":Ljava/lang/String;
    .end local v3    # "isGranted":Z
    .end local v4    # "permBits":I
    :cond_6
    return-void
.end method

.method private parseRuntimePermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 13
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v12, 0x3

    #@1
    const/4 v11, 0x0

    #@2
    .line 5206
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@5
    move-result v3

    #@6
    .line 5208
    .local v3, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@9
    move-result v7

    #@a
    .local v7, "type":I
    const/4 v8, 0x1

    #@b
    if-eq v7, v8, :cond_7

    #@d
    .line 5209
    if-ne v7, v12, :cond_1

    #@f
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@12
    move-result v8

    #@13
    if-le v8, v3, :cond_7

    #@15
    .line 5210
    :cond_1
    if-eq v7, v12, :cond_0

    #@17
    const/4 v8, 0x4

    #@18
    if-eq v7, v8, :cond_0

    #@1a
    .line 5214
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1d
    move-result-object v8

    #@1e
    const-string/jumbo v9, "runtime-permissions"

    #@21
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v9

    #@25
    if-eqz v9, :cond_2

    #@27
    .line 5216
    const-string/jumbo v8, "fingerprint"

    #@2a
    invoke-interface {p1, v11, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    .line 5217
    .local v1, "fingerprint":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    #@30
    invoke-virtual {v8, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@33
    .line 5218
    sget-object v8, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    #@35
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@38
    move-result v0

    #@39
    .line 5219
    .local v0, "defaultsGranted":Z
    iget-object v8, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mDefaultPermissionsGranted:Landroid/util/SparseBooleanArray;

    #@3b
    invoke-virtual {v8, p2, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    #@3e
    goto :goto_0

    #@3f
    .line 5214
    .end local v0    # "defaultsGranted":Z
    .end local v1    # "fingerprint":Ljava/lang/String;
    :cond_2
    const-string/jumbo v9, "pkg"

    #@42
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@45
    move-result v9

    #@46
    if-eqz v9, :cond_3

    #@48
    .line 5223
    const-string/jumbo v8, "name"

    #@4b
    invoke-interface {p1, v11, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4e
    move-result-object v2

    #@4f
    .line 5224
    .local v2, "name":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    #@51
    iget-object v8, v8, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@53
    invoke-virtual {v8, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@56
    move-result-object v5

    #@57
    check-cast v5, Lcom/android/server/pm/PackageSetting;

    #@59
    .line 5225
    .local v5, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v5, :cond_5

    #@5b
    .line 5226
    const-string/jumbo v8, "PackageManager"

    #@5e
    new-instance v9, Ljava/lang/StringBuilder;

    #@60
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@63
    const-string/jumbo v10, "Unknown package:"

    #@66
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v9

    #@6a
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v9

    #@6e
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@71
    move-result-object v9

    #@72
    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@75
    .line 5227
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@78
    goto :goto_0

    #@79
    .line 5214
    .end local v2    # "name":Ljava/lang/String;
    .end local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_3
    const-string/jumbo v9, "shared-user"

    #@7c
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7f
    move-result v9

    #@80
    if-eqz v9, :cond_4

    #@82
    .line 5234
    const-string/jumbo v8, "name"

    #@85
    invoke-interface {p1, v11, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@88
    move-result-object v2

    #@89
    .line 5235
    .restart local v2    # "name":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    #@8b
    iget-object v8, v8, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    #@8d
    invoke-virtual {v8, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@90
    move-result-object v6

    #@91
    check-cast v6, Lcom/android/server/pm/SharedUserSetting;

    #@93
    .line 5236
    .local v6, "sus":Lcom/android/server/pm/SharedUserSetting;
    if-nez v6, :cond_6

    #@95
    .line 5237
    const-string/jumbo v8, "PackageManager"

    #@98
    new-instance v9, Ljava/lang/StringBuilder;

    #@9a
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@9d
    const-string/jumbo v10, "Unknown shared user:"

    #@a0
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v9

    #@a4
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v9

    #@a8
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ab
    move-result-object v9

    #@ac
    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@af
    .line 5238
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@b2
    goto/16 :goto_0

    #@b4
    .line 5214
    .end local v2    # "name":Ljava/lang/String;
    .end local v6    # "sus":Lcom/android/server/pm/SharedUserSetting;
    :cond_4
    const-string/jumbo v9, "restored-perms"

    #@b7
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ba
    move-result v8

    #@bb
    if-eqz v8, :cond_0

    #@bd
    .line 5245
    const-string/jumbo v8, "packageName"

    #@c0
    invoke-interface {p1, v11, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@c3
    move-result-object v4

    #@c4
    .line 5246
    .local v4, "pkgName":Ljava/lang/String;
    invoke-direct {p0, p1, v4, p2}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->parseRestoredRuntimePermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)V

    #@c7
    goto/16 :goto_0

    #@c9
    .line 5230
    .end local v4    # "pkgName":Ljava/lang/String;
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_5
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    #@cc
    move-result-object v8

    #@cd
    invoke-direct {p0, p1, v8, p2}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->parsePermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PermissionsState;I)V

    #@d0
    goto/16 :goto_0

    #@d2
    .line 5241
    .end local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v6    # "sus":Lcom/android/server/pm/SharedUserSetting;
    :cond_6
    invoke-virtual {v6}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    #@d5
    move-result-object v8

    #@d6
    invoke-direct {p0, p1, v8, p2}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->parsePermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PermissionsState;I)V

    #@d9
    goto/16 :goto_0

    #@db
    .line 5205
    .end local v2    # "name":Ljava/lang/String;
    .end local v6    # "sus":Lcom/android/server/pm/SharedUserSetting;
    :cond_7
    return-void
.end method

.method private revokeRuntimePermissionsAndClearFlags(Lcom/android/server/pm/SettingBase;I)V
    .locals 6
    .param p1, "sb"    # Lcom/android/server/pm/SettingBase;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 5136
    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    #@3
    move-result-object v3

    #@4
    .line 5138
    .local v3, "permissionsState":Lcom/android/server/pm/PermissionsState;
    invoke-virtual {v3, p2}, Lcom/android/server/pm/PermissionsState;->getRuntimePermissionStates(I)Ljava/util/List;

    #@7
    move-result-object v4

    #@8
    .line 5137
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v2

    #@c
    .local v2, "permissionState$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v4

    #@10
    if-eqz v4, :cond_1

    #@12
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, Lcom/android/server/pm/PermissionsState$PermissionState;

    #@18
    .line 5139
    .local v1, "permissionState":Lcom/android/server/pm/PermissionsState$PermissionState;
    iget-object v4, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    #@1a
    iget-object v4, v4, Lcom/android/server/pm/Settings;->mPermissions:Landroid/util/ArrayMap;

    #@1c
    invoke-virtual {v1}, Lcom/android/server/pm/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    #@1f
    move-result-object v5

    #@20
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    check-cast v0, Lcom/android/server/pm/BasePermission;

    #@26
    .line 5140
    .local v0, "bp":Lcom/android/server/pm/BasePermission;
    if-eqz v0, :cond_0

    #@28
    .line 5141
    invoke-virtual {v3, v0, p2}, Lcom/android/server/pm/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/BasePermission;I)I

    #@2b
    .line 5143
    const/16 v4, 0xff

    #@2d
    const/4 v5, 0x0

    #@2e
    .line 5142
    invoke-virtual {v3, v0, p2, v4, v5}, Lcom/android/server/pm/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/BasePermission;III)Z

    #@31
    goto :goto_0

    #@32
    .line 5135
    .end local v0    # "bp":Lcom/android/server/pm/BasePermission;
    .end local v1    # "permissionState":Lcom/android/server/pm/PermissionsState$PermissionState;
    :cond_1
    return-void
.end method

.method private writePermissions(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V
    .locals 5
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/pm/PermissionsState$PermissionState;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .local p2, "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;"
    const/4 v4, 0x0

    #@1
    .line 5331
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4
    move-result-object v1

    #@5
    .local v1, "permissionState$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_0

    #@b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Lcom/android/server/pm/PermissionsState$PermissionState;

    #@11
    .line 5332
    .local v0, "permissionState":Lcom/android/server/pm/PermissionsState$PermissionState;
    const-string/jumbo v2, "item"

    #@14
    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@17
    .line 5333
    const-string/jumbo v2, "name"

    #@1a
    invoke-virtual {v0}, Lcom/android/server/pm/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    invoke-interface {p1, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@21
    .line 5334
    const-string/jumbo v2, "granted"

    #@24
    .line 5335
    invoke-virtual {v0}, Lcom/android/server/pm/PermissionsState$PermissionState;->isGranted()Z

    #@27
    move-result v3

    #@28
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    .line 5334
    invoke-interface {p1, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2f
    .line 5336
    const-string/jumbo v2, "flags"

    #@32
    .line 5337
    invoke-virtual {v0}, Lcom/android/server/pm/PermissionsState$PermissionState;->getFlags()I

    #@35
    move-result v3

    #@36
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@39
    move-result-object v3

    #@3a
    .line 5336
    invoke-interface {p1, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@3d
    .line 5338
    const-string/jumbo v2, "item"

    #@40
    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@43
    goto :goto_0

    #@44
    .line 5330
    .end local v0    # "permissionState":Lcom/android/server/pm/PermissionsState$PermissionState;
    :cond_0
    return-void
.end method

.method private writePermissionsSync(I)V
    .locals 31
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 4985
    new-instance v5, Landroid/util/AtomicFile;

    #@2
    move-object/from16 v0, p0

    #@4
    iget-object v0, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    #@6
    move-object/from16 v28, v0

    #@8
    move-object/from16 v0, v28

    #@a
    move/from16 v1, p1

    #@c
    invoke-static {v0, v1}, Lcom/android/server/pm/Settings;->-wrap0(Lcom/android/server/pm/Settings;I)Ljava/io/File;

    #@f
    move-result-object v28

    #@10
    move-object/from16 v0, v28

    #@12
    invoke-direct {v5, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@15
    .line 4987
    .local v5, "destination":Landroid/util/AtomicFile;
    new-instance v14, Landroid/util/ArrayMap;

    #@17
    invoke-direct {v14}, Landroid/util/ArrayMap;-><init>()V

    #@1a
    .line 4988
    .local v14, "permissionsForPackage":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;>;"
    new-instance v15, Landroid/util/ArrayMap;

    #@1c
    invoke-direct {v15}, Landroid/util/ArrayMap;-><init>()V

    #@1f
    .line 4990
    .local v15, "permissionsForSharedUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;>;"
    move-object/from16 v0, p0

    #@21
    iget-object v0, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLock:Ljava/lang/Object;

    #@23
    move-object/from16 v29, v0

    #@25
    monitor-enter v29

    #@26
    .line 4991
    :try_start_0
    move-object/from16 v0, p0

    #@28
    iget-object v0, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mWriteScheduled:Landroid/util/SparseBooleanArray;

    #@2a
    move-object/from16 v28, v0

    #@2c
    move-object/from16 v0, v28

    #@2e
    move/from16 v1, p1

    #@30
    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    #@33
    .line 4993
    move-object/from16 v0, p0

    #@35
    iget-object v0, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    #@37
    move-object/from16 v28, v0

    #@39
    move-object/from16 v0, v28

    #@3b
    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@3d
    move-object/from16 v28, v0

    #@3f
    invoke-virtual/range {v28 .. v28}, Landroid/util/ArrayMap;->size()I

    #@42
    move-result v10

    #@43
    .line 4994
    .local v10, "packageCount":I
    const/4 v8, 0x0

    #@44
    .local v8, "i":I
    :goto_0
    if-ge v8, v10, :cond_1

    #@46
    .line 4995
    move-object/from16 v0, p0

    #@48
    iget-object v0, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    #@4a
    move-object/from16 v28, v0

    #@4c
    move-object/from16 v0, v28

    #@4e
    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@50
    move-object/from16 v28, v0

    #@52
    move-object/from16 v0, v28

    #@54
    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@57
    move-result-object v11

    #@58
    check-cast v11, Ljava/lang/String;

    #@5a
    .line 4996
    .local v11, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    #@5c
    iget-object v0, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    #@5e
    move-object/from16 v28, v0

    #@60
    move-object/from16 v0, v28

    #@62
    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@64
    move-object/from16 v28, v0

    #@66
    move-object/from16 v0, v28

    #@68
    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@6b
    move-result-object v12

    #@6c
    check-cast v12, Lcom/android/server/pm/PackageSetting;

    #@6e
    .line 4997
    .local v12, "packageSetting":Lcom/android/server/pm/PackageSetting;
    iget-object v0, v12, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    #@70
    move-object/from16 v28, v0

    #@72
    if-nez v28, :cond_0

    #@74
    .line 4998
    invoke-virtual {v12}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    #@77
    move-result-object v16

    #@78
    .line 4999
    .local v16, "permissionsState":Lcom/android/server/pm/PermissionsState;
    move-object/from16 v0, v16

    #@7a
    move/from16 v1, p1

    #@7c
    invoke-virtual {v0, v1}, Lcom/android/server/pm/PermissionsState;->getRuntimePermissionStates(I)Ljava/util/List;

    #@7f
    move-result-object v17

    #@80
    .line 5001
    .local v17, "permissionsStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    #@83
    move-result v28

    #@84
    if-nez v28, :cond_0

    #@86
    .line 5002
    move-object/from16 v0, v17

    #@88
    invoke-virtual {v14, v11, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8b
    .line 4994
    .end local v16    # "permissionsState":Lcom/android/server/pm/PermissionsState;
    .end local v17    # "permissionsStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;"
    :cond_0
    add-int/lit8 v8, v8, 0x1

    #@8d
    goto :goto_0

    #@8e
    .line 5007
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v12    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    :cond_1
    move-object/from16 v0, p0

    #@90
    iget-object v0, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    #@92
    move-object/from16 v28, v0

    #@94
    move-object/from16 v0, v28

    #@96
    iget-object v0, v0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    #@98
    move-object/from16 v28, v0

    #@9a
    invoke-virtual/range {v28 .. v28}, Landroid/util/ArrayMap;->size()I

    #@9d
    move-result v24

    #@9e
    .line 5008
    .local v24, "sharedUserCount":I
    const/4 v8, 0x0

    #@9f
    :goto_1
    move/from16 v0, v24

    #@a1
    if-ge v8, v0, :cond_3

    #@a3
    .line 5009
    move-object/from16 v0, p0

    #@a5
    iget-object v0, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    #@a7
    move-object/from16 v28, v0

    #@a9
    move-object/from16 v0, v28

    #@ab
    iget-object v0, v0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    #@ad
    move-object/from16 v28, v0

    #@af
    move-object/from16 v0, v28

    #@b1
    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@b4
    move-result-object v25

    #@b5
    check-cast v25, Ljava/lang/String;

    #@b7
    .line 5010
    .local v25, "sharedUserName":Ljava/lang/String;
    move-object/from16 v0, p0

    #@b9
    iget-object v0, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    #@bb
    move-object/from16 v28, v0

    #@bd
    move-object/from16 v0, v28

    #@bf
    iget-object v0, v0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    #@c1
    move-object/from16 v28, v0

    #@c3
    move-object/from16 v0, v28

    #@c5
    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@c8
    move-result-object v23

    #@c9
    check-cast v23, Lcom/android/server/pm/SharedUserSetting;

    #@cb
    .line 5011
    .local v23, "sharedUser":Lcom/android/server/pm/SharedUserSetting;
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    #@ce
    move-result-object v16

    #@cf
    .line 5012
    .restart local v16    # "permissionsState":Lcom/android/server/pm/PermissionsState;
    move-object/from16 v0, v16

    #@d1
    move/from16 v1, p1

    #@d3
    invoke-virtual {v0, v1}, Lcom/android/server/pm/PermissionsState;->getRuntimePermissionStates(I)Ljava/util/List;

    #@d6
    move-result-object v17

    #@d7
    .line 5014
    .restart local v17    # "permissionsStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    #@da
    move-result v28

    #@db
    if-nez v28, :cond_2

    #@dd
    .line 5015
    move-object/from16 v0, v25

    #@df
    move-object/from16 v1, v17

    #@e1
    invoke-virtual {v15, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e4
    .line 5008
    :cond_2
    add-int/lit8 v8, v8, 0x1

    #@e6
    goto :goto_1

    #@e7
    .end local v16    # "permissionsState":Lcom/android/server/pm/PermissionsState;
    .end local v17    # "permissionsStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;"
    .end local v23    # "sharedUser":Lcom/android/server/pm/SharedUserSetting;
    .end local v25    # "sharedUserName":Ljava/lang/String;
    :cond_3
    monitor-exit v29

    #@e8
    .line 5020
    const/4 v9, 0x0

    #@e9
    .line 5022
    .local v9, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v5}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    #@ec
    move-result-object v9

    #@ed
    .line 5024
    .local v9, "out":Ljava/io/FileOutputStream;
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    #@f0
    move-result-object v22

    #@f1
    .line 5025
    .local v22, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v28, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@f3
    invoke-virtual/range {v28 .. v28}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@f6
    move-result-object v28

    #@f7
    move-object/from16 v0, v22

    #@f9
    move-object/from16 v1, v28

    #@fb
    invoke-interface {v0, v9, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@fe
    .line 5027
    const-string/jumbo v28, "http://xmlpull.org/v1/doc/features.html#indent-output"

    #@101
    const/16 v29, 0x1

    #@103
    .line 5026
    move-object/from16 v0, v22

    #@105
    move-object/from16 v1, v28

    #@107
    move/from16 v2, v29

    #@109
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    #@10c
    .line 5028
    const/16 v28, 0x1

    #@10e
    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@111
    move-result-object v28

    #@112
    const/16 v29, 0x0

    #@114
    move-object/from16 v0, v22

    #@116
    move-object/from16 v1, v29

    #@118
    move-object/from16 v2, v28

    #@11a
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@11d
    .line 5030
    const-string/jumbo v28, "runtime-permissions"

    #@120
    const/16 v29, 0x0

    #@122
    move-object/from16 v0, v22

    #@124
    move-object/from16 v1, v29

    #@126
    move-object/from16 v2, v28

    #@128
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@12b
    .line 5032
    move-object/from16 v0, p0

    #@12d
    iget-object v0, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    #@12f
    move-object/from16 v28, v0

    #@131
    move-object/from16 v0, v28

    #@133
    move/from16 v1, p1

    #@135
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@138
    move-result-object v6

    #@139
    check-cast v6, Ljava/lang/String;

    #@13b
    .line 5033
    .local v6, "fingerprint":Ljava/lang/String;
    if-eqz v6, :cond_4

    #@13d
    .line 5034
    const-string/jumbo v28, "fingerprint"

    #@140
    const/16 v29, 0x0

    #@142
    move-object/from16 v0, v22

    #@144
    move-object/from16 v1, v29

    #@146
    move-object/from16 v2, v28

    #@148
    invoke-interface {v0, v1, v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@14b
    .line 5037
    :cond_4
    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    #@14e
    move-result v10

    #@14f
    .line 5038
    const/4 v8, 0x0

    #@150
    :goto_2
    if-ge v8, v10, :cond_5

    #@152
    .line 5039
    invoke-virtual {v14, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@155
    move-result-object v11

    #@156
    check-cast v11, Ljava/lang/String;

    #@158
    .line 5040
    .restart local v11    # "packageName":Ljava/lang/String;
    invoke-virtual {v14, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@15b
    move-result-object v13

    #@15c
    check-cast v13, Ljava/util/List;

    #@15e
    .line 5041
    .local v13, "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;"
    const-string/jumbo v28, "pkg"

    #@161
    const/16 v29, 0x0

    #@163
    move-object/from16 v0, v22

    #@165
    move-object/from16 v1, v29

    #@167
    move-object/from16 v2, v28

    #@169
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@16c
    .line 5042
    const-string/jumbo v28, "name"

    #@16f
    const/16 v29, 0x0

    #@171
    move-object/from16 v0, v22

    #@173
    move-object/from16 v1, v29

    #@175
    move-object/from16 v2, v28

    #@177
    invoke-interface {v0, v1, v2, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@17a
    .line 5043
    move-object/from16 v0, p0

    #@17c
    move-object/from16 v1, v22

    #@17e
    invoke-direct {v0, v1, v13}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissions(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    #@181
    .line 5044
    const-string/jumbo v28, "pkg"

    #@184
    const/16 v29, 0x0

    #@186
    move-object/from16 v0, v22

    #@188
    move-object/from16 v1, v29

    #@18a
    move-object/from16 v2, v28

    #@18c
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@18f
    .line 5038
    add-int/lit8 v8, v8, 0x1

    #@191
    goto :goto_2

    #@192
    .line 4990
    .end local v6    # "fingerprint":Ljava/lang/String;
    .end local v8    # "i":I
    .end local v9    # "out":Ljava/io/FileOutputStream;
    .end local v10    # "packageCount":I
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v13    # "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;"
    .end local v22    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v24    # "sharedUserCount":I
    :catchall_0
    move-exception v28

    #@193
    monitor-exit v29

    #@194
    throw v28

    #@195
    .line 5047
    .restart local v6    # "fingerprint":Ljava/lang/String;
    .restart local v8    # "i":I
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v10    # "packageCount":I
    .restart local v22    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v24    # "sharedUserCount":I
    :cond_5
    :try_start_2
    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    #@198
    move-result v24

    #@199
    .line 5048
    const/4 v8, 0x0

    #@19a
    :goto_3
    move/from16 v0, v24

    #@19c
    if-ge v8, v0, :cond_6

    #@19e
    .line 5049
    invoke-virtual {v15, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@1a1
    move-result-object v11

    #@1a2
    check-cast v11, Ljava/lang/String;

    #@1a4
    .line 5050
    .restart local v11    # "packageName":Ljava/lang/String;
    invoke-virtual {v15, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@1a7
    move-result-object v13

    #@1a8
    check-cast v13, Ljava/util/List;

    #@1aa
    .line 5051
    .restart local v13    # "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;"
    const-string/jumbo v28, "shared-user"

    #@1ad
    const/16 v29, 0x0

    #@1af
    move-object/from16 v0, v22

    #@1b1
    move-object/from16 v1, v29

    #@1b3
    move-object/from16 v2, v28

    #@1b5
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1b8
    .line 5052
    const-string/jumbo v28, "name"

    #@1bb
    const/16 v29, 0x0

    #@1bd
    move-object/from16 v0, v22

    #@1bf
    move-object/from16 v1, v29

    #@1c1
    move-object/from16 v2, v28

    #@1c3
    invoke-interface {v0, v1, v2, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1c6
    .line 5053
    move-object/from16 v0, p0

    #@1c8
    move-object/from16 v1, v22

    #@1ca
    invoke-direct {v0, v1, v13}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissions(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    #@1cd
    .line 5054
    const-string/jumbo v28, "shared-user"

    #@1d0
    const/16 v29, 0x0

    #@1d2
    move-object/from16 v0, v22

    #@1d4
    move-object/from16 v1, v29

    #@1d6
    move-object/from16 v2, v28

    #@1d8
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1db
    .line 5048
    add-int/lit8 v8, v8, 0x1

    #@1dd
    goto :goto_3

    #@1de
    .line 5057
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v13    # "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;"
    :cond_6
    const-string/jumbo v28, "runtime-permissions"

    #@1e1
    const/16 v29, 0x0

    #@1e3
    move-object/from16 v0, v22

    #@1e5
    move-object/from16 v1, v29

    #@1e7
    move-object/from16 v2, v28

    #@1e9
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1ec
    .line 5063
    move-object/from16 v0, p0

    #@1ee
    iget-object v0, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    #@1f0
    move-object/from16 v28, v0

    #@1f2
    invoke-static/range {v28 .. v28}, Lcom/android/server/pm/Settings;->-get0(Lcom/android/server/pm/Settings;)Landroid/util/SparseArray;

    #@1f5
    move-result-object v28

    #@1f6
    move-object/from16 v0, v28

    #@1f8
    move/from16 v1, p1

    #@1fa
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@1fd
    move-result-object v28

    #@1fe
    if-eqz v28, :cond_d

    #@200
    .line 5065
    move-object/from16 v0, p0

    #@202
    iget-object v0, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    #@204
    move-object/from16 v28, v0

    #@206
    invoke-static/range {v28 .. v28}, Lcom/android/server/pm/Settings;->-get0(Lcom/android/server/pm/Settings;)Landroid/util/SparseArray;

    #@209
    move-result-object v28

    #@20a
    move-object/from16 v0, v28

    #@20c
    move/from16 v1, p1

    #@20e
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@211
    move-result-object v21

    #@212
    check-cast v21, Landroid/util/ArrayMap;

    #@214
    .line 5066
    .local v21, "restoredGrants":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Lcom/android/server/pm/Settings$RestoredPermissionGrant;>;>;"
    if-eqz v21, :cond_d

    #@216
    .line 5067
    invoke-virtual/range {v21 .. v21}, Landroid/util/ArrayMap;->size()I

    #@219
    move-result v18

    #@21a
    .line 5068
    .local v18, "pkgCount":I
    const/4 v8, 0x0

    #@21b
    :goto_4
    move/from16 v0, v18

    #@21d
    if-ge v8, v0, :cond_d

    #@21f
    .line 5070
    move-object/from16 v0, v21

    #@221
    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@224
    move-result-object v19

    #@225
    check-cast v19, Landroid/util/ArraySet;

    #@227
    .line 5071
    .local v19, "pkgGrants":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/Settings$RestoredPermissionGrant;>;"
    if-eqz v19, :cond_c

    #@229
    invoke-virtual/range {v19 .. v19}, Landroid/util/ArraySet;->size()I

    #@22c
    move-result v28

    #@22d
    if-lez v28, :cond_c

    #@22f
    .line 5072
    move-object/from16 v0, v21

    #@231
    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@234
    move-result-object v20

    #@235
    check-cast v20, Ljava/lang/String;

    #@237
    .line 5073
    .local v20, "pkgName":Ljava/lang/String;
    const-string/jumbo v28, "restored-perms"

    #@23a
    const/16 v29, 0x0

    #@23c
    move-object/from16 v0, v22

    #@23e
    move-object/from16 v1, v29

    #@240
    move-object/from16 v2, v28

    #@242
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@245
    .line 5074
    const-string/jumbo v28, "packageName"

    #@248
    const/16 v29, 0x0

    #@24a
    move-object/from16 v0, v22

    #@24c
    move-object/from16 v1, v29

    #@24e
    move-object/from16 v2, v28

    #@250
    move-object/from16 v3, v20

    #@252
    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@255
    .line 5076
    invoke-virtual/range {v19 .. v19}, Landroid/util/ArraySet;->size()I

    #@258
    move-result v4

    #@259
    .line 5077
    .local v4, "N":I
    const/16 v27, 0x0

    #@25b
    .local v27, "z":I
    :goto_5
    move/from16 v0, v27

    #@25d
    if-ge v0, v4, :cond_b

    #@25f
    .line 5078
    move-object/from16 v0, v19

    #@261
    move/from16 v1, v27

    #@263
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@266
    move-result-object v7

    #@267
    check-cast v7, Lcom/android/server/pm/Settings$RestoredPermissionGrant;

    #@269
    .line 5079
    .local v7, "g":Lcom/android/server/pm/Settings$RestoredPermissionGrant;
    const-string/jumbo v28, "perm"

    #@26c
    const/16 v29, 0x0

    #@26e
    move-object/from16 v0, v22

    #@270
    move-object/from16 v1, v29

    #@272
    move-object/from16 v2, v28

    #@274
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@277
    .line 5080
    const-string/jumbo v28, "name"

    #@27a
    iget-object v0, v7, Lcom/android/server/pm/Settings$RestoredPermissionGrant;->permissionName:Ljava/lang/String;

    #@27c
    move-object/from16 v29, v0

    #@27e
    const/16 v30, 0x0

    #@280
    move-object/from16 v0, v22

    #@282
    move-object/from16 v1, v30

    #@284
    move-object/from16 v2, v28

    #@286
    move-object/from16 v3, v29

    #@288
    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@28b
    .line 5082
    iget-boolean v0, v7, Lcom/android/server/pm/Settings$RestoredPermissionGrant;->granted:Z

    #@28d
    move/from16 v28, v0

    #@28f
    if-eqz v28, :cond_7

    #@291
    .line 5083
    const-string/jumbo v28, "granted"

    #@294
    const-string/jumbo v29, "true"

    #@297
    const/16 v30, 0x0

    #@299
    move-object/from16 v0, v22

    #@29b
    move-object/from16 v1, v30

    #@29d
    move-object/from16 v2, v28

    #@29f
    move-object/from16 v3, v29

    #@2a1
    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2a4
    .line 5086
    :cond_7
    iget v0, v7, Lcom/android/server/pm/Settings$RestoredPermissionGrant;->grantBits:I

    #@2a6
    move/from16 v28, v0

    #@2a8
    and-int/lit8 v28, v28, 0x1

    #@2aa
    if-eqz v28, :cond_8

    #@2ac
    .line 5087
    const-string/jumbo v28, "set"

    #@2af
    const-string/jumbo v29, "true"

    #@2b2
    const/16 v30, 0x0

    #@2b4
    move-object/from16 v0, v22

    #@2b6
    move-object/from16 v1, v30

    #@2b8
    move-object/from16 v2, v28

    #@2ba
    move-object/from16 v3, v29

    #@2bc
    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2bf
    .line 5089
    :cond_8
    iget v0, v7, Lcom/android/server/pm/Settings$RestoredPermissionGrant;->grantBits:I

    #@2c1
    move/from16 v28, v0

    #@2c3
    and-int/lit8 v28, v28, 0x2

    #@2c5
    if-eqz v28, :cond_9

    #@2c7
    .line 5090
    const-string/jumbo v28, "fixed"

    #@2ca
    const-string/jumbo v29, "true"

    #@2cd
    const/16 v30, 0x0

    #@2cf
    move-object/from16 v0, v22

    #@2d1
    move-object/from16 v1, v30

    #@2d3
    move-object/from16 v2, v28

    #@2d5
    move-object/from16 v3, v29

    #@2d7
    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2da
    .line 5092
    :cond_9
    iget v0, v7, Lcom/android/server/pm/Settings$RestoredPermissionGrant;->grantBits:I

    #@2dc
    move/from16 v28, v0

    #@2de
    and-int/lit8 v28, v28, 0x8

    #@2e0
    if-eqz v28, :cond_a

    #@2e2
    .line 5093
    const-string/jumbo v28, "rou"

    #@2e5
    const-string/jumbo v29, "true"

    #@2e8
    const/16 v30, 0x0

    #@2ea
    move-object/from16 v0, v22

    #@2ec
    move-object/from16 v1, v30

    #@2ee
    move-object/from16 v2, v28

    #@2f0
    move-object/from16 v3, v29

    #@2f2
    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2f5
    .line 5095
    :cond_a
    const-string/jumbo v28, "perm"

    #@2f8
    const/16 v29, 0x0

    #@2fa
    move-object/from16 v0, v22

    #@2fc
    move-object/from16 v1, v29

    #@2fe
    move-object/from16 v2, v28

    #@300
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@303
    .line 5077
    add-int/lit8 v27, v27, 0x1

    #@305
    goto/16 :goto_5

    #@307
    .line 5097
    .end local v7    # "g":Lcom/android/server/pm/Settings$RestoredPermissionGrant;
    :cond_b
    const-string/jumbo v28, "restored-perms"

    #@30a
    const/16 v29, 0x0

    #@30c
    move-object/from16 v0, v22

    #@30e
    move-object/from16 v1, v29

    #@310
    move-object/from16 v2, v28

    #@312
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@315
    .line 5068
    .end local v4    # "N":I
    .end local v20    # "pkgName":Ljava/lang/String;
    .end local v27    # "z":I
    :cond_c
    add-int/lit8 v8, v8, 0x1

    #@317
    goto/16 :goto_4

    #@319
    .line 5103
    .end local v18    # "pkgCount":I
    .end local v19    # "pkgGrants":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/Settings$RestoredPermissionGrant;>;"
    .end local v21    # "restoredGrants":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Lcom/android/server/pm/Settings$RestoredPermissionGrant;>;>;"
    :cond_d
    invoke-interface/range {v22 .. v22}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    #@31c
    .line 5104
    invoke-virtual {v5, v9}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    #@31f
    .line 5106
    sget-object v28, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    #@321
    move-object/from16 v0, v28

    #@323
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@326
    move-result v28

    #@327
    if-eqz v28, :cond_e

    #@329
    .line 5107
    move-object/from16 v0, p0

    #@32b
    iget-object v0, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mDefaultPermissionsGranted:Landroid/util/SparseBooleanArray;

    #@32d
    move-object/from16 v28, v0

    #@32f
    const/16 v29, 0x1

    #@331
    move-object/from16 v0, v28

    #@333
    move/from16 v1, p1

    #@335
    move/from16 v2, v29

    #@337
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@33a
    .line 5115
    :cond_e
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@33d
    .line 4984
    .end local v6    # "fingerprint":Ljava/lang/String;
    .end local v9    # "out":Ljava/io/FileOutputStream;
    .end local v22    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :goto_6
    return-void

    #@33e
    .line 5110
    :catch_0
    move-exception v26

    #@33f
    .line 5111
    .local v26, "t":Ljava/lang/Throwable;
    :try_start_3
    const-string/jumbo v28, "PackageManager"

    #@342
    .line 5112
    const-string/jumbo v29, "Failed to write settings, restoring backup"

    #@345
    .line 5111
    move-object/from16 v0, v28

    #@347
    move-object/from16 v1, v29

    #@349
    move-object/from16 v2, v26

    #@34b
    invoke-static {v0, v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@34e
    .line 5113
    invoke-virtual {v5, v9}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@351
    .line 5115
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@354
    goto :goto_6

    #@355
    .line 5114
    .end local v26    # "t":Ljava/lang/Throwable;
    :catchall_1
    move-exception v28

    #@356
    .line 5115
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@359
    .line 5114
    throw v28
.end method


# virtual methods
.method public areDefaultRuntimPermissionsGrantedLPr(I)Z
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 4939
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mDefaultPermissionsGranted:Landroid/util/SparseBooleanArray;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public deleteUserRuntimePermissionsFile(I)V
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 5149
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    #@2
    invoke-static {v0, p1}, Lcom/android/server/pm/Settings;->-wrap0(Lcom/android/server/pm/Settings;I)Ljava/io/File;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    #@9
    .line 5148
    return-void
.end method

.method public onDefaultRuntimePermissionsGrantedLPr(I)V
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 4943
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    #@2
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    #@4
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@7
    .line 4944
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsForUserAsyncLPr(I)V

    #@a
    .line 4942
    return-void
.end method

.method public readStateForUserSyncLPr(I)V
    .locals 8
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 5153
    iget-object v5, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    #@2
    invoke-static {v5, p1}, Lcom/android/server/pm/Settings;->-wrap0(Lcom/android/server/pm/Settings;I)Ljava/io/File;

    #@5
    move-result-object v4

    #@6
    .line 5154
    .local v4, "permissionsFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    #@9
    move-result v5

    #@a
    if-nez v5, :cond_0

    #@c
    .line 5155
    return-void

    #@d
    .line 5160
    :cond_0
    :try_start_0
    new-instance v5, Landroid/util/AtomicFile;

    #@f
    invoke-direct {v5, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@12
    invoke-virtual {v5}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    move-result-object v2

    #@16
    .line 5167
    .local v2, "in":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@19
    move-result-object v3

    #@1a
    .line 5168
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v5, 0x0

    #@1b
    invoke-interface {v3, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    #@1e
    .line 5169
    invoke-direct {p0, v3, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->parseRuntimePermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;I)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@21
    .line 5175
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@24
    .line 5152
    return-void

    #@25
    .line 5161
    .end local v2    # "in":Ljava/io/FileInputStream;
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v1

    #@26
    .line 5162
    .local v1, "fnfe":Ljava/io/FileNotFoundException;
    const-string/jumbo v5, "PackageManager"

    #@29
    const-string/jumbo v6, "No permissions state"

    #@2c
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    .line 5163
    return-void

    #@30
    .line 5171
    .end local v1    # "fnfe":Ljava/io/FileNotFoundException;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    #@31
    .line 5172
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v5, Ljava/lang/IllegalStateException;

    #@33
    new-instance v6, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v7, "Failed parsing permissions file: "

    #@3b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v6

    #@3f
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v6

    #@43
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v6

    #@47
    invoke-direct {v5, v6, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@4a
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4b
    .line 5174
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    #@4c
    .line 5175
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@4f
    .line 5174
    throw v5
.end method

.method public rememberRestoredUserGrantLPr(Ljava/lang/String;Ljava/lang/String;ZII)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "isGranted"    # Z
    .param p4, "restoredFlagSet"    # I
    .param p5, "userId"    # I

    #@0
    .prologue
    .line 5185
    iget-object v3, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    #@2
    invoke-static {v3}, Lcom/android/server/pm/Settings;->-get0(Lcom/android/server/pm/Settings;)Landroid/util/SparseArray;

    #@5
    move-result-object v3

    #@6
    invoke-virtual {v3, p5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@9
    move-result-object v2

    #@a
    check-cast v2, Landroid/util/ArrayMap;

    #@c
    .line 5186
    .local v2, "grantsByPackage":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Lcom/android/server/pm/Settings$RestoredPermissionGrant;>;>;"
    if-nez v2, :cond_0

    #@e
    .line 5187
    new-instance v2, Landroid/util/ArrayMap;

    #@10
    .end local v2    # "grantsByPackage":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Lcom/android/server/pm/Settings$RestoredPermissionGrant;>;>;"
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    #@13
    .line 5188
    .restart local v2    # "grantsByPackage":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Lcom/android/server/pm/Settings$RestoredPermissionGrant;>;>;"
    iget-object v3, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    #@15
    invoke-static {v3}, Lcom/android/server/pm/Settings;->-get0(Lcom/android/server/pm/Settings;)Landroid/util/SparseArray;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3, p5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@1c
    .line 5191
    :cond_0
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    move-result-object v1

    #@20
    check-cast v1, Landroid/util/ArraySet;

    #@22
    .line 5192
    .local v1, "grants":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/Settings$RestoredPermissionGrant;>;"
    if-nez v1, :cond_1

    #@24
    .line 5193
    new-instance v1, Landroid/util/ArraySet;

    #@26
    .end local v1    # "grants":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/Settings$RestoredPermissionGrant;>;"
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    #@29
    .line 5194
    .restart local v1    # "grants":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/Settings$RestoredPermissionGrant;>;"
    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2c
    .line 5197
    :cond_1
    new-instance v0, Lcom/android/server/pm/Settings$RestoredPermissionGrant;

    #@2e
    iget-object v3, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    #@30
    invoke-direct {v0, v3, p2, p3, p4}, Lcom/android/server/pm/Settings$RestoredPermissionGrant;-><init>(Lcom/android/server/pm/Settings;Ljava/lang/String;ZI)V

    #@33
    .line 5199
    .local v0, "grant":Lcom/android/server/pm/Settings$RestoredPermissionGrant;
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@36
    .line 5182
    return-void
.end method

.method public writePermissionsForUserAsyncLPr(I)V
    .locals 18
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 4953
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3
    move-result-wide v2

    #@4
    .line 4955
    .local v2, "currentTimeMillis":J
    move-object/from16 v0, p0

    #@6
    iget-object v9, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mWriteScheduled:Landroid/util/SparseBooleanArray;

    #@8
    move/from16 v0, p1

    #@a
    invoke-virtual {v9, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@d
    move-result v9

    #@e
    if-eqz v9, :cond_1

    #@10
    .line 4956
    move-object/from16 v0, p0

    #@12
    iget-object v9, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    #@14
    move/from16 v0, p1

    #@16
    invoke-virtual {v9, v0}, Landroid/os/Handler;->removeMessages(I)V

    #@19
    .line 4959
    move-object/from16 v0, p0

    #@1b
    iget-object v9, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLastNotWrittenMutationTimesMillis:Landroid/util/SparseLongArray;

    #@1d
    move/from16 v0, p1

    #@1f
    invoke-virtual {v9, v0}, Landroid/util/SparseLongArray;->get(I)J

    #@22
    move-result-wide v4

    #@23
    .line 4961
    .local v4, "lastNotWrittenMutationTimeMillis":J
    sub-long v10, v2, v4

    #@25
    .line 4963
    .local v10, "timeSinceLastNotWrittenMutationMillis":J
    const-wide/16 v14, 0x7d0

    #@27
    cmp-long v9, v10, v14

    #@29
    if-ltz v9, :cond_0

    #@2b
    .line 4964
    move-object/from16 v0, p0

    #@2d
    iget-object v9, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    #@2f
    move/from16 v0, p1

    #@31
    invoke-virtual {v9, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@34
    move-result-object v9

    #@35
    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    #@38
    .line 4965
    return-void

    #@39
    .line 4970
    :cond_0
    const-wide/16 v14, 0x7d0

    #@3b
    .line 4969
    add-long/2addr v14, v4

    #@3c
    sub-long/2addr v14, v2

    #@3d
    .line 4970
    const-wide/16 v16, 0x0

    #@3f
    .line 4969
    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(JJ)J

    #@42
    move-result-wide v6

    #@43
    .line 4971
    .local v6, "maxDelayMillis":J
    const-wide/16 v14, 0xc8

    #@45
    invoke-static {v14, v15, v6, v7}, Ljava/lang/Math;->min(JJ)J

    #@48
    move-result-wide v12

    #@49
    .line 4974
    .local v12, "writeDelayMillis":J
    move-object/from16 v0, p0

    #@4b
    iget-object v9, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    #@4d
    move/from16 v0, p1

    #@4f
    invoke-virtual {v9, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@52
    move-result-object v8

    #@53
    .line 4975
    .local v8, "message":Landroid/os/Message;
    move-object/from16 v0, p0

    #@55
    iget-object v9, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    #@57
    invoke-virtual {v9, v8, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@5a
    .line 4952
    .end local v4    # "lastNotWrittenMutationTimeMillis":J
    .end local v6    # "maxDelayMillis":J
    .end local v10    # "timeSinceLastNotWrittenMutationMillis":J
    .end local v12    # "writeDelayMillis":J
    :goto_0
    return-void

    #@5b
    .line 4977
    .end local v8    # "message":Landroid/os/Message;
    :cond_1
    move-object/from16 v0, p0

    #@5d
    iget-object v9, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLastNotWrittenMutationTimesMillis:Landroid/util/SparseLongArray;

    #@5f
    move/from16 v0, p1

    #@61
    invoke-virtual {v9, v0, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    #@64
    .line 4978
    move-object/from16 v0, p0

    #@66
    iget-object v9, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    #@68
    move/from16 v0, p1

    #@6a
    invoke-virtual {v9, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@6d
    move-result-object v8

    #@6e
    .line 4979
    .restart local v8    # "message":Landroid/os/Message;
    move-object/from16 v0, p0

    #@70
    iget-object v9, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    #@72
    const-wide/16 v14, 0xc8

    #@74
    invoke-virtual {v9, v8, v14, v15}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@77
    .line 4980
    move-object/from16 v0, p0

    #@79
    iget-object v9, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mWriteScheduled:Landroid/util/SparseBooleanArray;

    #@7b
    const/4 v14, 0x1

    #@7c
    move/from16 v0, p1

    #@7e
    invoke-virtual {v9, v0, v14}, Landroid/util/SparseBooleanArray;->put(IZ)V

    #@81
    goto :goto_0
.end method

.method public writePermissionsForUserSyncLPr(I)V
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 4948
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    #@5
    .line 4949
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsSync(I)V

    #@8
    .line 4947
    return-void
.end method
