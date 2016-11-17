.class final Lcom/android/server/pm/PackageInstallerSession$2;
.super Ljava/lang/Object;
.source "PackageInstallerSession.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageInstallerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 3
    .param p1, "file"    # Ljava/io/File;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 193
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    return v2

    #@8
    .line 194
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    const-string/jumbo v1, ".removed"

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@12
    move-result v0

    #@13
    if-nez v0, :cond_1

    #@15
    return v2

    #@16
    .line 195
    :cond_1
    const/4 v0, 0x1

    #@17
    return v0
.end method
