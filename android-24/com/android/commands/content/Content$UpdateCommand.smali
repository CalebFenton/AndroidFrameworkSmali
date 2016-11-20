.class Lcom/android/commands/content/Content$UpdateCommand;
.super Lcom/android/commands/content/Content$InsertCommand;
.source "Content.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/content/Content;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateCommand"
.end annotation


# instance fields
.field final mWhere:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;ILandroid/content/ContentValues;Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "userId"    # I
    .param p3, "contentValues"    # Landroid/content/ContentValues;
    .param p4, "where"    # Ljava/lang/String;

    #@0
    .prologue
    .line 609
    invoke-direct {p0, p1, p2, p3}, Lcom/android/commands/content/Content$InsertCommand;-><init>(Landroid/net/Uri;ILandroid/content/ContentValues;)V

    #@3
    .line 610
    iput-object p4, p0, Lcom/android/commands/content/Content$UpdateCommand;->mWhere:Ljava/lang/String;

    #@5
    .line 608
    return-void
.end method


# virtual methods
.method public onExecute(Landroid/content/IContentProvider;)V
    .locals 6
    .param p1, "provider"    # Landroid/content/IContentProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 615
    invoke-static {}, Lcom/android/commands/content/Content$UpdateCommand;->resolveCallingPackage()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    iget-object v2, p0, Lcom/android/commands/content/Content$UpdateCommand;->mUri:Landroid/net/Uri;

    #@6
    iget-object v3, p0, Lcom/android/commands/content/Content$UpdateCommand;->mContentValues:Landroid/content/ContentValues;

    #@8
    iget-object v4, p0, Lcom/android/commands/content/Content$UpdateCommand;->mWhere:Ljava/lang/String;

    #@a
    const/4 v5, 0x0

    #@b
    move-object v0, p1

    #@c
    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    #@f
    .line 614
    return-void
.end method
