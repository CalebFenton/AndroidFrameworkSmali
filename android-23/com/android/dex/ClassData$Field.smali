.class public Lcom/android/dex/ClassData$Field;
.super Ljava/lang/Object;
.source "ClassData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dex/ClassData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Field"
.end annotation


# instance fields
.field private final accessFlags:I

.field private final fieldIndex:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "fieldIndex"    # I
    .param p2, "accessFlags"    # I

    #@0
    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 68
    iput p1, p0, Lcom/android/dex/ClassData$Field;->fieldIndex:I

    #@5
    .line 69
    iput p2, p0, Lcom/android/dex/ClassData$Field;->accessFlags:I

    #@7
    .line 67
    return-void
.end method


# virtual methods
.method public getAccessFlags()I
    .locals 1

    #@0
    .prologue
    .line 77
    iget v0, p0, Lcom/android/dex/ClassData$Field;->accessFlags:I

    #@2
    return v0
.end method

.method public getFieldIndex()I
    .locals 1

    #@0
    .prologue
    .line 73
    iget v0, p0, Lcom/android/dex/ClassData$Field;->fieldIndex:I

    #@2
    return v0
.end method
