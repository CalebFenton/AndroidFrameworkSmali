.class final Lcom/android/dex/Dex$ClassDefIterable;
.super Ljava/lang/Object;
.source "Dex.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dex/Dex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ClassDefIterable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/android/dex/ClassDef;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dex/Dex;


# direct methods
.method private constructor <init>(Lcom/android/dex/Dex;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dex/Dex;

    #@0
    .prologue
    .line 976
    iput-object p1, p0, Lcom/android/dex/Dex$ClassDefIterable;->this$0:Lcom/android/dex/Dex;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dex/Dex;Lcom/android/dex/Dex$ClassDefIterable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dex/Dex;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/dex/Dex$ClassDefIterable;-><init>(Lcom/android/dex/Dex;)V

    #@3
    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/android/dex/ClassDef;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 978
    iget-object v0, p0, Lcom/android/dex/Dex$ClassDefIterable;->this$0:Lcom/android/dex/Dex;

    #@2
    invoke-static {v0}, Lcom/android/dex/Dex;->-get1(Lcom/android/dex/Dex;)Lcom/android/dex/TableOfContents;

    #@5
    move-result-object v0

    #@6
    iget-object v0, v0, Lcom/android/dex/TableOfContents;->classDefs:Lcom/android/dex/TableOfContents$Section;

    #@8
    invoke-virtual {v0}, Lcom/android/dex/TableOfContents$Section;->exists()Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_0

    #@e
    .line 979
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@11
    move-result-object v0

    #@12
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@15
    move-result-object v0

    #@16
    .line 978
    :goto_0
    return-object v0

    #@17
    .line 980
    :cond_0
    new-instance v0, Lcom/android/dex/Dex$ClassDefIterator;

    #@19
    iget-object v1, p0, Lcom/android/dex/Dex$ClassDefIterable;->this$0:Lcom/android/dex/Dex;

    #@1b
    const/4 v2, 0x0

    #@1c
    invoke-direct {v0, v1, v2}, Lcom/android/dex/Dex$ClassDefIterator;-><init>(Lcom/android/dex/Dex;Lcom/android/dex/Dex$ClassDefIterator;)V

    #@1f
    goto :goto_0
.end method
