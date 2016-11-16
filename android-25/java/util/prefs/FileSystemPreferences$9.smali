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
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/prefs/FileSystemPreferences;

.field final synthetic val$newModTime:Ljava/lang/Long;


# direct methods
.method constructor <init>(Ljava/util/prefs/FileSystemPreferences;Ljava/lang/Long;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/prefs/FileSystemPreferences;
    .param p2, "val$newModTime"    # Ljava/lang/Long;

    #@0
    .prologue
    .line 747
    iput-object p1, p0, Ljava/util/prefs/FileSystemPreferences$9;->this$0:Ljava/util/prefs/FileSystemPreferences;

    #@2
    iput-object p2, p0, Ljava/util/prefs/FileSystemPreferences$9;->val$newModTime:Ljava/lang/Long;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 748
    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences$9;->run()Ljava/lang/Void;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 4

    #@0
    .prologue
    const-wide/16 v2, 0x3e8

    #@2
    .line 749
    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences$9;->this$0:Ljava/util/prefs/FileSystemPreferences;

    #@4
    invoke-virtual {v0}, Ljava/util/prefs/FileSystemPreferences;->isUserNode()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 750
    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences$9;->val$newModTime:Ljava/lang/Long;

    #@c
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@f
    move-result-wide v0

    #@10
    add-long/2addr v0, v2

    #@11
    invoke-static {v0, v1}, Ljava/util/prefs/FileSystemPreferences;->-set9(J)J

    #@14
    .line 751
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get10()Ljava/io/File;

    #@17
    move-result-object v0

    #@18
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get11()J

    #@1b
    move-result-wide v2

    #@1c
    invoke-virtual {v0, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    #@1f
    .line 756
    :goto_0
    const/4 v0, 0x0

    #@20
    return-object v0

    #@21
    .line 753
    :cond_0
    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences$9;->val$newModTime:Ljava/lang/Long;

    #@23
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@26
    move-result-wide v0

    #@27
    add-long/2addr v0, v2

    #@28
    invoke-static {v0, v1}, Ljava/util/prefs/FileSystemPreferences;->-set6(J)J

    #@2b
    .line 754
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get6()Ljava/io/File;

    #@2e
    move-result-object v0

    #@2f
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get7()J

    #@32
    move-result-wide v2

    #@33
    invoke-virtual {v0, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    #@36
    goto :goto_0
.end method
