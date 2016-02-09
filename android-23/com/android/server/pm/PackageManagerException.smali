.class public Lcom/android/server/pm/PackageManagerException;
.super Ljava/lang/Exception;
.source "PackageManagerException.java"


# instance fields
.field public final error:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "error"    # I
    .param p2, "detailMessage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 26
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@3
    .line 27
    iput p1, p0, Lcom/android/server/pm/PackageManagerException;->error:I

    #@5
    .line 25
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "error"    # I
    .param p2, "detailMessage"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 31
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3
    .line 32
    iput p1, p0, Lcom/android/server/pm/PackageManagerException;->error:I

    #@5
    .line 30
    return-void
.end method

.method public static from(Landroid/content/pm/PackageParser$PackageParserException;)Lcom/android/server/pm/PackageManagerException;
    .locals 4
    .param p0, "e"    # Landroid/content/pm/PackageParser$PackageParserException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    #@0
    .prologue
    .line 37
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    #@2
    iget v1, p0, Landroid/content/pm/PackageParser$PackageParserException;->error:I

    #@4
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$PackageParserException;->getMessage()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$PackageParserException;->getCause()Ljava/lang/Throwable;

    #@b
    move-result-object v3

    #@c
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    #@f
    throw v0
.end method
