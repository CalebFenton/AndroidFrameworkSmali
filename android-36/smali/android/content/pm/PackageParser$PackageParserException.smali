.class public Landroid/content/pm/PackageParser$PackageParserException;
.super Ljava/lang/Exception;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageParserException"
.end annotation


# instance fields
.field public final greylist-max-o error:I


# direct methods
.method public constructor greylist-max-o <init>(ILjava/lang/String;)V
    .registers 3
    .param p1, "error"    # I
    .param p2, "detailMessage"    # Ljava/lang/String;

    .line 8705
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 8706
    iput p1, p0, Landroid/content/pm/PackageParser$PackageParserException;->error:I

    .line 8707
    return-void
.end method

.method public constructor greylist-max-o <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "error"    # I
    .param p2, "detailMessage"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .line 8710
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8711
    iput p1, p0, Landroid/content/pm/PackageParser$PackageParserException;->error:I

    .line 8712
    return-void
.end method
