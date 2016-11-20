.class Lcom/android/server/pm/ShortcutPackageInfo;
.super Ljava/lang/Object;
.source "ShortcutPackageInfo.java"


# static fields
.field private static final ATTR_SHADOW:Ljava/lang/String; = "shadow"

.field private static final ATTR_SIGNATURE_HASH:Ljava/lang/String; = "hash"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final TAG:Ljava/lang/String; = "ShortcutService"

.field static final TAG_ROOT:Ljava/lang/String; = "package-info"

.field private static final TAG_SIGNATURE:Ljava/lang/String; = "signature"

.field private static final VERSION_UNKNOWN:I = -0x1


# instance fields
.field private mIsShadow:Z

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
.method private constructor <init>(ILjava/util/ArrayList;Z)V
    .locals 1
    .param p1, "versionCode"    # I
    .param p3, "isShadow"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<[B>;Z)V"
        }
    .end annotation

    #@0
    .prologue
    .line 58
    .local p2, "sigHashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 55
    const/4 v0, -0x1

    #@4
    iput v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mVersionCode:I

    #@6
    .line 59
    iput p1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mVersionCode:I

    #@8
    .line 60
    iput-boolean p3, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mIsShadow:Z

    #@a
    .line 61
    iput-object p2, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mSigHashes:Ljava/util/ArrayList;

    #@c
    .line 58
    return-void
.end method

