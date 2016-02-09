.class Ljava/util/EnumMap$EnumMapEntrySet$1;
.super Ljava/lang/Object;
.source "EnumMap.java"

# interfaces
.implements Ljava/util/MapEntry$Type;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/EnumMap$EnumMapEntrySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/MapEntry$Type",
        "<",
        "Ljava/util/Map$Entry",
        "<TKT;TVT;>;TKT;TVT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava/util/EnumMap$EnumMapEntrySet;


# direct methods
.method constructor <init>(Ljava/util/EnumMap$EnumMapEntrySet;)V
    .locals 0

    #@0
    .prologue
    .line 331
    .local p1, "this$1":Ljava/util/EnumMap$EnumMapEntrySet;, "Ljava/util/EnumMap<TK;TV;>.EnumMapEntrySet<TKT;TVT;>;"
    iput-object p1, p0, Ljava/util/EnumMap$EnumMapEntrySet$1;->this$1:Ljava/util/EnumMap$EnumMapEntrySet;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public bridge synthetic get(Ljava/util/MapEntry;)Ljava/lang/Object;
    .locals 1
    .param p1, "entry"    # Ljava/util/MapEntry;

    #@0
    .prologue
    .line 332
    invoke-virtual {p0, p1}, Ljava/util/EnumMap$EnumMapEntrySet$1;->get(Ljava/util/MapEntry;)Ljava/util/Map$Entry;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public get(Ljava/util/MapEntry;)Ljava/util/Map$Entry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/MapEntry",
            "<TKT;TVT;>;)",
            "Ljava/util/Map$Entry",
            "<TKT;TVT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 333
    .local p1, "entry":Ljava/util/MapEntry;, "Ljava/util/MapEntry<TKT;TVT;>;"
    return-object p1
.end method
