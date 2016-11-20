.class Lcom/android/commands/content/Content$DeleteCommand;
.super Lcom/android/commands/content/Content$Command;
.source "Content.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/content/Content;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeleteCommand"
.end annotation


# instance fields
.field final mWhere:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;ILjava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "userId"    # I
    .param p3, "where"    # Ljava/lang/String;

    #@0
    .prologue
    .line 467
    invoke-direct {p0, p1, p2}, Lcom/android/commands/content/Content$Command;-><init>(Landroid/net/Uri;I)V

    #@3
    .line 468
    iput-object p3, p0, Lcom/android/commands/content/Content$DeleteCommand;->mWhere:Ljava/lang/String;

    #@5
    .line 466
    return-void
.end method


# virtual methods
.method public onExecute(Landroid/content/IContentProvider;)V
    .locals 4
    .param p1, "provider"    # Landroid/content/IContentProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 473
    invoke-static {}, Lcom/android/commands/content/Content$DeleteCommand;->resolveCallingPackage()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Lcom/android/commands/content/Content$DeleteCommand;->mUri:Landroid/net/Uri;

    #@6
    iget-object v2, p0, Lcom/android/commands/content/Content$DeleteCommand;->mWhere:Ljava/lang/String;

    #@8
    const/4 v3, 0x0

    #@9
    invoke-interface {p1, v0, v1, v2, v3}, Landroid/content/IContentProvider;->delete(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    #@c
    .line 472
    return-void
.end method
