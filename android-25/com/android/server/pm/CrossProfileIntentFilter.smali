.class Lcom/android/server/pm/CrossProfileIntentFilter;
.super Landroid/content/IntentFilter;
.source "CrossProfileIntentFilter.java"


# static fields
.field private static final ATTR_FILTER:Ljava/lang/String; = "filter"

.field private static final ATTR_FLAGS:Ljava/lang/String; = "flags"

.field private static final ATTR_OWNER_PACKAGE:Ljava/lang/String; = "ownerPackage"

.field private static final ATTR_TARGET_USER_ID:Ljava/lang/String; = "targetUserId"

.field private static final TAG:Ljava/lang/String; = "CrossProfileIntentFilter"


# instance fields
.field final mFlags:I

.field final mOwnerPackage:Ljava/lang/String;

.field final mTargetUserId:I


# direct methods
.method constructor <init>(Landroid/content/IntentFilter;Ljava/lang/String;II)V
    .locals 0
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "ownerPackage"    # Ljava/lang/String;
    .param p3, "targetUserId"    # I
    .param p4, "flags"    # I

    #@0
    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    #@3
    .line 49
    iput p3, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    #@5
    .line 50
    iput-object p2, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mOwnerPackage:Ljava/lang/String;

    #@7
    .line 51
    iput p4, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mFlags:I

    #@9
    .line 47
    return-void
.end method

