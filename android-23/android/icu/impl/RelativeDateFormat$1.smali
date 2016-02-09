.class Landroid/icu/impl/RelativeDateFormat$1;
.super Ljava/lang/Object;
.source "RelativeDateFormat.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/icu/impl/RelativeDateFormat;->loadDates()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/icu/impl/RelativeDateFormat$URelativeString;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/icu/impl/RelativeDateFormat;


# direct methods
.method constructor <init>(Landroid/icu/impl/RelativeDateFormat;)V
    .locals 0
    .param p1, "this$0"    # Landroid/icu/impl/RelativeDateFormat;

    #@0
    .prologue
    .line 252
    iput-object p1, p0, Landroid/icu/impl/RelativeDateFormat$1;->this$0:Landroid/icu/impl/RelativeDateFormat;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public compare(Landroid/icu/impl/RelativeDateFormat$URelativeString;Landroid/icu/impl/RelativeDateFormat$URelativeString;)I
    .locals 2
    .param p1, "r1"    # Landroid/icu/impl/RelativeDateFormat$URelativeString;
    .param p2, "r2"    # Landroid/icu/impl/RelativeDateFormat$URelativeString;

    #@0
    .prologue
    .line 255
    iget v0, p1, Landroid/icu/impl/RelativeDateFormat$URelativeString;->offset:I

    #@2
    iget v1, p2, Landroid/icu/impl/RelativeDateFormat$URelativeString;->offset:I

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 256
    const/4 v0, 0x0

    #@7
    return v0

    #@8
    .line 257
    :cond_0
    iget v0, p1, Landroid/icu/impl/RelativeDateFormat$URelativeString;->offset:I

    #@a
    iget v1, p2, Landroid/icu/impl/RelativeDateFormat$URelativeString;->offset:I

    #@c
    if-ge v0, v1, :cond_1

    #@e
    .line 258
    const/4 v0, -0x1

    #@f
    return v0

    #@10
    .line 260
    :cond_1
    const/4 v0, 0x1

    #@11
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "r1"    # Ljava/lang/Object;
    .param p2, "r2"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 253
    check-cast p1, Landroid/icu/impl/RelativeDateFormat$URelativeString;

    #@2
    .end local p1    # "r1":Ljava/lang/Object;
    check-cast p2, Landroid/icu/impl/RelativeDateFormat$URelativeString;

    #@4
    .end local p2    # "r2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/RelativeDateFormat$1;->compare(Landroid/icu/impl/RelativeDateFormat$URelativeString;Landroid/icu/impl/RelativeDateFormat$URelativeString;)I

    #@7
    move-result v0

    #@8
    return v0
.end method