.method public static generateForInstalledPackage(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackageInfo;
    .locals 6
    .param p0, "s"    # Lcom/android/server/pm/ShortcutService;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageUserId"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 109
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->getPackageInfoWithSignatures(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@5
    move-result-object v0

    #@6
    .line 110
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    #@8
    if-eqz v2, :cond_0

    #@a
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    #@c
    array-length v2, v2

    #@d
    if-nez v2, :cond_1

    #@f
    .line 111
    :cond_0
    const-string/jumbo v2, "ShortcutService"

    #@12
    new-instance v3, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v4, "Can\'t get signatures: package="

    #@1a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v3

    #@26
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 112
    return-object v5

    #@2a
    .line 114
    :cond_1
    new-instance v1, Lcom/android/server/pm/ShortcutPackageInfo;

    #@2c
    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    #@2e
    .line 115
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    #@30
    invoke-static {v3}, Lcom/android/server/backup/BackupUtils;->hashSignatureArray([Landroid/content/pm/Signature;)Ljava/util/ArrayList;

    #@33
    move-result-object v3

    #@34
    .line 114
    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/pm/ShortcutPackageInfo;-><init>(ILjava/util/ArrayList;Z)V

    #@37
    .line 117
    .local v1, "ret":Lcom/android/server/pm/ShortcutPackageInfo;
    return-object v1
.end method

.method public static newEmpty()Lcom/android/server/pm/ShortcutPackageInfo;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 65
    new-instance v0, Lcom/android/server/pm/ShortcutPackageInfo;

    #@3
    new-instance v1, Ljava/util/ArrayList;

    #@5
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@8
    const/4 v2, -0x1

    #@9
    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/pm/ShortcutPackageInfo;-><init>(ILjava/util/ArrayList;Z)V

    #@c
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
    .line 89
    invoke-virtual {p1, p2}, Lcom/android/server/pm/ShortcutService;->shouldBackupApp(Landroid/content/pm/PackageInfo;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 91
    const-string/jumbo v0, "ShortcutService"

    #@b
    const-string/jumbo v1, "Can\'t restore: package no longer allows backup"

    #@e
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 92
    return v4

    #@12
    .line 94
    :cond_0
    iget v0, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    #@14
    iget v1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mVersionCode:I

    #@16
    if-ge v0, v1, :cond_1

    #@18
    .line 95
    const-string/jumbo v0, "ShortcutService"

    #@1b
    .line 96
    const-string/jumbo v1, "Can\'t restore: package current version %d < backed up version %d"

    #@1e
    .line 95
    const/4 v2, 0x2

    #@1f
    new-array v2, v2, [Ljava/lang/Object;

    #@21
    .line 97
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
    .line 95
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@38
    .line 98
    return v4

    #@39
    .line 100
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mSigHashes:Ljava/util/ArrayList;

    #@3b
    invoke-static {v0, p2}, Lcom/android/server/backup/BackupUtils;->signaturesMatch(Ljava/util/ArrayList;Landroid/content/pm/PackageInfo;)Z

    #@3e
    move-result v0

    #@3f
    if-nez v0, :cond_2

    #@41
    .line 101
    const-string/jumbo v0, "ShortcutService"

    #@44
    const-string/jumbo v1, "Can\'t restore: Package signature mismatch"

    #@47
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4a
    .line 102
    return v4

    #@4b
    .line 104
    :cond_2
    return v5
.end method

.method public dump(Lcom/android/server/pm/ShortcutService;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Lcom/android/server/pm/ShortcutService;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 193
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@3
    .line 195
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6
    .line 196
    const-string/jumbo v1, "PackageInfo:"

    #@9
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c
    .line 198
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f
    .line 199
    const-string/jumbo v1, "  IsShadow: "

    #@12
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@15
    .line 200
    iget-boolean v1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mIsShadow:Z

    #@17
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Z)V

    #@1a
    .line 201
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@1d
    .line 203
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@20
    .line 204
    const-string/jumbo v1, "  Version: "

    #@23
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@26
    .line 205
    iget v1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mVersionCode:I

    #@28
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    #@2b
    .line 206
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@2e
    .line 208
    const/4 v0, 0x0

    #@2f
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mSigHashes:Ljava/util/ArrayList;

    #@31
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@34
    move-result v1

    #@35
    if-ge v0, v1, :cond_0

    #@37
    .line 209
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3a
    .line 210
    const-string/jumbo v1, "    "

    #@3d
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@40
    .line 211
    const-string/jumbo v1, "SigHash: "

    #@43
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@46
    .line 212
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mSigHashes:Ljava/util/ArrayList;

    #@48
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4b
    move-result-object v1

    #@4c
    check-cast v1, [B

    #@4e
    invoke-static {v1}, Llibcore/util/HexEncoding;->encode([B)[C

    #@51
    move-result-object v1

    #@52
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println([C)V

    #@55
    .line 208
    add-int/lit8 v0, v0, 0x1

    #@57
    goto :goto_0

    #@58
    .line 192
    :cond_0
    return-void
.end method

.method public getVersionCode()I
    .locals 1

    #@0
    .prologue
    .line 77
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
    .line 85
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
    .line 69
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mIsShadow:Z

    #@2
    return v0
.end method

.method public loadFromXml(Lorg/xmlpull/v1/XmlPullParser;Z)V
    .locals 9
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
    .line 155
    const-string/jumbo v8, "version"

    #@3
    invoke-static {p1, v8}, Lcom/android/server/pm/ShortcutService;->parseIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    #@6
    move-result v7

    #@7
    .line 159
    .local v7, "versionCode":I
    if-nez p2, :cond_2

    #@9
    const-string/jumbo v8, "shadow"

    #@c
    invoke-static {p1, v8}, Lcom/android/server/pm/ShortcutService;->parseBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    #@f
    move-result v4

    #@10
    .line 161
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    #@12
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@15
    .line 163
    .local v2, "hashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@18
    move-result v3

    #@19
    .line 165
    .local v3, "outerDepth":I
    :cond_0
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@1c
    move-result v6

    #@1d
    .local v6, "type":I
    const/4 v8, 0x1

    #@1e
    if-eq v6, v8, :cond_4

    #@20
    .line 166
    const/4 v8, 0x3

    #@21
    if-ne v6, v8, :cond_1

    #@23
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@26
    move-result v8

    #@27
    if-le v8, v3, :cond_4

    #@29
    .line 167
    :cond_1
    const/4 v8, 0x2

    #@2a
    if-ne v6, v8, :cond_0

    #@2c
    .line 170
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@2f
    move-result v0

    #@30
    .line 171
    .local v0, "depth":I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@33
    move-result-object v5

    #@34
    .line 173
    .local v5, "tag":Ljava/lang/String;
    add-int/lit8 v8, v3, 0x1

    #@36
    if-ne v0, v8, :cond_3

    #@38
    .line 174
    const-string/jumbo v8, "signature"

    #@3b
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3e
    move-result v8

    #@3f
    if-eqz v8, :cond_3

    #@41
    .line 177
    const-string/jumbo v8, "hash"

    #@44
    .line 176
    invoke-static {p1, v8}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    #@47
    move-result-object v1

    #@48
    .line 178
    .local v1, "hash":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    #@4b
    move-result-object v8

    #@4c
    invoke-static {v8}, Llibcore/io/Base64;->decode([B)[B

    #@4f
    move-result-object v8

    #@50
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@53
    goto :goto_1

    #@54
    .line 159
    .end local v0    # "depth":I
    .end local v1    # "hash":Ljava/lang/String;
    .end local v2    # "hashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v3    # "outerDepth":I
    .end local v5    # "tag":Ljava/lang/String;
    .end local v6    # "type":I
    :cond_2
    const/4 v4, 0x1

    #@55
    .local v4, "shadow":Z
    goto :goto_0

    #@56
    .line 183
    .end local v4    # "shadow":Z
    .restart local v0    # "depth":I
    .restart local v2    # "hashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .restart local v3    # "outerDepth":I
    .restart local v5    # "tag":Ljava/lang/String;
    .restart local v6    # "type":I
    :cond_3
    invoke-static {v0, v5}, Lcom/android/server/pm/ShortcutService;->warnForInvalidTag(ILjava/lang/String;)V

    #@59
    goto :goto_1

    #@5a
    .line 187
    .end local v0    # "depth":I
    .end local v5    # "tag":Ljava/lang/String;
    :cond_4
    iput v7, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mVersionCode:I

    #@5c
    .line 188
    iput-boolean v4, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mIsShadow:Z

    #@5e
    .line 189
    iput-object v2, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mSigHashes:Ljava/util/ArrayList;

    #@60
    .line 153
    return-void
.end method

.method public refresh(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutPackageItem;)V
    .locals 4
    .param p1, "s"    # Lcom/android/server/pm/ShortcutService;
    .param p2, "pkg"    # Lcom/android/server/pm/ShortcutPackageItem;

    #@0
    .prologue
    .line 121
    iget-boolean v1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mIsShadow:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 122
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
    .line 123
    const-string/jumbo v2, ", user="

    #@1b
    .line 122
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    .line 123
    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->getOwnerUserId()I

    #@22
    move-result v2

    #@23
    .line 122
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
    .line 124
    return-void

    #@2f
    .line 128
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageUserId()I

    #@36
    move-result v2

    #@37
    .line 127
    invoke-virtual {p1, v1, v2}, Lcom/android/server/pm/ShortcutService;->getPackageInfoWithSignatures(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@3a
    move-result-object v0

    #@3b
    .line 129
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_1

    #@3d
    .line 130
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
    .line 131
    return-void

    #@5c
    .line 133
    :cond_1
    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    #@5e
    iput v1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mVersionCode:I

    #@60
    .line 134
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    #@62
    invoke-static {v1}, Lcom/android/server/backup/BackupUtils;->hashSignatureArray([Landroid/content/pm/Signature;)Ljava/util/ArrayList;

    #@65
    move-result-object v1

    #@66
    iput-object v1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mSigHashes:Ljava/util/ArrayList;

    #@68
    .line 120
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
    .line 139
    const-string/jumbo v1, "package-info"

    #@4
    invoke-interface {p1, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7
    .line 141
    const-string/jumbo v1, "version"

    #@a
    iget v2, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mVersionCode:I

    #@c
    int-to-long v2, v2

    #@d
    invoke-static {p1, v1, v2, v3}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    #@10
    .line 142
    const-string/jumbo v1, "shadow"

    #@13
    iget-boolean v2, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mIsShadow:Z

    #@15
    invoke-static {p1, v1, v2}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    #@18
    .line 144
    const/4 v0, 0x0

    #@19
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mSigHashes:Ljava/util/ArrayList;

    #@1b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@1e
    move-result v1

    #@1f
    if-ge v0, v1, :cond_0

    #@21
    .line 145
    const-string/jumbo v1, "signature"

    #@24
    invoke-interface {p1, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@27
    .line 146
    const-string/jumbo v2, "hash"

    #@2a
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mSigHashes:Ljava/util/ArrayList;

    #@2c
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2f
    move-result-object v1

    #@30
    check-cast v1, [B

    #@32
    invoke-static {v1}, Llibcore/io/Base64;->encode([B)Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    invoke-static {p1, v2, v1}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    #@39
    .line 147
    const-string/jumbo v1, "signature"

    #@3c
    invoke-interface {p1, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@3f
    .line 144
    add-int/lit8 v0, v0, 0x1

    #@41
    goto :goto_0

    #@42
    .line 149
    :cond_0
    const-string/jumbo v1, "package-info"

    #@45
    invoke-interface {p1, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@48
    .line 137
    return-void
.end method

.method public setShadow(Z)V
    .locals 0
    .param p1, "shadow"    # Z

    #@0
    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mIsShadow:Z

    #@2
    .line 72
    return-void
.end method

.method public setVersionCode(I)V
    .locals 0
    .param p1, "versionCode"    # I

    #@0
    .prologue
    .line 81
    iput p1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mVersionCode:I

    #@2
    .line 80
    return-void
.end method
