.class Ljava/util/prefs/FilePreferencesImpl$1;
.super Ljava/lang/Object;
.source "FilePreferencesImpl.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/prefs/FilePreferencesImpl;->childrenNamesSpi()[Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/prefs/FilePreferencesImpl;


# direct methods
.method constructor <init>(Ljava/util/prefs/FilePreferencesImpl;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/prefs/FilePreferencesImpl;

    #@0
    .prologue
    .line 95
    iput-object p1, p0, Ljava/util/prefs/FilePreferencesImpl$1;->this$0:Ljava/util/prefs/FilePreferencesImpl;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 3
    .param p1, "parent"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 97
    new-instance v0, Ljava/io/File;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    iget-object v2, p0, Ljava/util/prefs/FilePreferencesImpl$1;->this$0:Ljava/util/prefs/FilePreferencesImpl;

    #@9
    invoke-static {v2}, Ljava/util/prefs/FilePreferencesImpl;->-get0(Ljava/util/prefs/FilePreferencesImpl;)Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@22
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    #@25
    move-result v0

    #@26
    return v0
.end method
