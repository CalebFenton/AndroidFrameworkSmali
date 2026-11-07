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
        "Ljava/security/PrivilegedExceptionAction<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/util/prefs/FileSystemPreferences;


# direct methods
.method constructor blacklist <init>(Ljava/util/prefs/FileSystemPreferences;)V
    .registers 2
    .param p1, "this$0"    # Ljava/util/prefs/FileSystemPreferences;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 614
    iput-object p1, p0, Ljava/util/prefs/FileSystemPreferences$5;->this$0:Ljava/util/prefs/FileSystemPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 614
    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences$5;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljava/lang/Void;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .line 617
    :try_start_0
    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences$5;->this$0:Ljava/util/prefs/FileSystemPreferences;

    invoke-static {v0}, Ljava/util/prefs/FileSystemPreferences;->-$$Nest$fgetdir(Ljava/util/prefs/FileSystemPreferences;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_38

    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences$5;->this$0:Ljava/util/prefs/FileSystemPreferences;

    invoke-static {v0}, Ljava/util/prefs/FileSystemPreferences;->-$$Nest$fgetdir(Ljava/util/prefs/FileSystemPreferences;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_38

    .line 618
    :cond_19
    new-instance v0, Ljava/util/prefs/BackingStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljava/util/prefs/FileSystemPreferences$5;->this$0:Ljava/util/prefs/FileSystemPreferences;

    invoke-static {v2}, Ljava/util/prefs/FileSystemPreferences;->-$$Nest$fgetdir(Ljava/util/prefs/FileSystemPreferences;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " create failed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/prefs/BackingStoreException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/util/prefs/FileSystemPreferences$5;
    throw v0

    .line 620
    .restart local p0    # "this":Ljava/util/prefs/FileSystemPreferences$5;
    :cond_38
    :goto_38
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Ljava/util/prefs/FileSystemPreferences$5;->this$0:Ljava/util/prefs/FileSystemPreferences;

    invoke-static {v1}, Ljava/util/prefs/FileSystemPreferences;->-$$Nest$fgettmpFile(Ljava/util/prefs/FileSystemPreferences;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_43} :catch_9d

    .line 621
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_43
    iget-object v1, p0, Ljava/util/prefs/FileSystemPreferences$5;->this$0:Ljava/util/prefs/FileSystemPreferences;

    invoke-static {v1}, Ljava/util/prefs/FileSystemPreferences;->-$$Nest$fgetprefsCache(Ljava/util/prefs/FileSystemPreferences;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/prefs/XmlSupport;->exportMap(Ljava/io/OutputStream;Ljava/util/Map;)V
    :try_end_4c
    .catchall {:try_start_43 .. :try_end_4c} :catchall_93

    .line 622
    :try_start_4c
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 623
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences$5;->this$0:Ljava/util/prefs/FileSystemPreferences;

    invoke-static {v0}, Ljava/util/prefs/FileSystemPreferences;->-$$Nest$fgettmpFile(Ljava/util/prefs/FileSystemPreferences;)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Ljava/util/prefs/FileSystemPreferences$5;->this$0:Ljava/util/prefs/FileSystemPreferences;

    invoke-static {v1}, Ljava/util/prefs/FileSystemPreferences;->-$$Nest$fgetprefsFile(Ljava/util/prefs/FileSystemPreferences;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 630
    nop

    .line 631
    const/4 v0, 0x0

    return-object v0

    .line 624
    :cond_64
    new-instance v0, Ljava/util/prefs/BackingStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t rename "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/util/prefs/FileSystemPreferences$5;->this$0:Ljava/util/prefs/FileSystemPreferences;

    invoke-static {v2}, Ljava/util/prefs/FileSystemPreferences;->-$$Nest$fgettmpFile(Ljava/util/prefs/FileSystemPreferences;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/util/prefs/FileSystemPreferences$5;->this$0:Ljava/util/prefs/FileSystemPreferences;

    invoke-static {v2}, Ljava/util/prefs/FileSystemPreferences;->-$$Nest$fgetprefsFile(Ljava/util/prefs/FileSystemPreferences;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/prefs/BackingStoreException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/util/prefs/FileSystemPreferences$5;
    throw v0
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_93} :catch_9d

    .line 620
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    .restart local p0    # "this":Ljava/util/prefs/FileSystemPreferences$5;
    :catchall_93
    move-exception v1

    :try_start_94
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_97
    .catchall {:try_start_94 .. :try_end_97} :catchall_98

    goto :goto_9c

    :catchall_98
    move-exception v2

    :try_start_99
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Ljava/util/prefs/FileSystemPreferences$5;
    :goto_9c
    throw v1
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_9d} :catch_9d

    .line 626
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .restart local p0    # "this":Ljava/util/prefs/FileSystemPreferences$5;
    :catch_9d
    move-exception v0

    .line 627
    .local v0, "e":Ljava/lang/Exception;
    instance-of v1, v0, Ljava/util/prefs/BackingStoreException;

    if-eqz v1, :cond_a6

    .line 628
    move-object v1, v0

    check-cast v1, Ljava/util/prefs/BackingStoreException;

    throw v1

    .line 629
    :cond_a6
    new-instance v1, Ljava/util/prefs/BackingStoreException;

    invoke-direct {v1, v0}, Ljava/util/prefs/BackingStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
