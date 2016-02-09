.class public final Landroid/nfc/cardemulation/AidGroup;
.super Ljava/lang/Object;
.source "AidGroup.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/cardemulation/AidGroup$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX_NUM_AIDS:I = 0x100

.field static final TAG:Ljava/lang/String; = "AidGroup"


# instance fields
.field final aids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final category:Ljava/lang/String;

.field final description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 112
    new-instance v0, Landroid/nfc/cardemulation/AidGroup$1;

    #@2
    invoke-direct {v0}, Landroid/nfc/cardemulation/AidGroup$1;-><init>()V

    #@5
    .line 111
    sput-object v0, Landroid/nfc/cardemulation/AidGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 24
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;

    #@0
    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 67
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    #@a
    .line 68
    iput-object p1, p0, Landroid/nfc/cardemulation/AidGroup;->category:Ljava/lang/String;

    #@c
    .line 69
    iput-object p2, p0, Landroid/nfc/cardemulation/AidGroup;->description:Ljava/lang/String;

    #@e
    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 5
    .param p2, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "aids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    #@1
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 43
    if-eqz p1, :cond_0

    #@6
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@9
    move-result v2

    #@a
    if-nez v2, :cond_1

    #@c
    .line 44
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@e
    const-string/jumbo v3, "No AIDS in AID group."

    #@11
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@14
    throw v2

    #@15
    .line 46
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@18
    move-result v2

    #@19
    const/16 v3, 0x100

    #@1b
    if-le v2, v3, :cond_2

    #@1d
    .line 47
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@1f
    const-string/jumbo v3, "Too many AIDs in AID group."

    #@22
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@25
    throw v2

    #@26
    .line 49
    :cond_2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@29
    move-result-object v1

    #@2a
    .local v1, "aid$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@2d
    move-result v2

    #@2e
    if-eqz v2, :cond_4

    #@30
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@33
    move-result-object v0

    #@34
    check-cast v0, Ljava/lang/String;

    #@36
    .line 50
    .local v0, "aid":Ljava/lang/String;
    invoke-static {v0}, Landroid/nfc/cardemulation/CardEmulation;->isValidAid(Ljava/lang/String;)Z

    #@39
    move-result v2

    #@3a
    if-nez v2, :cond_3

    #@3c
    .line 51
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@3e
    new-instance v3, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string/jumbo v4, "AID "

    #@46
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v3

    #@4a
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v3

    #@4e
    const-string/jumbo v4, " is not a valid AID."

    #@51
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v3

    #@55
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v3

    #@59
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5c
    throw v2

    #@5d
    .line 54
    .end local v0    # "aid":Ljava/lang/String;
    :cond_4
    invoke-static {p2}, Landroid/nfc/cardemulation/AidGroup;->isValidCategory(Ljava/lang/String;)Z

    #@60
    move-result v2

    #@61
    if-eqz v2, :cond_5

    #@63
    .line 55
    iput-object p2, p0, Landroid/nfc/cardemulation/AidGroup;->category:Ljava/lang/String;

    #@65
    .line 59
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    #@67
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@6a
    move-result v3

    #@6b
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@6e
    iput-object v2, p0, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    #@70
    .line 60
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@73
    move-result-object v1

    #@74
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@77
    move-result v2

    #@78
    if-eqz v2, :cond_6

    #@7a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@7d
    move-result-object v0

    #@7e
    check-cast v0, Ljava/lang/String;

    #@80
    .line 61
    .restart local v0    # "aid":Ljava/lang/String;
    iget-object v2, p0, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    #@82
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@85
    move-result-object v3

    #@86
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@89
    goto :goto_1

    #@8a
    .line 57
    .end local v0    # "aid":Ljava/lang/String;
    :cond_5
    const-string/jumbo v2, "other"

    #@8d
    iput-object v2, p0, Landroid/nfc/cardemulation/AidGroup;->category:Ljava/lang/String;

    #@8f
    goto :goto_0

    #@90
    .line 63
    :cond_6
    iput-object v4, p0, Landroid/nfc/cardemulation/AidGroup;->description:Ljava/lang/String;

    #@92
    .line 42
    return-void
.end method

