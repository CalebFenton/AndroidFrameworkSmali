.class final Landroid/provider/Settings$System$InclusiveIntegerRangeValidator;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/provider/Settings$System$Validator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings$System;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InclusiveIntegerRangeValidator"
.end annotation


# instance fields
.field private final mMax:I

.field private final mMin:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "min"    # I
    .param p2, "max"    # I

    #@0
    .prologue
    .line 2056
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 2057
    iput p1, p0, Landroid/provider/Settings$System$InclusiveIntegerRangeValidator;->mMin:I

    #@5
    .line 2058
    iput p2, p0, Landroid/provider/Settings$System$InclusiveIntegerRangeValidator;->mMax:I

    #@7
    .line 2056
    return-void
.end method


# virtual methods
.method public validate(Ljava/lang/String;)Z
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2064
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@4
    move-result v1

    #@5
    .line 2065
    .local v1, "intValue":I
    iget v3, p0, Landroid/provider/Settings$System$InclusiveIntegerRangeValidator;->mMin:I

    #@7
    if-lt v1, v3, :cond_0

    #@9
    iget v3, p0, Landroid/provider/Settings$System$InclusiveIntegerRangeValidator;->mMax:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    if-gt v1, v3, :cond_0

    #@d
    const/4 v2, 0x1

    #@e
    :cond_0
    return v2

    #@f
    .line 2066
    .end local v1    # "intValue":I
    :catch_0
    move-exception v0

    #@10
    .line 2067
    .local v0, "e":Ljava/lang/NumberFormatException;
    return v2
.end method
