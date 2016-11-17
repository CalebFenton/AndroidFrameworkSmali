.class Ljava/util/prefs/FileSystemPreferences$5;
.super Ljava/lang/Object;
.source "FileSystemPreferences.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/prefs/FileSystemPreferences;->writeBackCache()V
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
    .line 614
    iput-object p1, p0, Ljava/util/prefs/FileSystemPreferences$5;->this$0:Ljava/util/prefs/FileSystemPreferences;

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
    .line 615
    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences$5;->run()Ljava/lang/Void;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 617
    :try_start_0
    iget-object v3, p0, Ljava/util/prefs/FileSystemPreferences$5;->this$0:Ljava/util/prefs/FileSystemPreferences;

    #@3
    invoke-static {v3}, Ljava/util/prefs/FileSystemPreferences;->-get1(Ljava/util/prefs/FileSystemPreferences;)Ljava/io/File;

    #@6
    move-result-object v3

    #@7
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    #@a
    move-result v3

    #@b
    if-nez v3, :cond_0

    #@d
    iget-object v3, p0, Ljava/util/prefs/FileSystemPreferences$5;->this$0:Ljava/util/prefs/FileSystemPreferences;

    #@f
    invoke-static {v3}, Ljava/util/prefs/FileSystemPreferences;->-get1(Ljava/util/prefs/FileSystemPreferences;)Ljava/io/File;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    move-result v3

    #@17
    if-eqz v3, :cond_2

    #@19
    .line 620
    :cond_0
    const/4 v1, 0x0

    #@1a
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    #@1c
    iget-object v3, p0, Ljava/util/prefs/FileSystemPreferences$5;->this$0:Ljava/util/prefs/FileSystemPreferences;

    #@1e
    invoke-static {v3}, Ljava/util/prefs/FileSystemPreferences;->-get8(Ljava/util/prefs/FileSystemPreferences;)Ljava/io/File;

    #@21
    move-result-object v3

    #@22
    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@25
    .line 621
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    iget-object v3, p0, Ljava/util/prefs/FileSystemPreferences$5;->this$0:Ljava/util/prefs/FileSystemPreferences;

    #@27
    invoke-static {v3}, Ljava/util/prefs/FileSystemPreferences;->-get3(Ljava/util/prefs/FileSystemPreferences;)Ljava/util/Map;

    #@2a
    move-result-object v3

    #@2b
    invoke-static {v2, v3}, Ljava/util/prefs/XmlSupport;->exportMap(Ljava/io/OutputStream;Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@2e
    .line 622
    if-eqz v2, :cond_1

    #@30
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    #@33
    :cond_1
    move-object v3, v4

    #@34
    :goto_0
    if-eqz v3, :cond_6

    #@36
    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    #@37
    .line 626
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    #@38
    .line 627
    .local v0, "e":Ljava/lang/Exception;
    instance-of v3, v0, Ljava/util/prefs/BackingStoreException;

    #@3a
    if-eqz v3, :cond_7

    #@3c
    .line 628
    nop

    #@3d
    nop

    #@3e
    .end local v0    # "e":Ljava/lang/Exception;
    throw v0

    #@3f
    .line 618
    :cond_2
    :try_start_5
    new-instance v3, Ljava/util/prefs/BackingStoreException;

    #@41
    new-instance v4, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    iget-object v5, p0, Ljava/util/prefs/FileSystemPreferences$5;->this$0:Ljava/util/prefs/FileSystemPreferences;

    #@48
    invoke-static {v5}, Ljava/util/prefs/FileSystemPreferences;->-get1(Ljava/util/prefs/FileSystemPreferences;)Ljava/io/File;

    #@4b
    move-result-object v5

    #@4c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v4

    #@50
    .line 619
    const-string/jumbo v5, " create failed."

    #@53
    .line 618
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v4

    #@57
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v4

    #@5b
    invoke-direct {v3, v4}, Ljava/util/prefs/BackingStoreException;-><init>(Ljava/lang/String;)V

    #@5e
    throw v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    #@5f
    .line 622
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v3

    #@60
    goto :goto_0

    #@61
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v3

    #@62
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_6
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@63
    :catchall_0
    move-exception v4

    #@64
    move-object v6, v4

    #@65
    move-object v4, v3

    #@66
    move-object v3, v6

    #@67
    :goto_2
    if-eqz v1, :cond_3

    #@69
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    #@6c
    :cond_3
    :goto_3
    if-eqz v4, :cond_5

    #@6e
    :try_start_8
    throw v4

    #@6f
    :catch_3
    move-exception v5

    #@70
    if-nez v4, :cond_4

    #@72
    move-object v4, v5

    #@73
    goto :goto_3

    #@74
    :cond_4
    if-eq v4, v5, :cond_3

    #@76
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@79
    goto :goto_3

    #@7a
    :cond_5
    throw v3

    #@7b
    .line 623
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :cond_6
    iget-object v3, p0, Ljava/util/prefs/FileSystemPreferences$5;->this$0:Ljava/util/prefs/FileSystemPreferences;

    #@7d
    invoke-static {v3}, Ljava/util/prefs/FileSystemPreferences;->-get8(Ljava/util/prefs/FileSystemPreferences;)Ljava/io/File;

    #@80
    move-result-object v3

    #@81
    iget-object v5, p0, Ljava/util/prefs/FileSystemPreferences$5;->this$0:Ljava/util/prefs/FileSystemPreferences;

    #@83
    invoke-static {v5}, Ljava/util/prefs/FileSystemPreferences;->-get4(Ljava/util/prefs/FileSystemPreferences;)Ljava/io/File;

    #@86
    move-result-object v5

    #@87
    invoke-virtual {v3, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    #@8a
    move-result v3

    #@8b
    if-nez v3, :cond_8

    #@8d
    .line 624
    new-instance v3, Ljava/util/prefs/BackingStoreException;

    #@8f
    new-instance v4, Ljava/lang/StringBuilder;

    #@91
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@94
    const-string/jumbo v5, "Can\'t rename "

    #@97
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v4

    #@9b
    .line 625
    iget-object v5, p0, Ljava/util/prefs/FileSystemPreferences$5;->this$0:Ljava/util/prefs/FileSystemPreferences;

    #@9d
    invoke-static {v5}, Ljava/util/prefs/FileSystemPreferences;->-get8(Ljava/util/prefs/FileSystemPreferences;)Ljava/io/File;

    #@a0
    move-result-object v5

    #@a1
    .line 624
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v4

    #@a5
    .line 625
    const-string/jumbo v5, " to "

    #@a8
    .line 624
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v4

    #@ac
    .line 625
    iget-object v5, p0, Ljava/util/prefs/FileSystemPreferences$5;->this$0:Ljava/util/prefs/FileSystemPreferences;

    #@ae
    invoke-static {v5}, Ljava/util/prefs/FileSystemPreferences;->-get4(Ljava/util/prefs/FileSystemPreferences;)Ljava/io/File;

    #@b1
    move-result-object v5

    #@b2
    .line 624
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v4

    #@b6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b9
    move-result-object v4

    #@ba
    invoke-direct {v3, v4}, Ljava/util/prefs/BackingStoreException;-><init>(Ljava/lang/String;)V

    #@bd
    throw v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    #@be
    .line 629
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_7
    new-instance v3, Ljava/util/prefs/BackingStoreException;

    #@c0
    invoke-direct {v3, v0}, Ljava/util/prefs/BackingStoreException;-><init>(Ljava/lang/Throwable;)V

    #@c3
    throw v3

    #@c4
    .line 631
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :cond_8
    return-object v4

    #@c5
    .line 622
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    #@c6
    goto :goto_2

    #@c7
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v3

    #@c8
    move-object v1, v2

    #@c9
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v1, "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    #@ca
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v3

    #@cb
    move-object v1, v2

    #@cc
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method
