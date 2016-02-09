.class Lcom/android/server/pm/PreferredActivity;
.super Landroid/content/IntentFilter;
.source "PreferredActivity.java"

# interfaces
.implements Lcom/android/server/pm/PreferredComponent$Callbacks;


# static fields
.field private static final DEBUG_FILTERS:Z = false

.field private static final TAG:Ljava/lang/String; = "PreferredActivity"


# instance fields
.field final mPref:Lcom/android/server/pm/PreferredComponent;


# direct methods
.method constructor <init>(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;Z)V
    .locals 6
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "match"    # I
    .param p3, "set"    # [Landroid/content/ComponentName;
    .param p4, "activity"    # Landroid/content/ComponentName;
    .param p5, "always"    # Z

    #@0
    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    #@3
    .line 41
    new-instance v0, Lcom/android/server/pm/PreferredComponent;

    #@5
    move-object v1, p0

    #@6
    move v2, p2

    #@7
    move-object v3, p3

    #@8
    move-object v4, p4

    #@9
    move v5, p5

    #@a
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PreferredComponent;-><init>(Lcom/android/server/pm/PreferredComponent$Callbacks;I[Landroid/content/ComponentName;Landroid/content/ComponentName;Z)V

    #@d
    iput-object v0, p0, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    #@f
    .line 39
    return-void
.end method

.method constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    #@3
    .line 45
    new-instance v0, Lcom/android/server/pm/PreferredComponent;

    #@5
    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/PreferredComponent;-><init>(Lcom/android/server/pm/PreferredComponent$Callbacks;Lorg/xmlpull/v1/XmlPullParser;)V

    #@8
    iput-object v0, p0, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    #@a
    .line 44
    return-void
.end method


# virtual methods
.method public onReadTag(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Z
    .locals 2
    .param p1, "tagName"    # Ljava/lang/String;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 57
    const-string/jumbo v0, "filter"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 61
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PreferredActivity;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    #@c
    .line 71
    :goto_0
    const/4 v0, 0x1

    #@d
    return v0

    #@e
    .line 68
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v1, "Unknown element under <preferred-activities>: "

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    .line 67
    const/4 v1, 0x5

    #@27
    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@2a
    .line 69
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@2d
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "PreferredActivity{0x"

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
    .line 77
    const-string/jumbo v1, " "

    #@1b
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 77
    iget-object v1, p0, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    #@21
    iget-object v1, v1, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    #@23
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    .line 77
    const-string/jumbo v1, "}"

    #@2e
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    return-object v0
.end method

.method public writeToXml(Lorg/xmlpull/v1/XmlSerializer;Z)V
    .locals 2
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "full"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 49
    iget-object v0, p0, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    #@3
    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/PreferredComponent;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;Z)V

    #@6
    .line 50
    const-string/jumbo v0, "filter"

    #@9
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@c
    .line 51
    invoke-super {p0, p1}, Landroid/content/IntentFilter;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    #@f
    .line 52
    const-string/jumbo v0, "filter"

    #@12
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@15
    .line 48
    return-void
.end method
