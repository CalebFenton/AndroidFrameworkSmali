.class Ljava/util/prefs/FileSystemPreferences$6;
.super Ljava/lang/Object;
.source "FileSystemPreferences.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/prefs/FileSystemPreferences;->childrenNamesSpi()[Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/prefs/FileSystemPreferences;


# direct methods
.method constructor <init>(Ljava/util/prefs/FileSystemPreferences;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/prefs/FileSystemPreferences;

    #@0
    .prologue
    .line 646
    iput-object p1, p0, Ljava/util/prefs/FileSystemPreferences$6;->this$0:Ljava/util/prefs/FileSystemPreferences;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 647
    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences$6;->run()[Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public run()[Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 648
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 649
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Ljava/util/prefs/FileSystemPreferences$6;->this$0:Ljava/util/prefs/FileSystemPreferences;

    #@7
    invoke-static {v3}, Ljava/util/prefs/FileSystemPreferences;->-get1(Ljava/util/prefs/FileSystemPreferences;)Ljava/io/File;

    #@a
    move-result-object v3

    #@b
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@e
    move-result-object v0

    #@f
    .line 650
    .local v0, "dirContents":[Ljava/io/File;
    if-eqz v0, :cond_1

    #@11
    .line 651
    const/4 v1, 0x0

    #@12
    .local v1, "i":I
    :goto_0
    array-length v3, v0

    #@13
    if-ge v1, v3, :cond_1

    #@15
    .line 652
    aget-object v3, v0, v1

    #@17
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    #@1a
    move-result v3

    #@1b
    if-eqz v3, :cond_0

    #@1d
    .line 653
    aget-object v3, v0, v1

    #@1f
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    invoke-static {v3}, Ljava/util/prefs/FileSystemPreferences;->-wrap1(Ljava/lang/String;)Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2a
    .line 651
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 655
    .end local v1    # "i":I
    :cond_1
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get0()[Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@34
    move-result-object v3

    #@35
    check-cast v3, [Ljava/lang/String;

    #@37
    return-object v3
.end method
