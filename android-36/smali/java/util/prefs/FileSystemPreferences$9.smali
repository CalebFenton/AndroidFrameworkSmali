.class Ljava/util/prefs/FileSystemPreferences$9;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/util/prefs/FileSystemPreferences;

.field final synthetic blacklist val$newModTime:Ljava/lang/Long;


# direct methods
.method constructor blacklist <init>(Ljava/util/prefs/FileSystemPreferences;Ljava/lang/Long;)V
    .registers 3
    .param p1, "this$0"    # Ljava/util/prefs/FileSystemPreferences;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 747
    iput-object p1, p0, Ljava/util/prefs/FileSystemPreferences$9;->this$0:Ljava/util/prefs/FileSystemPreferences;

    iput-object p2, p0, Ljava/util/prefs/FileSystemPreferences$9;->val$newModTime:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 747
    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences$9;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljava/lang/Void;
    .registers 6

    .line 749
    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences$9;->this$0:Ljava/util/prefs/FileSystemPreferences;

    invoke-virtual {v0}, Ljava/util/prefs/FileSystemPreferences;->isUserNode()Z

    move-result v0

    const-wide/16 v1, 0x3e8

    if-eqz v0, :cond_20

    .line 750
    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences$9;->val$newModTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v3, v1

    invoke-static {v3, v4}, Ljava/util/prefs/FileSystemPreferences;->-$$Nest$sfputuserRootModTime(J)V

    .line 751
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-$$Nest$sfgetuserRootModFile()Ljava/io/File;

    move-result-object v0

    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-$$Nest$sfgetuserRootModTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setLastModified(J)Z

    goto :goto_35

    .line 753
    :cond_20
    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences$9;->val$newModTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v3, v1

    invoke-static {v3, v4}, Ljava/util/prefs/FileSystemPreferences;->-$$Nest$sfputsystemRootModTime(J)V

    .line 754
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-$$Nest$sfgetsystemRootModFile()Ljava/io/File;

    move-result-object v0

    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-$$Nest$sfgetsystemRootModTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setLastModified(J)Z

    .line 756
    :goto_35
    const/4 v0, 0x0

    return-object v0
.end method
