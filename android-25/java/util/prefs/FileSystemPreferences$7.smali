.class Ljava/util/prefs/FileSystemPreferences$7;
.super Ljava/lang/Object;
.source "FileSystemPreferences.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/prefs/FileSystemPreferences;->removeNodeSpi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction",
        "<",
        "Ljava/lang/Void;",
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
    .line 685
    iput-object p1, p0, Ljava/util/prefs/FileSystemPreferences$7;->this$0:Ljava/util/prefs/FileSystemPreferences;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 686
    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences$7;->run()Ljava/lang/Void;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 687
    iget-object v2, p0, Ljava/util/prefs/FileSystemPreferences$7;->this$0:Ljava/util/prefs/FileSystemPreferences;

    #@3
    iget-object v2, v2, Ljava/util/prefs/FileSystemPreferences;->changeLog:Ljava/util/List;

    #@5
    iget-object v3, p0, Ljava/util/prefs/FileSystemPreferences$7;->this$0:Ljava/util/prefs/FileSystemPreferences;

    #@7
    iget-object v3, v3, Ljava/util/prefs/FileSystemPreferences;->nodeCreate:Ljava/util/prefs/FileSystemPreferences$NodeCreate;

    #@9
    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 688
    iget-object v2, p0, Ljava/util/prefs/FileSystemPreferences$7;->this$0:Ljava/util/prefs/FileSystemPreferences;

    #@11
    iget-object v2, v2, Ljava/util/prefs/FileSystemPreferences;->changeLog:Ljava/util/List;

    #@13
    iget-object v3, p0, Ljava/util/prefs/FileSystemPreferences$7;->this$0:Ljava/util/prefs/FileSystemPreferences;

    #@15
    iget-object v3, v3, Ljava/util/prefs/FileSystemPreferences;->nodeCreate:Ljava/util/prefs/FileSystemPreferences$NodeCreate;

    #@17
    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@1a
    .line 689
    iget-object v2, p0, Ljava/util/prefs/FileSystemPreferences$7;->this$0:Ljava/util/prefs/FileSystemPreferences;

    #@1c
    iput-object v5, v2, Ljava/util/prefs/FileSystemPreferences;->nodeCreate:Ljava/util/prefs/FileSystemPreferences$NodeCreate;

    #@1e
    .line 690
    return-object v5

    #@1f
    .line 692
    :cond_0
    iget-object v2, p0, Ljava/util/prefs/FileSystemPreferences$7;->this$0:Ljava/util/prefs/FileSystemPreferences;

    #@21
    invoke-static {v2}, Ljava/util/prefs/FileSystemPreferences;->-get1(Ljava/util/prefs/FileSystemPreferences;)Ljava/io/File;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    #@28
    move-result v2

    #@29
    if-nez v2, :cond_1

    #@2b
    .line 693
    return-object v5

    #@2c
    .line 694
    :cond_1
    iget-object v2, p0, Ljava/util/prefs/FileSystemPreferences$7;->this$0:Ljava/util/prefs/FileSystemPreferences;

    #@2e
    invoke-static {v2}, Ljava/util/prefs/FileSystemPreferences;->-get4(Ljava/util/prefs/FileSystemPreferences;)Ljava/io/File;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    #@35
    .line 695
    iget-object v2, p0, Ljava/util/prefs/FileSystemPreferences$7;->this$0:Ljava/util/prefs/FileSystemPreferences;

    #@37
    invoke-static {v2}, Ljava/util/prefs/FileSystemPreferences;->-get8(Ljava/util/prefs/FileSystemPreferences;)Ljava/io/File;

    #@3a
    move-result-object v2

    #@3b
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    #@3e
    .line 697
    iget-object v2, p0, Ljava/util/prefs/FileSystemPreferences$7;->this$0:Ljava/util/prefs/FileSystemPreferences;

    #@40
    invoke-static {v2}, Ljava/util/prefs/FileSystemPreferences;->-get1(Ljava/util/prefs/FileSystemPreferences;)Ljava/io/File;

    #@43
    move-result-object v2

    #@44
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@47
    move-result-object v1

    #@48
    .line 698
    .local v1, "junk":[Ljava/io/File;
    array-length v2, v1

    #@49
    if-eqz v2, :cond_2

    #@4b
    .line 699
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-wrap2()Lsun/util/logging/PlatformLogger;

    #@4e
    move-result-object v2

    #@4f
    .line 700
    new-instance v3, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    const-string/jumbo v4, "Found extraneous files when removing node: "

    #@57
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v3

    #@5b
    .line 701
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@5e
    move-result-object v4

    #@5f
    .line 700
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v3

    #@63
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v3

    #@67
    .line 699
    invoke-virtual {v2, v3}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    #@6a
    .line 702
    const/4 v0, 0x0

    #@6b
    .local v0, "i":I
    :goto_0
    array-length v2, v1

    #@6c
    if-ge v0, v2, :cond_2

    #@6e
    .line 703
    aget-object v2, v1, v0

    #@70
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    #@73
    .line 702
    add-int/lit8 v0, v0, 0x1

    #@75
    goto :goto_0

    #@76
    .line 705
    .end local v0    # "i":I
    :cond_2
    iget-object v2, p0, Ljava/util/prefs/FileSystemPreferences$7;->this$0:Ljava/util/prefs/FileSystemPreferences;

    #@78
    invoke-static {v2}, Ljava/util/prefs/FileSystemPreferences;->-get1(Ljava/util/prefs/FileSystemPreferences;)Ljava/io/File;

    #@7b
    move-result-object v2

    #@7c
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    #@7f
    move-result v2

    #@80
    if-nez v2, :cond_3

    #@82
    .line 706
    new-instance v2, Ljava/util/prefs/BackingStoreException;

    #@84
    new-instance v3, Ljava/lang/StringBuilder;

    #@86
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@89
    const-string/jumbo v4, "Couldn\'t delete dir: "

    #@8c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v3

    #@90
    .line 707
    iget-object v4, p0, Ljava/util/prefs/FileSystemPreferences$7;->this$0:Ljava/util/prefs/FileSystemPreferences;

    #@92
    invoke-static {v4}, Ljava/util/prefs/FileSystemPreferences;->-get1(Ljava/util/prefs/FileSystemPreferences;)Ljava/io/File;

    #@95
    move-result-object v4

    #@96
    .line 706
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v3

    #@9a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9d
    move-result-object v3

    #@9e
    invoke-direct {v2, v3}, Ljava/util/prefs/BackingStoreException;-><init>(Ljava/lang/String;)V

    #@a1
    throw v2

    #@a2
    .line 708
    :cond_3
    return-object v5
.end method
