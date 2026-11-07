.class Ljava/util/prefs/FileSystemPreferences$8;
.super Ljava/lang/Object;
.source "FileSystemPreferences.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/prefs/FileSystemPreferences;->sync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Long;",
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

    .line 732
    iput-object p1, p0, Ljava/util/prefs/FileSystemPreferences$8;->this$0:Ljava/util/prefs/FileSystemPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist run()Ljava/lang/Long;
    .registers 8

    .line 735
    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences$8;->this$0:Ljava/util/prefs/FileSystemPreferences;

    invoke-virtual {v0}, Ljava/util/prefs/FileSystemPreferences;->isUserNode()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_20

    .line 736
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-$$Nest$sfgetuserRootModFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    .line 737
    .local v3, "nmt":J
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-$$Nest$sfgetuserRootModTime()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-nez v0, :cond_1b

    goto :goto_1c

    :cond_1b
    move v1, v2

    :goto_1c
    invoke-static {v1}, Ljava/util/prefs/FileSystemPreferences;->-$$Nest$sfputisUserRootModified(Z)V

    goto :goto_35

    .line 739
    .end local v3    # "nmt":J
    :cond_20
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-$$Nest$sfgetsystemRootModFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    .line 740
    .restart local v3    # "nmt":J
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-$$Nest$sfgetsystemRootModTime()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-nez v0, :cond_31

    goto :goto_32

    :cond_31
    move v1, v2

    :goto_32
    invoke-static {v1}, Ljava/util/prefs/FileSystemPreferences;->-$$Nest$sfputisSystemRootModified(Z)V

    .line 742
    :goto_35
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, v3, v4}, Ljava/lang/Long;-><init>(J)V

    return-object v0
.end method

.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 732
    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences$8;->run()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
