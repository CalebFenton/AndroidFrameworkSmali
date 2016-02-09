.class final Landroid/database/sqlite/SQLiteDatabase$2;
.super Ljava/lang/Object;
.source "SQLiteDatabase.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$prefix:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "val$prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 741
    iput-object p1, p0, Landroid/database/sqlite/SQLiteDatabase$2;->val$prefix:Ljava/lang/String;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 2
    .param p1, "candidate"    # Ljava/io/File;

    #@0
    .prologue
    .line 744
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase$2;->val$prefix:Ljava/lang/String;

    #@6
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method
