.class Landroid/emoji/EmojiFactory$CustomLinkedHashMap;
.super Ljava/util/LinkedHashMap;
.source "EmojiFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/emoji/EmojiFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomLinkedHashMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/emoji/EmojiFactory;


# direct methods
.method public constructor <init>(Landroid/emoji/EmojiFactory;)V
    .locals 3
    .param p1, "this$0"    # Landroid/emoji/EmojiFactory;

    #@0
    .prologue
    .line 39
    .local p0, "this":Landroid/emoji/EmojiFactory$CustomLinkedHashMap;, "Landroid/emoji/EmojiFactory$CustomLinkedHashMap<TK;TV;>;"
    iput-object p1, p0, Landroid/emoji/EmojiFactory$CustomLinkedHashMap;->this$0:Landroid/emoji/EmojiFactory;

    #@2
    .line 42
    const/16 v0, 0x10

    #@4
    const/high16 v1, 0x3f400000    # 0.75f

    #@6
    const/4 v2, 0x1

    #@7
    invoke-direct {p0, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    #@a
    .line 39
    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 52
    .local p0, "this":Landroid/emoji/EmojiFactory$CustomLinkedHashMap;, "Landroid/emoji/EmojiFactory$CustomLinkedHashMap<TK;TV;>;"
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-virtual {p0}, Landroid/emoji/EmojiFactory$CustomLinkedHashMap;->size()I

    #@3
    move-result v0

    #@4
    iget-object v1, p0, Landroid/emoji/EmojiFactory$CustomLinkedHashMap;->this$0:Landroid/emoji/EmojiFactory;

    #@6
    invoke-static {v1}, Landroid/emoji/EmojiFactory;->-get0(Landroid/emoji/EmojiFactory;)I

    #@9
    move-result v1

    #@a
    if-le v0, v1, :cond_0

    #@c
    const/4 v0, 0x1

    #@d
    :goto_0
    return v0

    #@e
    :cond_0
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method
