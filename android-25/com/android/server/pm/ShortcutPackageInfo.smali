.class Lcom/android/server/pm/ShortcutPackageInfo;
.super Ljava/lang/Object;
.source "ShortcutPackageInfo.java"


# static fields
.field private static final ATTR_LAST_UPDATE_TIME:Ljava/lang/String; = "last_udpate_time"

.field private static final ATTR_SHADOW:Ljava/lang/String; = "shadow"

.field private static final ATTR_SIGNATURE_HASH:Ljava/lang/String; = "hash"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final TAG:Ljava/lang/String; = "ShortcutService"

.field static final TAG_ROOT:Ljava/lang/String; = "package-info"

.field private static final TAG_SIGNATURE:Ljava/lang/String; = "signature"

.field private static final VERSION_UNKNOWN:I = -0x1


# instance fields
.field private mIsShadow:Z

.field private mLastUpdateTime:J

.field private mSigHashes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mVersionCode:I


# direct methods
.method private constructor <init>(IJLjava/util/ArrayList;Z)V
    .locals 2
    .param p1, "versionCode"    # I
    .param p2, "lastUpdateTime"    # J
    .param p5, "isShadow"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/ArrayList",
            "<[B>;Z)V"
        }
    .end annotation

    #@0
    .prologue
    .line 64
    .local p4, "sigHashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 60
    const/4 v0, -0x1

    #@4
    iput v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mVersionCode:I

    #@6
    .line 66
    iput p1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mVersionCode:I

    #@8
    .line 67
    iput-wide p2, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mLastUpdateTime:J

    #@a
    .line 68
    iput-boolean p5, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mIsShadow:Z

    #@c
    .line 69
    iput-object p4, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mSigHashes:Ljava/util/ArrayList;

    #@e
    .line 65
    return-void
.end method

