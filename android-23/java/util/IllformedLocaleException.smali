.class public Ljava/util/IllformedLocaleException;
.super Ljava/lang/RuntimeException;
.source "IllformedLocaleException.java"


# instance fields
.field private final errorIndex:I


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 35
    const/4 v0, 0x0

    #@1
    const/4 v1, -0x1

    #@2
    invoke-direct {p0, v0, v1}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    #@5
    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 42
    const/4 v0, -0x1

    #@1
    invoke-direct {p0, p1, v0}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    #@4
    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "errorIndex"    # I

    #@0
    .prologue
    .line 50
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@3
    .line 51
    iput p2, p0, Ljava/util/IllformedLocaleException;->errorIndex:I

    #@5
    .line 49
    return-void
.end method


# virtual methods
.method public getErrorIndex()I
    .locals 1

    #@0
    .prologue
    .line 55
    iget v0, p0, Ljava/util/IllformedLocaleException;->errorIndex:I

    #@2
    return v0
.end method
