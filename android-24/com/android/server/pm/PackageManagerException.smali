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
    .line 34
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@3
    .line 35
    iput p1, p0, Lcom/android/server/pm/PackageManagerException;->error:I

    #@5
    .line 33
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "error"    # I
    .param p2, "detailMessage"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 39
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3
    .line 40
    iput p1, p0, Lcom/android/server/pm/PackageManagerException;->error:I

    #@5
    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "detailMessage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 29
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@3
    .line 30
    const/16 v0, -0x6e

    #@5
    iput v0, p0, Lcom/android/server/pm/PackageManagerException;->error:I

    #@7
    .line 28
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
    .line 45
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

.method public static from(Lcom/android/internal/os/InstallerConnection$InstallerException;)Lcom/android/server/pm/PackageManagerException;
    .locals 4
    .param p0, "e"    # Lcom/android/internal/os/InstallerConnection$InstallerException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    #@0
    .prologue
    .line 50
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    #@2
    .line 51
    invoke-virtual {p0}, Lcom/android/internal/os/InstallerConnection$InstallerException;->getMessage()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p0}, Lcom/android/internal/os/InstallerConnection$InstallerException;->getCause()Ljava/lang/Throwable;

    #@9
    move-result-object v2

    #@a
    .line 50
    const/16 v3, -0x6e

    #@c
    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    #@f
    throw v0
.end method
