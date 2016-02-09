.class Landroid/icu/impl/UnicodeRegex$1;
.super Ljava/lang/Object;
.source "UnicodeRegex.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/UnicodeRegex;
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
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/icu/impl/UnicodeRegex;


# direct methods
.method constructor <init>(Landroid/icu/impl/UnicodeRegex;)V
    .locals 0
    .param p1, "this$0"    # Landroid/icu/impl/UnicodeRegex;

    #@0
    .prologue
    .line 350
    iput-object p1, p0, Landroid/icu/impl/UnicodeRegex$1;->this$0:Landroid/icu/impl/UnicodeRegex;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5
    .param p1, "obj0"    # Ljava/lang/Object;
    .param p2, "obj1"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 352
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 353
    .local v0, "arg0":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    .line 354
    .local v1, "arg1":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@b
    move-result v2

    #@c
    .line 355
    .local v2, "len0":I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@f
    move-result v3

    #@10
    .line 356
    .local v3, "len1":I
    if-eq v2, v3, :cond_0

    #@12
    sub-int v4, v3, v2

    #@14
    return v4

    #@15
    .line 357
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@18
    move-result v4

    #@19
    return v4
.end method
