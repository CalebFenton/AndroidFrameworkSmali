.class Lcom/android/server/usage/UsageStatsDatabase$1;
.super Ljava/lang/Object;
.source "UsageStatsDatabase.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/UsageStatsDatabase;


# direct methods
.method constructor <init>(Lcom/android/server/usage/UsageStatsDatabase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/usage/UsageStatsDatabase;

    #@0
    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsDatabase$1;->this$0:Lcom/android/server/usage/UsageStatsDatabase;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 176
    const-string/jumbo v0, ".bak"

    #@3
    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    const/4 v0, 0x0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x1

    #@c
    goto :goto_0
.end method
