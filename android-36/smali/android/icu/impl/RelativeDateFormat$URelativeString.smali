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
.field public blacklist offset:I

.field public blacklist string:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(ILjava/lang/String;)V
    .registers 3
    .param p1, "offset"    # I
    .param p2, "string"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Landroid/icu/impl/RelativeDateFormat$URelativeString;->offset:I

    .line 44
    iput-object p2, p0, Landroid/icu/impl/RelativeDateFormat$URelativeString;->string:Ljava/lang/String;

    .line 45
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "offset"    # Ljava/lang/String;
    .param p2, "string"    # Ljava/lang/String;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/icu/impl/RelativeDateFormat$URelativeString;->offset:I

    .line 48
    iput-object p2, p0, Landroid/icu/impl/RelativeDateFormat$URelativeString;->string:Ljava/lang/String;

    .line 49
    return-void
.end method