.method public static createFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/nfc/cardemulation/AidGroup;
    .locals 12
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 132
    const/4 v2, 0x0

    #@2
    .line 133
    .local v2, "category":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    #@4
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@7
    .line 134
    .local v1, "aids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    #@8
    .line 135
    .local v4, "group":Landroid/nfc/cardemulation/AidGroup;
    const/4 v5, 0x0

    #@9
    .line 137
    .local v5, "inGroup":Z
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@c
    move-result v3

    #@d
    .line 138
    .local v3, "eventType":I
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@10
    move-result v6

    #@11
    .line 139
    .end local v2    # "category":Ljava/lang/String;
    .local v6, "minDepth":I
    :goto_0
    const/4 v8, 0x1

    #@12
    if-eq v3, v8, :cond_6

    #@14
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@17
    move-result v8

    #@18
    if-lt v8, v6, :cond_6

    #@1a
    .line 140
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1d
    move-result-object v7

    #@1e
    .line 141
    .local v7, "tagName":Ljava/lang/String;
    const/4 v8, 0x2

    #@1f
    if-ne v3, v8, :cond_5

    #@21
    .line 142
    const-string/jumbo v8, "aid"

    #@24
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v8

    #@28
    if-eqz v8, :cond_2

    #@2a
    .line 143
    if-eqz v5, :cond_1

    #@2c
    .line 144
    const-string/jumbo v8, "value"

    #@2f
    invoke-interface {p0, v11, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    .line 145
    .local v0, "aid":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@35
    .line 146
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@38
    move-result-object v8

    #@39
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3c
    .line 167
    .end local v0    # "aid":Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@3f
    move-result v3

    #@40
    goto :goto_0

    #@41
    .line 149
    :cond_1
    const-string/jumbo v8, "AidGroup"

    #@44
    const-string/jumbo v9, "Ignoring <aid> tag while not in group"

    #@47
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@4a
    goto :goto_1

    #@4b
    .line 151
    :cond_2
    const-string/jumbo v8, "aid-group"

    #@4e
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@51
    move-result v8

    #@52
    if-eqz v8, :cond_4

    #@54
    .line 152
    const-string/jumbo v8, "category"

    #@57
    invoke-interface {p0, v11, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@5a
    move-result-object v2

    #@5b
    .line 153
    .local v2, "category":Ljava/lang/String;
    if-nez v2, :cond_3

    #@5d
    .line 154
    const-string/jumbo v8, "AidGroup"

    #@60
    const-string/jumbo v9, "<aid-group> tag without valid category"

    #@63
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@66
    .line 155
    return-object v11

    #@67
    .line 157
    :cond_3
    const/4 v5, 0x1

    #@68
    goto :goto_1

    #@69
    .line 159
    .end local v2    # "category":Ljava/lang/String;
    :cond_4
    const-string/jumbo v8, "AidGroup"

    #@6c
    new-instance v9, Ljava/lang/StringBuilder;

    #@6e
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@71
    const-string/jumbo v10, "Ignoring unexpected tag: "

    #@74
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v9

    #@78
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v9

    #@7c
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v9

    #@80
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@83
    goto :goto_1

    #@84
    .line 161
    :cond_5
    const/4 v8, 0x3

    #@85
    if-ne v3, v8, :cond_0

    #@87
    .line 162
    const-string/jumbo v8, "aid-group"

    #@8a
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8d
    move-result v8

    #@8e
    if-eqz v8, :cond_0

    #@90
    if-eqz v5, :cond_0

    #@92
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@95
    move-result v8

    #@96
    if-lez v8, :cond_0

    #@98
    .line 163
    new-instance v4, Landroid/nfc/cardemulation/AidGroup;

    #@9a
    .end local v4    # "group":Landroid/nfc/cardemulation/AidGroup;
    invoke-direct {v4, v1, v2}, Landroid/nfc/cardemulation/AidGroup;-><init>(Ljava/util/List;Ljava/lang/String;)V

    #@9d
    .line 169
    .end local v7    # "tagName":Ljava/lang/String;
    :cond_6
    return-object v4
.end method

.method static isValidCategory(Ljava/lang/String;)Z
    .locals 1
    .param p0, "category"    # Ljava/lang/String;

    #@0
    .prologue
    .line 184
    const-string/jumbo v0, "payment"

    #@3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 185
    const-string/jumbo v0, "other"

    #@c
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    .line 184
    :goto_0
    return v0

    #@11
    :cond_0
    const/4 v0, 0x1

    #@12
    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 99
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getAids()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 83
    iget-object v0, p0, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 76
    iget-object v0, p0, Landroid/nfc/cardemulation/AidGroup;->category:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    new-instance v3, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v4, "Category: "

    #@a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v3

    #@e
    iget-object v4, p0, Landroid/nfc/cardemulation/AidGroup;->category:Ljava/lang/String;

    #@10
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v3

    #@14
    .line 89
    const-string/jumbo v4, ", AIDs:"

    #@17
    .line 88
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@22
    .line 90
    .local v2, "out":Ljava/lang/StringBuilder;
    iget-object v3, p0, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    #@24
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@27
    move-result-object v1

    #@28
    .local v1, "aid$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@2b
    move-result v3

    #@2c
    if-eqz v3, :cond_0

    #@2e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@31
    move-result-object v0

    #@32
    check-cast v0, Ljava/lang/String;

    #@34
    .line 91
    .local v0, "aid":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    .line 92
    const-string/jumbo v3, ", "

    #@3a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    goto :goto_0

    #@3e
    .line 94
    .end local v0    # "aid":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v3

    #@42
    return-object v3
.end method

.method public writeAsXml(Lorg/xmlpull/v1/XmlSerializer;)V
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
    .line 173
    const-string/jumbo v2, "aid-group"

    #@4
    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7
    .line 174
    const-string/jumbo v2, "category"

    #@a
    iget-object v3, p0, Landroid/nfc/cardemulation/AidGroup;->category:Ljava/lang/String;

    #@c
    invoke-interface {p1, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@f
    .line 175
    iget-object v2, p0, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    #@11
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v1

    #@15
    .local v1, "aid$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_0

    #@1b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Ljava/lang/String;

    #@21
    .line 176
    .local v0, "aid":Ljava/lang/String;
    const-string/jumbo v2, "aid"

    #@24
    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@27
    .line 177
    const-string/jumbo v2, "value"

    #@2a
    invoke-interface {p1, v4, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2d
    .line 178
    const-string/jumbo v2, "aid"

    #@30
    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@33
    goto :goto_0

    #@34
    .line 180
    .end local v0    # "aid":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "aid-group"

    #@37
    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@3a
    .line 172
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 104
    iget-object v0, p0, Landroid/nfc/cardemulation/AidGroup;->category:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 105
    iget-object v0, p0, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    #@7
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@a
    move-result v0

    #@b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@e
    .line 106
    iget-object v0, p0, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    #@10
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@13
    move-result v0

    #@14
    if-lez v0, :cond_0

    #@16
    .line 107
    iget-object v0, p0, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    #@18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    #@1b
    .line 103
    :cond_0
    return-void
.end method
