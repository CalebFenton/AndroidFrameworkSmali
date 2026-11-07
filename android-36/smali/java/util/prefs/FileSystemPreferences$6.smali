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
        "Ljava/security/PrivilegedAction<",
        "[",
        "Ljava/lang/String;",
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

    .line 646
    iput-object p1, p0, Ljava/util/prefs/FileSystemPreferences$6;->this$0:Ljava/util/prefs/FileSystemPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 646
    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences$6;->run()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()[Ljava/lang/String;
    .registers 5

    .line 648
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 649
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Ljava/util/prefs/FileSystemPreferences$6;->this$0:Ljava/util/prefs/FileSystemPreferences;

    invoke-static {v1}, Ljava/util/prefs/FileSystemPreferences;->-$$Nest$fgetdir(Ljava/util/prefs/FileSystemPreferences;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 650
    .local v1, "dirContents":[Ljava/io/File;
    if-eqz v1, :cond_2d

    .line 651
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    array-length v3, v1

    if-ge v2, v3, :cond_2d

    .line 652
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 653
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/prefs/FileSystemPreferences;->-$$Nest$smnodeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 651
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 655
    .end local v2    # "i":I
    :cond_2d
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-$$Nest$sfgetEMPTY_STRING_ARRAY()[Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method
