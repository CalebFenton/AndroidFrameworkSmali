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
.field public final error:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "error"    # I
    .param p2, "detailMessage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 5134
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@3
    .line 5135
    iput p1, p0, Landroid/content/pm/PackageParser$PackageParserException;->error:I

    #@5
    .line 5133
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "error"    # I
    .param p2, "detailMessage"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 5139
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3
    .line 5140
    iput p1, p0, Landroid/content/pm/PackageParser$PackageParserException;->error:I

    #@5
    .line 5138
    return-void
.end method
