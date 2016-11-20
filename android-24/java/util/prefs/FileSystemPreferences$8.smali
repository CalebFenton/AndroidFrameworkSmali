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
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Long;",
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
    .line 732
    iput-object p1, p0, Ljava/util/prefs/FileSystemPreferences$8;->this$0:Ljava/util/prefs/FileSystemPreferences;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Long;
    .locals 6

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 735
    iget-object v4, p0, Ljava/util/prefs/FileSystemPreferences$8;->this$0:Ljava/util/prefs/FileSystemPreferences;

    #@4
    invoke-virtual {v4}, Ljava/util/prefs/FileSystemPreferences;->isUserNode()Z

    #@7
    move-result v4

    #@8
    if-eqz v4, :cond_1

    #@a
    .line 736
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get10()Ljava/io/File;

    #@d
    move-result-object v4

    #@e
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    #@11
    move-result-wide v0

    #@12
    .line 737
    .local v0, "nmt":J
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get11()J

    #@15
    move-result-wide v4

    #@16
    cmp-long v4, v4, v0

    #@18
    if-nez v4, :cond_0

    #@1a
    :goto_0
    invoke-static {v2}, Ljava/util/prefs/FileSystemPreferences;->-set2(Z)Z

    #@1d
    .line 742
    :goto_1
    new-instance v2, Ljava/lang/Long;

    #@1f
    invoke-direct {v2, v0, v1}, Ljava/lang/Long;-><init>(J)V

    #@22
    return-object v2

    #@23
    :cond_0
    move v2, v3

    #@24
    .line 737
    goto :goto_0

    #@25
    .line 739
    .end local v0    # "nmt":J
    :cond_1
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get6()Ljava/io/File;

    #@28
    move-result-object v4

    #@29
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    #@2c
    move-result-wide v0

    #@2d
    .line 740
    .restart local v0    # "nmt":J
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get7()J

    #@30
    move-result-wide v4

    #@31
    cmp-long v4, v4, v0

    #@33
    if-nez v4, :cond_2

    #@35
    :goto_2
    invoke-static {v2}, Ljava/util/prefs/FileSystemPreferences;->-set0(Z)Z

    #@38
    goto :goto_1

    #@39
    :cond_2
    move v2, v3

    #@3a
    goto :goto_2
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 733
    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences$8;->run()Ljava/lang/Long;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