.method constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x5

    #@1
    const/4 v6, 0x3

    #@2
    .line 66
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    #@5
    .line 67
    const-string/jumbo v4, "targetUserId"

    #@8
    const/16 v5, -0x2710

    #@a
    invoke-virtual {p0, p1, v4, v5}, Lcom/android/server/pm/CrossProfileIntentFilter;->getIntFromXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@d
    move-result v4

    #@e
    iput v4, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    #@10
    .line 68
    const-string/jumbo v4, "ownerPackage"

    #@13
    const-string/jumbo v5, ""

    #@16
    invoke-virtual {p0, p1, v4, v5}, Lcom/android/server/pm/CrossProfileIntentFilter;->getStringFromXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@19
    move-result-object v4

    #@1a
    iput-object v4, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mOwnerPackage:Ljava/lang/String;

    #@1c
    .line 69
    const-string/jumbo v4, "flags"

    #@1f
    const/4 v5, 0x0

    #@20
    invoke-virtual {p0, p1, v4, v5}, Lcom/android/server/pm/CrossProfileIntentFilter;->getIntFromXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@23
    move-result v4

    #@24
    iput v4, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mFlags:I

    #@26
    .line 71
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@29
    move-result v1

    #@2a
    .line 72
    .local v1, "outerDepth":I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    .line 74
    .local v2, "tagName":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@31
    move-result v3

    #@32
    .local v3, "type":I
    const/4 v4, 0x1

    #@33
    if-eq v3, v4, :cond_2

    #@35
    .line 75
    if-ne v3, v6, :cond_1

    #@37
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@3a
    move-result v4

    #@3b
    if-le v4, v1, :cond_2

    #@3d
    .line 76
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@40
    move-result-object v2

    #@41
    .line 77
    if-eq v3, v6, :cond_0

    #@43
    const/4 v4, 0x4

    #@44
    if-eq v3, v4, :cond_0

    #@46
    .line 79
    const/4 v4, 0x2

    #@47
    if-ne v3, v4, :cond_0

    #@49
    .line 80
    const-string/jumbo v4, "filter"

    #@4c
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4f
    move-result v4

    #@50
    if-eqz v4, :cond_3

    #@52
    .line 91
    :cond_2
    const-string/jumbo v4, "filter"

    #@55
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@58
    move-result v4

    #@59
    if-eqz v4, :cond_4

    #@5b
    .line 92
    invoke-virtual {p0, p1}, Lcom/android/server/pm/CrossProfileIntentFilter;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    #@5e
    .line 66
    :goto_1
    return-void

    #@5f
    .line 83
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    const-string/jumbo v5, "Unknown element under crossProfile-intent-filters: "

    #@67
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v4

    #@6b
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v4

    #@6f
    .line 84
    const-string/jumbo v5, " at "

    #@72
    .line 83
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v4

    #@76
    .line 85
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@79
    move-result-object v5

    #@7a
    .line 83
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v4

    #@7e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@81
    move-result-object v0

    #@82
    .line 86
    .local v0, "msg":Ljava/lang/String;
    invoke-static {v7, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@85
    .line 87
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@88
    goto :goto_0

    #@89
    .line 94
    .end local v0    # "msg":Ljava/lang/String;
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    #@8b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@8e
    const-string/jumbo v5, "Missing element under CrossProfileIntentFilter: filter at "

    #@91
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v4

    #@95
    .line 95
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@98
    move-result-object v5

    #@99
    .line 94
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v4

    #@9d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a0
    move-result-object v0

    #@a1
    .line 96
    .restart local v0    # "msg":Ljava/lang/String;
    invoke-static {v7, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@a4
    .line 97
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@a7
    goto :goto_1
.end method


# virtual methods
.method equalsIgnoreFilter(Lcom/android/server/pm/CrossProfileIntentFilter;)Z
    .locals 3
    .param p1, "other"    # Lcom/android/server/pm/CrossProfileIntentFilter;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 137
    iget v1, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    #@3
    iget v2, p1, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    #@5
    if-ne v1, v2, :cond_0

    #@7
    .line 138
    iget-object v1, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mOwnerPackage:Ljava/lang/String;

    #@9
    iget-object v2, p1, Lcom/android/server/pm/CrossProfileIntentFilter;->mOwnerPackage:Ljava/lang/String;

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v1

    #@f
    .line 137
    if-eqz v1, :cond_0

    #@11
    .line 139
    iget v1, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mFlags:I

    #@13
    iget v2, p1, Lcom/android/server/pm/CrossProfileIntentFilter;->mFlags:I

    #@15
    if-ne v1, v2, :cond_0

    #@17
    const/4 v0, 0x1

    #@18
    .line 137
    :cond_0
    return v0
.end method

.method public getFlags()I
    .locals 1

    #@0
    .prologue
    .line 59
    iget v0, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mFlags:I

    #@2
    return v0
.end method

.method getIntFromXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 2
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 114
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/pm/CrossProfileIntentFilter;->getStringFromXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 115
    .local v0, "stringValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@7
    .line 116
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@a
    move-result v1

    #@b
    return v1

    #@c
    .line 118
    :cond_0
    return p3
.end method

.method public getOwnerPackage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mOwnerPackage:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method getStringFromXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 102
    invoke-interface {p1, v2, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    .line 103
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    #@7
    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v3, "Missing element under CrossProfileIntentFilter: "

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    const-string/jumbo v3, " at "

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    .line 105
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    .line 104
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    .line 106
    .local v0, "msg":Ljava/lang/String;
    const/4 v2, 0x5

    #@2b
    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@2e
    .line 107
    return-object p3

    #@2f
    .line 109
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public getTargetUserId()I
    .locals 1

    #@0
    .prologue
    .line 55
    iget v0, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "CrossProfileIntentFilter{0x"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@f
    move-result v1

    #@10
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    .line 133
    const-string/jumbo v1, " "

    #@1b
    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 133
    iget v1, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    #@21
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    .line 133
    const-string/jumbo v1, "}"

    #@2c
    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v0

    #@34
    return-object v0
.end method

.method public writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 122
    const-string/jumbo v0, "targetUserId"

    #@4
    iget v1, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    #@6
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@d
    .line 123
    const-string/jumbo v0, "flags"

    #@10
    iget v1, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mFlags:I

    #@12
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@19
    .line 124
    const-string/jumbo v0, "ownerPackage"

    #@1c
    iget-object v1, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mOwnerPackage:Ljava/lang/String;

    #@1e
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@21
    .line 125
    const-string/jumbo v0, "filter"

    #@24
    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@27
    .line 126
    invoke-super {p0, p1}, Landroid/content/IntentFilter;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    #@2a
    .line 127
    const-string/jumbo v0, "filter"

    #@2d
    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@30
    .line 121
    return-void
.end method
