.class public Ljava/util/MissingFormatWidthException;
.super Ljava/util/IllegalFormatException;
.source "MissingFormatWidthException.java"


# static fields
.field private static final serialVersionUID:J = 0xed6dbbL


# instance fields
.field private final s:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Ljava/util/IllegalFormatException;-><init>()V

    #@3
    .line 38
    if-nez p1, :cond_0

    #@5
    .line 39
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "s == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 41
    :cond_0
    iput-object p1, p0, Ljava/util/MissingFormatWidthException;->s:Ljava/lang/String;

    #@10
    .line 37
    return-void
.end method


# virtual methods
.method public getFormatSpecifier()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 50
    iget-object v0, p0, Ljava/util/MissingFormatWidthException;->s:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 55
    iget-object v0, p0, Ljava/util/MissingFormatWidthException;->s:Ljava/lang/String;

    #@2
    return-object v0
.end method
