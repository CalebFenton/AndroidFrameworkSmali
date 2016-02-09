.class Ljava/text/Bidi$Run;
.super Ljava/lang/Object;
.source "Bidi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/text/Bidi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Run"
.end annotation


# instance fields
.field private final level:I

.field private final limit:I

.field private final start:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "level"    # I

    #@0
    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 70
    iput p1, p0, Ljava/text/Bidi$Run;->start:I

    #@5
    .line 71
    iput p2, p0, Ljava/text/Bidi$Run;->limit:I

    #@7
    .line 72
    iput p3, p0, Ljava/text/Bidi$Run;->level:I

    #@9
    .line 69
    return-void
.end method


# virtual methods
.method public getLevel()I
    .locals 1

    #@0
    .prologue
    .line 76
    iget v0, p0, Ljava/text/Bidi$Run;->level:I

    #@2
    return v0
.end method

.method public getLimit()I
    .locals 1

    #@0
    .prologue
    .line 80
    iget v0, p0, Ljava/text/Bidi$Run;->limit:I

    #@2
    return v0
.end method

.method public getStart()I
    .locals 1

    #@0
    .prologue
    .line 84
    iget v0, p0, Ljava/text/Bidi$Run;->start:I

    #@2
    return v0
.end method
