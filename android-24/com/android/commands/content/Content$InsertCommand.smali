.class Lcom/android/commands/content/Content$InsertCommand;
.super Lcom/android/commands/content/Content$Command;
.source "Content.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/content/Content;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InsertCommand"
.end annotation


# instance fields
.field final mContentValues:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Landroid/net/Uri;ILandroid/content/ContentValues;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "userId"    # I
    .param p3, "contentValues"    # Landroid/content/ContentValues;

    #@0
    .prologue
    .line 453
    invoke-direct {p0, p1, p2}, Lcom/android/commands/content/Content$Command;-><init>(Landroid/net/Uri;I)V

    #@3
    .line 454
    iput-object p3, p0, Lcom/android/commands/content/Content$InsertCommand;->mContentValues:Landroid/content/ContentValues;

    #@5
    .line 452
    return-void
.end method


# virtual methods
.method public onExecute(Landroid/content/IContentProvider;)V
    .locals 3
    .param p1, "provider"    # Landroid/content/IContentProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 459
    invoke-static {}, Lcom/android/commands/content/Content$InsertCommand;->resolveCallingPackage()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Lcom/android/commands/content/Content$InsertCommand;->mUri:Landroid/net/Uri;

    #@6
    iget-object v2, p0, Lcom/android/commands/content/Content$InsertCommand;->mContentValues:Landroid/content/ContentValues;

    #@8
    invoke-interface {p1, v0, v1, v2}, Landroid/content/IContentProvider;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    #@b
    .line 458
    return-void
.end method