.method public static generateForInstalledPackageForTest(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackageInfo;
    .locals 7
    .param p0, "s"    # Lcom/android/server/pm/ShortcutService;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageUserId"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 127
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->getPackageInfoWithSignatures(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@5
    move-result-object v6

    #@6
    .line 128
    .local v6, "pi":Landroid/content/pm/PackageInfo;
    iget-object v1, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    #@8
    if-eqz v1, :cond_0

    #@a
    iget-object v1, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    #@c
    array-length v1, v1

    #@d
    if-nez v1, :cond_1

    #@f
    .line 129
    :cond_0
    const-string/jumbo v1, "ShortcutService"

    #@12
    new-instance v2, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v3, "Can\'t get signatures: package="

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 130
    return-object v4

    #@2a
    .line 132
    :cond_1
    new-instance v0, Lcom/android/server/pm/ShortcutPackageInfo;

    #@2c
    iget v1, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    #@2e
    iget-wide v2, v6, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    #@30
    .line 133
    iget-object v4, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    #@32
    invoke-static {v4}, Lcom/android/server/backup/BackupUtils;->hashSignatureArray([Landroid/content/pm/Signature;)Ljava/util/ArrayList;

    #@35
    move-result-object v4

    #@36
    .line 132
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/ShortcutPackageInfo;-><init>(IJLjava/util/ArrayList;Z)V

    #@39
    .line 135
    .local v0, "ret":Lcom/android/server/pm/ShortcutPackageInfo;
    return-object v0
.end method

.method public static newEmpty()Lcom/android/server/pm/ShortcutPackageInfo;
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 73
    new-instance v0, Lcom/android/server/pm/ShortcutPackageInfo;

    #@3
    const-wide/16 v2, 0x0

    #@5
    .line 74
    new-instance v4, Ljava/util/ArrayList;

    #@7
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    #@a
    .line 73
    const/4 v1, -0x1

    #@b
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/ShortcutPackageInfo;-><init>(IJLjava/util/ArrayList;Z)V

    #@e
    return-object v0
.end method


# virtual methods
.method public canRestoreTo(Lcom/android/server/pm/ShortcutService;Landroid/content/pm/PackageInfo;)Z
    .locals 6
    .param p1, "s"    # Lcom/android/server/pm/ShortcutService;
    .param p2, "target"    # Landroid/content/pm/PackageInfo;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 106
    invoke-virtual {p1, p2}, Lcom/android/server/pm/ShortcutService;->shouldBackupApp(Landroid/content/pm/PackageInfo;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 108
    const-string/jumbo v0, "ShortcutService"

    #@b
    const-string/jumbo v1, "Can\'t restore: package no longer allows backup"

    #@e
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 109
    return v4

    #@12
    .line 111
    :cond_0
    iget v0, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    #@14
    iget v1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mVersionCode:I

    #@16
    if-ge v0, v1, :cond_1

    #@18
    .line 112
    const-string/jumbo v0, "ShortcutService"

    #@1b
    .line 113
    const-string/jumbo v1, "Can\'t restore: package current version %d < backed up version %d"

    #@1e
    .line 112
    const/4 v2, 0x2

    #@1f
    new-array v2, v2, [Ljava/lang/Object;

    #@21
    .line 114
    iget v3, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    #@23
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@26
    move-result-object v3

    #@27
    aput-object v3, v2, v4

    #@29
    iget v3, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mVersionCode:I

    #@2b
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2e
    move-result-object v3

    #@2f
    aput-object v3, v2, v5

    #@31
    .line 112
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@38
    .line 115
    return v4

    #@39
    .line 117
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mSigHashes:Ljava/util/ArrayList;

    #@3b
    invoke-static {v0, p2}, Lcom/android/server/backup/BackupUtils;->signaturesMatch(Ljava/util/ArrayList;Landroid/content/pm/PackageInfo;)Z

    #@3e
    move-result v0

    #@3f
    if-nez v0, :cond_2

    #@41
    .line 118
    const-string/jumbo v0, "ShortcutService"

    #@44
    const-string/jumbo v1, "Can\'t restore: Package signature mismatch"

    #@47
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4a
    .line 119
    return v4

    #@4b
    .line 121
    :cond_2
    return v5
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 215
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@3
    .line 217
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6
    .line 218
    const-string/jumbo v1, "PackageInfo:"

    #@9
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c
    .line 220
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f
    .line 221
    const-string/jumbo v1, "  IsShadow: "

    #@12
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@15
    .line 222
    iget-boolean v1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mIsShadow:Z

    #@17
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    #@1a
    .line 223
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@1d
    .line 225
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@20
    .line 226
    const-string/jumbo v1, "  Version: "

    #@23
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@26
    .line 227
    iget v1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mVersionCode:I

    #@28
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    #@2b
    .line 228
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@2e
    .line 230
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@31
    .line 231
    const-string/jumbo v1, "  Last package update time: "

    #@34
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@37
    .line 232
    iget-wide v2, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mLastUpdateTime:J

    #@39
    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    #@3c
    .line 233
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@3f
    .line 235
    const/4 v0, 0x0

    #@40
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mSigHashes:Ljava/util/ArrayList;

    #@42
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@45
    move-result v1

    #@46
    if-ge v0, v1, :cond_0

    #@48
    .line 236
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4b
    .line 237
    const-string/jumbo v1, "    "

    #@4e
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@51
    .line 238
    const-string/jumbo v1, "SigHash: "

    #@54
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@57
    .line 239
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mSigHashes:Ljava/util/ArrayList;

    #@59
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5c
    move-result-object v1

    #@5d
    check-cast v1, [B

    #@5f
    invoke-static {v1}, Llibcore/util/HexEncoding;->encode([B)[C

    #@62
    move-result-object v1

    #@63
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println([C)V

    #@66
    .line 235
    add-int/lit8 v0, v0, 0x1

    #@68
    goto :goto_0

    #@69
    .line 214
    :cond_0
    return-void
.end method

.method public getLastUpdateTime()J
    .locals 2

    #@0
    .prologue
    .line 90
    iget-wide v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mLastUpdateTime:J

    #@2
    return-wide v0
.end method

.method public getVersionCode()I
    .locals 1

    #@0
    .prologue
    .line 86
    iget v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mVersionCode:I

    #@2
    return v0
.end method

.method public hasSignatures()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 102
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mSigHashes:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v1

    #@7
    if-lez v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method public isShadow()Z
    .locals 1

    #@0
    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mIsShadow:Z

    #@2
    return v0
.end method

.method public loadFromXml(Lorg/xmlpull/v1/XmlPullParser;Z)V
    .locals 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "fromBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 173
    const-string/jumbo v10, "version"

    #@3
    invoke-static {p1, v10}, Lcom/android/server/pm/ShortcutService;->parseIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    #@6
    move-result v9

    #@7
    .line 176
    .local v9, "versionCode":I
    const-string/jumbo v10, "last_udpate_time"

    #@a
    .line 175
    invoke-static {p1, v10}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    #@d
    move-result-wide v4

    #@e
    .line 180
    .local v4, "lastUpdateTime":J
    if-nez p2, :cond_2

    #@10
    const-string/jumbo v10, "shadow"

    #@13
    invoke-static {p1, v10}, Lcom/android/server/pm/ShortcutService;->parseBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    #@16
    move-result v6

    #@17
    .line 182
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    #@19
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@1c
    .line 184
    .local v2, "hashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@1f
    move-result v3

    #@20
    .line 186
    .local v3, "outerDepth":I
    :cond_0
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@23
    move-result v8

    #@24
    .local v8, "type":I
    const/4 v10, 0x1

    #@25
    if-eq v8, v10, :cond_4

    #@27
    .line 187
    const/4 v10, 0x3

    #@28
    if-ne v8, v10, :cond_1

    #@2a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@2d
    move-result v10

    #@2e
    if-le v10, v3, :cond_4

    #@30
    .line 188
    :cond_1
    const/4 v10, 0x2

    #@31
    if-ne v8, v10, :cond_0

    #@33
    .line 191
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@36
    move-result v0

    #@37
    .line 192
    .local v0, "depth":I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@3a
    move-result-object v7

    #@3b
    .line 194
    .local v7, "tag":Ljava/lang/String;
    add-int/lit8 v10, v3, 0x1

    #@3d
    if-ne v0, v10, :cond_3

    #@3f
    .line 195
    const-string/jumbo v10, "signature"

    #@42
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@45
    move-result v10

    #@46
    if-eqz v10, :cond_3

    #@48
    .line 198
    const-string/jumbo v10, "hash"

    #@4b
    .line 197
    invoke-static {p1, v10}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    #@4e
    move-result-object v1

    #@4f
    .line 199
    .local v1, "hash":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    #@52
    move-result-object v10

    #@53
    invoke-static {v10}, Llibcore/io/Base64;->decode([B)[B

    #@56
    move-result-object v10

    #@57
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5a
    goto :goto_1

    #@5b
    .line 180
    .end local v0    # "depth":I
    .end local v1    # "hash":Ljava/lang/String;
    .end local v2    # "hashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v3    # "outerDepth":I
    .end local v7    # "tag":Ljava/lang/String;
    .end local v8    # "type":I
    :cond_2
    const/4 v6, 0x1

    #@5c
    .local v6, "shadow":Z
    goto :goto_0

    #@5d
    .line 204
    .end local v6    # "shadow":Z
    .restart local v0    # "depth":I
    .restart local v2    # "hashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .restart local v3    # "outerDepth":I
    .restart local v7    # "tag":Ljava/lang/String;
    .restart local v8    # "type":I
    :cond_3
    invoke-static {v0, v7}, Lcom/android/server/pm/ShortcutService;->warnForInvalidTag(ILjava/lang/String;)V

    #@60
    goto :goto_1

    #@61
    .line 208
    .end local v0    # "depth":I
    .end local v7    # "tag":Ljava/lang/String;
    :cond_4
    iput v9, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mVersionCode:I

    #@63
    .line 209
    iput-wide v4, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mLastUpdateTime:J

    #@65
    .line 210
    iput-boolean v6, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mIsShadow:Z

    #@67
    .line 211
    iput-object v2, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mSigHashes:Ljava/util/ArrayList;

    #@69
    .line 171
    return-void
.end method

.method public refreshSignature(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutPackageItem;)V
    .locals 4
    .param p1, "s"    # Lcom/android/server/pm/ShortcutService;
    .param p2, "pkg"    # Lcom/android/server/pm/ShortcutPackageItem;

    #@0
    .prologue
    .line 139
    iget-boolean v1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mIsShadow:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v2, "Attempted to refresh package info for shadow package "

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    .line 141
    const-string/jumbo v2, ", user="

    #@1b
    .line 140
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    .line 141
    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->getOwnerUserId()I

    #@22
    move-result v2

    #@23
    .line 140
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {p1, v1}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    #@2e
    .line 142
    return-void

    #@2f
    .line 146
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageUserId()I

    #@36
    move-result v2

    #@37
    .line 145
    invoke-virtual {p1, v1, v2}, Lcom/android/server/pm/ShortcutService;->getPackageInfoWithSignatures(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@3a
    move-result-object v0

    #@3b
    .line 147
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_1

    #@3d
    .line 148
    const-string/jumbo v1, "ShortcutService"

    #@40
    new-instance v2, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v3, "Package not found: "

    #@48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v2

    #@4c
    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    #@4f
    move-result-object v3

    #@50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v2

    #@54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v2

    #@58
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@5b
    .line 149
    return-void

    #@5c
    .line 151
    :cond_1
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    #@5e
    invoke-static {v1}, Lcom/android/server/backup/BackupUtils;->hashSignatureArray([Landroid/content/pm/Signature;)Ljava/util/ArrayList;

    #@61
    move-result-object v1

    #@62
    iput-object v1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mSigHashes:Ljava/util/ArrayList;

    #@64
    .line 138
    return-void
.end method

.method public saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 5
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 156
    const-string/jumbo v1, "package-info"

    #@4
    invoke-interface {p1, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7
    .line 158
    const-string/jumbo v1, "version"

    #@a
    iget v2, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mVersionCode:I

    #@c
    int-to-long v2, v2

    #@d
    invoke-static {p1, v1, v2, v3}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    #@10
    .line 159
    const-string/jumbo v1, "last_udpate_time"

    #@13
    iget-wide v2, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mLastUpdateTime:J

    #@15
    invoke-static {p1, v1, v2, v3}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    #@18
    .line 160
    const-string/jumbo v1, "shadow"

    #@1b
    iget-boolean v2, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mIsShadow:Z

    #@1d
    invoke-static {p1, v1, v2}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    #@20
    .line 162
    const/4 v0, 0x0

    #@21
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mSigHashes:Ljava/util/ArrayList;

    #@23
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@26
    move-result v1

    #@27
    if-ge v0, v1, :cond_0

    #@29
    .line 163
    const-string/jumbo v1, "signature"

    #@2c
    invoke-interface {p1, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2f
    .line 164
    const-string/jumbo v2, "hash"

    #@32
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mSigHashes:Ljava/util/ArrayList;

    #@34
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@37
    move-result-object v1

    #@38
    check-cast v1, [B

    #@3a
    invoke-static {v1}, Llibcore/io/Base64;->encode([B)Ljava/lang/String;

    #@3d
    move-result-object v1

    #@3e
    invoke-static {p1, v2, v1}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@41
    .line 165
    const-string/jumbo v1, "signature"

    #@44
    invoke-interface {p1, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@47
    .line 162
    add-int/lit8 v0, v0, 0x1

    #@49
    goto :goto_0

    #@4a
    .line 167
    :cond_0
    const-string/jumbo v1, "package-info"

    #@4d
    invoke-interface {p1, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@50
    .line 154
    return-void
.end method

.method public setShadow(Z)V
    .locals 0
    .param p1, "shadow"    # Z

    #@0
    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mIsShadow:Z

    #@2
    .line 81
    return-void
.end method

.method public updateVersionInfo(Landroid/content/pm/PackageInfo;)V
    .locals 2
    .param p1, "pi"    # Landroid/content/pm/PackageInfo;

    #@0
    .prologue
    .line 95
    if-eqz p1, :cond_0

    #@2
    .line 96
    iget v0, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    #@4
    iput v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mVersionCode:I

    #@6
    .line 97
    iget-wide v0, p1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    #@8
    iput-wide v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mLastUpdateTime:J

    #@a
    .line 94
    :cond_0
    return-void
.end method
