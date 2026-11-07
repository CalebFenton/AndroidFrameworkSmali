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

    .line 685
    iput-object p1, p0, Ljava/util/prefs/FileSystemPreferences$7;->this$0:Ljava/util/prefs/FileSystemPreferences;

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

    .line 685
    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences$7;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljava/lang/Void;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .line 687
    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences$7;->this$0:Ljava/util/prefs/FileSystemPreferences;

    iget-object v0, v0, Ljava/util/prefs/FileSystemPreferences;->changeLog:Ljava/util/List;

    iget-object v1, p0, Ljava/util/prefs/FileSystemPreferences$7;->this$0:Ljava/util/prefs/FileSystemPreferences;

    iget-object v1, v1, Ljava/util/prefs/FileSystemPreferences;->nodeCreate:Ljava/util/prefs/FileSystemPreferences$NodeCreate;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    .line 688
    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences$7;->this$0:Ljava/util/prefs/FileSystemPreferences;

    iget-object v0, v0, Ljava/util/prefs/FileSystemPreferences;->changeLog:Ljava/util/List;

    iget-object v2, p0, Ljava/util/prefs/FileSystemPreferences$7;->this$0:Ljava/util/prefs/FileSystemPreferences;

    iget-object v2, v2, Ljava/util/prefs/FileSystemPreferences;->nodeCreate:Ljava/util/prefs/FileSystemPreferences$NodeCreate;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 689
    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences$7;->this$0:Ljava/util/prefs/FileSystemPreferences;

    iput-object v1, v0, Ljava/util/prefs/FileSystemPreferences;->nodeCreate:Ljava/util/prefs/FileSystemPreferences$NodeCreate;

    .line 690
    return-object v1

    .line 692
    :cond_1f
    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences$7;->this$0:Ljava/util/prefs/FileSystemPreferences;

    invoke-static {v0}, Ljava/util/prefs/FileSystemPreferences;->-$$Nest$fgetdir(Ljava/util/prefs/FileSystemPreferences;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 693
    return-object v1

    .line 694
    :cond_2c
    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences$7;->this$0:Ljava/util/prefs/FileSystemPreferences;

    invoke-static {v0}, Ljava/util/prefs/FileSystemPreferences;->-$$Nest$fgetprefsFile(Ljava/util/prefs/FileSystemPreferences;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 695
    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences$7;->this$0:Ljava/util/prefs/FileSystemPreferences;

    invoke-static {v0}, Ljava/util/prefs/FileSystemPreferences;->-$$Nest$fgettmpFile(Ljava/util/prefs/FileSystemPreferences;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 697
    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences$7;->this$0:Ljava/util/prefs/FileSystemPreferences;

    invoke-static {v0}, Ljava/util/prefs/FileSystemPreferences;->-$$Nest$fgetdir(Ljava/util/prefs/FileSystemPreferences;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 698
    .local v0, "junk":[Ljava/io/File;
    array-length v2, v0

    if-eqz v2, :cond_75

    .line 699
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-$$Nest$smgetLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found extraneous files when removing node: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 701
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 699
    invoke-virtual {v2, v3}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 702
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6a
    array-length v3, v0

    if-ge v2, v3, :cond_75

    .line 703
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 702
    add-int/lit8 v2, v2, 0x1

    goto :goto_6a

    .line 705
    .end local v2    # "i":I
    :cond_75
    iget-object v2, p0, Ljava/util/prefs/FileSystemPreferences$7;->this$0:Ljava/util/prefs/FileSystemPreferences;

    invoke-static {v2}, Ljava/util/prefs/FileSystemPreferences;->-$$Nest$fgetdir(Ljava/util/prefs/FileSystemPreferences;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_82

    .line 708
    return-object v1

    .line 706
    :cond_82
    new-instance v1, Ljava/util/prefs/BackingStoreException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t delete dir: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/util/prefs/FileSystemPreferences$7;->this$0:Ljava/util/prefs/FileSystemPreferences;

    invoke-static {v3}, Ljava/util/prefs/FileSystemPreferences;->-$$Nest$fgetdir(Ljava/util/prefs/FileSystemPreferences;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/prefs/BackingStoreException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
