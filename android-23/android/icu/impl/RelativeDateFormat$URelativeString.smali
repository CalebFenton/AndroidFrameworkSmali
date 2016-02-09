.class public Landroid/icu/impl/RelativeDateFormat$URelativeString;
.super Ljava/lang/Object;
.source "RelativeDateFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/RelativeDateFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "URelativeString"
.end annotation


# instance fields
.field public offset:I

.field public string:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "offset"    # I
    .param p2, "string"    # Ljava/lang/String;

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 40
    iput p1, p0, Landroid/icu/impl/RelativeDateFormat$URelativeString;->offset:I

    #@5
    .line 41
    iput-object p2, p0, Landroid/icu/impl/RelativeDateFormat$URelativeString;->string:Ljava/lang/String;

    #@7
    .line 39
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "offset"    # Ljava/lang/String;
    .param p2, "string"    # Ljava/lang/String;

    #@0
    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 44
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/icu/impl/RelativeDateFormat$URelativeString;->offset:I

    #@9
    .line 45
    iput-object p2, p0, Landroid/icu/impl/RelativeDateFormat$URelativeString;->string:Ljava/lang/String;

    #@b
    .line 43
    return-void
.end method
